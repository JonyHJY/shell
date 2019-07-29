#!/bin/bash

begin_time=`date`

echo '========================================================='
echo 'login.defs |grep PASS'
echo '========================================================='
#login_defs_pass=`cat /etc/login.defs | grep PASS`
#echo $login_defs_pass
cat /etc/login.defs | grep PASS
echo -e "\n"

echo '========================================================='
echo 'system-auth |grep dcredit=-1'
echo '========================================================='
system_auth_dcredit=`cat /etc/pam.d/system-auth | grep dcredit=-1`
echo $system_auth_dcredit
echo -e "\n"

echo '========================================================='
echo 'system-auth |grep  deny='
echo '========================================================='
system_auth_deny=`cat /etc/pam.d/system-auth |grep  deny=`
echo $system_auth_deny
echo -e "\n"

echo '========================================================='
echo 'passwd'
echo '========================================================='
cat /etc/passwd
echo -e "\n"

echo '========================================================='
echo 'shadow'
echo '========================================================='
shadow=`cat /etc/shadow`
for sha in $shadow;
do
if [ ${#sha} -gt 70 ];
then
    echo $sha
fi
done
echo -e "\n"

echo '========================================================='
echo 'll passwd/shadow/profile/networks/auditd.conf'
echo '========================================================='
echo `ls -l /etc/passwd`
echo `ls -l /etc/shadow`
echo `ls -l /etc/profile`
echo `ls -l /etc/networks`
echo `ls -l /etc/audit/auditd.conf`
echo -e "\n"

echo '========================================================='
echo 'rsyslog/auditd status'
echo '========================================================='
ps -ef | grep rsyslog
service rsyslog status
echo -e "\n"
ps -ef | grep auditd
service auditd status
echo -e "\n"

echo '========================================================='
echo 'ls –la /var/log/audit.d'
echo '========================================================='
echo `ls -la /var/log/audit.d`
echo -e "\n"

echo '========================================================='
echo 'cat /etc/audit/auditd.conf |grep -e num -e max_log -e disk'
echo '========================================================='
cat /etc/audit/auditd.conf |grep -e num -e max_log -e disk
echo -e "\n"

echo '========================================================='
echo ' ll /var/log/messages /var/log/syslog' 
echo '   /etc/log/messages /var/log/user.log /var/log/auth.log'
echo '========================================================='
echo `ls -l /var/log/messages`
echo `ls -l /var/log/syslog`
echo `ls -l /etc/log/messages`
echo `ls -l /var/log/user.log`
echo `ls -l /var/log/auth.log`
echo -e "\n"

echo '========================================================='
echo 'ps -ef |grep YD / netstat -anp |grep  YD '
echo '========================================================='
echo `ps -ef | grep YD`
echo -e "\n"

echo '========================================================='
echo 'netstat -anp |grep  YD '
echo '========================================================='
echo `netstat -anp | grep YD`
echo -e "\n"

echo '========================================================='
echo 'cat /etc/profile |grep TM'
echo '========================================================='
echo `cat /etc/profile | grep TM`
echo -e "\n"
echo 'go on'
