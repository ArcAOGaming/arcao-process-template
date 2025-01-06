# Development Guide

## Prerequisites

### Installing LuaRocks

#### macOS
First, install Homebrew if you haven't already:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then install LuaRocks:
```bash
# Using Homebrew
brew install luarocks
```

#### Linux
```bash
sudo apt-get update
sudo apt-get install luarocks
```

#### Windows
1. Download the latest Windows installer from the [LuaRocks releases page](https://github.com/luarocks/luarocks/wiki/Download)
2. Run the installer and follow the installation wizard
3. Add LuaRocks to your system PATH if the installer hasn't done so

### Installing Node.js

#### macOS/Linux (Using NVM)
1. Install NVM:
   ```bash
   curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
   ```
2. Restart your terminal
3. Install Node.js:
   ```bash
   nvm install 22
   nvm use 22
   ```

#### Windows
Download and install Node.js v22.x LTS directly from the [Node.js official website](https://nodejs.org/en/download)

### Installing Project Dependencies

To install the project's dependencies, simply run:

```bash
make install
```

### Building the Project

To build the project, use:

```bash
make build
```

### Running Tests

To run the test suite, execute:

```bash
make test
```

This project uses [Busted](https://olivinelabs.com/busted/) for testing. All test files should:
- Be placed in the `spec` directory
- Have a filename ending in `_spec.lua`
- Use BDD-style `describe` and `it` blocks