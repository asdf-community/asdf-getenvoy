.PHONY: lint
lint:
		shellcheck -x lib/utils.sh bin/*
