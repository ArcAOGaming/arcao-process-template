# Makefile for project setup and execution

# Define the output file for the bundled Lua
OUTPUT_FILE=process.lua


setup:
	@echo "Setting up the environment..."
	@if [ "$(shell uname)" = "Darwin" ]; then \
		/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; \
		brew install luarocks; \
		curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash; \
		export NVM_DIR="$$HOME/.nvm"; \
		[ -s "$$NVM_DIR/nvm.sh" ] && . "$$NVM_DIR/nvm.sh"; \
		nvm install; \
		nvm use; \
	elif [ "$(shell uname)" = "Linux" ]; then \
		sudo apt-get update; \
		sudo apt-get install -y luarocks; \
		curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash; \
		export NVM_DIR="$$HOME/.nvm"; \
		[ -s "$$NVM_DIR/nvm.sh" ] && . "$$NVM_DIR/nvm.sh"; \
		nvm install; \
		nvm use; \
	else \
		echo "Please follow the instructions in docs/misc/install_npm.md and docs/misc/install_luarocks.md for your OS."; \
	fi

# Define the target for installing dependencies
# Installing Lua dependencies to lib.
# Installing Node dependencies to node_modules.
# Intalling AO
install:
	luarocks install --tree=lib --only-deps arcao-process-template-1.0-1.rockspec
	npm install
	npm i -g https://get_ao.g8way.io

# Define the target for setting up the environment

# Define the target for running the node script
build:
	node bundle.js $(OUTPUT_FILE)

# Define the target for running tests
test:
	busted --verbose

deploy:
	bash deploy.sh

.PHONY: build install test setup deploy
