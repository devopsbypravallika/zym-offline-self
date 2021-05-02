#!/bin/sh
mvn clean package && docker build -t zym/selfservice .
docker rm -f selfservice || true && docker run -d -p 8080:8080 -p 4848:4848 --name selfservice zym/selfservice 
