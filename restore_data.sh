#!/bin/bash

echo "Copying dump.sql to container..."
docker cp dump.sql booknest_db:/dump.sql

echo "Restoring data into existing database..."
docker exec -it booknest_db 
psql -U postgres -d booknest_db -f /dump.sql

echo "✅ Data restored successfully!"