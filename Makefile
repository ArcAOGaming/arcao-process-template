# Makefile for project setup and execution

# Define the output file for the bundled Lua
OUTPUT_FILE=process.lua

# Define the target for running the node script
build:
	node bundle.js $(OUTPUT_FILE)

# Define the target for installing dependencies
install:
	luarocks install --only-deps arcao-process-template-1.0-1.rockspec
	npm install

# Define the target for running tests
test:
	busted --verbose

.PHONY: build install test
