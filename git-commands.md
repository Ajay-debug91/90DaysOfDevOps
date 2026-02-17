# Git Commands Reference

This file is a living document and will be updated as I learn more Git commands.

---

## Setup & Config

### git --version
Checks the installed Git version.
Example:
git --version

### git config --global user.name
Sets the username for all Git repositories.
Example:
git config --global user.name "Ajay Kumar"

### git config --global user.email
Sets the email address for all Git repositories.
Example:
git config --global user.email "ajaykumar91@gmail.com"

### git config --global --list
Displays all global Git configuration settings.
Example:
git config --global --list

---

## Basic Workflow

### git init
Initializes a new Git repository in the current directory.
Example:
git init

### git status
Shows the current state of the working directory and staging area.
Example:
git status

### git add <file>
Adds a specific file to the staging area.
Example:
git add git-commands.md

### git add .
Adds all modified and new files to the staging area.
Example:
git add .

### git commit -m "message"
Saves staged changes to the repository with a message.
Example:
git commit -m "Added git commands reference"

---

## Viewing Changes

### git log
Shows the commit history.
Example:
git log

## Repository
git init
git clone <repo-url>

## Status & Logs
git status
git log
git log --oneline

## Staging
git add <file>
git add .

## Commit
git commit -m "meaningful message"

### git log --oneline
Shows commit history in a compact format.
Example:
git log --oneline


## Branching
git branch
git branch <branch-name>
git checkout <branch-name>
git checkout -b <new-branch>


## Merge
git merge <branch-name>


## Remote
git remote -v
git push origin main
git pull origin main



