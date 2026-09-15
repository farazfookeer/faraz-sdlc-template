# ADR-001: Record significant architectural decisions

- **Status:** Accepted
- **Date:** 2026-09-10
- **Decision owners:** Repository owner
- **Related:** Initial repository setup

## Context

A one-person team using coding agents can change design quickly, but later sessions lack the reasoning behind existing constraints. Code shows what exists, not why alternatives were rejected.

## Decision drivers

- Preserve decision context across human and Codex sessions.
- Keep important trade-offs reviewable with the code.
- Avoid accidental reversal of deliberate constraints.
- Add minimal process overhead.

## Options considered

### Option A: Decisions only in issues or chat

- Advantages: no additional document.
- Disadvantages: fragmented, difficult to discover and easy to lose.

### Option B: Versioned Architecture Decision Records

- Advantages: concise, durable, reviewable and close to the implementation.
- Disadvantages: must be maintained and can become stale.

## Decision

Use numbered ADRs for decisions that affect system structure, public contracts, security posture, data ownership, major dependencies or hard-to-reverse operational choices. Small implementation choices do not require an ADR.

## Consequences

- **Positive:** Future work can recover the intent and trade-offs behind the design.
- **Negative/trade-off:** Authors must update status when decisions are superseded.
- **Security/privacy:** Security-relevant choices receive explicit review.
- **Operational:** ADRs become part of planning and pull request review.

## Validation and review

Pull requests with significant design changes link an accepted ADR. Review ADR relevance during architecture reviews.

## Rollback or migration

Supersede this record with a new ADR that explains the replacement; retain this file as history.
