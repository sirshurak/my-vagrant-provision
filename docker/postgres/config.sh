#!/bin/bash
docker exec -i postgres_container psql -U postgres -d postgres -a -f create_db.sql
docker exec -i postgres_container psql -U postgres -d teste -a -f structure.sql