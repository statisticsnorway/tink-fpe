.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: default
default: | help

.PHONY: doctor
doctor: ## Sanity check of required tools and environment settings required for development
	@./bin/doctor.sh

.PHONY: update-all
update-all: ## Clone or pull all changes from associated repos
	@./bin/git-update.sh

.PHONY: status-all
status-all: ## Show a brief summary of changes to local repos
	@./bin/git-status.sh
