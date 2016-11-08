<?php
$nom = $_POST['nom'];

//1 - eliminar el producto de las variables de sesion
session_start();

foreach( $_SESSION['nom'] as $i => $v ){
	if( $v == $nom ){
		//eliminar de los arreglos en la posicion i
		$_SESSION['nom'][ $i ] = '';
		$_SESSION['precio'][ $i ] = '';
		$_SESSION['canti'][ $i ] = '';
		$_SESSION['pt'][ $i ] = '';
	}
}





?>
