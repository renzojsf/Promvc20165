<?php
$nom = $_POST['nom'];

session_start();

foreach($_SESSION['nom'] as $i => $v){
	if( $v == $nom ){
		//disminuir la cantidad
		$_SESSION['canti'][ $i ] --;
		
		$_SESSION['pt'][ $i ] =  $_SESSION['canti'][ $i ]*
											$_SESSION['precio'][ $i ];
	}
}

?>