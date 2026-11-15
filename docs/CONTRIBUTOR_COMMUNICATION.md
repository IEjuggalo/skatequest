# Contributor Communication & Review Protocol

For work on the public [SkateQuest repository](https://github.com/IEjuggalo/skatequest), use public **account aliases** only: client `@IEjuggalo`, contributor `@justacalico`. Do not publish personal names, personal email addresses, local computer paths, business customer data, or private documents.

## How to contact the client about a task

**Use the comments on the assigned GitHub Issue** for all normal progress, questions and blockers. This leaves a searchable record attached to the work. Public-repository contributors may comment and open Issues without direct repository write access.

### Progress update — copy/paste into the Issue

```text
STATUS: In progress / Blocked / Ready for review
COMPLETED: <what actually works>
EVIDENCE: <safe screenshot, demo link, CI run, test output, commit>
NEXT: <next measurable step>
QUESTION FOR OWNER: <decision needed, if any>
```

### When blocked

- Comment on the existing Issue with **BLOCKED:**, a summary, steps to reproduce, expected vs actual behavior, and what help is needed.
- If it is a separate recurring bug or a substantial new request, open an Issue with the **Blocker / bug report** template and link the original issue. Avoid duplicate tickets.
- Include sanitized logs, a screenshot, or a short video when useful; never share passwords, tokens, student details, customer records, or private browser tabs.
- Do not make up a fix or silently change requirements. Wait for a decision or switch to an independent approved task.

### Request for art, pictures, video, brochures, slide decks or other materials

In the Issue comments, write:
```text
REFERENCE REQUEST: <item needed>
WHY: <which acceptance criterion depends on it>
FORMAT: <screenshot, short video, editable source, picture, slides, etc.>
USE: <private review only / request permission to commit publicly>
CAN I CONTINUE WITHOUT IT?: Yes/No
```
The client or coordinator can provide the approved version. **No external media is automatically safe to copy**, even for prototypes. Screenshots of planned work must say *concept*; footage of running software must say *tested build*.

## Ready for code review

1. Push changes to a feature branch in your fork.
2. **Open a regular PR, not a Draft PR**, and link its Issue.
3. Summarize exactly what changed, tests run and their results, screenshots/video for visible changes, and any risk or rollback.
4. Label the original Issue *Ready for review* in a comment (contributors may not have permissions to change labels).
5. The coordinator reviews the diff and checks; the owner reviews product direction and makes the **final merge decision**.

## Review outcomes

- **Changes requested:** respond in the PR, revise the branch, and re-run checks.
- **Approved by coordinator:** technical recommendation only, **not** owner permission.
- **Approved by @IEjuggalo:** only then may changes merge; the owner can choose to merge directly or explicitly authorize the coordinator for that specific PR.
- **Released:** a separate decision after merge; merging is not permission to deploy or spend money.

## Reporting security or privacy issues

Do not open a public Issue containing a secret, exploit credential, or personal/customer information. Contact the owner using an agreed private route instead. If exposure has occurred, report the fact (without repeating the secret) and prioritize credential revocation/cleanup. No unauthorized penetration testing.

## Parent/client and contributor communication expectations

Keep Issue updates factual and short. A useful weekly or milestone recap covers what was delivered, which Issue/PR it belongs to, what tests ran, what is blocked, and precisely what the owner needs to decide. Do not claim the work is merged, deployed, or approved until GitHub or the owner confirms it.

**Owner policy:** `@IEjuggalo` has final say. A contributor, agent, or automated workflow must not merge or deploy on its own authority.
