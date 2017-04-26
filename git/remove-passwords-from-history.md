## !IMPORTANT!
*Before doing anything, make sure everyone has pushed their local branches, and make a backup of your repo!*

## Description

1. Bob: Removes passwords from the repo `bfg --replace-text list-of-passwords-to-remove.txt <dir>`
2. Bob: Expires the git reflog and garbage collects `git reflog expire --expire=now --all && git gc --prune=now --aggresive`
2. Bob pushes master to upstream using the -f flag (force push) `git push -f`
3. Alice pulls master, she will notice that the master branch has received an forced update
4. Alice resets her local master branch onto the new upstream master branch `git reset --hard origin/master`
5. Alice checks out her local feature branch
6. Alice rebases her local feature branch onto master, taking care of excluding the old master branch `git rebase <last commit of olde master> --onto=master`
7. Alice updates the upstream feature branch (if it exists) using the -f flag `git push -f`
