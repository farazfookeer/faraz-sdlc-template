# Security review

Perform a read-only security review of **[SCOPE/PR]**. Follow `AGENTS.md` and `docs/architecture/security.md`.

Map assets, actors, entry points, trust boundaries and sensitive data flows. Review authentication, authorisation, tenant isolation, validation, injection, file/network handling, secrets, cryptography, privacy, logging, rate limits, dependency/supply-chain risk and secure failure behaviour.

Report evidence-backed findings by severity with location, exploit scenario, impact and remediation. Separate confirmed issues from hypotheses. Note controls examined, tests or scans run, blind spots and residual risk. Do not expose secrets or perform active exploitation against external or production systems.
