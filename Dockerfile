FROM nginx

RUN apt-get update && \
    apt-get install ssh dnsutils iproute2 iputils-ping -y
ADD https://raw.githubusercontent.com/tsubasaxZZZ/linuxenvironment/master/.bashrc .bashrc
