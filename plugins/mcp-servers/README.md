# MCP Servers Collection Plugin

A curated collection of remote Model Context Protocol (MCP) servers that extend Claude Code with powerful integrations to external services like Atlassian JIRA and DeepWiki.

## Features

### 🎫 Atlassian JIRA Integration
- **Project Management**: List and search JIRA projects
- **Issue Operations**: Create, read, update, and search issues
- **Smart Queries**: AI-powered issue search and filtering
- **Team Collaboration**: Access project data for planning and reporting

### 📚 DeepWiki Integration  
- **Knowledge Access**: Fetch latest knowledge from deepwiki.com
- **Real-time Updates**: Get current documentation and wikis
- **Code Editor Integration**: Works seamlessly with Cursor and other editors
- **Research Enhancement**: Augment development with up-to-date information

### 🐛 Interactive Debugging
- **Language-Agnostic**: Debug any language with VS Code support
- **Breakpoint Management**: Set and manage debugging breakpoints
- **Expression Evaluation**: Interactive evaluation during debugging sessions
- **VS Code Integration**: Seamless integration with existing VS Code debugging

## Installation

### Prerequisites
- Claude Code with MCP support
- Node.js and npm (for server execution)
- VS Code (for debugging integration)
- Valid API credentials for target services

### Install Plugin
```bash
# Install from marketplace
/plugin install mcp-servers

# Or clone and install locally
git clone https://github.com/chambridge/dot-claude.git
/plugin install ./dot-claude/plugins/mcp-servers
```

## Configuration

### Environment Variables Setup

Create a `.env` file or set environment variables:

```bash
# Atlassian JIRA Configuration
export JIRA_BASE_URL="https://your-domain.atlassian.net"
export JIRA_USERNAME="your-email@company.com"  
export JIRA_API_TOKEN="your-jira-api-token"

# DeepWiki Configuration (if required)
export DEEPWIKI_API_KEY="your-deepwiki-api-key"

# Debugging Configuration (optional)
export VSCODE_DEBUG_PORT="3001"
```

### JIRA API Token Setup

1. **Log in to Atlassian Account**:
   - Go to https://id.atlassian.com/manage-profile/security/api-tokens
   
2. **Create API Token**:
   - Click "Create API token"
   - Give it a descriptive label (e.g., "Claude Code MCP")
   - Copy the generated token

3. **Set Environment Variables**:
   ```bash
   export JIRA_BASE_URL="https://your-company.atlassian.net"
   export JIRA_USERNAME="your-email@company.com"
   export JIRA_API_TOKEN="your-generated-token"
   ```

### DeepWiki Setup

DeepWiki integration works with public content by default. For enhanced features:

1. **Check DeepWiki Requirements**: Visit https://deepwiki.com for API access
2. **Set API Key** (if required):
   ```bash
   export DEEPWIKI_API_KEY="your-api-key"
   ```

### Interactive Debugging Setup

