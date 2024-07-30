docker stop localapiserver
docker rm localapiserver

docker build -t apidev .

docker run -d --name localapiserver apidev
