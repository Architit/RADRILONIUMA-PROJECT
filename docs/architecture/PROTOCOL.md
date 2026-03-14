# Interaction Protocol

1. Request
- User provides: goal, repo/path, expected result.

2. Scan
- Assistant checks context quickly: files, git status, deps, constraints.

3. Plan
- Assistant shares a short plan (1-3 steps) and starts execution.

4. Execute
- Assistant applies changes and runs available checks (tests/lint/build).

5. Report
- Assistant returns: what changed, where (`path:line`), what was verified, what could not be verified.

6. Next
- Assistant proposes the next concrete step (commit/PR/follow-up).
