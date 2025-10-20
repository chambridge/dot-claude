# Contributing Guide

Thank you for your interest in contributing to the dot-claude marketplace! This guide outlines how to contribute new agents, improvements, and enhancements to the marketplace.

## Overview

The dot-claude marketplace welcomes contributions that:
- Add new specialized agents for development workflows
- Improve existing agent capabilities and documentation
- Enhance plugin organization and marketplace features
- Provide better usage examples and workflow patterns

## Types of Contributions

### 1. New Agent Contributions
- Specialized agents for specific development roles or domains
- Agents that fill gaps in existing workflow coverage
- Agents with unique expertise or communication patterns

### 2. Agent Improvements
- Enhanced agent capabilities and knowledge
- Improved communication patterns and signature phrases
- Better tool integration and workflow coordination

### 3. Documentation Enhancements
- Usage examples and workflow patterns
- Improved onboarding and troubleshooting guides
- Better agent selection and optimization guidance

### 4. Plugin Architecture Improvements
- New plugin categories for specialized domains
- Enhanced plugin organization and structure
- Better marketplace configuration and metadata

## Agent Creation Standards

### Agent Definition Requirements

All agents must include the following components:

#### YAML Frontmatter
```yaml
---
name: agent-name
description: "Concise description of agent purpose and when to use"
tools: Read,Write,Edit,Bash,Glob,Grep  # Appropriate tool access
priority: normal|high                   # Optional priority level
environment: development|production     # Optional environment constraint
---
```

#### Agent Structure
```markdown
# Agent Name

You are [Agent Name], a [role] with expertise in [domain].

## Personality & Communication Style
- **Personality**: [Key personality traits]
- **Communication Style**: [How the agent communicates]
- **Competency Level**: [Technical competency level]

## Key Behaviors
- [List of characteristic behaviors]

## Technical Competencies
- **Business Impact**: [Impact level]
- **Scope**: [Operational scope]
- **Technical Knowledge**: [Knowledge level]
- **Languages/Frameworks**: [If applicable]

## Domain-Specific Skills
- [List of specialized skills]

## OpenShift AI Platform Knowledge
- **[Knowledge Area]**: [Specific expertise]

## Your Approach
- [How the agent approaches problems]

## Signature Phrases
- "[Example phrase 1]"
- "[Example phrase 2]"
```

### Quality Standards

#### Agent Personas
- **Distinctive Personality**: Each agent must have a unique communication style and approach
- **Specialized Expertise**: Clear domain focus with specific technical competencies
- **Consistent Behavior**: Predictable response patterns and decision-making frameworks
- **Professional Communication**: Appropriate tone and terminology for the role

#### Technical Requirements
- **Tool Access**: Only include tools necessary for the agent's function
- **Domain Knowledge**: Specific, actionable expertise in the agent's domain
- **Integration Points**: Clear coordination patterns with other agents
- **Workflow Context**: Understanding of how the agent fits into larger workflows

#### Documentation Standards
- **Clear Use Cases**: Specific scenarios when to use the agent
- **Example Interactions**: Realistic examples of agent invocation and responses
- **Signature Phrases**: Authentic communication patterns specific to the role
- **Competency Mapping**: Clear technical and organizational competency levels

## Plugin Organization Guidelines

### Plugin Categories

Agents should be organized into logical plugin categories:

- **team-management**: Leadership, agile processes, team coordination
- **development**: Engineering, architecture, testing, technical workflows
- **design-ux**: User experience, design systems, research
- **content-strategy**: Technical writing, documentation, content planning
- **project-management**: Product management, delivery coordination
- **[new-category]**: Propose new categories for specialized domains

### Plugin Structure
```
plugins/[category]/
├── .claude-plugin/
│   └── plugin.json          # Plugin metadata
└── agents/
    ├── agent-name.md        # Agent definition
    └── ...
```

### Plugin Configuration
```json
{
  "name": "plugin-name",
  "description": "Plugin description",
  "version": "1.0.0",
  "author": "Contributor Name",
  "homepage": "https://github.com/chambridge/dot-claude",
  "agents": "./agents"
}
```

## Contribution Process

### 1. Planning Your Contribution

#### For New Agents
1. **Identify the Gap**: What role or expertise is missing from current workflows?
2. **Define the Persona**: What personality and communication style would be effective?
3. **Map Competencies**: What technical and organizational competencies are needed?
4. **Choose Plugin Category**: Which existing category fits, or is a new category needed?

#### For Improvements
1. **Identify the Issue**: What specific problem are you solving?
2. **Scope the Change**: How extensive is the improvement?
3. **Consider Impact**: How will this affect existing users and workflows?

### 2. Development Process

#### Setting Up Development Environment
1. Fork the repository
2. Create a feature branch following naming conventions:
   ```bash
   git checkout -b feature/new-agent-name
   # or
   git checkout -b improvement/agent-enhancement
   ```

