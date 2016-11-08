<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_cone = "localhost";
$database_cone = "ejemplo";
$username_cone = "admin";
$password_cone = "admin";
$cone = mysql_pconnect($hostname_cone, $username_cone, $password_cone) or trigger_error(mysql_error(),E_USER_ERROR); 
//NO TE OLVIDES!!!
mysql_select_db($database_cone,$cone);

?>