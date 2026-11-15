# AGENTS.md — SkateQuest contributor instructions

These rules apply to AI coding agents and human contributors working on this repository. Follow the repository's actual code and instructions; do not assume planned features already exist.

## Pull requests: no drafts

- **Open regular, ready-for-review pull requests by default. Do not create Draft PRs.**
- If work is incomplete, keep it on your own branch or fork, describe blockers in the linked Issue, and open a regular PR **only when the change is ready to review**.
- A regular PR is **not** automatic approval to merge. Wait for the repository owner's acceptance and relevant checks.
- Reference the Issue in the PR description. Include a concise summary, exact test commands/results, screenshots for UI changes, and any remaining risks.

## Final approval and confidentiality

- **Only `@IEjuggalo` has final decision authority.** No contributor, agent or automation may merge any PR, change the approved product direction, publish, deploy, relicense, or spend funds without the owner's **explicit authorization for that change**. A passing check or “ready for review” is not permission.
- Technical reviewers may comment, suggest code changes, or recommend approval; those are **advisory**. The owner must make the final merge decision, even on documentation-only PRs.
- Do not enable automatic merging, automatic production deployment or auto-publishing.
- Use **public GitHub aliases only** in Issues, PRs and documentation: `@IEjuggalo` and `@justacalico`. No personal names or email addresses.
- Read [the client brief](docs/PROJECT_BRIEF.md) before implementing designs and [the communication protocol](docs/CONTRIBUTOR_COMMUNICATION.md) for progress, blockers, reference requests, and reviewer feedback. The brief describes *current*, *proposed* and *approved* states separately.
- The owner's product vision includes a gesture-controlled extreme-sports game, with aggressive inline first. A proposal to make a one-button runner instead is **not an approved replacement**.

## Git workflow

- Public contributors, including `justacalico`, use a fork and short-lived feature branch. Do not commit directly to the owner's `main`.
- Each PR should address a focused Issue; avoid unrelated refactors, dependency updates, or formatting changes.
- Keep `main` stable. Preserve existing approved visuals and features. Do not deploy or publish on behalf of the owner without authorization.
- Do not commit secrets, tokens, personal/customer information, private business files, console BIOS/ROMs, copyrighted assets without the required rights, or machine-specific paths.

## Quality checks

- For Flutter code changes, run `flutter pub get`, `flutter analyze`, and `flutter test` when the environment supports them; disclose skipped or failed checks.
- Add or update tests for behavior changes. Check accessibility and keyboard/controller interactions when relevant.
- Never claim a build, test, or deployment succeeded without evidence.
- Before merging, compare the PR with the exact Issue requirements and check licensing and privacy constraints.

## Current scope

SkateQuest currently contains a Flutter counter-app scaffold, not completed gameplay. Work on gameplay/UI should follow an explicitly reviewed project specification before replacing the starter screen. Existing Carnival Control and other CSK project code belong in their own repositories, not in SkateQuest.
