FROM postgres:latest
ENV POSTGRES_USER=lapis
ENV POSTGRES_PASSWORD=QWErty777
ENV POSTGRES_DB=shop_db

COPY init_scripts/create_tables.sql /docker-entrypoint-initdb.d/create_tables.sql
COPY init_scripts/insert_values.sql /docker-entrypoint-initdb.d/insert_values.sql