# This image is based on MySQL 5.5.49 image

## additions 

### configuration

[/etc/mysql/conf.d/docker.cnf](docker.cnf) config file


### databases

create database `bonita` and `business_data`, owned by user with same name and password set to `bpm`

## run it

`docker run -p 3306:3306 -d lleseigneur/bonita-mysql:5.5.49`

## shell

`docker exec -ti <IMAGE_ID> bash`
