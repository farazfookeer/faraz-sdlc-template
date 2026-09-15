# Bug fix with regression proof

Investigate **[BUG/ISSUE]**. Follow `AGENTS.md`.

First reproduce the defect with the smallest automated regression test and confirm it fails for the expected reason. Do not change production implementation before that evidence exists. Then find the root cause, implement the smallest safe fix, confirm the regression test passes and run `make check`.

Do not weaken existing tests or mask the failure with retries. Report the root cause, changed files, before/after test evidence, full check results, compatibility or security impact and remaining risks. If reproduction is impossible, stop and explain the missing evidence.
