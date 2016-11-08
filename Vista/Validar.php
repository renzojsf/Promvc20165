<?php 
$usu=$_REQUEST["Usuario"];
$con=$_REQUEST["Contrase"];
echo $usu;
$control=1;
require_once("../Controlador/Usuarios_controlador.php");
if (count($datos)==1) {
		echo "registros";
}else{
	echo "no existe";
}
?>