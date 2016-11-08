<?php
sleep(2);
include('Connections/cone.php');
$usu = $_POST['usu'];

//cadena
$sql = "SELECT COUNT(*) total
			FROM usuario
			WHERE usu_nom_usu = '$usu' ";

//procesar la cadena
$query = mysql_query($sql);

//conversion a tabla
$resultado = mysql_fetch_assoc($query);

if(trim($usu) != '' ){

	if($resultado['total'] > 0){
		echo '0';
	}else{
		echo '<span style="color:#00FF00">Disponible</span>';
	}

}else{
	echo '<span style="color:#00FF00">Vacio</span>';
}

?>