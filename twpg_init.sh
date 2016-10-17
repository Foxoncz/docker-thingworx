#!/bin/bash

echo 'Creating twadmin user in database...'
psql -U postgres -c "CREATE USER twadmin WITH PASSWORD 'admin';"
cd /twpginit/
echo 'Running Database setup script...'
sh thingworxPostgresDBSetup.sh -a postgres -u twadmin -l /ThingworxPostgresqlStorage
echo 'Running Schema setup script...'
sh thingworxPostgresSchemaSetup.sh # -u twadmin -thingworx -o all
