docker build -t kivybuildozer:1.0 .

docker stop test

docker rm test

#docker run -d -p 22:22 --name test kivybuildozer:1.0

#https://stackoverflow.com/questions/30209776/docker-container-will-automatically-stop-after-docker-run-d

docker run -d --name test kivybuildozer:1.0