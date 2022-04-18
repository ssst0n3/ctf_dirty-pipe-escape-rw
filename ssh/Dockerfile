FROM ubuntu
RUN apt-get update && apt-get install -y openssh-server && mkdir -p /run/sshd

RUN useradd -rm -d /home/user -s /bin/bash user
RUN echo 'user:user' |chpasswd

COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]