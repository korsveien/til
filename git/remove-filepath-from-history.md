```
git filter-branch --force --index-filter \
'git rm --cached --ignore-unmatch web/src/frontend/app/mocks/*.js' \
--prune-empty --tag-name-filter cat -- --all
```