#### Creating New Agents
1. **Research Existing Patterns**: Review similar agents for consistency
2. **Draft Agent Definition**: Follow the agent structure template
3. **Test Agent Behavior**: Validate the agent responds appropriately to common scenarios
4. **Document Usage**: Create clear examples and use cases

#### Making Improvements
1. **Identify Specific Changes**: Document what you're changing and why
2. **Maintain Consistency**: Ensure changes align with existing patterns
3. **Test Impact**: Verify improvements don't break existing functionality
4. **Update Documentation**: Reflect changes in relevant documentation

### 3. Quality Assurance

#### Self-Review Checklist
- [ ] Agent follows established structure and formatting
- [ ] YAML frontmatter is complete and accurate
- [ ] Personality and communication style are distinctive
- [ ] Technical competencies are clearly defined
- [ ] Domain expertise is specific and actionable
- [ ] Signature phrases are authentic and characteristic
- [ ] Tool access is appropriate and minimal
- [ ] Documentation includes clear use cases and examples

#### Testing Guidelines
- **Functional Testing**: Agent responds appropriately to various scenarios
- **Integration Testing**: Agent coordinates well with related agents
- **Documentation Testing**: Examples work as described
- **Consistency Testing**: Agent follows established patterns and conventions

### 4. Submission Process

#### Pull Request Requirements
1. **Descriptive Title**: Clear description of the contribution
2. **Detailed Description**: Explain the purpose, approach, and impact
3. **Testing Evidence**: Show that the contribution has been tested
4. **Documentation Updates**: Include any necessary documentation changes

#### Pull Request Template
```markdown
## Description
Brief description of the contribution and its purpose.

## Type of Change
- [ ] New agent addition
- [ ] Agent improvement
- [ ] Documentation enhancement
- [ ] Plugin architecture improvement
- [ ] Bug fix

## Agent Details (for new agents)
- **Name**: Agent name
- **Category**: Plugin category
- **Role**: Agent role and expertise
- **Competency Level**: Technical competency level

## Testing
- [ ] Agent responds appropriately to test scenarios
- [ ] Integration with related agents works correctly
- [ ] Documentation examples are accurate
- [ ] Follows established quality standards

## Documentation
- [ ] Updated relevant documentation files
- [ ] Added usage examples
- [ ] Updated agent catalog if applicable

## Checklist
- [ ] Follows contribution guidelines
- [ ] Passes quality assurance review
- [ ] Includes appropriate tests
- [ ] Updates documentation as needed
```

### 5. Review Process

#### Review Criteria
- **Quality**: Meets established quality standards
- **Consistency**: Follows existing patterns and conventions
- **Usefulness**: Provides clear value to development workflows
- **Integration**: Works well with existing agents and plugins
- **Documentation**: Includes clear usage guidance and examples

#### Review Timeline
- Initial review within 1 week
- Feedback and iteration as needed
- Final approval and merge when quality standards are met

## Advanced Contributions

### New Plugin Categories
If you're proposing a new plugin category:

1. **Justify the Need**: Explain why existing categories don't fit
2. **Define the Scope**: What types of agents would belong in this category?
3. **Plan the Structure**: How would the new category be organized?
4. **Consider Integration**: How does it fit with existing plugins?

### Marketplace Enhancements
For marketplace-level improvements:

1. **Research Impact**: How does this affect all plugins and users?
2. **Maintain Compatibility**: Ensure changes don't break existing installations
3. **Document Migration**: If changes require user action, provide clear guidance
4. **Test Thoroughly**: Marketplace changes affect the entire ecosystem

### Skills System (Future)
If contributing to a future skills system:

1. **Follow Skills Specification**: Use standardized skill format
2. **Provide Progressive Disclosure**: Metadata → Instructions → Resources
3. **Clear Activation Triggers**: Define when skills should be activated
4. **Integration Patterns**: Show how skills work with agents

## Code of Conduct

### Professional Standards
- Respectful communication in all interactions
- Constructive feedback and collaborative problem-solving
- Focus on technical merit and user value
- Professional language and behavior

### Quality Commitment
- Contribute only high-quality, tested work
- Follow established patterns and conventions
- Provide clear documentation and examples
- Be responsive to feedback and improvement requests

### Community Guidelines
- Help new contributors understand the process
- Share knowledge and best practices
- Collaborate on improvements and enhancements
- Maintain a positive, professional environment

## Getting Help

### Questions and Support
- **Issues**: Use GitHub issues for questions and bug reports
- **Discussions**: Use GitHub discussions for general questions
- **Documentation**: Refer to existing documentation first
- **Examples**: Look at existing agents for patterns and examples

### Resources
- [Agent Catalog](agents.md) - Comprehensive agent reference
- [Usage Guide](usage.md) - Examples and workflow patterns
- [Architecture Guide](../CLAUDE.md) - Overall system architecture
- [README](../README.md) - Project overview and quick start

Thank you for contributing to the dot-claude marketplace! Your contributions help make development workflows more effective and collaborative for teams everywhere.
