# Claude Code Plugin Marketplace

A comprehensive collection of specialized agents for Claude Code, organized into focused plugins for different aspects of software development and team management.

## Overview

This marketplace provides 22 specialized agents from the vTeam collection plus custom workflow agents, organized into 7 focused plugins:

- **Team Management**: Leadership, management, and agile process agents
- **Development**: Software engineering, architecture, and testing agents  
- **Design & UX**: User experience research, design, and feature development agents
- **Content Strategy**: Technical writing, documentation, and content strategy agents
- **Project Management**: Product management, delivery, and coordination agents
- **Automation**: Code quality enforcement through automated hooks
- **MCP Servers**: Remote integrations with JIRA, DeepWiki, and external services

## Quick Start

### Install the Marketplace

```bash
/plugin marketplace add chambridge/dot-claude
```

### Install Individual Plugins

```bash
# Install all plugins
/plugin install team-management
/plugin install development  
/plugin install design-ux
/plugin install content-strategy
/plugin install project-management
/plugin install automation
/plugin install mcp-servers

# Or install specific plugins as needed
/plugin install development  # Just engineering agents
/plugin install automation   # Just code quality hooks
/plugin install mcp-servers  # Just external integrations
```

### Use Agents

Once installed, you can invoke agents directly:

```bash
/agent stella "Review this code for performance optimizations"
/agent emma "Help me plan the sprint with these user stories"
/agent neil "Design testing strategy for this new feature"
/agent git-workflow-manager "Create a conventional commit for these changes"
```

## Available Plugins

### 🏢 Team Management
**Agents**: Dan (Senior Director), Emma (Engineering Manager), Lee (Team Lead), Sam (Scrum Master), Uma (UX Team Lead)

Focus areas:
- Strategic leadership and decision making
- Team coordination and management
- Agile and scrum processes
- Cross-functional collaboration

### 💻 Development  
**Agents**: Stella (Staff Engineer), Neil (Test Engineer), Security Engineer, Phoenix (PXE Specialist), Taylor (Team Member), Git Workflow Manager

Focus areas:
- Code review and performance optimization
- AI-powered test automation and quality engineering
- DevSecOps and security integration
- Git workflow and commit standards
- Technical problem solving
- Customer impact assessment

### 🎨 Design & UX
**Agents**: Aria (UX Architect), Felix (UX Feature Lead), Ryan (UX Researcher), Steve (UX Designer)

Focus areas:
- User experience design
- Interface architecture
- User research and validation
- Feature usability

### ✍️ Content Strategy
**Agents**: Casey (Content Strategist), Terry (Technical Writer), Tessa (Writing Manager)

Focus areas:
- Documentation strategy
- Technical writing
- Content planning and management
- Communication clarity

### 📋 Project Management
**Agents**: Diego (Program Manager), Jack (Delivery Owner), Olivia (Product Owner), Parker (Product Manager)

Focus areas:
- Product strategy and roadmaps
- Project planning and execution
- Stakeholder management
- Delivery coordination

### 🤖 Automation
**Features**: Code quality enforcement through automated hooks

Focus areas:
- Automatic code formatting (Go, Python)
- File newline enforcement
- Post-write tool execution
- Zero-configuration setup

### 🔌 MCP Servers
**Features**: Remote MCP server integrations for external services

Focus areas:
- Atlassian JIRA project management
- DeepWiki knowledge access
- Interactive debugging with VS Code
- External API integrations
- Real-time data connectivity

## Plugin Structure

Each plugin follows Claude Code standards:

```
plugins/[category]/
├── .claude-plugin/
│   └── plugin.json          # Plugin configuration
└── agents/
    ├── agent-name.md        # Agent definition
    └── ...
```

## Installation Options

### Option 1: Full Marketplace
Install the entire marketplace for access to all plugins:
```bash
/plugin marketplace add chambridge/dot-claude
```

### Option 2: Individual Plugins
Clone and install specific plugins locally:
```bash
git clone https://github.com/chambridge/dot-claude.git
/plugin install ./dot-claude/plugins/development
```

### Option 3: Custom Selection
Mix and match agents by creating your own plugin combinations.

## Agent Capabilities

Each agent is designed with:
- **Specialized expertise** in their domain
- **Contextual awareness** of team dynamics
- **Practical tools** and methodologies
- **Collaborative approach** to problem-solving

## Contributing

1. Fork the repository
2. Add new agents following the established structure
3. Update documentation and plugin configurations
4. Submit a pull request

## License

MIT License - see [LICENSE](LICENSE) for details.

## Credits

Agents adapted from the [vTeam collection](https://github.com/ambient-code/vTeam) by ambient-code.
