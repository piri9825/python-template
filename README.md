# Python Template

A Python project template for use with [Copier](https://copier.readthedocs.io/).

## Usage

To create a new Python project from this template:

```bash
# Install copier if you haven't already
uv tool install copier

# Generate a new project
copier copy https://github.com/your-username/python-template my-new-project

# Or if using this template locally
copier copy . my-new-project
```

Follow the prompts to configure your new Python project.

## Updating an Existing Project

To update a project that was previously generated from this template:

```bash
# Navigate to your existing project
cd my-existing-project

# Update from the template
copier update
```

This will apply any changes from the template while preserving your project-specific modifications. Copier will prompt you to resolve any conflicts that arise during the update process.

## What's Included

This template provides a basic Python project structure with common development tools and configurations.