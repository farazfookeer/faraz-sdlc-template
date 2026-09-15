.PHONY: help bootstrap check

help:
	@echo "make bootstrap  Prepare local scripts"
	@echo "make check      Run all repository quality gates"

bootstrap:
	@chmod +x scripts/*.sh
	@echo "Bootstrap complete. Configure scripts/project-checks.sh for the chosen stack."

check:
	@sh scripts/project-checks.sh
