# phishin helper

## pull postgres
docker pull postgres:17

docker run --rm postgres:17 postgres --version
postgres (PostgreSQL) 17.4 (Debian 17.4-1.pgdg120+2)

# build and run
docker buildx build -t postgres-phishin:latest .

docker run --rm -it -p 5432:54232 -e POSTGRES_PASSWORD=password postgres-phishin:latest

# use container name below
docker exec -e POSTGRES_PASSWORD=password -t festive_saha psql -U postgres -c "COPY active_storage_blobs TO STDOUT WITH CSV HEADER" > active_storage_blobs.csv

