# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Purpose

This repository serves as a Claude Code plugin marketplace containing 22 specialized development team agents adapted from the vTeam collection plus custom workflow agents. The agents are organized into 5 focused plugins for different aspects of software development and team management.

## Project Structure

```
dot-claude/
├── .claude-plugin/
│   └── marketplace.json          # Main marketplace configuration
├── plugins/
│   ├── team-management/          # Leadership & agile process agents
│   │   ├── .claude-plugin/
│   │   │   └── plugin.json       # Team management plugin config
│   │   └── agents/               # Dan, Emma, Lee, Sam, Uma
│   ├── development/              # Engineering & architecture agents
│   │   ├── .claude-plugin/
│   │   │   └── plugin.json       # Development plugin config
│   │   └── agents/               # Stella, Neil, Security Engineer, Phoenix, Taylor, Git Workflow Manager
│   ├── design-ux/                # UX research & design agents
│   │   ├── .claude-plugin/
│   │   │   └── plugin.json       # Design UX plugin config
│   │   └── agents/               # Aria, Felix, Ryan, Steve
│   ├── content-strategy/         # Technical writing & content agents
│   │   ├── .claude-plugin/
│   │   │   └── plugin.json       # Content strategy plugin config
│   │   └── agents/               # Casey, Terry, Tessa
│   └── project-management/       # Product & project management agents
│       ├── .claude-plugin/
│       │   └── plugin.json       # Project management plugin config
│       └── agents/               # Diego, Jack, Olivia, Parker
├── docs/                         # Documentation
├── README.md                     # Main project documentation
└── LICENSE                       # MIT License
```

## Common Commands

### Installing the Marketplace
```bash
/plugin marketplace add chambridge/dot-claude
```

### Installing Individual Plugins
```bash
/plugin install team-management      # Leadership & agile agents
/plugin install development         # Engineering & architecture agents  
/plugin install design-ux           # UX research & design agents
/plugin install content-strategy    # Technical writing agents
/plugin install project-management  # Product & project management agents
```

### Using Agents
```bash
/agent stella "Review this Python code for performance optimizations"
/agent emma "Help plan sprint capacity with these user stories"
/agent neil "Design comprehensive testing strategy for this feature"
/agent ryan "What user research questions should we ask about this feature?"
/agent git-workflow-manager "Create a conventional commit for these changes"
```

## Available Agents by Category

**Team Management (5 agents)**: Dan (Senior Director), Emma (Engineering Manager), Lee (Team Lead), Sam (Scrum Master), Uma (UX Team Lead)

**Development (6 agents)**: Stella (Staff Engineer), Neil (Test Engineer), Security Engineer, Phoenix (PXE Specialist), Taylor (Team Member), Git Workflow Manager

**Design & UX (4 agents)**: Aria (UX Architect), Felix (UX Feature Lead), Ryan (UX Researcher), Steve (UX Designer)

**Content Strategy (3 agents)**: Casey (Content Strategist), Terry (Technical Writer), Tessa (Writing Manager)

**Project Management (4 agents)**: Diego (Program Manager), Jack (Delivery Owner), Olivia (Product Owner), Parker (Product Manager)

## Agent Specializations

Each agent includes:
- Specialized domain expertise and competency levels
- Specific personality traits and communication styles  
- OpenShift AI platform knowledge context
- Signature phrases and behavioral patterns
- Appropriate tool access permissions

## Development Guidelines

### Plugin Structure
- Each plugin follows Claude Code standards with `.claude-plugin/plugin.json`
- Agents are markdown files with YAML frontmatter for metadata
- Plugin configurations specify agent directories and metadata

### Quality Standards
- All agents include comprehensive persona definitions
- Technical competencies are clearly documented
- Domain-specific knowledge is contextualized for ML/AI platforms
- Communication patterns are consistent with role expectations

## Credits

Agents adapted from the [vTeam collection](https://github.com/ambient-code/vTeam) by ambient-code, specifically designed for OpenShift AI platform development teams.
