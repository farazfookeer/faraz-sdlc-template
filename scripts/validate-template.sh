#!/usr/bin/env sh
set -eu

required_files="
AGENTS.md
README.md
CONTRIBUTING.md
CHANGELOG.md
docs/product/vision.md
docs/product/requirements.md
docs/product/roadmap.md
docs/architecture/architecture.md
docs/architecture/security.md
docs/architecture/adr/000-template.md
docs/testing/test-strategy.md
.github/workflows/ci.yml
.github/pull_request_template.md
.env.example
.gitignore
"

for file in $required_files; do
  if [ ! -s "$file" ]; then
    echo "Missing or empty required file: $file" >&2
    exit 1
  fi
done

if find . -type f -not -path './.git/*' -print0 | xargs -0 grep -Il '' | xargs grep -nE '[[:blank:]]+$' >/dev/null 2>&1; then
  echo "Trailing whitespace found:" >&2
  find . -type f -not -path './.git/*' -print0 | xargs -0 grep -Il '' | xargs grep -nE '[[:blank:]]+$' >&2
  exit 1
fi

if find . -type f -not -path './.git/*' -size +1M | grep . >/dev/null 2>&1; then
  echo "Unexpected file larger than 1 MiB." >&2
  exit 1
fi

echo "Template structure and basic hygiene are valid."
