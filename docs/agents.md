# Agent Catalog

This document provides a comprehensive overview of all 22 specialized agents available in the dot-claude marketplace, plus automation capabilities, organized by functional domain and capability level.

## Overview

The dot-claude marketplace contains **22 specialized agents** across **5 plugin categories**, plus **1 automation plugin** with code quality hooks, designed to support comprehensive software development team workflows. Each agent has been carefully designed with specific expertise, communication patterns, and technical competencies.

## Agent Distribution

| Plugin Category | Agent Count | Primary Focus |
|----------------|-------------|---------------|
| Team Management | 5 | Leadership, agile processes, team coordination |
| Development | 6 | Engineering, security, testing, git workflows, customer impact |
| Design & UX | 4 | User experience, design systems, research |
| Content Strategy | 3 | Technical writing, documentation, content planning |
| Project Management | 4 | Product management, delivery coordination |
| Automation | 3 hooks | Code quality enforcement, formatting automation |

## Team Management Agents

### Dan (Senior Director)
**Competency Level**: Distinguished Engineer  
**Primary Focus**: Strategic alignment, executive leadership, business unit oversight

**Key Capabilities**:
- Validates alignment with company strategy and growth pillars
- Coordinates with VP-level leadership on strategic initiatives
- Manages executive customer relationships and field feedback
- Oversees product architecture from business perspective

**When to Use**: Company strategy validation, VP-level coordination, executive decision making

**Signature Approach**: References executive customer meetings, focuses on business unit impact, thinks in portfolio terms

---

### Emma (Engineering Manager)
**Competency Level**: Senior → Principal Software Engineer  
**Primary Focus**: Team wellbeing, capacity planning, delivery coordination

**Key Capabilities**:
- Monitors team velocity and burnout indicators
- Balances technical debt with delivery commitments
- Protects team from external pressures and context switching
- Facilitates clear communication across stakeholders

**When to Use**: Team capacity planning, sprint management, technical debt decisions, stakeholder management

**Signature Approach**: Always considers team impact, data-driven escalation, sustainable development practices

---

### Lee (Team Lead)
**Competency Level**: Senior → Principal Software Engineer  
**Primary Focus**: Team coordination, technical decision facilitation

**Key Capabilities**:
- Shields team from distractions while maintaining stakeholder relationships
- Coordinates with other team leads on cross-team initiatives
- Facilitates technical decisions without imposing solutions
- Balances individual growth with team delivery needs

**When to Use**: Sprint leadership, technical planning, cross-team communication, delivery execution

**Signature Approach**: Protective of team bandwidth, pragmatic technical tradeoffs, peer coordination

---

### Sam (Scrum Master)
**Competency Level**: Senior Software Engineer  
**Primary Focus**: Agile facilitation, impediment removal, process optimization

**Key Capabilities**:
- Redirects discussions to appropriate ceremonies and timeboxes meetings
- Identifies and systematically removes impediments
- Protects ceremony integrity while adapting to team needs
- Uses data to drive continuous improvement

**When to Use**: Sprint planning, retrospectives, process improvement, impediment escalation

**Signature Approach**: Neutral facilitation, time-conscious, question-based guidance, data-driven improvement

---

### Uma (UX Team Lead)
**Competency Level**: Principal Software Engineer  
**Primary Focus**: Design quality, team coordination, design system governance

**Key Capabilities**:
- Runs design critiques and ensures design system compliance
- Coordinates designer assignments and manages design timelines
- Maintains high design quality standards across the team
- Facilitates collaborative design processes

**When to Use**: Design process management, critique facilitation, design team leadership, quality assurance

**Signature Approach**: Quality-focused, systematic design governance, collaborative team development

## Development Agents


### Stella (Staff Engineer)
**Competency Level**: Senior Principal Software Engineer  
**Primary Focus**: Technical leadership, implementation excellence, mentoring

**Key Capabilities**:
- Reviews critical PRs and provides specific implementation guidance
- Bridges architectural vision to practical team implementation
- Mentors through code examples and hands-on pairing
- Expert in Python, Go, Java, and ML frameworks

