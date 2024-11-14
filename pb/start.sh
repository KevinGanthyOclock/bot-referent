#! /bin/sh
cd /pb

./pocketbase migrate up

./pocketbase admin create ${ADMIN_EMAIL} ${ADMIN_PASSWORD}

./pocketbase serve --http=0.0.0.0:8090