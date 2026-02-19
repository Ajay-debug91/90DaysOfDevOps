# Git Commands Reference

## Setup & Config

### git --version
Shows installed Git version.
Example:
git --version

### git config --global user.name
Sets your Git username.
Example:
git config --global user.name "Ajay Kumar"

### git config --list
Shows all Git configuration.
Example:
git config --list


## Basic Workflow

### git init
Initializes a new Git repository.
Example:
git init

### git status
Shows working directory status.
Example:
git status

### git add
Stages files for commit.
Example:
git add git-commands.md

### git commit
Records staged changes to repository.
Example:
git commit -m "Add initial git commands reference"


## Viewing Changes

### git log
Shows commit history.
Example:
git log

### git log --oneline
Shows compact commit history.
Example:
git log --oneline

### git diff
Shows unstaged changes.
Example:
git diff


# Branching Commands

git branch
git branch <branch-name>
git switch <branch-name>
git switch -c <branch-name>
git checkout <branch-name>
git checkout -b <branch-name>
git branch -d <branch-name>

# Remote Commands

git remote add origin <repo-url>
git push -u origin main
git push -u origin <branch-name>
git fetch
git pull
git clone <repo-url>

