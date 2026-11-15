# Asset and source intake policy

Rules for adding code, art, audio, fonts, and other media to SkateQuest. This exists so every file in the repo has a known origin and a license we can actually use.

## Current license

The repository is licensed under the GNU Affero General Public License v3 (AGPL-3.0-only). See `LICENSE`.

A note on what that means: AGPLv3 (like GPLv3) is a strong copyleft license, not a noncommercial license. It does not stop anyone from selling or redistributing the software, as long as they follow its terms, including source disclosure. If the owner wants to prevent commercial reuse or resale, that requires a different license, and choosing or changing the license is Matthew's decision. Nobody should silently relicense the repo or assume AGPLv3 blocks resale.

## What may be committed

- Original work you made yourself and agree to contribute under the project license.
- Assets under permissive licenses that allow redistribution and modification (CC0, CC-BY, CC-BY-SA, MIT, Apache-2.0, OFL for fonts, and similar).
- Third-party code that has been reviewed for license compatibility with AGPLv3 before merging.

For every third-party asset or snippet, record the author, the license, and the source URL before it is committed.

## What may not be committed

- Secrets, tokens, credentials, or private business information.
- Personal data about customers, users, or other people.
- Console BIOS files, ROMs, or other dumped firmware.
- Copyrighted music, ripped game artwork, sprites, models, or audio taken from commercial games.
- Anything scraped or downloaded where the license does not clearly permit redistribution.
- Machine-specific paths or local environment files.

When in doubt, leave it out and ask the owner.

## Third-party code

New dependencies need a quick license check: confirm the package license allows use in an AGPLv3 project, and prefer maintained packages. Code copied from other projects (including other CSK repos like Carnival Control or SkaterBladerBMXScoot) is not automatically cleared; check its license and authorship first and note where it came from.

## Attribution record

Keep a short record for each non-original asset. Put it next to the file (for example `assets/ATTRIBUTIONS.md`) or in the PR description while we have few assets:

```
- file: assets/player/skater.png
  author: Jane Doe
  license: CC-BY-4.0
  source: https://example.com/skater.png
  notes: resized to 256px, attribution shown on the credits screen
```

If the license requires visible attribution (CC-BY does), plan where the credit appears before merging the asset.
