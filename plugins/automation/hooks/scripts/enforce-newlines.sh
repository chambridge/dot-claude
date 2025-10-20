#!/bin/bash

# Enforce Newlines Hook
# Ensures all text files end with a newline character
# Runs after Write operations to maintain file format standards

set -e

# Function to check if file needs newline
needs_newline() {
    local file="$1"
    
    # Skip if file doesn't exist or is empty
    [ ! -f "$file" ] && return 1
    [ ! -s "$file" ] && return 1
    
    # Check if last character is newline
    if [ "$(tail -c1 "$file" | wc -l)" -eq 0 ]; then
        return 0  # Needs newline
    else
        return 1  # Already has newline
    fi
}

# Function to add newline to file
add_newline() {
    local file="$1"
    echo "" >> "$file"
    echo "✅ Added newline to: $file"
}

# Main execution
main() {
    # Parse Claude Code tool output to get the file path
    # Claude Code provides tool information via environment variables
    local file_path="${CLAUDE_TOOL_FILE_PATH:-}"
    
    # If no specific file from Claude, check recent files
    if [ -z "$file_path" ]; then
        # Find recently modified text files (last 5 minutes)
        find . -type f \
            -name "*.md" -o -name "*.py" -o -name "*.go" -o -name "*.js" -o -name "*.ts" \
            -o -name "*.json" -o -name "*.yaml" -o -name "*.yml" -o -name "*.txt" \
            -o -name "*.sh" -o -name "*.bash" -o -name "*.zsh" -o -name "*.fish" \
            -newermt "5 minutes ago" 2>/dev/null | while read -r file; do
            
            # Skip hidden files and directories
            [[ "$file" == */.*/* ]] && continue
            [[ "$(basename "$file")" == .* ]] && continue
            
            if needs_newline "$file"; then
                add_newline "$file"
            fi
        done
    else
        # Check specific file provided by Claude Code
        if needs_newline "$file_path"; then
            add_newline "$file_path"
        fi
    fi
}

# Execute only if file path is provided or recent files exist
if [ -n "${CLAUDE_TOOL_FILE_PATH:-}" ] || find . -type f -newermt "5 minutes ago" 2>/dev/null | grep -q .; then
    main
fi

exit 0
