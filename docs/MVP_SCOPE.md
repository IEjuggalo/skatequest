# SkateQuest MVP scope and first playable vertical slice

Status: **proposal**, awaiting owner review. Nothing here is approved yet. This document describes the smallest game that could replace the Flutter counter scaffold, so Matthew can approve or trim it before anyone writes gameplay code.

## What exists today

The repo is the stock Flutter counter app (`lib/main.dart`, one smoke test). There is no gameplay, no art, no approved design. Ideas in the separate `SkaterBladerBMXScoot` concept repo are reference material only and are not approved requirements.

## Proposed first playable

A 2D side-scrolling "ollie over obstacles" runner on a skateboard:

- The skater moves right automatically at a fixed speed along a flat street.
- One input: tap / press to jump. Hold briefly for a slightly higher jump.
- Obstacles (curb, cone, bench) scroll in from the right. Hitting one ends the run.
- Score = distance traveled. Show a game-over screen with score and a restart button.

That is the whole loop: play, crash, see score, restart. No tricks, no levels, no progression.

### Why this scope

- One input and one fail condition keeps the first slice small enough to finish and review.
- It exercises the real plumbing the game will need later (game loop, collision, screens, score) without committing to a big design.
- Alternatives considered and left out: an endless runner with multiple tricks (too much animation work before any art exists), a top-down exploration game (needs maps and a camera, too large for a first slice), and anything physics-sandbox-like (unbounded scope).

## Proposed platform and controls

- **Target platform:** Android first, since Flutter already scaffolds it and testing is easiest. Desktop/web stay buildable since Flutter gives that for free.
- **Input:** touchscreen tap to jump, spacebar/up-arrow on desktop builds. Controller support is out of scope for the slice.
- **Orientation:** landscape.

## Navigation

Three screens total:

```
+-------------+      tap start     +-------------+     crash      +-------------+
| TITLE       | -----------------> | RUN         | -------------> | GAME OVER   |
| "tap to play"|                   | distance: 12m|               | score: 42m  |
+-------------+                    +-------------+               | best: 67m   |
                                                                 | tap to retry |
                                                                 +-------------+
```

- Title: project name, one line "tap to play".
- Run: skater sprite, ground line, obstacles, distance counter.
- Game over: score, best score (in-memory only), retry prompt.

## Acceptance tests (measurable)

1. From a fresh launch, tapping once starts a run, and the distance counter visibly increases.
2. A jump input while on the ground lifts the skater clear of a cone obstacle; running into a cone without jumping ends the run and shows the score.
3. After game over, one tap restarts a new run with the distance reset to zero.

These are checkable in widget tests plus a quick manual run on Android.

## Decisions for Matthew to approve

- The runner/one-jump concept itself. If he wants a different fantasy first (vert ramp, street line, something else), this doc should be revised before code is written.
- Target platform order (Android-first proposed).
- Any placeholder art. For the slice, colored rectangles are proposed; real art waits for approved assets per `docs/ASSET_POLICY.md`.
- The name/branding shown on the title screen.

## Explicitly out of scope for the slice

- Open world, multiplayer, networking, accounts, leaderboards beyond local best score.
- Trick system, combos, grinds.
- Full physics simulation (simple gravity + collision boxes only).
- Music, sound, monetization, app store work.

## Dependencies and unknowns

- Flutter is already the project SDK. A game loop can be written in plain Flutter (CustomPainter + Ticker) or with Flame; Flame is proposed but adds a dependency, which needs its own license check and owner sign-off.
- No approved artwork exists yet, so all visuals in the slice would be placeholders.
- Performance on low-end Android devices is untested.
