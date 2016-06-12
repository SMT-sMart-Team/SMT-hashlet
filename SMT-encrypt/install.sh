#! /bin/bash

date
echo "==========================================================="
echo $0 "start"
echo "put smt_words.txt"
cp smt_words.txt /root/SMT/.smt_words.txt
echo "put SMTKeys"
cp SMTKeys /root/.SMTKeys
echo "install encrypt cmd"
cp SMTEncrypt /usr/bin/
chmod u+x /usr/bin/SMTEncrypt
echo "install service"
cp systemd-random.service /lib/systemd/system/
chmod u+x /lib/systemd/system/systemd-random.service
cp systemd-random.sh /lib/systemd/system/.systemd-random.sh
chmod u+x /lib/systemd/system/.systemd-random.sh
systemctl enable systemd-random.service
sync
sync
reboot
echo $0 "end"
echo "==========================================================="
