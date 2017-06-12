 To go into every subdir of current folder and pull the current branch:
 
 `for i in */.git; do (echo $i; cd $i/..; git pull; ); done`
