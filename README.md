# homebrew-janus

Homebrew tap for [Janus](https://github.com/divmain/janus) - a plain-text issue tracking CLI with Markdown files and remote sync.

## Installation

```bash
# Add the tap
brew tap divmain/janus

# Install Janus
brew install janus
```

## Usage

After installation, run:

```bash
# Initialize a new Janus project
janus init

# Create a new ticket
janus new

# List all tickets
janus list

# Interactive browser
janus browse
```

See the [Janus documentation](https://github.com/divmain/janus) for full usage instructions.

## Updating

```bash
brew upgrade janus
```

## Features

- **Local-first storage**: Tickets stored as Markdown files with YAML frontmatter
- **High-performance cache**: SQLite-based caching for fast lookups
- **Interactive TUI**: Terminal-based issue browser and Kanban board
- **Remote sync**: Bidirectional sync with GitHub Issues and Linear

## Troubleshooting

### Command Not Found

If `janus` is not found after installation:

```bash
# Ensure Homebrew bin is in your PATH
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

### Debug Mode

To troubleshoot issues:

```bash
# Run with verbose output
RUST_LOG=debug janus list
```

## Development

See the [main Janus repository](https://github.com/divmain/janus) for source code, issues, and development documentation.

## License

This tap repository is licensed under the MIT License. See [LICENSE](LICENSE) for details.

Janus itself is licensed under the MIT License - see the main repository for details.
