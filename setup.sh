#!/bin/sh

./config/admin/setup.sh
./config/api/setup.sh
./config/notification/setup.sh
./config/sts/setup.sh


docker-compose up