# SkateQuest MVP options and first-slice decision record

Status: **proposal for owner review**. Nothing in this document is approved. It lists candidate directions for the first playable slice so @IEjuggalo can approve, trim, or reject them before anyone writes gameplay code.

Product direction comes from the owner's brief in `docs/PROJECT_BRIEF.md` (introduced in PR #14). That document is the source of truth; this file only proposes options against it.

## Established direction (from the brief)

- Mobile, finger-controlled extreme-sports game. Working names: GRINDLINE / Finger Xtreme.
- Tactile gestures are the core interaction: drag, release, flick, spin.
- Aggressive inline skating first; skateboarding, BMX, and scooters as later modes.
- Tricks, grinds, skateparks, progression.
- Original or properly licensed media only.
- The repo today is still the Flutter counter scaffold. Nothing here authorizes replacing it or the product vision.

## Candidate A: inline-skating gesture and trick slice (recommended)

One small original skatepark spot: flat ground, one rail or ledge, one small ramp.

Core loop:

- Drag along the ground to push and steer the skater.
- Release, then flick up, to ollie.
- Drag mid-air to spin.
- Land aligned on the rail to grind; land badly and the run ends.
- Each landed trick shows its name and score. Crash, tap, restart instantly.

Screens: title, skate spot, crash/restart overlay.

Why this candidate:

- It tests the actual product idea: whether finger control can feel like skating.
- It exercises the plumbing the full game needs (gesture recognition, trick/grind detection, collision, scoring, screens) at the smallest size that still proves the concept.
- It matches the brief's proposed first demonstration.

Placeholder art only (flat-color shapes). No licensed media, no real park names or locations.

## Candidate B: one-button runner (fallback only)

The earlier draft of this document proposed a tap-to-jump auto-runner. It stays here only as the lowest-effort fallback:

- Skater auto-moves, tap to jump obstacles, score is distance.
- Cheap to build and exercises basic game-loop plumbing, but it does not demonstrate finger-controlled tricks and is not a substitute for the product vision. If chosen, it must ship clearly labeled as a temporary plumbing exercise, not the game direction.

## Rejected for the first slice

- Full physics sandbox: unbounded tuning with nothing reviewable quickly.
- Multiple sports or parks before one gesture-trick loop exists.
- Real city levels or named parks: needs verified references and approved assets, future scope per the brief.

## Decisions for @IEjuggalo

| Decision | Proposal | Status |
| --- | --- | --- |
| First-slice concept | Candidate A (inline gesture/trick spot) | **Unapproved**, awaiting owner |
| Fallback if Candidate A is too large | Candidate B (runner, clearly temporary) | **Unapproved** |
| Platform order | Android first for testing; desktop/web stay buildable | **Unapproved** |
| Engine approach | Plain Flutter (`CustomPainter` + `Ticker`); Flame only after a license check and owner sign-off | **Unapproved** |
| Art for the slice | Flat-color placeholder shapes only | **Unapproved** |
| Title/branding on screen | Working name per brief; final name TBD | **Unapproved** |

## Candidate A acceptance checks (measurable, if approved)

1. On launch, one tap reaches the skate spot and the skater stands on flat ground.
2. A drag gesture visibly accelerates the skater; a release plus upward flick produces a jump.
3. Landing aligned on the rail registers a grind, shows a trick name, and adds to the score.
4. A bad landing ends the run and shows the score; one tap restarts with the score reset to zero.

Checkable in widget tests plus a manual run on Android.

## Explicitly out of scope for any first slice

- Open world, multiplayer, networking, accounts, remote leaderboards.
- Full trick catalog, combos, progression/unlocks, customization.
- Real-world maps, real park names, or licensed brands/media.
- Music, sound, monetization, store publication.

## Dependencies and unknowns

- Gesture feel on real hardware is unproven; the slice exists to test exactly that.
- No approved artwork exists, so every visual is a placeholder.
- Flame (if considered) adds a dependency that needs a license check and owner sign-off.
- Performance on low-end Android devices is untested.

No gameplay code, assets, or product-direction changes will be written or merged until @IEjuggalo approves a candidate in writing.
