In order to list files containing a specific string from the current working directory:

``grep -ril --include\*.sh "search-for-me" .``


| Option      | Description |
--------------|---------------
| --include | Only include files with given pattern |
| -r | Search recursively |
| -i | Ignore case |
| -l | Only list files |
