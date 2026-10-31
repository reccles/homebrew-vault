# homebrew-vault

A curated collection of CLI tools and utilities via Homebrew.

## Usage

Tap the repository:

```bash
brew tap reccles/homebrew-vault
```

Then install any formula:

```bash
brew install rseam
```

Or without tapping:

```bash
brew install reccles/homebrew-vault/rseam
```

## Available Formulas

### fussycat
An AI agent that behaves like a Unix tool: the task on stdin, the answer on stdout, and only the tools its command line grants. Prebuilt for macOS (Apple silicon) and Linux (x86_64, arm64); each fussycat release updates it.

```bash
brew install fussycat
echo "What time is it in UTC?" | fussycat --model ollama:gpt-oss:20b --tool 'now=date -u'
```

### rseam
Unofficial Rust CLI for the Seam API. Manage smart locks, access codes, and devices.

```bash
brew install rseam
rseam --help
```

## License

Each formula may have its own license. See individual project repositories.
