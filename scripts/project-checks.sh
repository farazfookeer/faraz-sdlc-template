#!/usr/bin/env sh
set -eu

# This is the only stack-specific integration point used by both local work and CI.
# Replace every TODO after choosing the framework. Keep commands deterministic and
# use the project's lockfile. Remove the template-only fallback once configured.

if [ -f package.json ]; then
  echo "TODO: configure JavaScript/TypeScript checks in scripts/project-checks.sh" >&2
  echo "Expected stages: deterministic install, format check, lint, typecheck, test, build." >&2
  exit 1
fi

if [ -f pyproject.toml ] || [ -f requirements.txt ]; then
  echo "TODO: configure Python checks in scripts/project-checks.sh" >&2
  echo "Expected stages: locked install, format check, lint, typecheck, test, build/package." >&2
  exit 1
fi

echo "No application stack detected; validating repository template."
sh scripts/validate-template.sh
