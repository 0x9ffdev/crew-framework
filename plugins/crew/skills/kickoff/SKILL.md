---
name: kickoff
description: Starts a bigger piece of work with the crew – the lead role writes a brief and a handover plan between roles, the captain approves, then the roles work. Use on /crew:kickoff, at the start of anything that takes more than about half a day, is new, or will be used by other people.
---
# Kickoff

Find the crew: `.claude/crew/CREW.md` in the current folder or its parents wins (folder crew); otherwise `~/.claude/crew/CREW.md`. No crew → tell the user to run `/crew:setup` first and stop.
Read `CREW.md` and the lead role's file. Work as the lead.

1. **Look for previous work** on the same thing: files, notes, earlier conversations. Done = you know what already exists.
2. **Brief**: goal in one sentence, how we know it worked (a number or a clear check), what is out of scope, constraints (money, data, approvals from `CREW.md`). If the work adds something that must never break, add it to `CREW.md` → Must always work, with how to verify it. Done = the captain would sign it without changes.
3. **Handover plan**: which roles, in what order, and for each handover its output and acceptance criterion. Anything bigger goes past the challenger first; anything people will see goes past the reviewer before the captain. Small work does not need every role – use as few as the work needs.
4. **Show brief + plan to the captain.** Done = the captain said yes or corrected it. Nothing starts before that.
5. Roles work in order, each reads its own file first. Each handover ends with something that can be shown.
6. **At the end** the lead writes a handover note (what is done, what is not, risks, next step) and runs `/crew:retro`.
