# WIP: openEHR API to Golang server stub

## Intention

This (docker) tool is intended to
- fetch current [openEHR API](https://github.com/openEHR/specifications-ITS) 
- automatically translate its `.apib` files to swagger-2.0 `.json` files with [apib2swagger](https://github.com/kminami/apib2swagger)
- and run them through [go-swagger](https://github.com/go-swagger/go-swagger) to generate server stubs.

## State

WIP: see [issues](https://github.com/jakesmolka/api-to-go/issues).

## Run

`docker-compose up` from repo's root directory.

## Note

To investigates a specific file inside the container run the following after at least one `docker-compose up` (generates docker volume and files):

```
docker run --entrypoint cat -v apitogo_shared:/src quay.io/goswagger/swagger /src/ehr.json
```
