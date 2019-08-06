#!/bin/bash  
# execute sql
echo '输入mysql用户名:'
read username
echo '输入mysql用户密码:'
read passwd

echo '执行时间为：' >>user.txt
echo `date` >>user.txt
echo 'mysql的版本信息：'
echo `mysql的版本信息` >>user.txt
echo `mysql -V`
echo `mysql -V` >>user.txt

echo '输入MySQL的版本号(5.7/5.6):'
read version
if [ ${version} = 5.7 ]
then
    echo '================================================' >>user.txt
    echo '密码校验和登录失败处理。'>>user.txt
    echo '================================================' >>user.txt
    mysql -u"${username}" -p"${passwd}" -e "    
    show variables like '%vali%pass%'
    "  >>user.txt

    echo '================================================' >>user.txt
    echo '查看是否有登录失败处理插件。'>>user.txt
    echo '================================================' >>user.txt
    mysql -u"${username}" -p"${passwd}" -e "    
    show variables like '%conn%con%'
    "  >>user.txt

    echo '================================================' >>user.txt
    echo '查询user表中是否有ssl_type字段'>>user.txt
    echo '================================================' >>user.txt
    mysql -u"${username}" -p"${passwd}" -e "    
    show global variables like '%ssl%';
    "  >>user.txt
fi

echo '================================================' >>user.txt
echo 'Host/用户名' >>user.txt
echo '================================================' >>user.txt
mysql -u"${username}" -p"${passwd}" -e "    
use mysql;
select host,user from user;  
"  >>user.txt

echo '================================================' >>user.txt
echo '查看运行mysql的系统账户' >>user.txt
echo '================================================' >>user.txt
echo `ps -ef | grep mysql` 


