The following query will provide a table describing the size of tablespaces (free/used):
```
column "Tablespace" format a13
column "Used MB"    format 99,999,999
column "Free MB"    format 99,999,999
column "Total MB"   format 99,999,999
select
   fs.tablespace_name                          "Tablespace",
   (df.totalspace - fs.freespace)              "Used MB",
   fs.freespace                                "Free MB",
   df.totalspace                               "Total MB",
   round(100 * (fs.freespace / df.totalspace)) "Pct. Free"
from
   (select
      tablespace_name,
      round(sum(bytes) / 1048576) TotalSpace
   from
      dba_data_files
   group by
      tablespace_name
   ) df,
   (select
      tablespace_name,
      round(sum(bytes) / 1048576) FreeSpace
   from
      dba_free_space
   group by
      tablespace_name
   ) fs
where
   df.tablespace_name = fs.tablespace_name;
```
   
For an overview of the number of files for each tablespace:   
```
select TABLESPACE_NAME, count(FILE_NAME) from dba_data_Files group by TABLESPACE_NAME;
```

To get the names of the data files:
```
select Tablespace_Name, File_Name from Dba_Data_Files;
```

To add a datafile to a tablespace:
```
alter tablespace <tablespace_name> add datafile '+DATA/<sid>/datafile/<name>.dbf' size 10m autoextend on maxsize unlimited;
```
