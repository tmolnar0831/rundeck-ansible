FROM docker.io/rundeck/rundeck:4.16.0
LABEL maintainer = "Tamas Molnar <tmolnar0831@gmail.com> - https://tomsitcafe.com"
LABEL version = "1.0"
USER root
RUN apt-get update && apt-get -y install ansible python3
VOLUME data:/home/rundeck/server/data
VOLUME ansible-data:/etc/ansible
USER rundeck