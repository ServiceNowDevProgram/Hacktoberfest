<!--
Translation PR. Please keep this checklist — reviewers use it to check the PR quickly.
If you haven't already, open a Translation Request issue first to claim your language.
-->

## Translation

- Language:
- ISO code (folder name under `translations/`):
- Related issue: #

## Checklist

- [ ] All three files are included in this PR: `README.md`, `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`
- [ ] Files live under `translations/<iso-code>/` with the **exact same filenames** as the English originals
- [ ] Internal links between translated files point to same-language siblings (e.g. `translations/es/README.md` links to `CONTRIBUTING.md`, not `../../CONTRIBUTING.md`)
- [ ] Links to non-translated files (LICENSE, source code, etc.) point back to the repo root with relative paths
- [ ] Image references point back to the original `images/` assets — no images duplicated into the translation folder
- [ ] I left the `<!-- LANGUAGE_SWITCHER:START -->` / `<!-- LANGUAGE_SWITCHER:END -->` markers in place, empty, right after the H1 in each file — I did not write my own switcher links
- [ ] I have not modified any files outside `translations/<iso-code>/`
