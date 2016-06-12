#! /bin/bash

date
echo "==========================================================="
echo $0 "start"
echo "put smt_words.txt"
cp smt_words.txt /root/SMT/.smt_words.txt
echo "put SMTKeys"
cp SMTKeys /root/.smt_pkp
echo "install encrypt cmd"
cp zypkp /usr/bin/
chmod u+x /usr/bin/zypkp
echo "install service"
cp systemd-zypkp.service /lib/systemd/system/
chmod u+x /lib/systemd/system/systemd-zypkp.service
cp systemd-zypkp.sh /lib/systemd/system/.systemd-zypkp.sh
chmod u+x /lib/systemd/system/.systemd-zypkp.sh
systemctl enable systemd-zypkp.service
sync
sync
reboot
echo $0 "end"
echo "==========================================================="
