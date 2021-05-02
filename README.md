# Build
mvn clean package && docker build -t zym/selfservice .

# RUN

docker rm -f selfservice || true && docker run -d -p 8080:8080 -p 4848:4848 --name selfservice zym/selfservice 