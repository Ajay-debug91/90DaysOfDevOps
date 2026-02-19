# Day 23 – Git Branching & Working with GitHub

## Task 1: Understanding Branches

### 1. What is a branch in Git?
A branch in Git is a separate line of development. It allows you to work on new features, bug fixes, or experiments without affecting the main codebase.

### 2. Why do we use branches instead of committing everything to main?
We use branches to:
- Keep the main branch stable
- Develop features independently
- Avoid breaking production code
- Enable team collaboration

### 3. What is HEAD in Git?
HEAD is a pointer that refers to the current branch and latest commit you are working on.

Example:
If you are on main, HEAD points to the latest commit of main.

### 4. What happens to your files when you switch branches?
When switching branches:
- Git changes your working directory files
- Files reflect the state of the selected branch
- Commits from other branches will not appear unless merged

---

## Task 2: Branching Commands – Hands-On

### List all branches
git branch

### Create a new branch
git branch feature-1

### Switch to feature-1
git checkout feature-1
OR
git switch feature-1

### Create and switch in one command
git checkout -b feature-2
OR
git switch -c feature-2

### Difference between git switch and git checkout
- git checkout is older and used for both branch switching and file restoration.
- git switch is newer and only used for switching branches.
- git switch is safer and more readable.

### Make a commit on feature-1
echo "Feature 1 work" >> feature.txt
git add feature.txt
git commit -m "Added feature-1 changes"

### Switch back to main and verify
git switch main
git log --oneline

The commit from feature-1 will not appear.

### Delete a branch
git branch -d feature-2

---

## Task 3: Push to GitHub

### Create a new repo on GitHub (without README)

### Connect local repo to remote
git remote add origin https://github.com/<your-username>/devops-git-practice.git

### Push main branch
git push -u origin main

### Push feature-1 branch
git push -u origin feature-1

### Difference between origin and upstream

origin:
- Default name for your remote repository
- Usually your fork

upstream:
- Refers to the original repository you forked from
- Used to sync your fork with the main project

---

## Task 4: Pull from GitHub

### Pull latest changes
git pull origin main

### Difference between git fetch and git pull

git fetch:
- Downloads changes from remote
- Does NOT merge automatically

git pull:
- Fetch + merge in one command
- Updates your current branch immediately

---

## Task 5: Clone vs Fork

### Clone
git clone https://github.com/<repo-url>.git

Clone:
- Copies a repository to your local machine
- No separate copy on GitHub

### Fork
- Creates your own copy of a repository on GitHub
- Used for contributing to open-source projects

### Difference between clone and fork

Clone:
- Local copy only

Fork:
- Remote copy on your GitHub account

### When to clone vs fork?

Clone:
- When you just want to use the project

Fork:
- When you want to contribute to someone else's project

### Keep fork in sync with original repo

Add upstream remote:
git remote add upstream https://github.com/original-owner/repo.git

Fetch upstream changes:
git fetch upstream

Merge into main:
git merge upstream/main

