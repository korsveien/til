To view a log of all running jobs ordered by time run perform the following query:

```
SELECT *
FROM ALL_SCHEDULER_JOB_RUN_DETAILS
ORDER BY ACTUAL_START_DATE DESC;
```
