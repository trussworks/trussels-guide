PRE-COMMIT := $(shell which pre-commit)

run:
	bundle exec jekyll serve

pre-commit: .git/hooks/pre-commit
	pre-commit run --all-files

# Update the pre-commit hooks if the pre-commit binary is updated.
.git/hooks/pre-commit: $(PRE-COMMIT)
	pre-commit install

.PHONY: run
