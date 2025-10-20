# Usage Guide

This guide provides comprehensive examples and workflows for using the dot-claude marketplace agents effectively in your development team.

## Quick Start

### Installation

1. **Add the marketplace**:
   ```bash
   /plugin marketplace add chambridge/dot-claude
   ```

2. **Install plugins** (choose what you need):
   ```bash
   # Install all plugins
   /plugin install team-management
   /plugin install development
   /plugin install design-ux
   /plugin install content-strategy
   /plugin install project-management
   
   # Or install selectively
   /plugin install development  # Just engineering agents
   ```

3. **Discover available agents**:
   ```bash
   /plugin  # Browse all available plugins and agents
   ```

### Basic Agent Invocation

There are two primary ways to interact with agents:

#### Slash Command Invocation
```bash
/agent [agent-name] "[task description]"
```

#### Natural Language Invocation
Simply mention the agent's role and task in natural language:
```
"Can the architect help me design a microservices system?"
"I need the scrum master to facilitate our retrospective"
```

## Common Workflows

### 1. Feature Development Workflow

#### Complete Feature Development Process
```bash
# 1. Product Strategy & Requirements
/agent parker "Analyze market opportunity for new ML model deployment feature"

# 2. User Story Creation
/agent olivia "Create user stories for ML model deployment with acceptance criteria"

# 3. Technical Implementation Planning
/agent stella "Plan technical implementation approach for ML model deployment feature"

# 4. UX Planning
/agent aria "Map user journey for data scientists deploying ML models"

# 5. Technical Implementation
/agent stella "Review implementation approach for model deployment API"

# 6. Testing Strategy
/agent neil "Design testing strategy for ML model deployment including performance tests"

# 7. Documentation
/agent terry "Create user documentation for model deployment workflow"

# 8. Git Workflow
/agent git-workflow-manager "Create feature branch and conventional commits for model deployment"
```

### 2. Sprint Planning Workflow

#### Team Planning Session
```bash
# 1. Capacity Assessment
/agent emma "Assess team capacity for upcoming sprint considering current workload"

# 2. Sprint Facilitation
/agent sam "Facilitate sprint planning ceremony with these user stories"

# 3. Cross-team Coordination
/agent lee "Coordinate dependencies with platform and data teams for this sprint"

# 4. Backlog Prioritization
/agent olivia "Prioritize backlog items based on business value and team capacity"

# 5. Delivery Planning
/agent jack "Identify cross-team dependencies and delivery risks for sprint"
```

### 3. Code Review & Quality Workflow

#### Comprehensive Code Quality Process
```bash
# 1. Technical Review
/agent stella "Review implementation approach for scalability implications"

# 2. Code Review
/agent stella "Review this Python code for performance and maintainability"

# 3. Testing Assessment
/agent neil "Evaluate test coverage and suggest additional test cases"

# 4. Customer Impact
/agent phoenix "Assess customer impact and upgrade implications of these changes"

# 5. Git Standards
/agent git-workflow-manager "Create conventional commit for these code changes"
```

### 4. Design & UX Workflow

#### Complete UX Design Process
```bash
# 1. UX Strategy
/agent aria "Design user experience strategy for ML platform dashboard"

# 2. User Research
/agent ryan "Plan user research study for ML platform usability"

# 3. Design Creation
/agent steve "Create mockups for ML model monitoring dashboard"

# 4. Design Review
/agent uma "Review design against our design system guidelines"

# 5. Accessibility Validation
/agent felix "Ensure accessibility compliance for dashboard components"
```

### 5. Documentation Workflow

#### Comprehensive Documentation Process
```bash
# 1. Content Strategy
/agent casey "Plan content strategy for new ML platform features"

# 2. Technical Writing
/agent terry "Create step-by-step user guide for model deployment"

# 3. Content Management
/agent tessa "Review documentation for style guide compliance"

# 4. Documentation Planning
/agent diego "Plan documentation delivery timeline with feature release"
```

## Advanced Usage Patterns

### Multi-Agent Collaboration

#### Strategic Planning Session
```bash
# Executive-level planning
/agent dan "What are the strategic implications of this ML platform expansion?"

# Product management perspective
/agent parker "How does this align with market demands and competition?"

# Technical implementation view
/agent stella "What are the technical implementation requirements for this expansion?"
```

#### Problem-Solving Session
```bash
# Identify the problem
/agent neil "Analyze the root cause of these test failures"

# Technical solution
/agent stella "Suggest implementation approach to fix these issues"

# Customer impact assessment
/agent phoenix "What's the customer impact if we don't fix this?"
```

### Workflow Orchestration

#### Complex Feature Development
1. **Discovery Phase**:
   - Parker: Market analysis
   - Ryan: User research
   - Aria: User journey mapping

