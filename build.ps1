docker build -t kivybuildozer:1.0 .

docker stop test

docker rm test

docker run -d -p 22:22 --name test kivybuildozer:1.0