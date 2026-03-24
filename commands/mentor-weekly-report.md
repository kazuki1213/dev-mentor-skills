---
description: Co-create a weekly learning report with the mentee — the mentee drives the narrative, the AI provides supporting data
argument-hint: [start-date YYYY-MM-DD]
allowed-tools: [Read, Write, Glob, Grep, Bash, Agent, TodoWrite]
---

# Weekly Learning Report — Co-creation

Help the mentee write their own weekly learning report. The AI provides data and suggestions; the mentee owns the narrative. Respond in the same language the user uses.

## Philosophy

This is **the mentee's report about their own learning**, not the AI's report about the mentee. The AI helps by surfacing data from session logs, but the mentee writes the key sections in their own voice. Detailed scores and stumbling points stay private — only qualitative growth indicators appear in the shared report.

## Arguments

$ARGUMENTS

- No argument: Report for the most recent 7 days
- `<start-date>`: Report for 7 days from the specified date (YYYY-MM-DD)

## Process

### Step 1: Gather Data (AI)

1. Determine the report period
2. Read session logs from `.mentor-logs/sessions/` within the date range
3. Read `.mentor-logs/weaknesses.md` and `.mentor-logs/growth-summary.md`
4. Read the previous week's report from `.mentor-logs/reports/` if available
5. Launch a `growth-analyzer` agent to analyze trends (limit to most recent 20 sessions max)

### Step 2: Prompt the Mentee

Ask the mentee to reflect on their week. Present a summary of sessions to jog their memory, then ask:

1. "What did you learn this week that you're most proud of?"
2. "What was your biggest challenge, and how did you work through it?"
3. "What do you want to focus on next week?"
4. "Is there any support you'd like from your team lead or manager?"

Wait for the mentee's answers before proceeding.

### Step 3: Draft Report Together

Read the template from `templates/weekly-report.md` and fill in:

- **Sections 1-6**: Use the mentee's own words from Step 2. Organize and lightly edit for clarity, but preserve their voice. Do NOT replace their narrative with AI-generated text.
- **Section 7 (AI-assisted summary)**: The AI fills in growth trends and suggested next steps based on session data. Use qualitative indicators only:
  - Independence: Guided / Developing / Independent
  - Self-review: Building / Developing / Strong
  - Trend: Improving / Steady / Needs attention
  - **Never include numerical scores (0-100) in the report.** Scores are internal data for the mentor system only.

### Step 4: Review with Mentee

Show the draft to the mentee and ask:
- "Does this accurately represent your week?"
- "Is there anything you'd like to change or add before saving?"

Make any requested changes.

### Step 5: Save Report

1. Save to `.mentor-logs/reports/weekly-<start-date>.md`
2. Create the directory if it doesn't exist
3. Tell the mentee:
   - Where the report was saved
   - That it is **not committed to git** (`.mentor-logs/` is gitignored)
   - They can share it with their manager by copying the file or pasting the content
   - They have full control over what gets shared

## If No Sessions Exist

If no sessions exist in the date range, inform the mentee and suggest starting a session with `/dev-mentor`.

## Report Principles

- **Mentee-owned**: The mentee's voice comes first; AI data supports it
- **Privacy-first**: No raw scores, no stumbling-point details, no "Self-identified?" tracking in the shared report
- **Growth-oriented**: Focus on progress and next steps, not deficiencies
- **Actionable**: Goals are specific; support requests are explicit
- **Honest**: Do not inflate progress — but frame challenges constructively

---
