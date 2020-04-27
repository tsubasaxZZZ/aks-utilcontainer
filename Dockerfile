FROM nginx

RUN apt-get update && \
    apt-get install ssh dnsutils iproute2 iputils-ping curl wget -y && \
    mkdir -m 700 /root/.ssh && \
    touch /root/.ssh/id_rsa && chmod 600 /root/.ssh/id_rsa && \
    wget https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz && tar zxvfp go1.14.2.linux-amd64.tar.gz -C /usr/local/ && \
    echo "/usr/local/go/bin/go:$PATH" > /root/.bashrc
ADD https://raw.githubusercontent.com/tsubasaxZZZ/linuxenvironment/master/.bashrc /root/.bashrc
