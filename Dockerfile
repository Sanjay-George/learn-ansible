FROM ubuntu:18.04

ENV TZ=Europe/Minsk
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

RUN apt-get update; \
    apt install -y openssh-client; \
    apt install -y wget curl apt-transport-https; \
    apt install libssl-dev openssl wget build-essential zlib1g-dev -y \
    curl -sL https://aka.ms/InstallAzureCLIDeb | bash; \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone; \
    apt-get -y install build-essential checkinstall; \
    apt-get -y install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev;
    
RUN cd /usr/src; \
    wget https://www.python.org/ftp/python/3.6.10/Python-3.6.10.tgz;

RUN cd /usr/src; \
    tar xzf Python-3.6.10.tgz; \
    cd Python-3.6.10; \
    ./configure --enable-optimizations; \
    make install

RUN pip3 install --upgrade pip; \
    pip3 install "ansible==2.9.12"; \
    pip3 install ansible[azure]