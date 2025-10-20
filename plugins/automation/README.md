# Code Quality Automation Plugin

Automated code quality enforcement through Claude Code hooks. This plugin ensures consistent formatting, linting, and style across Go, Python, and text files by automatically running appropriate tools after file write operations.

## Features

### 🔧 Automatic Code Formatting
- **Go**: Runs `go fmt` and `go vet` on Go files
- **Python**: Runs formatting tools (`black`, `isort`, `flake8`, `pre-commit`)
- **Text Files**: Ensures all files end with proper newlines

### 🎯 Smart File Detection
- Targets recently modified files (last 5 minutes)
- Respects file-specific tools from Claude Code context
- Skips vendor directories, virtual environments, and hidden files

### ⚡ Zero Configuration
- Works out of the box with sensible defaults
- Gracefully handles missing tools with helpful installation messages
- Non-blocking warnings for style issues

## Installation

1. **Install the Plugin**:
   ```bash
   # Clone the repository
   git clone https://github.com/chambridge/dot-claude.git
   cd dot-claude
   
   # Install the automation plugin
   claude-code plugin install ./plugins/automation
   ```

2. **Install Required Tools** (optional but recommended):
   ```bash
   # Python tools
   pip install black isort flake8 pre-commit
   
   # Go tools (usually included with Go installation)
   go version  # Verify Go is installed
   ```

## Hook Configuration

The plugin registers hooks via `hooks/hooks.json`:

```json
{
  "hooks": {
    "PostToolUse": [
      {
        "name": "enforce-newlines",
        "script": "./scripts/enforce-newlines.sh",
        "description": "Ensures all text files end with a newline"
      },
      {
        "name": "go-format",
        "script": "./scripts/go-format.sh", 
        "description": "Runs go fmt and go vet on Go files"
      },
      {
        "name": "python-format",
        "script": "./scripts/python-format.sh",
        "description": "Runs Python formatting tools"
      }
    ]
  }
}
```

## Supported File Types

| Extension | Tools Applied | Description |
|-----------|---------------|-------------|
| `.py` | black, isort, flake8, pre-commit | Python formatting and linting |
| `.go` | go fmt, go vet | Go formatting and static analysis |
| `.md`, `.txt`, `.json`, `.yaml`, `.yml`, `.sh` | newline enforcement | Ensures proper file endings |

## Tool Priority and Fallbacks

### Python
1. **Primary**: `pre-commit` (if `.pre-commit-config.yaml` exists)
2. **Individual Tools**: `black` → `isort` → `flake8`
3. **Fallback**: `autopep8` (if black unavailable)

### Go
1. **Primary**: `go fmt` (formatting)
2. **Analysis**: `go vet` (if go.mod found)
3. **Fallback**: Graceful skip with warning

## Environment Variables

The hooks respect Claude Code environment variables:

- `CLAUDE_TOOL_FILE_PATH`: Specific file path from Claude Code context
- When unset: Automatically finds recently modified files

## Output Examples

### Successful Formatting
```bash
🐍 Processing Python file: src/main.py
🔧 Running black on: src/main.py
✅ Formatted with black: src/main.py
🔧 Running isort on: src/main.py
✅ Sorted imports with isort: src/main.py
🔍 Running flake8 on: src/main.py
✅ Flake8 passed: src/main.py
```

### Missing Tools Warning
```bash
⚠️  No Python formatting tools found (black, isort, flake8, pre-commit)
   Install with: pip install black isort flake8 pre-commit
```

### Go Processing
```bash
🔧 Processing Go file: cmd/main.go
✅ Formatted: cmd/main.go
✅ Vet passed: cmd/main.go
```

## Safety Features

- **Non-Destructive**: Tools run in check mode first
- **Error Handling**: Graceful failures with clear error messages  
- **Skip Logic**: Avoids processing inappropriate files/directories
- **Timeout Protection**: Prevents hanging on large files

## Customization

### Adding New File Types

Edit `hooks/scripts/enforce-newlines.sh` to include additional file extensions:

```bash
find . -type f \
    -name "*.md" -o -name "*.py" -o -name "*.go" \
    -o -name "*.rs" -o -name "*.js" -o -name "*.ts" \  # Add new types
    -newermt "5 minutes ago" 2>/dev/null
```

### Custom Tool Configuration

For project-specific tool configurations:

1. **Python**: Use `.pre-commit-config.yaml`, `pyproject.toml`, or `setup.cfg`
2. **Go**: Use `go.mod` for module-aware operations

## Troubleshooting

### Common Issues

1. **Tools Not Found**
   ```bash
   # Install missing Python tools
   pip install black isort flake8
   
   # Verify Go installation
   go version
   ```

2. **Permission Errors**
   ```bash
   # Make scripts executable
   chmod +x plugins/automation/hooks/scripts/*.sh
   ```

3. **Pre-commit Issues**
   ```bash
   # Initialize pre-commit in project
   pre-commit install
   pre-commit run --all-files
   ```

### Debug Mode

Add debug output to scripts:
```bash
set -x  # Enable debug tracing
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Add tests for new functionality
4. Submit a pull request

## License

MIT License - see [LICENSE](../../LICENSE) for details.
