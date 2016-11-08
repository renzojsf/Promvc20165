<?php
 $nombre=$_REQUEST['usuario'];
$pass=$_REQUEST['pass'];

$coneccion= mysql_connect("localhost","root")or die("Falla en la coneccion al servidor ");
mysql_select_db("bdcolegio",$coneccion)or die("Falla en la coneccion al bd ");

$standar=mysql_query("select * from usuario where login='".$nombre."' and pass='".$pass."' ",$coneccion);
$admin=mysql_query("select * from usuario where login='".$nombre."' and passadmin='".$pass."' ",$coneccion);

if($row=mysql_fetch_array($standar)){

	header("Location: plantilla.html");

}else if($row=mysql_fetch_array($admin)){
	header("Location: plantilla.html");
}else{
	echo("se perdio");
}
 ?>
