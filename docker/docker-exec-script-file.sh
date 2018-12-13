To run a script file you stored locally on an already running docker
container do

`cat foo.sh | docker exec -i <container-name> bash`

This assumes the running container has installed the bash shell.