1. **Install VS Code Extension**:
   - Install "Claude Debugs For You" from VS Code Marketplace
   - Or download from [GitHub releases](https://github.com/jasonjmcghee/claude-debugs-for-you/releases)

2. **Configure VS Code**:
   - Ensure you have a valid `.vscode/launch.json` configuration
   - Set up debugging for your target language/framework

3. **Optional Port Configuration**:
   ```bash
   export VSCODE_DEBUG_PORT="3001"  # Default port
   ```

## Available Tools

### JIRA Tools
Once configured, you'll have access to:

- `jira_list_projects` - List all accessible JIRA projects
- `jira_search_issues` - Search issues with JQL queries
- `jira_get_issue` - Get detailed issue information
- `jira_create_issue` - Create new issues
- `jira_update_issue` - Update existing issues

### DeepWiki Tools
- `deepwiki_search` - Search DeepWiki knowledge base
- `deepwiki_get_content` - Fetch specific wiki content
- `deepwiki_latest_updates` - Get recent documentation updates

### Debugging Tools
- `debug_start` - Start debugging session
- `debug_set_breakpoint` - Set breakpoint at line/function
- `debug_evaluate` - Evaluate expressions in debug context
- `debug_step` - Step through code execution
- `debug_continue` - Continue execution
- `debug_stop` - Stop debugging session

## Usage Examples

### JIRA Integration
```bash
# Search for bugs in a project
"Search for all open bugs in the MYPROJECT with high priority"

# Create a new issue
"Create a new bug report for login issues in MYPROJECT"

# Get project overview
"Show me all projects I have access to in JIRA"
```

### DeepWiki Integration
```bash
# Research latest information
"Get the latest information about React 18 features from DeepWiki"

# Find documentation
"Search DeepWiki for best practices on microservices architecture"

# Get current knowledge
"What are the latest updates on Python 3.12 from DeepWiki?"
```

### Interactive Debugging
```bash
# Start debugging a Node.js application
"Start debugging my Node.js app with breakpoints in the authentication module"

# Debug a specific function
"Set a breakpoint in the calculateTotal function and start debugging"

# Evaluate expressions during debugging
"While debugging, evaluate the value of userCredentials variable"

# Step through code
"Step through the login flow and show me variable values at each step"
```

## MCP Server Details

### Server Configuration
```json
{
  "mcpServers": {
    "atlassian-jira": {
      "command": "npx",
      "args": ["-y", "@aashari/atlassian-mcp-server"],
      "env": {
        "JIRA_BASE_URL": "${JIRA_BASE_URL}",
        "JIRA_USERNAME": "${JIRA_USERNAME}",
        "JIRA_API_TOKEN": "${JIRA_API_TOKEN}"
      }
    },
    "deepwiki": {
      "command": "npx", 
      "args": ["-y", "@regenrek/mcp-deepwiki-server"],
      "env": {
        "DEEPWIKI_API_KEY": "${DEEPWIKI_API_KEY}"
      }
    },
    "claude-debugs": {
      "command": "npx",
      "args": ["-y", "claude-debugs-for-you"],
      "env": {
        "VSCODE_DEBUG_PORT": "${VSCODE_DEBUG_PORT:-3001}"
      }
    }
  }
}
```

### Transport Protocol
- **Type**: Remote MCP servers via npm packages
- **Protocol**: HTTP/stdio based on server implementation
- **Authentication**: Environment variable based

## Security Considerations

### API Token Security
- **Never commit** API tokens to version control
- Use environment variables or secure credential stores
- Rotate tokens regularly following company security policies
- Limit token permissions to minimum required scope

### Network Security
- Ensure JIRA base URL uses HTTPS
- Validate SSL certificates in production
- Consider firewall rules for MCP server connections

## Troubleshooting

### Common Issues

1. **Authentication Failures**
   ```bash
   # Verify environment variables
   echo $JIRA_BASE_URL
   echo $JIRA_USERNAME
   echo $JIRA_API_TOKEN
   
   # Test API token manually
   curl -u "$JIRA_USERNAME:$JIRA_API_TOKEN" \
     "$JIRA_BASE_URL/rest/api/2/myself"
   ```

2. **Server Connection Issues**
   ```bash
   # Check network connectivity
   ping your-domain.atlassian.net
   
   # Verify npm package availability
   npm view @aashari/atlassian-mcp-server
   npm view @regenrek/mcp-deepwiki-server
   npm view claude-debugs-for-you
   ```

3. **Permission Errors**
   ```bash
   # Ensure proper JIRA permissions
   # Check project access in JIRA web interface
   # Verify API token has correct scopes
   ```

4. **Debugging Connection Issues**
   ```bash
   # Check VS Code extension installation
   code --list-extensions | grep claude-debugs-for-you
   
   # Verify VS Code launch.json configuration
   cat .vscode/launch.json
   
   # Test debug port availability
   netstat -an | grep 3001
   ```

### Debug Mode

Enable verbose logging:
```bash
export MCP_DEBUG=true
export JIRA_DEBUG=true
export VSCODE_DEBUG=true
```

## Integration Examples

### Development Workflow
```bash
# Morning standup preparation
"Get all issues assigned to me that are in progress"

# Sprint planning
"List all high-priority bugs in the current sprint"

# Documentation research
"Find the latest architecture patterns from DeepWiki for our microservices"
```

### Project Management
```bash
# Project health check
"Show me the distribution of issue types in PROJECT-123"

# Release planning
"What are all the open issues for version 2.0?"

# Knowledge updates
"What are the latest best practices for our tech stack from DeepWiki?"
```

## Contributing

### Adding New MCP Servers
1. Research available MCP server implementations
2. Add server configuration to `plugin.json`
3. Update documentation with setup instructions
4. Test integration thoroughly
5. Submit pull request

### Server Suggestions
We welcome suggestions for additional MCP servers:
- GitHub integration
- Slack/Teams connectivity
- Database tools
- Cloud service APIs
- Documentation platforms

## Support

- **Issues**: Report at [GitHub Issues](https://github.com/chambridge/dot-claude/issues)
- **Documentation**: See [Claude Code MCP Guide](https://docs.claude.com/en/docs/claude-code/mcp)
- **Community**: Join discussions for server recommendations

## License

MIT License - see [LICENSE](../../LICENSE) for details.

## Credits

- **JIRA Server**: Based on community implementations by @aashari and others
- **DeepWiki Server**: Based on implementations by @regenrek and community
- **Debugging Server**: Based on [claude-debugs-for-you](https://github.com/jasonjmcghee/claude-debugs-for-you) by @jasonjmcghee
- **MCP Protocol**: Built on [Model Context Protocol](https://modelcontextprotocol.io)
