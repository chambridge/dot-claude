#!/bin/bash

# Python Formatting Hook
# Runs appropriate Python formatting tools (black, isort, flake8) on Python files
# Ensures Python code follows standard formatting and style guidelines

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to check available Python formatting tools
check_python_tools() {
    local tools_available=()
    
    # Check for black
    if command -v black &> /dev/null; then
        tools_available+=("black")
    fi
    
    # Check for isort
    if command -v isort &> /dev/null; then
        tools_available+=("isort")
    fi
    
    # Check for flake8
    if command -v flake8 &> /dev/null; then
        tools_available+=("flake8")
    fi
    
    # Check for pre-commit
    if command -v pre-commit &> /dev/null && [ -f ".pre-commit-config.yaml" ]; then
        tools_available+=("pre-commit")
    fi
    
    # Check for autopep8 as fallback
    if command -v autopep8 &> /dev/null; then
        tools_available+=("autopep8")
    fi
    
    if [ ${#tools_available[@]} -eq 0 ]; then
        echo -e "${YELLOW}⚠️  No Python formatting tools found (black, isort, flake8, pre-commit, autopep8)${NC}"
        echo -e "${YELLOW}   Install with: pip install black isort flake8 pre-commit${NC}"
        exit 0
    fi
    
    echo "${tools_available[@]}"
}

# Function to format Python file with black
format_with_black() {
    local file="$1"
    echo -e "${BLUE}🔧 Running black on: $file${NC}"
    
    local black_output
    black_output=$(black --check --diff "$file" 2>&1)
    local exit_code=$?
    
    if [ $exit_code -eq 1 ]; then
        # File needs formatting
        black "$file" 2>&1
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}✅ Formatted with black: $file${NC}"
        else
            echo -e "${RED}❌ Black formatting failed for $file${NC}"
            return 1
        fi
    elif [ $exit_code -eq 0 ]; then
        echo -e "${GREEN}✅ Already formatted (black): $file${NC}"
    else
        echo -e "${RED}❌ Black check failed for $file:${NC}"
        echo "$black_output"
        return 1
    fi
}

# Function to sort imports with isort
format_with_isort() {
    local file="$1"
    echo -e "${BLUE}🔧 Running isort on: $file${NC}"
    
    local isort_output
    isort_output=$(isort --check-only --diff "$file" 2>&1)
    local exit_code=$?
    
    if [ $exit_code -eq 1 ]; then
        # File needs import sorting
        isort "$file" 2>&1
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}✅ Sorted imports with isort: $file${NC}"
        else
            echo -e "${RED}❌ isort failed for $file${NC}"
            return 1
        fi
    elif [ $exit_code -eq 0 ]; then
        echo -e "${GREEN}✅ Imports already sorted (isort): $file${NC}"
    else
        echo -e "${RED}❌ isort check failed for $file:${NC}"
        echo "$isort_output"
        return 1
    fi
}

# Function to check with flake8
check_with_flake8() {
    local file="$1"
    echo -e "${BLUE}🔍 Running flake8 on: $file${NC}"
    
    local flake8_output
    flake8_output=$(flake8 "$file" 2>&1)
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✅ Flake8 passed: $file${NC}"
    else
        echo -e "${YELLOW}⚠️  Flake8 found style issues in $file:${NC}"
        echo "$flake8_output"
        # Don't fail the hook for style warnings, just inform
    fi
}

# Function to format with autopep8 (fallback)
format_with_autopep8() {
    local file="$1"
    echo -e "${BLUE}🔧 Running autopep8 on: $file${NC}"
    
    autopep8 --in-place --aggressive --aggressive "$file" 2>&1
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✅ Formatted with autopep8: $file${NC}"
    else
        echo -e "${RED}❌ autopep8 failed for $file${NC}"
        return 1
    fi
}

# Function to run pre-commit on file
run_precommit() {
    local file="$1"
    echo -e "${BLUE}🔧 Running pre-commit on: $file${NC}"
    
    # Run pre-commit on the specific file
    pre-commit run --files "$file" 2>&1
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✅ Pre-commit passed: $file${NC}"
    else
        echo -e "${YELLOW}⚠️  Pre-commit made changes to: $file${NC}"
        # Pre-commit may have fixed issues, don't fail
    fi
}

# Function to format a single Python file
format_python_file() {
    local file="$1"
    local tools=($2)
    
    echo -e "${GREEN}🐍 Processing Python file: $file${NC}"
    
    # If pre-commit is available and configured, use it first
    if [[ " ${tools[@]} " =~ " pre-commit " ]]; then
        run_precommit "$file"
        return 0
    fi
    
    # Otherwise, run individual tools
    local success=true
    
    # Run black if available
    if [[ " ${tools[@]} " =~ " black " ]]; then
        format_with_black "$file" || success=false
    elif [[ " ${tools[@]} " =~ " autopep8 " ]]; then
        # Use autopep8 as fallback if black not available
        format_with_autopep8 "$file" || success=false
    fi
    
    # Run isort if available
    if [[ " ${tools[@]} " =~ " isort " ]]; then
        format_with_isort "$file" || success=false
    fi
    
    # Run flake8 if available (non-blocking)
    if [[ " ${tools[@]} " =~ " flake8 " ]]; then
        check_with_flake8 "$file"
    fi
    
    return $([ "$success" = true ] && echo 0 || echo 1)
}

# Function to find and process Python files
process_python_files() {
    local tools
    tools=$(check_python_tools)
    
    if [ -z "$tools" ]; then
        exit 0
    fi
    
    local file_path="${CLAUDE_TOOL_FILE_PATH:-}"
    local processed=false
    
    # If specific file provided by Claude Code
    if [ -n "$file_path" ] && [[ "$file_path" == *.py ]]; then
        if [ -f "$file_path" ]; then
            format_python_file "$file_path" "$tools"
            processed=true
        fi
    else
        # Find recently modified Python files (last 5 minutes)
        find . -type f -name "*.py" -newermt "5 minutes ago" 2>/dev/null | while read -r file; do
            # Skip virtual environments, __pycache__, and hidden files
            [[ "$file" == */venv/* ]] && continue
            [[ "$file" == */.venv/* ]] && continue
            [[ "$file" == */env/* ]] && continue
            [[ "$file" == */__pycache__/* ]] && continue
            [[ "$file" == */.*/* ]] && continue
            [[ "$(basename "$file")" == .* ]] && continue
            
            format_python_file "$file" "$tools"
            processed=true
        done
    fi
    
    if [ "$processed" = false ]; then
        # No output if no Python files to process
        exit 0
    fi
}

# Main execution
main() {
    process_python_files
}

# Execute only if Python files are present
if [ -n "${CLAUDE_TOOL_FILE_PATH:-}" ]; then
    # Check if the specific file is a Python file
    if [[ "${CLAUDE_TOOL_FILE_PATH}" == *.py ]]; then
        main
    fi
else
    # Check if any recent Python files exist
    if find . -type f -name "*.py" -newermt "5 minutes ago" 2>/dev/null | grep -q .; then
        main
    fi
fi

exit 0
