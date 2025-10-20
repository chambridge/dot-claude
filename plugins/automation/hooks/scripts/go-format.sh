#!/bin/bash

# Go Formatting Hook
# Runs go fmt and go vet on Go files after Write operations
# Ensures Go code follows standard formatting and passes static analysis

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

# Function to check if Go is installed
check_go_installed() {
    if ! command -v go &> /dev/null; then
        echo -e "${YELLOW}⚠️  Go not installed, skipping Go formatting${NC}"
        exit 0
    fi
}

# Function to format Go file
format_go_file() {
    local file="$1"
    local changed=false
    
    echo -e "${GREEN}🔧 Processing Go file: $file${NC}"
    
    # Run go fmt
    local fmt_output
    fmt_output=$(go fmt "$file" 2>&1)
    if [ $? -eq 0 ]; then
        if [ -n "$fmt_output" ]; then
            echo -e "${GREEN}✅ Formatted: $file${NC}"
            changed=true
        fi
    else
        echo -e "${RED}❌ go fmt failed for $file:${NC}"
        echo "$fmt_output"
        return 1
    fi
    
    # Run go vet if file is in a Go module
    local dir
    dir=$(dirname "$file")
    if [ -f "$dir/go.mod" ] || find "$dir" -name "go.mod" -not -path "*/vendor/*" 2>/dev/null | head -1 | grep -q .; then
        local vet_output
        vet_output=$(go vet "$file" 2>&1)
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}✅ Vet passed: $file${NC}"
        else
            echo -e "${RED}❌ go vet found issues in $file:${NC}"
            echo "$vet_output"
            return 1
        fi
    else
        echo -e "${YELLOW}⚠️  No go.mod found, skipping go vet for $file${NC}"
    fi
    
    return 0
}

# Function to find and process Go files
process_go_files() {
    local file_path="${CLAUDE_TOOL_FILE_PATH:-}"
    local processed=false
    
    # If specific file provided by Claude Code
    if [ -n "$file_path" ] && [[ "$file_path" == *.go ]]; then
        if [ -f "$file_path" ]; then
            format_go_file "$file_path"
            processed=true
        fi
    else
        # Find recently modified Go files (last 5 minutes)
        find . -type f -name "*.go" -newermt "5 minutes ago" 2>/dev/null | while read -r file; do
            # Skip vendor directories and hidden files
            [[ "$file" == */vendor/* ]] && continue
            [[ "$file" == */.*/* ]] && continue
            [[ "$(basename "$file")" == .* ]] && continue
            
            format_go_file "$file"
            processed=true
        done
    fi
    
    if [ "$processed" = false ]; then
        # No output if no Go files to process
        exit 0
    fi
}

# Main execution
main() {
    check_go_installed
    process_go_files
}

# Execute only if Go files are present
if [ -n "${CLAUDE_TOOL_FILE_PATH:-}" ]; then
    # Check if the specific file is a Go file
    if [[ "${CLAUDE_TOOL_FILE_PATH}" == *.go ]]; then
        main
    fi
else
    # Check if any recent Go files exist
    if find . -type f -name "*.go" -newermt "5 minutes ago" 2>/dev/null | grep -q .; then
        main
    fi
fi

exit 0