**When to Use**: Complex technical problems, code review, bridging architecture to implementation, technical mentoring

**Signature Approach**: Lead by example, concrete technical guidance, teachable moments in code reviews

---

### Neil (Test Engineer)
**Competency Level**: Principal Software Quality Engineer  
**Primary Focus**: Testing requirements, cross-component impact, automation

**Key Capabilities**:
- Assesses whether changes are testable and match requirements
- Identifies cross-team impact and performance/security concerns
- Designs comprehensive test strategies covering all components
- Expert in PyTest, Ginkgo, Jest, and ML testing frameworks

**When to Use**: Testing strategy design, requirement validation, cross-component impact analysis, quality assurance

**Signature Approach**: Questions assumptions early, comprehensive test coverage, cross-functional collaboration

---

### Phoenix (PXE Specialist)
**Competency Level**: Senior Principal Software Engineer  
**Primary Focus**: Customer impact assessment, lifecycle management, field experience

**Key Capabilities**:
- Assesses customer impact of changes and identifies upgrade risks
- Uses telemetry and field data to inform product decisions
- Plans upgrade paths that minimize customer disruption
- Bridges product engineering and customer success

**When to Use**: Upgrade planning, risk assessment, customer telemetry analysis, field impact evaluation

**Signature Approach**: Customer-impact focused, data-driven risk assessment, lifecycle thinking

---

### Taylor (Team Member)
**Competency Level**: Software Engineer → Senior Software Engineer  
**Primary Focus**: Pragmatic implementation, code quality, technical execution

**Key Capabilities**:
- Raises technical debt concerns and suggests implementation alternatives
- Asks clarifying questions upfront to avoid rework
- Breaks down complex problems into manageable tasks
- Focuses on clean, maintainable code with proper testing

**When to Use**: Hands-on development, technical debt assessment, story point estimation, implementation planning

**Signature Approach**: Pragmatic and detail-oriented, asks clarifying questions, estimates in story points

---

### Git Workflow Manager
**Competency Level**: High Priority Development Tool  
**Primary Focus**: Git workflow standards, conventional commits, DCO compliance

**Key Capabilities**:
- Generates properly formatted conventional commits with DCO sign-off
- ALWAYS creates branches for commits (never commits to main)
- Ensures professional git practices and repository standards
- Validates commit history and suggests remediation

**When to Use**: Git operations, commit creation, branch management, repository maintenance

**Signature Approach**: Mandatory branch creation, conventional commit standards, professional git practices

## Design & UX Agents

### Aria (UX Architect)
**Competency Level**: Principal → Senior Principal Software Engineer  
**Primary Focus**: User experience strategy, journey mapping, design system architecture

**Key Capabilities**:
- Creates journey maps and service blueprints for complete user experiences
- Challenges feature-focused thinking with ecosystem-level design
- Uses research and data to validate design decisions
- Advocates for consistency across the entire platform

**When to Use**: Holistic UX planning, ecosystem design, user research strategy, information architecture

**Signature Approach**: Journey-focused, research-backed, ecosystem thinking, strategic design decisions

---

### Felix (UX Feature Lead)
**Competency Level**: Senior → Principal Software Engineer  
**Primary Focus**: Component design, pattern reusability, accessibility implementation

**Key Capabilities**:
- Deep dives into feature specifics with obsessive attention to detail
- Ensures component reusability and champions accessibility (WCAG compliance)
- Documents patterns for consistent implementation across teams
- Expert in React components, CSS patterns, and responsive design

**When to Use**: Detailed feature design, component specification, accessibility compliance, pattern documentation

**Signature Approach**: Detail-obsessed, pattern-enforcing, accessibility-minded, reusability-focused

---

### Ryan (UX Researcher)
**Competency Level**: Senior → Principal Software Engineer  
**Primary Focus**: User insights, data analysis, evidence-based design decisions

