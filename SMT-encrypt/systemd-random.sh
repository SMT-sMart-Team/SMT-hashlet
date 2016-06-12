#! /bin/bash
date
fileFlag=/lib/systemd/system/.tmp_file
if [ -f $fileFlag ];then
   rm $fileFlag
   echo "rm tmpfile"
fi
result=$(SMTEncrypt mac)
#echo $result
if [ 0 = $? -a "$result" = "encrypt success" ];then
   echo "OK"
   touch $fileFlag 
else
   echo "failed"
   init 0
fi


