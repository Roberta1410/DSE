#!/bin/bash

/usr/local/bin/geth \
  --datadir /var/dev-net/observer \
  --networkid 1410 \
  --http \
  --http.addr 192.168.67.204 \
  --syncmode 'full' \
  --http.port 8545 \
  --http.api "eth,net,web3,admin" \
  --http.corsdomain "*" \
  --http.rpcprefix '/' \
  --http.vhosts '*' \
  --password /opt/password.txt \
  --port 30303 \
  --verbosity 4 \
  --log.format json \
  >> /var/log/geth/geth.log 2>&1
