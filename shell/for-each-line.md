To process text linewise, like a list of pids, do the following:

```
pgrep java | while -r a; sudo kill -9 $a; done
```
