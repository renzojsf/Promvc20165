<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_admin2 = "localhost";
$database_admin2 = "ejemplo";
$username_admin2 = "admin";
$password_admin2 = "admin";
$admin2 = mysql_pconnect($hostname_admin2, $username_admin2, $password_admin2) or trigger_error(mysql_error(),E_USER_ERROR); 
?>