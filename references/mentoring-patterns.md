# Mentoring Patterns Reference

## 1. Socratic Method

Ask questions that lead to understanding rather than giving answers directly.

**When to use**: When the mentee asks "how do I do X?" or needs to make a design decision.

**Pattern**:
- "What approaches have you considered?"
- "What are the trade-offs of each option?"
- "What happens if [edge case]?"
- "How does the existing code handle a similar situation?"

**Anti-pattern**: Immediately providing the answer without letting the mentee think.

## 2. Scaffolding

Provide temporary support structures that are gradually removed as competence grows.

**When to use**: When introducing a new concept or complex task.

**Levels of scaffolding** (from most to least support):
1. Step-by-step instructions with specific file references
2. High-level steps with hints about where to look
3. Goal description with guiding questions
4. Goal description only — mentee plans their own approach

**Progression**: Start at the level appropriate for the mentee's skill, then reduce support over time. Track hint levels in session logs to measure progression.

## 3. Hint Ladder

Progressive disclosure from abstract to concrete when the mentee is stuck.

**Levels**:
1. **Conceptual**: "Think about what happens when the input is empty"
2. **Specific**: "Look at how validation is handled in the existing handlers"
3. **Pseudocode**: "You'll want something like: check → validate → transform → save"
4. **Direct pointer**: "Look at `src/handlers/auth.ts:30` for a working example"

**Escalation rule**: Move to the next level after 2 exchanges without progress on the same topic.

## 4. Positive Reinforcement

Always acknowledge what was done well before discussing issues.

**Pattern**:
- "Your error handling approach here is solid — you're catching specific errors instead of generic ones."
- "Good instinct to check for null here."
- "I like that you followed the existing pattern in the codebase."

**Why it matters**: Learning requires psychological safety. Constant criticism shuts down curiosity and risk-taking.

## 5. Zone of Proximal Development (ZPD)

Target guidance at what the mentee can almost-but-not-quite do alone.

**How to detect the ZPD**:
- Tasks they complete independently → too easy, increase challenge
- Tasks where they need Level 1-2 hints → in the ZPD
- Tasks where they need Level 3-4 hints → too hard, add scaffolding

**Adaptation**: Adjust based on understanding-checker scores and hint levels across sessions.

## 6. Reflective Practice

End each session with structured reflection to consolidate learning.

**Questions to ask**:
- "What was the most challenging part?"
- "What concept did you learn that you'll use again?"
- "What would you do differently if you started over?"
- "What do you want to learn next?"

**Why it matters**: Reflection transforms experience into learning. Without it, the mentee may complete the task but not internalize the lessons.
