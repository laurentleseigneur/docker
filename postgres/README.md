# This image is based on postgres 9.3 image

## additions 
 
### configuration

set required `max_prepared_transactions` setting as expected by Bonita BPM


### databases

create two databases:
 
 * `bonita` owned by user with name `bonita` with password `bpm`
 * `business_data`, owned by user `business_data` with password `bpm`

## build it

` docker build -t bonita-postgres:9.3  .`


## run it

`docker run -p 5432:5432 -d lleseigneur/bonita-postgres:9.3`

## shell

`docker exec -ti <IMAGE_ID> bash`
