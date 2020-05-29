#!/bin/bash
/root/bitcoin-0.19.0.1/bin/bitcoin-cli -conf=/opt/btc/btc.conf stop
rm -rf /opt/btc/data/*
rm -rf /opt/btc/data/.lock
