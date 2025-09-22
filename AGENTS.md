# Repository Guidelines

## Project Structure & Module Organization
This repository orchestrates the Hacktoberfest landing page rather than application code. Update the template-driven assets instead of the generated output.
- .github/templates/rootreadmetemplate.md – edit this file to change the public README.md; keep headings and anchors unchanged so the generator stays stable.
- .github/workflows/hacktrack.yml – GitHub Action that forwards repo activity to ServiceNow; touch it only when coordinating with the Developer Program.
- images/ – houses banners and avatar art referenced from the template; retain the lowercase, hyphen-or-digit naming style and add matching alt text when linking new media.
- Root policy docs (CODE_OF_CONDUCT.md, CONTRIBUTING.md) describe participation norms; only update them with maintainer approval.

## Build, Test, and Development Commands
The repo ships static Markdown, so there is no compile step. Use lightweight checks before opening a PR.
- git status – confirm that only template or image files are staged.
- pwsh -NoLogo -Command "npx markdownlint-cli2 \"**/*.md\"" – optional lint pass to catch heading order and spacing issues.
- g "README" .github/templates/rootreadmetemplate.md – verify new references still point at the template rather than the generated file.

## Coding Style & Naming Conventions
Write Markdown with ATX headings (#, ##), blank lines between sections, and 80–100 character lines for readability. Lists should use - bullets and two-space indents when nesting. Image filenames live under images/ and follow lowercase tokens joined by hyphens or digits. Do not edit README.md directly; always work through the template to keep automation intact.

## Testing Guidelines
Manual validation is sufficient. After editing the template, open it in a Markdown previewer to check links and image paths. Ensure any new assets load from images/ and that anchors (#contribute, #projects, etc.) remain unchanged so existing navigation keeps working. There are no automated coverage requirements.

## Commit & Pull Request Guidelines
Recent commits are short and action-oriented (for example, preptember 2025). Follow that lead: use present-tense summaries under 70 characters (Adjust project list for 2025). Each PR should explain the intent, reference related Hacktoberfest issues or discussions, and include screenshots when you touch visual assets. Mention if the change affects the ServiceNow webhook so reviewers can monitor the next workflow run.

## Automation & Security Notes
The hacktrack workflow sends payloads using secrets maintained by ServiceNow. Never hard-code credentials or log sensitive outputs. If you need to disable or modify the workflow, coordinate with the maintainer team via the SNDevs #hacktoberfest channel first.
