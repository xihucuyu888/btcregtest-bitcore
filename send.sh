AUTH="-rpcuser=regtest -rpcpassword=regtest -regtest"

/root/bitcoin-0.19.0.1/bin/bitcoin-cli -regtest $AUTH sendmany "" '{"'$1'":'$2'}'
