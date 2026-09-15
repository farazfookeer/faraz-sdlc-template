# Security and privacy

## Scope and ownership

- **Security owner:** [Name]
- **Last threat-model review:** YYYY-MM-DD
- **Data protection jurisdiction(s):** [For example UK GDPR]

## Assets and classification

| Asset | Classification | Owner | Storage | Retention/deletion |
|---|---|---|---|---|
| [Asset] | Public/Internal/Confidential/Restricted | [Owner] | [Location] | [Policy] |

## Trust boundaries and actors

[Describe users, administrators, services, external providers and where data crosses a boundary.]

## Threat model

| Threat/abuse case | Impact | Control | Detection | Residual risk |
|---|---|---|---|---|
| [Threat] | [Impact] | [Preventive control] | [Signal] | Low/Medium/High |

Consider identity spoofing, broken access control, injection, data exposure, unsafe file handling, supply-chain compromise, denial of service, fraud and misuse of AI-generated content where relevant.

## Required controls

- Deny by default; enforce authorisation server-side on every protected action.
- Validate and constrain input at trust boundaries; encode output for its context.
- Use parameterised data access and safe, maintained cryptography.
- Store secrets only in approved secret managers; rotate and scope them minimally.
- Encrypt sensitive data in transit and at rest using platform-supported controls.
- Minimise collection, access, logs and retention of personal or sensitive data.
- Redact credentials, tokens and sensitive fields from logs and errors.
- Pin or lock dependencies and review vulnerability and provenance alerts.
- Rate-limit and monitor abuse-prone endpoints.
- Record security-relevant events without creating a new sensitive-data store.
- Test backup restoration, incident response and credential revocation.

## Vulnerability management

Triage by exploitability and impact, record an owner and deadline, and verify the remediation. Do not silently suppress findings. Document accepted risk, compensating controls and an expiry date.

## Incident response

1. Contain impact and preserve evidence.
2. Revoke exposed credentials and close the attack path.
3. Assess affected users and legal/reporting duties.
4. Recover from known-good state and monitor.
5. Document the timeline, root causes and corrective actions.

## Security release checklist

- [ ] Threat model and data flows reflect the change.
- [ ] Authentication, authorisation and tenant isolation are tested.
- [ ] Inputs, outputs, uploads and errors fail safely.
- [ ] Secrets and sensitive data are absent from code, logs and artefacts.
- [ ] Dependency, SAST and secret checks are reviewed.
- [ ] Monitoring and incident/rollback procedures cover the change.
