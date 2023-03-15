FROM ubuntu:20.04

RUN apt update -qq > /dev/null \
    && DEBIAN_FRONTEND=noninteractive apt install -qq --yes --no-install-recommends \
    openssh-server \
    python3 \
    python3-pip \
    git \
    zlib1g-dev \
    openjdk-8-jdk \
    nano

RUN pip3 install --no-cache-dir Cython

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 dev 

RUN  echo 'dev:dev' | chpasswd

RUN service ssh start

# Setup buildozer
#https://github.com/kivy/buildozer

RUN cd /
RUN git clone https://github.com/kivy/buildozer
RUN cd buildozer
#RUN python3 setup.py build
#RUN pip install -e .
#RUN buildozer init -y

COPY KivyApp KivyApp
#COPY buildozer.spec buildozer/buildozer.spec

# edit the buildozer.spec, then
#RUN buildozer android debug deploy run

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]

#zlib headers must be installed, run: sudo apt-get install zlib1g-dev
#Cython (cython) not found, please install it.
#Java compiler (javac) not found, please install it.
#Buildozer is running as root!
#This is not recommended, and may lead to problems later.
#Are you sure you want to continue [y/n]? y

#https://stackoverflow.com/questions/33944684/kivy-apk-build-with-buildozer-error-java-compiler-javac-not-found-please-i
#https://stackoverflow.com/questions/66973759/cython-not-found-please-install-it-error-in-buildozer