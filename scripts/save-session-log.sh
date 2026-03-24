#!/bin/bash
# save-session-log.sh — Ensures the .mentor-logs directory structure exists
# Called at the start of a mentoring session to prepare the log directory

set -euo pipefail

# Determine project root (git root or current directory)
PROJECT_ROOT=$(git rev-parse --show-toplevel 2>/dev/null || pwd)
LOG_DIR="${PROJECT_ROOT}/.mentor-logs"

# Create directory structure
mkdir -p "${LOG_DIR}/sessions"
mkdir -p "${LOG_DIR}/reports"

# Initialize weaknesses.md if it doesn't exist
if [ ! -f "${LOG_DIR}/weaknesses.md" ]; then
  cat > "${LOG_DIR}/weaknesses.md" << 'EOF'
# Weakness Tracking

## Categories

| Category | Occurrences | First Seen | Last Seen | Status |
|----------|-------------|------------|-----------|--------|

## Notes

_This file is automatically updated by the dev-mentor system after each session._
EOF
  echo "Created ${LOG_DIR}/weaknesses.md"
fi

# Initialize growth-summary.md if it doesn't exist
if [ ! -f "${LOG_DIR}/growth-summary.md" ]; then
  cat > "${LOG_DIR}/growth-summary.md" << 'EOF'
# Growth Summary

## Overview

_This file is automatically updated by the dev-mentor system._

## Skill Level Progression

| Date | Assessment | Key Changes |
|------|-----------|-------------|

## Milestones

_Milestones will be recorded as you progress through mentoring sessions._

## Overcome Weaknesses

_Weaknesses that have been resolved will be listed here._
EOF
  echo "Created ${LOG_DIR}/growth-summary.md"
fi

echo "Mentor logs directory ready: ${LOG_DIR}"
