#!/bin/sh




export SERVER_URL=192.168.25.43
export POSTGRES_DB_USERNAME=postgres
export POSTGRES_DB_PORT=5432
export POSTGRES_DB_PASSWORD=Laxmi@123
export IdentityAdminRedirectUri=https://videobanking-auth.machbank.com

export SENDGRID_API_KEY= 




./config/admin/setup.sh
./config/api/setup.sh
./config/notification/setup.sh
./config/sts/setup.sh




docker compose up