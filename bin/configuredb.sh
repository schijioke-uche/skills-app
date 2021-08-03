#!/bin/bash

source ./bin/config.sh

export PGPASSWORD=${DB_PASSWORD}

echo "Configuring database: ${DB_NAME}"

pg_hostname="-h localhost -p ${DB_PORT} -U postgres"

echo "Drop skills database if it exists"
dropdb $pg_hostname $DB_NAME

echo "Create skills database"
createdb $pg_hostname $DB_NAME

echo "Seed database with data"
psql $pg_hostname $DB_NAME < ./bin/sql/seed_skills.sql

echo "Finished configuring database: $DB_NAME"

psql $pg_hostname -v ON_ERROR_STOP=1  <<EOF
create extension pg_trgm;
create extension fuzzystrmatch;
select * FROM pg_extension;
EOF