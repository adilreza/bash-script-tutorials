#!/bin/bash

name=user_backup_"`date +"%y_%m_%d"`".tar.gz

/bin/tar -zcvf /user_bakup/$name /actual/

ssh root@10.8.9.7 'rm -f /allbacks/files/*'

scp /user_bakup/$name root@1.4.1.20:/allbacks/files/


#!/bin/bash

name=db_secas_backup_"`date +"%y_%m_%d"`".tar.gz

/bin/tar -zcvf /MSSQL-Back/dbback/$name /MSSQL-Back/dbback/db_secas

scp /MSSQL-Back/dbback/$name root@3.4.1.2:/allbacks/db/


count=`ls -lt /MSSQL-Back/dbback/ | grep db_secas_backup | wc -l | awk '{print $1}'`
max=7
if [ $count -gt $max ];
then
  rmFile=`ls -lt /MSSQL-Back/dbback/ | grep db_secas_backup | tail -1 | awk '{print $9}'`;
  cd /MSSQL-Back/dbback/;
  rm $rmFile;
fi