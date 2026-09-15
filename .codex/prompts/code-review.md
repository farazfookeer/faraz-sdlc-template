# Independent code review

Review **[PR/BRANCH/DIFF]** as a senior engineer. Do not modify files.

Read `AGENTS.md`, the linked requirement and relevant ADRs. Inspect the diff in context. Prioritise actionable findings about correctness, unmet acceptance criteria, regressions, unsafe assumptions, security/privacy, data loss, concurrency, compatibility, error handling, observability and missing tests.

For each finding, give severity, exact location, failure scenario and smallest useful remediation. Verify claims against the repository; do not invent problems. Then list questions, residual risks and checks examined. If there are no material findings, say so and state the limits of the review.
