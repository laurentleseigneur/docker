# This image is based on oracle 11g image

## additions 
 
### configuration

add views for xa management as expected by Bonita BPM

### databases


create two databases:
 
 * `bonita` owned by user with name `bonita` with password `bpm`
 * `business_data`, owned by user `business_data` with password `bpm`

## run it

`docker run -p 50022:22 51521:1521 -d lleseign/bonita-oracle:11g`

## shell

`docker exec -ti <IMAGE_ID> bash`
