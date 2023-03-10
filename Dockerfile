FROM ubuntu:20.04

#RUN apt update && apt install openssh-server net-tools sudo -y

RUN apt update -qq > /dev/null \
    && DEBIAN_FRONTEND=noninteractive apt install -qq --yes --no-install-recommends \
    openssh-server \
    net-tools \
    nano

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 dev 

RUN  echo 'dev:dev' | chpasswd

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]