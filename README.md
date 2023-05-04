# postgres-source
A container setup to spin up Postgres and populate data from CSV files.

## Build

```shell
$ podman build -t jitsejan/postgres-source . 
```

## Run
Run either

```shell
$ docker-compose up -d
```

or

```shell
$ podman-compose up -d
```

Check if the two containers are started:

```shell
$ podman container ls 
CONTAINER ID  IMAGE                              COMMAND     CREATED        STATUS        PORTS                   NAMES
5179c10d7653  docker.io/dpage/pgadmin4:latest                5 minutes ago  Up 5 minutes  0.0.0.0:5050->80/tcp    pgadmin4_container
76c91c0b337a  docker.io/library/postgres:latest  postgres    5 minutes ago  Up 5 minutes  0.0.0.0:5432->5432/tcp  postgres
```

## Turn off

Important to also wipe the volumes. 

```bash
$ podman-compose down --volumes
$ podman volume ls
$ podman volum rm ..
```

## Recreate

```bash
$ podman-compose up --force-recreate -d 
```