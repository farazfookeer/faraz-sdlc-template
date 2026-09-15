# Architecture

## Status

- **Owner:** [Name]
- **Last reviewed:** YYYY-MM-DD
- **Related ADRs:** [Links]

## Context and goals

[System purpose, quality attributes, constraints and explicit non-goals.]

## System context

```text
[User] -> [Product] -> [External service]
                 `-> [Data store]
```

Replace this sketch with a maintained diagram when useful. Describe trust boundaries and ownership.

## Components

| Component | Responsibility | Interface | Data owned | Failure behaviour |
|---|---|---|---|---|
| [Component] | [Purpose] | [API/event/UI] | [Data] | [Safe degradation] |

## Key flows

### [Flow name]

1. [Validated input enters a trust boundary.]
2. [Authorised business operation occurs.]
3. [State and observable outcome are recorded.]

## Data model and lifecycle

[Entities, ownership, classification, residency, retention, deletion, backup and recovery.]

## Interfaces and compatibility

[Public APIs, schemas, versioning, idempotency and compatibility policy.]

## Quality attributes

- **Security:** See `security.md`.
- **Reliability:** [SLO, timeouts, retries, recovery objectives]
- **Performance:** [Budgets and measurement]
- **Scalability:** [Expected load and limits]
- **Maintainability:** [Module boundaries and dependency rules]
- **Accessibility:** [Applicable standard]

## Deployment and operations

[Environments, configuration, migrations, health checks, monitoring, alerts, runbooks and rollback.]

## Decisions and debt

Significant decisions belong in `docs/architecture/adr/`. Track accepted debt with an owner and review date.
