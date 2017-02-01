So you think you deleted some file from the repo some time in the past, and now you want it back.

First, list all deleted files
```
git log --diff-filter=D --summary | grep delete
```
Show the commit sha of that file and copy it.
```
git log --all -- <path-to-file>
```
Checkout that file from history. 
```
git checkout <SHA>^ -- <path-to-file>
```

