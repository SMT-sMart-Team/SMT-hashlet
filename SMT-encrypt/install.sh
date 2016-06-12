#! /bin/bash

date
echo $0 "start"
echo "==========================================================="
echo "put smt_words.txt"
cp smt_words.txt /root/SMT/.smt_words.txt
echo "put SMTKeys"
cp SMTKeys /root/.SMTKeys
echo "install encrypt cmd"
chmod u+x SMTEncrypt
cp SMTEncrypt /usr/bin/
echo "==========================================================="
echo $0 "end"
