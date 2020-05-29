FROM node:10.17.0

RUN mkdir -p /opt && mkdir -p /opt/btc && mkdir -p opt/btc/data && mkdir -p /data/db 

RUN apt update \
    && apt-get install -y libzmq3-dev openssl build-essential screen vim net-tools \
    && npm install -g node-gyp \
    && npm install -g pm2

ADD btc.conf /opt/btc/
ADD bitcoin-0.19.0.1 /root/bitcoin-0.19.0.1

RUN cd /opt/btc \
    && git clone -b v8.1.0 https://github.com/bitpay/bitcore.git \
    && cd ./bitcore \
    && npm install \
    && cd ./packages/bitcore-node \
    && npm install
ADD bitcore.config.json /opt/btc/bitcore 

EXPOSE 3000

ADD start.sh /opt/btc/
ADD generate_block.sh /opt/btc/
ADD start_node.sh /opt/btc/
ADD send.sh /opt/btc/
WORKDIR /opt/btc

ENTRYPOINT ./start.sh
