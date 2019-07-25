#!/bin/bash

begin_time=`date`
shadow=`cat /etc/shadow`

echo '========================================================='
echo 'login.defs |grep PASS'
echo '========================================================='
login_defs_pass=`cat /etc/login.defs | grep PASS`
echo $login_defs_pass
echo -e "\n"

echo '========================================================='
echo 'system-auth |grep dcredit=-1'
echo '========================================================='
system_auth=`cat /etc/pam.d/system-auth | grep dcredit=-1`
echo $system_auth
echo -e "\n"

echo '========================================================='
echo 'shadow'
echo '========================================================='
for sha in $shadow;
do
if [ ${#sha} -gt 70 ];
then
    echo $sha
fi
done
echo -e "\n"

echo '==========================================='

