---
name: retro
description: Crew retro – every role that worked writes down what it learned, repeat mistakes get turned into checks, so the same mistake does not come back. Use on /crew:retro, after a handover, after delivering something, and whenever the captain gives feedback on the crew's work ("that's wrong", "next time do…").
---
# Retro

Read `CREW_DIR/LEARNING.md` (Rules) – `CREW_DIR` is `~/.claude/crew/` or `.claude/crew/`.

For **each role that worked** on the piece of work (and the captain's feedback, if any):
1. **Find the lesson**: what would the role do differently next time, or what did the captain correct? Only from the captain's feedback or a verified result. Nothing worth changing → write "no lesson" in the summary and move on.
2. **Search for a similar one** in all role files (Bar + Lessons) and in `LEARNING.md`. Done = you can name the closest existing line, or say there is none.
3. **New** → add it to the role's `## Lessons` (or to `LEARNING.md` → Shared lessons if it applies to every role): `- YYYY-MM-DD · <topic> · <what to do differently> (<why>)`.
   **Explicit rule from the captain** → straight into the role's `## Bar`.
   **Similar exists = repeat mistake** → do not add another line. Turn it into a check (a `Done =` step in the Procedure, a rule in the Bar, or a small checklist/script the role must run), and log it in `LEARNING.md` → Repeat mistakes: `- YYYY-MM-DD · <role> · <mistake> → <check introduced>`.
4. A role has more than 15 lessons → merge similar ones, move proven ones into the Bar.

Finish with one sentence per role to the captain: what it learned (or "no lesson"), and each repeat mistake with its new check. Done = every role that worked has a lesson or "no lesson", every repeat mistake has a check.
