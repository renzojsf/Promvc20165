<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_cone = "localhost";
$database_cone = "bd_php";
$username_cone = "root";
$password_cone = "";
$cone = mysql_pconnect($hostname_cone, $username_cone, $password_cone) or trigger_error(mysql_error(),E_USER_ERROR); 

mysql_select_db($database_cone,$cone);
?>