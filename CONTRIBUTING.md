# Contributing to SkateQuest

SkateQuest is currently a Flutter starter scaffold (the counter app). Contributions happen through Issues reviewed by the owner (Matthew), so read `AGENTS.md` first and check that an Issue exists for the work you want to do.

## Setup

1. Fork `IEjuggalo/skatequest` to your own account.
2. Clone your fork and add the upstream remote:

   ```sh
   git clone https://github.com/<you>/skatequest.git
   cd skatequest
   git remote add upstream https://github.com/IEjuggalo/skatequest.git
   ```

3. Install a stable Flutter SDK compatible with `pubspec.yaml` (Dart `^3.7.0`), then run `flutter pub get`.

## Branches

- Never commit directly to `main`, yours or upstream's.
- Create a short-lived branch per Issue off `upstream/main`, for example `shawn/widget-tests` or `docs/mvp-scope`.
- One Issue, one PR. Keep unrelated refactors, dependency bumps, and formatting changes out.

## Before you open a PR

Run the checks and keep the output:

```sh
flutter pub get
flutter analyze
flutter test
```

Report the Flutter and Dart versions you used (`flutter --version`). If a check cannot run in your environment, say so honestly in the PR instead of claiming it passed.

## Pull requests

- **Regular PRs only, no drafts.** If the work is not ready for review, keep it on your branch and note the blocker in the Issue. Open the PR when it is ready.
- Fill in the PR template: link the Issue, summarize the change, give exact test commands and results, attach screenshots only for UI changes.
- A regular PR is not approval to merge. Wait for the owner's review.
- Do not include secrets, credentials, personal data, private business files, console BIOS/ROMs, or assets without the required rights. See `docs/ASSET_POLICY.md` if it exists on your base branch.

## What to include as evidence

- The exact commands you ran and their results (paste output or link a CI run).
- Screenshots for visible UI changes. Do not include screenshots or logs containing personal information.
- Any remaining risks or known gaps.
