# KivyBuildozer

docker cp test:/buildozer/buildozer.spec .

docker build --tag=buildozer .

#docker run -t -d buildozer

docker run --volume "$(pwd)":/home/user/hostcwd buildozer --version

https://github.com/ArtemSBulgakov/buildozer-action