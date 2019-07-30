#!/bin/bash
export PGPASSWORD="PgAdmin2019"

mkdir /home/ubuntu/backup/`date +'%d_%m_%Y'`

cd /home/ubuntu/backup/`date +'%d_%m_%Y'`

pg_dump -U adminpg -h 127.0.0.1 -p 5432 gitlab > gitlab.dump

cd /home/ubuntu/docker
sudo cp -R gitlab /home/ubuntu/backup/`date +'%d_%m_%Y'`
cd /home/ubuntu/backup
sudo chown -R ubuntu:ubuntu `date +'%d_%m_%Y'`

cd /home/ubuntu/backup
#zip `date +'%d_%m_%Y'`.zip `date +'%d_%m_%Y'`
tar cvfz `date +'%d_%m_%Y'`.tar.gz `date +'%d_%m_%Y'`
rm -rf `date +'%d_%m_%Y
