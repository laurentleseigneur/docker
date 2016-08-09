# This image is based on MySQL [5.5](https://github.com/docker-library/mysql/blob/8ed790ab199eeef0f36ef0547ae28e5654cbef0d/5.5/Dockerfile) from the [MySQL Official Repo](https://registry.hub.docker.com/_/mysql/).

## additions 
 
 `/etc/mysql/conf.d/docker.cnf` config file:

```
[mysqld]
max_allowed_packet=20M
character-set-server=utf8
collation-server=utf8_general_ci
```
database bonita, owned by user bonita/bpm


## build it

` docker build -t bonita-postgres:9.3  .`


## run it

`docker run -p 5432:5432 -d bonita-postgres:9.3`

## shell

`docker exec -ti <IMAGE_ID> bash`
