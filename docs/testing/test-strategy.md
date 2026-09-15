# Test strategy

## Principles

- Tests provide evidence against requirements and risks, not line-count theatre.
- Prefer deterministic, isolated tests with clear failure messages.
- Keep most tests fast; reserve slower integration and end-to-end tests for meaningful boundaries and journeys.
- A defect receives a regression test before its fix where reproducible.
- Production-like behaviour is verified without using production secrets or personal data.

## Test layers

| Layer | Purpose | Typical scope | When required |
|---|---|---|---|
| Static | Catch format, type and policy defects | Whole repository | Every change |
| Unit | Prove logic and edge cases | Function/module | New or changed logic |
| Integration | Prove components and infrastructure work together | Service/database/queue | Boundary or persistence changes |
| Contract | Protect public schemas and compatibility | API/event/provider | Public or third-party interfaces |
| End-to-end | Prove critical user outcomes | Deployed system | High-value journeys |
| Security | Prove controls and abuse resistance | Trust boundaries | Security-sensitive changes |
| Operational | Prove migration, recovery and observability | Deployment/runtime | Risky releases |

## Required cases

For each requirement, cover the happy path, invalid input, boundary values, permissions, failure modes and relevant concurrency/idempotency behaviour. Map acceptance criteria to automated evidence in the pull request.

## Environments and data

- Use fixtures or generated synthetic data; never copy production personal data casually.
- Make tests independent and repeatable in local and CI environments.
- Pin tool and dependency versions through the stack's lockfile.
- Mock only beyond the boundary being tested; retain contract tests for important providers.

## Coverage and quality

Set a baseline after choosing the stack. Coverage is a diagnostic, not the target: require meaningful assertions on critical and changed paths. No coverage reduction or exclusion is acceptable without explanation.

## Flaky tests

Treat flakiness as a defect. Do not add blind retries. Record an owner, isolate the cause and repair promptly; any temporary quarantine must be visible and time-bounded.

## Local and CI execution

`make check` is the canonical suite. CI must execute it in a clean environment. Add separate scheduled or release suites for expensive tests if needed, but do not let their results disappear.

## Release evidence

Record commands, versions, results, skipped checks, known risks, migration rehearsal and rollback evidence in the pull request or release record.
