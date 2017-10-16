## IMPORTANT!!
*Before doing anything, make sure everyone has pushed their local branches, and make a backup of your repo!*

## Scenario
Bob wants to remove all passwords and sensitive data from the repo in order to open source his code. He knows he need to remove the data from the git history as well, and since he is in a team this will mess up the local copies of the repo for everyone. So what does he do? 

## How to solve it

1. Bob removes passwords from the repos and commits `git commit -m "Remove passwords"`
2. Bob removes passwords from the git history using bfg `bfg --replace-text list-of-passwords-to-remove.txt <dir>`
3. Bob expires the git reflog and garbage collects `git reflog expire --expire=now --all && git gc --prune=now --aggressive`
4. Bob pushes master to upstream using the -f flag (force push) `git push -f`
5. Bob then also remembers to push all the tags from the old master onto the new `git push -f --tags`
6. Alice pulls master, she will notice that the master branch has received an forced update
7. Alice resets her local master branch onto the new upstream master branch `git reset --hard origin/master`
8. Alice checks out her local feature branch
9. Alice rebases her local feature branch onto master, taking care of excluding the old master branch `git rebase <last commit of old master> --onto=master`
10. Alice updates the upstream feature branch (if it exists) using the -f flag `git push -f`
