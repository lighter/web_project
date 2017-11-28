#!/bin/sh

echo "backup success";

pg_dump -w -C -h postgres -U my-project-postgres myProject > /dump_database/dump_`date +%d-%m-%Y"_"%H_%M_%S`.sql;

>&2 echo "backup error";