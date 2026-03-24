# Contributing to Dev Mentor Skills

Thank you for your interest in improving the dev-mentor plugin!

## How to Contribute

### Reporting Issues

Open an issue on [GitHub](https://github.com/kazuki1213/dev-mentor-skills/issues) with:
- What you expected to happen
- What actually happened
- Which platform you're using (Claude Code / Codex)

### Submitting Changes

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/my-improvement`)
3. Make your changes
4. Test with `claude --plugin-dir .` locally
5. Submit a pull request

### What to Contribute

- **Mentoring methodology improvements** — Better prompts, new teaching patterns, phase workflow enhancements
- **Agent prompt quality** — More consistent outputs, better edge case handling
- **Codex compatibility** — Improving `.toml` agent definitions, Codex-specific features
- **Cultural adaptations** — Communication patterns for different team cultures
- **Translations** — Agent prompts, references, or documentation in other languages
- **Bug fixes** — Inconsistencies, missing tool permissions, prompt anti-patterns

### Important Notes

- Changes to `commands/*.md` must also be synced to `.agents/skills/*/SKILL.md`
- Changes to `agents/*.md` should be reflected in `.codex/agents/*.toml`
- Never include numerical scores (0-100) in mentee-facing or manager-facing outputs
- Follow the existing mentoring philosophy: guide, don't do the work

## Code of Conduct

Be kind, constructive, and respectful. We're building a tool that teaches people — let's practice what we preach.
