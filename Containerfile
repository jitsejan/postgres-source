FROM postgres:15.2
COPY ./data/*.sql /docker-entrypoint-initdb.d/
COPY ./data/*.csv /data/
