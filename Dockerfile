FROM postgres:17 
COPY phishin-dev.sql /docker-entrypoint-initdb.d/data.sql
