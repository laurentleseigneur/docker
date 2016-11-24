# This image is based on MySQL 5.5.49 image

## additions 

### configuration

set required `max_allowed_packet` parameter as expected by Bonita BPM

see [/etc/mysql/conf.d/docker.cnf](docker.cnf) config file


### databases

create two databases:
 
 * `bonita` owned by user with name `bonita` with password `bpm`
 * `business_data`, owned by user `business_data` with password `bpm`

## run it

`docker run -p 3306:3306 -d lleseigneur/bonita-mysql:5.5.49`

## shell

`docker exec -ti <IMAGE_ID> bash`
