FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y python3-pip openssh-client
RUN pip3 install ansible
# add a default ansible user
RUN useradd -ms /bin/bash ansible
USER ansible
WORKDIR /home/ansible
