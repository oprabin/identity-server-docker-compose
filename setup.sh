#!/bin/sh




export SERVER_URL=192.168.102.253
export POSTGRES_DB_USERNAME=postgres
export POSTGRES_DB_PORT=5432
export POSTGRES_DB_PASSWORD=root
export IdentityAdminRedirectUri=https://videobanking-auth.machbank.com




./config/admin/setup.sh
./config/api/setup.sh
./config/notification/setup.sh
./config/sts/setup.sh




docker-compose up