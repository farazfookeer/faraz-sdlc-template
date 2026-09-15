# Contributing

## Before starting

- Work from an issue or requirement with acceptance criteria.
- Search for relevant ADRs and existing tests.
- For non-trivial work, propose a plan before editing.
- Create a branch from an up-to-date `main` using the conventions in `README.md`.

## Changes

- Keep the pull request small and single-purpose.
- Follow `AGENTS.md` and local conventions.
- Add or update tests with behaviour.
- Add a failing regression test before fixing a reproducible bug.
- Document public behaviour, operational changes and significant decisions.
- Never commit secrets, local configuration, production data or generated clutter.

## Validation

Run:

```sh
make check
```

If a check cannot run, explain why in the pull request. Do not describe an unrun check as passing.

## Commits and pull requests

Use Conventional Commits. Reference the issue, complete the pull request checklist and describe scope, evidence, security considerations, deployment and rollback. Merge only after required checks pass and all material review comments are resolved.

## Releases

Keep `main` releasable. Update `CHANGELOG.md` under `Unreleased`; choose the SemVer increment from user-visible compatibility, not effort. Release from a clean commit, tag `vX.Y.Z`, publish notes and verify the deployed version. For a failed release, stop rollout or revert; do not patch production by hand without recording the change.
