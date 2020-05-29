#!/bin/bash
AUTH="-rpcuser=regtest -rpcpassword=regtest -regtest"

while true ;
do
/root/bitcoin-0.19.0.1/bin/bitcoin-cli -regtest $AUTH generatetoaddress 1  "mnJQyeDFmGjNoxyxKQC6MMFdpx77rYV3Bo" & sleep 15
done
