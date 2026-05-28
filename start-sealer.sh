#!/bin/bash

/usr/local/bin/geth \
  --datadir /var/dev-net/sealer \
  --networkid 1410 \
  --http \
  --http.addr 192.168.67.17 \
  --syncmode 'full' \
  --http.port 8545 \
  --http.api "eth,net,web3,admin" \
  --http.corsdomain "*" \
  --http.rpcprefix '/' \
  --http.vhosts '*' \
  --mine \
  --miner.etherbase 0x93bA1750b64Ef75503Fad40d5a6cC56561017F1a \
  --unlock 0x93bA1750b64Ef75503Fad40d5a6cC56561017F1a \
  --password /opt/password.txt \
  --port 30303 \
  --allow-insecure-unlock \
  --verbosity 4 \
  --log.format json \
  >> /var/log/geth/geth.log 2>&1
