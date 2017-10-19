The following incantation was used to iterate through all subfolders matching veilarb* and perform a search in the code using ag.

```
for d in veilarb*
do
  ( cd $d && pwd && ag 'tjenester/')
done
```
