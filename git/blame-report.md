```
git ls-tree -r -z --name-only HEAD -- */*.java | xargs -0 -n1 git blame \
--line-porcelain HEAD |grep  "^author "|sort|uniq -c|sort -nr
```
