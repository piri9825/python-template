# python-template

A seed repo for new Python projects. Clone it, re-initialize git, and rename `myproject` to your package name.

## Getting Started

```bash
# Clone the seed repo
git clone https://github.com/username/python-template my-new-project
cd my-new-project

# Re-initialize git history
rm -rf .git
git init
git add .
git commit -m "Initial commit"

# Rename myproject to your package name (e.g. coolapp)
mv src/myproject src/coolapp
# Then update references in pyproject.toml, Makefile, and ci.yml
```

## Development Setup

```bash
make install-dev
```

## Development Commands

```bash
make test          # Run tests
make test-cov      # Run tests with coverage
make lint          # Run linting
make format        # Format code
make qa            # Run all quality checks
```

## What's Included

- **uv** for dependency management and packaging
- **pytest** + **pytest-cov** for testing and coverage
- **ruff** for linting and formatting
- **pre-commit** hooks for code quality
- **GitHub Actions** CI pipeline (test, lint, build)
- **Dependabot** for automated dependency updates