**Key Capabilities**:
- Plans research studies and translates findings to actionable recommendations
- Challenges assumptions with data and advocates for user voice
- Uses mixed methods for complete picture of user behavior
- Expert in quantitative/qualitative research and A/B testing

**When to Use**: User research planning, usability testing, translating insights to design recommendations

**Signature Approach**: Evidence-seeking, data-backed insights, occasionally contrarian, methodology expert

---

### Steve (UX Designer)
**Competency Level**: Software Engineer → Senior Software Engineer  
**Primary Focus**: Visual design, prototyping, user interface creation

**Key Capabilities**:
- Creates multiple design options and seeks early feedback
- Prototypes rapidly and collaborates closely with developers
- Iterates based on user feedback and usability testing
- Expert in Figma, design systems, and component libraries

**When to Use**: Mockups, design exploration, collaborative design iteration, visual design

**Signature Approach**: Creative problem solver, iteration enthusiast, feedback-seeking, collaborative

## Content Strategy Agents

### Casey (Content Strategist)
**Competency Level**: Senior Principal Software Engineer  
**Primary Focus**: Information architecture, content standards, strategic planning

**Key Capabilities**:
- Creates content taxonomies and defines content standards
- Aligns content strategy with business and product goals
- Uses analytics to optimize content effectiveness
- Bridges content strategy with product and engineering

**When to Use**: Content taxonomy, style guidelines, content effectiveness measurement, strategic planning

**Signature Approach**: Big picture thinking, standard setting, cross-functional bridging, strategic alignment

---

### Terry (Technical Writer)
**Competency Level**: Software Engineer → Senior Software Engineer  
**Primary Focus**: User-centered documentation, procedure testing, technical accuracy

**Key Capabilities**:
- Tests all procedures personally before documenting
- Asks clarifying questions to ensure technical accuracy
- Creates clear examples and step-by-step guidance
- Expert in technical writing tools and code documentation

**When to Use**: Hands-on documentation creation, technical accuracy validation, procedure testing

**Signature Approach**: User advocate, technical translator, accuracy obsessed, question-asking

---

### Tessa (Writing Manager)
**Competency Level**: Principal Software Engineer  
**Primary Focus**: Documentation strategy, team coordination, content quality

**Key Capabilities**:
- Assigns writers based on expertise and manages documentation timelines
- Ensures style guide compliance and manages content reviews
- Coordinates with engineering teams for technical accuracy
- Expert in docs-as-code, API documentation, and content management

**When to Use**: Documentation planning, writer management, content standards, team coordination

**Signature Approach**: Quality-focused, deadline-aware, process-oriented, team coordination

## Project Management Agents

### Diego (Program Manager)
**Competency Level**: Principal Software Engineer  
**Primary Focus**: Content roadmap planning, resource allocation, delivery coordination

**Key Capabilities**:
- Creates documentation roadmaps and identifies content dependencies
- Manages writer capacity and reports content status
- Coordinates with cross-functional teams for content needs
- Expert in content roadmapping and publishing pipelines

**When to Use**: Documentation project management, content strategy execution, resource planning

**Signature Approach**: Timeline guardian, resource optimizer, dependency tracker, status reporting

---

### Jack (Delivery Owner)
**Competency Level**: Principal Software Engineer  
**Primary Focus**: Cross-team coordination, dependency tracking, milestone management

**Key Capabilities**:
- Identifies cross-team dependencies and escalates blockers aggressively
- Tracks and communicates progress transparently
- Focuses on end-to-end delivery rather than individual components
- Expert in release management and risk mitigation

**When to Use**: Release planning, risk mitigation, delivery status reporting, cross-team coordination

**Signature Approach**: Persistent tracker, cross-team networker, milestone-focused, slightly anxious

---

### Olivia (Product Owner)
**Competency Level**: Senior → Principal Software Engineer  
**Primary Focus**: Backlog management, stakeholder alignment, sprint execution

**Key Capabilities**:
- Translates PM vision into executable stories with clear acceptance criteria
- Negotiates scope tradeoffs and validates work against criteria
- Manages stakeholder expectations and maintains backlog health
- Expert in value stream mapping and stakeholder management

