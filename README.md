# faraz-sdlc-template

A concise, production-minded Git repository starter for one-person, Codex-assisted software development. It makes requirements, decisions, tests and independent quality gates part of the work rather than relying on an agent's confidence.

## Lifecycle

```text
idea -> requirement -> design/ADR -> issue -> branch -> plan -> implementation
     -> local checks -> pull request -> review -> CI/security -> release -> observe
```

The repository starts without a framework. Choose a stack, add its manifest and lockfile, then replace the marked commands in `scripts/project-checks.sh`. `make check` remains the single local and CI entry point.

## Start a new project

1. Create a repository from this template, or unzip/copy it and remove the existing `.git` directory if present.
2. Replace the project placeholders in this README and the documents under `docs/`.
3. Choose a stack and configure `scripts/project-checks.sh` with deterministic install, format-check, lint, type-check, test and build commands.
4. Run `make bootstrap`, then `make check`.
5. Initialise Git, commit the baseline and publish it to GitHub.
6. In GitHub, protect `main`: require pull requests, required reviews where feasible, required status checks, conversation resolution and no force pushes.
7. Configure environments and secrets outside Git; enable GitHub secret scanning/push protection and Dependabot alerts where available.
8. Configure and enable the CodeQL and dependency-review workflows as described in their files.
9. Write the first requirement, create an issue and work on a short-lived branch.

Example:

```sh
cp -R faraz-sdlc-template my-product
cd my-product
rm -rf .git
git init
git add .
git commit -m "chore: initialise project from SDLC template"
```

## Day-to-day workflow

1. Define a small outcome in `docs/product/requirements.md` or an issue. Include acceptance criteria and non-functional requirements.
2. Record significant design choices with `docs/architecture/adr/000-template.md`.
3. Create `feature/ISSUE-short-name` or `fix/ISSUE-short-name`.
4. Give Codex the relevant prompt from `.codex/prompts/`; approve the plan before implementation for non-trivial work.
5. Run `make check`. Open a pull request using the supplied template.
6. Review in a fresh context, let CI reproduce the evidence, then merge.
7. Release from a clean `main`, tag with SemVer and update `CHANGELOG.md`.

## Repository map

- `AGENTS.md`: binding engineering and Definition of Done rules for Codex.
- `docs/product/`: vision, requirements and roadmap.
- `docs/architecture/`: system design, security model and ADRs.
- `docs/testing/`: risk-based test strategy.
- `.codex/prompts/`: reusable prompts for common lifecycle stages.
- `.github/`: issue, pull request, CI and security automation.
- `scripts/`: the stack-specific quality-gate integration point.

## Branches and releases

`main` is always releasable. Use short-lived `feature/`, `fix/`, `chore/` and `release/` branches; merge through reviewed pull requests. Use Conventional Commits and Semantic Versioning (`MAJOR.MINOR.PATCH`). Prefer squash merges for a clean one-person history. Tag releases as `vX.Y.Z`; create release notes from the changelog and retain rollback instructions for risky changes.

## Customisation checklist

- [ ] Name, owner, users and measurable outcomes are defined.
- [ ] Architecture and data classification reflect the actual system.
- [ ] Real quality commands replace every `TODO` in `scripts/project-checks.sh`.
- [ ] CI runtime and caching match the chosen stack.
- [ ] CodeQL languages are selected and its triggers enabled.
- [ ] Repository security settings and branch rules are enabled.
- [ ] Deployment, monitoring, backup and rollback procedures are documented.
- [ ] A licence is selected before external distribution.

## Licence

This template is available under the [MIT Licence](LICENSE). Projects created
from it may retain the licence or replace it with terms appropriate to their
own distribution model.
