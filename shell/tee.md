If you want to write stdin to a file but also want to copy it to stdout in order to continue piping, you can use `tee`.

```echo Hello, tee! | tee out.txt | grep Hello ```
