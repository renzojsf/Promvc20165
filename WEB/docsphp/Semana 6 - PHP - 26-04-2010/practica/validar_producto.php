<?php
sleep(3);
include('Connections/cone.php');


$usu = $_POST['usu'];

$sql = "SELECT COUNT(*) total
			FROM usuario
			WHERE usu_nom_usu = '$usu' ";

$query = mysql_query($sql);

$tabla = mysql_fetch_assoc($query);

if( $tabla['total'] == 1 ){
	echo '<span class="mal">No Disponible</span>';
}else{
	echo '<span class="bien">Disponible</span>';
}

?>