---
description: Review past mentoring sessions, track weaknesses, and view growth trends
argument-hint: [weaknesses|growth|session <date>]
allowed-tools: [Read, Glob, Grep, Bash, Agent, TodoWrite]
---

# Mentor Review — Session History & Growth Analysis

Respond in the same language the user uses.

## Commands

Argument provided: $ARGUMENTS

### Default (no argument): Recent Sessions Overview

1. Read the 5 most recent files from `.mentor-logs/sessions/` (sorted by date)
2. For each session, summarize: date, task, understanding scores, key learning, main challenges
3. Read `.mentor-logs/weaknesses.md` and show the top 3 most frequent weakness categories
4. Provide a brief trend assessment: "Your recent sessions show improvement in [X] but [Y] remains a challenge"

### `weaknesses`: Weakness Analysis

1. Read `.mentor-logs/weaknesses.md`
2. Present the full weakness table sorted by occurrence count (descending)
3. Highlight which weaknesses have improved (fewer recent occurrences)
4. Highlight which weaknesses are persistent (still appearing in recent sessions)
5. For each persistent weakness, suggest a specific practice exercise

### `growth`: Growth Summary

1. Launch a `growth-analyzer` agent to analyze all session logs
2. Read `.mentor-logs/growth-summary.md` for previous analysis
3. Present:
   - Understanding score trend over time
   - Hint dependency trend (are you becoming more independent?)
   - Skills acquired (categories that no longer appear as issues)
   - Current focus areas
   - Month-over-month comparison if data available

### `session <date>`: Specific Session Detail

1. Find the session log matching the date in `.mentor-logs/sessions/`
2. Display the full session log
3. Highlight the key learning moments and stumbling points
4. Show how the issues from that session relate to overall weakness patterns

---

## If `.mentor-logs/` Does Not Exist

If no session logs exist yet, inform the user:
"No mentoring session logs found yet. Start a mentoring session with `/dev-mentor <task>` to begin building your learning history."

---