2. **Planning Phase**:
   - Olivia: Story creation
   - Emma: Capacity planning
   - Jack: Dependency mapping

3. **Design Phase**:
   - Stella: Technical implementation
   - Steve: UI mockups
   - Felix: Component design

4. **Development Phase**:
   - Stella: Technical guidance
   - Taylor: Implementation
   - Git Workflow Manager: Version control

5. **Quality Phase**:
   - Neil: Testing strategy
   - Phoenix: Customer impact
   - Uma: Design quality

6. **Documentation Phase**:
   - Terry: User docs
   - Tessa: Content review
   - Diego: Delivery planning

## Specialized Use Cases

### Crisis Management
```bash
# Production issue triage
/agent phoenix "Assess customer impact of this production failure"
/agent stella "Provide immediate technical remediation steps"
/agent jack "Coordinate incident response across teams"
/agent emma "Assess team resources for incident response"
```

### Technical Debt Assessment
```bash
# Technical debt analysis
/agent stella "Analyze technical debt implications and prioritization"
/agent stella "Prioritize technical debt items by impact"
/agent taylor "Estimate effort for technical debt cleanup"
/agent emma "Plan technical debt work into sprint capacity"
```

### Onboarding New Team Members
```bash
# New team member support
/agent emma "Create onboarding plan for new ML engineer"
/agent lee "Coordinate mentorship and initial task assignment"
/agent terry "Create getting-started documentation"
/agent sam "Include new member in agile ceremonies"
```

## Best Practices

### Agent Selection Guidelines

#### By Project Phase
- **Planning**: Use strategic agents (Dan, Parker, Aria)
- **Execution**: Use implementation agents (Stella, Taylor, Steve, Terry)
- **Coordination**: Use team agents (Emma, Lee, Sam, Jack)
- **Quality**: Use validation agents (Neil, Phoenix, Uma, Felix)

#### By Decision Level
- **Executive**: Dan, Parker
- **Technical Leadership**: Stella, Aria
- **Team Level**: Emma, Lee, Sam, Uma
- **Individual**: Taylor, Steve, Terry

#### By Complexity
- **High Complexity**: Distinguished/Principal level agents
- **Medium Complexity**: Senior level agents
- **Standard Tasks**: Software Engineer level agents

### Workflow Optimization

#### Parallel Execution
Run independent tasks simultaneously:
```bash
# Run these in parallel
/agent ryan "Plan user research study" &
/agent stella "Plan technical implementation approach" &
/agent terry "Start documentation outline" &
```

#### Sequential Dependencies
Ensure proper ordering for dependent tasks:
```bash
# 1. Strategy first
/agent parker "Define product requirements"
# 2. Then stories
/agent olivia "Create user stories based on requirements"
# 3. Then technical planning
/agent stella "Plan implementation approach based on user stories"
```

### Communication Patterns

#### Agent Handoffs
When passing work between agents, provide context:
```bash
/agent stella "Review this code that Taylor implemented following technical specifications"
```

#### Multi-perspective Analysis
Get different viewpoints on the same issue:
```bash
/agent emma "What's the team impact of this technical decision?"
/agent stella "What are the implementation implications?"
/agent phoenix "What's the customer impact?"
```

## Troubleshooting

### Common Issues

#### Agent Not Responding Appropriately
- Check agent name spelling
- Verify plugin is installed
- Ensure task matches agent expertise

#### Unclear Agent Responses
- Provide more specific context
- Break complex requests into smaller tasks
- Use agent's specialized terminology

#### Conflicting Agent Advice
- Understand each agent's perspective and priorities
- Use higher-level agents (Dan, Stella) for conflict resolution
- Consider using Sam for facilitated decision-making

### Performance Tips

#### Efficient Agent Usage
- Match task complexity to agent competency level
- Use specialized agents for their domain expertise
- Avoid over-engineering simple tasks

#### Context Management
- Provide relevant background information
- Reference previous decisions and constraints
- Include specific project requirements

## Integration with Development Tools

### Git Workflow Integration
```bash
# Standard development workflow
/agent git-workflow-manager "Create feature branch for user authentication"
# ... do development work ...
/agent git-workflow-manager "Create conventional commit for authentication changes"
```

### CI/CD Integration
```bash
# Pre-deployment checklist
/agent neil "Validate all tests pass for deployment"
/agent phoenix "Assess deployment risks and rollback plan"
/agent jack "Coordinate deployment across teams"
```

### Documentation Integration
```bash
# Keep docs updated with features
/agent terry "Update user guide for new authentication flow"
/agent tessa "Review documentation for release readiness"
/agent diego "Ensure docs are included in release timeline"
```

This usage guide provides the foundation for effective collaboration with dot-claude marketplace agents. As you become more familiar with each agent's capabilities and communication style, you'll develop more sophisticated workflows that leverage their unique strengths.