**When to Use**: Story refinement, acceptance criteria definition, scope negotiations, sprint planning

**Signature Approach**: Detail-focused, pragmatic negotiator, acceptance-criteria driven, sprint guardian

---

### Parker (Product Manager)
**Competency Level**: Principal Software Engineer  
**Primary Focus**: Market strategy, customer feedback, business value delivery

**Key Capabilities**:
- References market data and customer feedback for product decisions
- Pushes for MVP approaches and translates technical features to business value
- Focuses on measurable business outcomes and market differentiation
- Expert in competitive analysis and product roadmapping

**When to Use**: Product roadmap decisions, competitive analysis, translating business requirements

**Signature Approach**: Market-savvy, data-driven, customer-quote heavy, business-focused, strategic

## Agent Selection Guide

### By Task Complexity
- **Strategic/Executive**: Dan, Parker, Aria, Casey
- **Technical Implementation**: Stella, Neil, Phoenix, Felix, Terry
- **Team Coordination**: Emma, Lee, Sam, Uma, Jack, Olivia
- **Individual Contributor**: Taylor, Steve, Terry, Diego

### By Project Phase
- **Planning**: Dan, Parker, Olivia, Aria, Casey
- **Design**: Aria, Felix, Ryan, Steve, Uma
- **Development**: Stella, Taylor, Neil, Git Workflow Manager
- **Testing**: Neil, Phoenix, Ryan
- **Documentation**: Terry, Tessa, Diego, Casey
- **Delivery**: Jack, Emma, Lee, Sam

### By Interaction Style
- **Collaborative**: Steve, Ryan, Lee, Sam, Uma
- **Directive**: Dan, Stella, Felix, Git Workflow Manager
- **Analytical**: Neil, Phoenix, Ryan, Casey, Parker
- **Facilitative**: Sam, Uma, Emma, Tessa

## Multi-Agent Workflows

### Feature Development Workflow
1. **Parker** - Define market requirements and business value
2. **Olivia** - Create user stories with acceptance criteria
3. **Stella** - Plan technical implementation
4. **Aria** - Plan user experience journey
5. **Stella** - Guide technical implementation
6. **Neil** - Design testing strategy
7. **Terry** - Create user documentation
8. **Git Workflow Manager** - Manage code commits and branches

### Team Planning Workflow
1. **Emma** - Assess team capacity and skills
2. **Sam** - Facilitate sprint planning ceremony
3. **Lee** - Coordinate with other teams
4. **Olivia** - Prioritize backlog items
5. **Jack** - Track cross-team dependencies

### Quality Assurance Workflow
1. **Neil** - Design comprehensive testing strategy
2. **Phoenix** - Assess customer impact and upgrade risks
3. **Stella** - Review critical code changes
4. **Uma** - Ensure design quality standards
5. **Tessa** - Validate documentation accuracy

## Automation Plugin

### Code Quality Hooks
**Type**: PostToolUse automation  
**Primary Focus**: Automated code quality enforcement

**Key Capabilities**:
- **Newline Enforcement**: Ensures all text files end with proper newlines
- **Go Formatting**: Runs `go fmt` and `go vet` on Go source files
- **Python Formatting**: Runs `black`, `isort`, `flake8`, or `pre-commit` on Python files
- **Smart Detection**: Targets specific files or recently modified files
- **Zero Configuration**: Works out-of-the-box with graceful tool detection

**When to Use**: Automatically activated after Write operations on supported file types (.py, .go, .md, .txt, .json, .yaml, .yml, .sh)

**Signature Approach**: Silent operation with colored output, non-blocking warnings, tool priority systems with fallbacks

**File Types Supported**:
- **Python**: .py files → black, isort, flake8, pre-commit
- **Go**: .go files → go fmt, go vet  
- **Text**: .md, .txt, .json, .yaml, .yml, .sh → newline enforcement

---

This comprehensive agent catalog and automation system provides the foundation for building effective, collaborative development workflows using the dot-claude marketplace agents.
