FROM ubuntu:latest

RUN DEBIAN_FRONTEND=noninteractive apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y curl jq python3 ansible tar bash ca-certificates git openssl unzip wget python3-pip sudo acl build-essential python3-dev python3.8-venv python3.8-distutils apt nfs-common python-is-python3 vim tzdata

RUN git clone --branch latest https://github.com/Chia-Network/chia-blockchain.git \
&& cd chia-blockchain \
&& git submodule update --init mozilla-ca \
&& chmod +x install.sh \
&& /usr/bin/sh ./install.sh

RUN cd ../ \
&& git clone --branch main https://github.com/swar/Swar-Chia-Plot-Manager.git \
&& cd Swar-Chia-Plot-Manager \
&& python3 -m venv venv \
&& . ./venv/bin/activate \
&& pip install -r requirements.txt

WORKDIR /Swar-Chia-Plot-Manager
ADD ./entrypoint.sh entrypoint.sh

ENTRYPOINT ["bash", "./entrypoint.sh"]