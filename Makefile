.PHONY: help install install-dev test test-cov lint format pre-commit qa clean build env-info

# Default target
help: ## Show this help message
	@echo "Available commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'

# Development setup
install: ## Install project dependencies
	uv sync

install-dev: ## Install project with development dependencies
	uv sync --extra dev
	pre-commit install

# Testing
test: ## Run tests
	uv run pytest

test-cov: ## Run tests with coverage
	uv run pytest --cov=myproject --cov-report=html --cov-report=term

# Code quality
lint: ## Run linting
	uv run ruff check . --fix

format: ## Format code
	uv run ruff format .

# Pre-commit
pre-commit: ## Run pre-commit hooks
	pre-commit run --all-files

# Quality checks (all)
qa: ## Run all quality checks
	$(MAKE) lint
	$(MAKE) format
	$(MAKE) test-cov

# Cleaning
clean: ## Clean build artifacts
	rm -rf build/
	rm -rf dist/
	rm -rf *.egg-info/
	rm -rf .pytest_cache/
	rm -rf .mypy_cache/
	rm -rf .ruff_cache/
	rm -rf htmlcov/
	find . -type d -name __pycache__ -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete

# Building
build: ## Build package
	uv build

# Environment
env-info: ## Show environment information
	@echo "Python version: $(shell uv run python --version)"
	@echo "UV version: $(shell uv --version)"
	@echo "Project: My Project"
	@echo "Package: myproject"
