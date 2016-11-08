<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_cone2 = "localhost";
$database_cone2 = "ejemplo";
$username_cone2 = "admin";
$password_cone2 = "123";
$cone2 = mysql_pconnect($hostname_cone2, $username_cone2, $password_cone2) or trigger_error(mysql_error(),E_USER_ERROR); 
mysql_select_db($database_cone2, $cone2);
?>