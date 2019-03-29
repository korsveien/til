To process text linewise, like a list of pids, do the following:

```
pgrep java | while read line; sudo kill -9 $line; done
```
