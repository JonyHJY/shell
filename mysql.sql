/*密码校验和登录失败处理(5.7以上版本使用)*/
show variables like '%vali%pass%';

/*查看账户与iP地址绑定情况*/
select user,host from mysql.user;

/*查看是否有登录失败处理插件(5.7以上版本使用)*/
show variables like '%conn%con%';

/*查询user表中是否有ssl_type字段*/
show global variables like '%ssl%';

/*查看每个用户是否拥有管理员权限情况*/
select user,Super_priv,Process_priv,File_priv from mysql.user;

/*查看所有MySQL用户名称以及口令哈希值*/
select user,authentication_string from mysql.user;

/*查看数据库是否开启审计功能*/
show variables where variable_name in ('log_bin','log_error','slow_query_log','init_connect');

