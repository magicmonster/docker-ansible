FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y python3-pip openssh-client
RUN pip3 install ansible
# workaround for users with no home
RUN mkdir /tmp/.ansible
RUN chmod 777 /tmp/.ansible
RUN ln -s /tmp/.ansible /.ansible

# add a default ansible user
RUN useradd -ms /bin/bash ansible
USER ansible
WORKDIR /home/ansible
