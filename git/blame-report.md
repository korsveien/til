To generate a list of the committers in a repo you can run the following command:

```
git ls-tree -r -z --name-only HEAD -- **/*.java | xargs -0 -n1 git blame \
--line-porcelain HEAD |grep  "^author "|sort|uniq -c|sort -nr
```

Swap `java` for the filetype of your desire. The `**/*.java` part assumes a zsh glob pattern.
