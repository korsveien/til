In order to remove large blobs from the git repo, the BFG is a very useful tool:

https://rtyley.github.io/bfg-repo-cleaner/

Do 

```
java -jar bfg.jar --strip-blobs-bigger-than 100M some-big-repo.git
```

to mark  objects >100M as dirty, and 

````
git reflog expire --expire=now --all && git gc --prune=now --aggressive
```

to prune them.

The BFG only removes blobs which is not part of your current working tree.
