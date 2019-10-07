FROM ubuntu:16.04

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
    build-essential \
    curl \
    openssh-server \
    vim \
    sudo \
    screen

ARG user=siner
ARG group=siner
ARG uid=1000
ARG gid=1000

COPY ./start /start
RUN chmod +x /start

RUN groupadd -g ${gid} ${group} \
        && useradd -d "/home/siner" -u ${uid} -g ${gid} -m -s /bin/bash ${user} && echo "siner:password" | chpasswd

RUN echo "siner ALL=NOPASSWD: ALL" >> /etc/sudoers \
    && echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config

WORKDIR /home/siner
USER ${user}

ENTRYPOINT ["/start"]
