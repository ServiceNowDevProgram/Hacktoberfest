
# 📘 Hacktoberfest Landing Page Repository Guidelines

Welcome to the **Hacktoberfest Landing Page** repository.  
This repository is designed to manage and orchestrate the landing page’s **template-driven assets** rather than generated application code. Please follow the guidelines below to ensure consistency, quality, and smooth collaboration.

---

## 🗂 Project Structure & Module Organization

This repository contains structured resources and workflow automation that should be treated carefully.

| Directory / File | Purpose |
|--------------------|---------|
| `.github/templates/rootreadmetemplate.md` | Master template for README.md. **Edit only this file** to change the public README. Keep headings and anchors unchanged to preserve automation stability. |
| `.github/workflows/hacktrack.yml` | GitHub Action forwarding repository activity to ServiceNow. Modify only when coordinating with the Developer Program. |
| `images/` | Stores banners, avatar art, and other media referenced from the template. Use lowercase, hyphenated filenames and add matching alt text for all new assets. |
| Root policy documents (`CODE_OF_CONDUCT.md`, `CONTRIBUTING.md`) | Define repository norms. Update only with explicit maintainer approval. |

---

## ⚙️ Build, Test, and Development Commands

This repository ships **static Markdown**, so there is no compilation step. Use lightweight validations before submitting pull requests.

### Suggested Commands:
\`\`\`bash
git status
\`\`\`
> Ensure only template or image files are staged.

\`\`\`powershell
pwsh -NoLogo -Command "npx markdownlint-cli2 \"**/*.md\""
\`\`\`
> Optional lint pass to detect heading order, spacing, and syntax issues.

\`\`\`bash
grep "README" .github/templates/rootreadmetemplate.md
\`\`\`
> Verify references still point to the template, not the generated README.md.

---

## 📝 Coding Style & Naming Conventions

Maintain high-quality Markdown standards:
- Use **ATX headings** (\`#\`, \`##\`).
- Include blank lines between sections.
- Keep lines within **80–100 characters** for readability.
- Use \`-\` bullets and two-space indentation for nested lists.
- Store images in \`images/\` with lowercase names joined by hyphens or digits.
- **Never edit \`README.md\` directly** — changes must go through the template.

---

## 🧪 Testing Guidelines

Manual validation is sufficient:
1. Preview edited template in a Markdown viewer.
2. Confirm all links and images load correctly.
3. Ensure anchors (\`#contribute\`, \`#projects\`, etc.) remain unchanged to preserve navigation.
4. New assets must be placed in the \`images/\` directory.

---

## 🔀 Commit & Pull Request Guidelines

Keep commits concise, action-oriented, and descriptive:
- Use present-tense summaries under **70 characters** (e.g., \`Update project list for 2025\`).
- PRs must:
  - Clearly explain intent.
  - Reference related Hacktoberfest issues/discussions.
  - Include screenshots for visual asset changes.
  - Note if ServiceNow webhook changes are affected.

Example:
> \`Update README template for 2025 Hacktoberfest\`

---

## 🔒 Automation & Security Notes

- \`.github/workflows/hacktrack.yml\` sends payloads using **ServiceNow-maintained secrets**.
- **Never hard-code credentials** or log sensitive information.
- Changes to workflows require maintainer coordination via the \`SNDevs #hacktoberfest\` channel.

---

## 🚀 Contributing

Your contributions are highly valued!  
Please review [CONTRIBUTING.md](CONTRIBUTING.md) before submitting pull requests.

---

### 📜 License
This repository follows the guidelines outlined in \`CODE_OF_CONDUCT.md\` and is licensed under the applicable open-source license.
