## Git Cheatsheet

See [cheatsheet](https://qlx.services/institute/files/github-git-cheat-sheet.pdf)

## Git Definitions 

A **fork** is a copy of a repository. Forking a repository allows you to freely experiment with changes without affecting the original project. Most commonly, forks are used to either propose changes to someone else's project or to use someone else's project as a starting point for your own idea.

The git **merge** command lets you take the independent lines of development created by git branch and integrate them into a single branch. ... Again, this means that git merge is often used in conjunction with git checkout for selecting the current branch and git branch -d for deleting the obsolete target branch.

A **branch** in Git is simply a lightweight movable pointer to one of these commits. The default branch name in Git is master . As you start making commits, you're given a master branch that points to the last commit you made.

# [Git Hub Command Line Interface](https://hub.github.com/)

**Hub** is a command line tool that wraps git in order to extend it with extra features and commands that make working with GitHub easier.

## Installation

MacOS [homebrew](https://brew.sh/) install hub
```brew install hub```

Windows [chocolatey](https://chocolatey.org/install) install hub
```choco install hub```

After installation check to see if installed correctly:

```
hub version
```

## Git Commands

### [Creating Branch](https://www.atlassian.com/git/tutorials/using-branches/git-checkout)

```
git config --global credential.helper store

git checkout -b feature/yourname-first-commit
git status

touch README.md
git add .
git status
git commit -m "Added blah, blah"

hub sync

git push
```

### [Merging Branch](https://www.atlassian.com/git/tutorials/using-branches/git-merge)

```

git checkout master
git merge
git branch -d feature/gsjackson-first-commit

```