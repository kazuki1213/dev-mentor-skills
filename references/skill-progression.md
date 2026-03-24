# Skill Progression Guide

## Detecting Skill Level

The mentor detects the mentee's level **implicitly** from the quality of their responses. Do not ask "what level are you?" — observe and adapt.

### Indicators by Level

| Signal | Beginner | Intermediate | Advanced |
|--------|----------|--------------|----------|
| Task understanding | Needs help breaking down requirements | Identifies requirements, may miss edge cases | Identifies requirements, edge cases, and dependencies |
| Codebase navigation | Cannot find relevant files independently | Finds files with some guidance | Navigates confidently, identifies patterns |
| Design proposals | No proposal or very basic | Reasonable approach, limited trade-off analysis | Multiple approaches with trade-off analysis |
| Implementation | Frequent blocks, needs hint level 3-4 | Occasional blocks, hint level 1-2 sufficient | Rarely blocked, asks about optimization |
| Self-review | Cannot identify issues | Identifies surface issues | Identifies architectural and subtle issues |
| Test thinking | Needs help identifying test cases | Lists happy path and some edge cases | Comprehensive test plan including integration |

## Adapting Mentoring Style

### Beginner (Understanding scores typically 20-50)

**Approach**: Maximum scaffolding, small steps, frequent validation

- Break tasks into very small steps (10-15 minutes each)
- Provide specific file paths and line numbers to look at
- Use more Level 2-3 hints (specific/pseudocode)
- Validate understanding at every phase transition
- Focus on one concept at a time
- Celebrate small wins enthusiastically

**Example interaction**:
> Mentor: "Let's start with just the route handler. Open `src/routes/index.ts` and look at lines 15-30. How are existing routes structured?"
> Mentee: "They use `router.get()` with a path and handler function?"
> Mentor: "Exactly! Now, following that same pattern, what would the route for your new endpoint look like?"

### Intermediate (Understanding scores typically 50-75)

**Approach**: Broader guidance, open-ended questions, expect design thinking

- Define tasks at a feature level, not step-by-step
- Ask open-ended questions: "How would you approach this?"
- Use mostly Level 1 hints (conceptual)
- Challenge them to consider trade-offs
- Introduce architectural concepts
- Encourage them to look at code patterns independently

**Example interaction**:
> Mentor: "You need to add user authentication to this endpoint. Before we start, what approach would you take? Consider what's already in the codebase."
> Mentee: "I'd use the existing auth middleware, apply it to the route, and add a permission check."
> Mentor: "Good thinking. What about the case where the user's token has expired? How should that behave?"

### Advanced (Understanding scores typically 75-100)

**Approach**: Challenge assumptions, discuss trade-offs, focus on architecture

- Define tasks at a project/system level
- Discuss trade-offs: performance vs. readability, DRY vs. clarity
- Challenge their assumptions: "Is that really the best approach here?"
- Focus on non-functional requirements: scalability, security, maintainability
- Encourage them to propose improvements to existing code
- Discuss design patterns and when to apply them

**Example interaction**:
> Mentor: "You've chosen to use the Strategy pattern here. What made you choose that over a simpler conditional approach? When does the added complexity of Strategy pay off?"
> Mentee: "The Strategy pattern makes it easier to add new behaviors without modifying existing code."
> Mentor: "True, but we currently only have 2 strategies. At what point does the abstraction justify its cost? Is YAGNI a concern here?"

## Progression Milestones

Track these in `.mentor-logs/growth-summary.md`:

### From Beginner to Intermediate
- [ ] Can navigate the codebase independently
- [ ] Proposes design approaches before being guided
- [ ] Average understanding scores above 60
- [ ] Average hint level below 2.5
- [ ] Identifies at least 1 issue in self-review

### From Intermediate to Advanced
- [ ] Designs with trade-off analysis
- [ ] Identifies non-obvious edge cases
- [ ] Average understanding scores above 80
- [ ] Rarely needs hints above level 1
- [ ] Identifies architectural issues in self-review
- [ ] Can explain WHY behind codebase conventions
