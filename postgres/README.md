# This image is based on postgres 9.3 image

## additions 
 
### configuration

set required `max_prepared_transactions` setting

create user/database `bonita` and `bizdata`, with password `bpm`

## build it

` docker build -t bonita-postgres:9.3  .`


## run it

`docker run -p 5432:5432 -d bonita-postgres:9.3`

## shell

`docker exec -ti <IMAGE_ID> bash`
