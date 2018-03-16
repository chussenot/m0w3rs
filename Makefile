help:	## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

watch:	## Watch the src folder for changes and run tests
	script/watch

test:	## Test all the implementations
	@echo "Run the main test"
	script/test

.PHONY: help watch test
.DEFAULT_GOAL := watch 
