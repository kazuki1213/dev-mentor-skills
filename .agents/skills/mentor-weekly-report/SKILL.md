---
description: Generate a weekly mentoring report for submission to a manager or team lead
argument-hint: [start-date YYYY-MM-DD]
allowed-tools: [Read, Glob, Grep, Bash, Write, Agent, TodoWrite]
---

# Weekly Mentoring Report Generator

Generate a structured weekly report suitable for submission to a manager or team lead. Respond in the same language the user uses.

## Arguments

$ARGUMENTS

- No argument: Generate report for the most recent 7 days
- `<start-date>`: Generate report for 7 days starting from the specified date (YYYY-MM-DD format)

## Process

### Step 1: Gather Data

1. Determine the report period (start date to start date + 7 days)
2. Read all session logs from `.mentor-logs/sessions/` within the date range
3. Read `.mentor-logs/weaknesses.md` for weakness tracking data
4. Read `.mentor-logs/growth-summary.md` for trend data
5. If available, read the previous week's report from `.mentor-logs/reports/` for comparison

### Step 2: Analyze

1. Launch a `growth-analyzer` agent with all relevant session logs
2. Calculate:
   - Average understanding score for the week
   - Number of sessions completed
   - Most practiced skill categories
   - Improvement vs. previous week (if data available)
   - Persistent weaknesses
   - New skills or patterns learned

### Step 3: Generate Report

Read the template from `templates/weekly-report.md` and fill in all fields. Replace template placeholders with actual data.

Key sections to generate:
- **Sessions This Week**: Table of all sessions with dates, tasks, scores, and key learnings
- **Learning Outcomes**: Narrative summary of skills acquired or reinforced
- **Growth Points**: Comparison with previous week, metric changes
- **Challenges & Weaknesses**: Recurring issues table and specific challenges narrative
- **Goals for Next Week**: Based on weakness analysis, recommend focus areas
- **Mentor Assessment**: AI mentor's evaluation of technical skills, problem-solving, and process adherence

### Step 4: Save Report

1. Save the completed report to `.mentor-logs/reports/weekly-<start-date>.md`
2. Create the `.mentor-logs/reports/` directory if it doesn't exist
3. Display the report to the user

### Step 5: Confirm

Tell the user:
- Where the report was saved
- That they can review and edit before sharing
- How to view past reports: `/mentor-review growth`

## If Insufficient Data

If fewer than 1 session exists in the date range:
- Inform the user that there isn't enough data for a meaningful report
- Suggest completing more mentoring sessions first
- If at least 1 session exists, generate a partial report with available data and note the limited scope

## Report Quality Guidelines

- **Factual and data-driven**: Every claim backed by session data
- **Balanced**: Show both strengths and areas for improvement
- **Actionable**: Goals and recommendations are specific and measurable
- **Professional tone**: Suitable for sharing with management
- **Concise**: The report should be scannable — use tables and bullet points over long paragraphs

---
