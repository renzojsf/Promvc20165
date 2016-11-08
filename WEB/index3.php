<?php

function imprime($titulo){
	echo"<html>";
	echo"<title>$titulo</title>";
	echo "<body>";
		
	tabladatos(2,2,"a");
	echo "<hr>";
	mensaje();
	mensaje("Ingeniro.");
	saludoinge("euler");
	echo "</body>";
	echo"</html>";
	}
imprime("pepe");

function tabladatos($fila,$columna,$dato){
	echo"<table>";
	for($i=1;$i<=$fila;$i++){
		echo"<tr>";
			for($a=1;$a<=$columna;$a++){
				echo"<th> $dato</th>";
				}
		}
	echo "</tr>";
	echo "</table>";
}
function  mensaje($nombre="pepe."){
	echo"Estimado $nombre:<br>";
	}
function saludoinge($ape,$titulo="inge"){
	echo "$ape, es un : $titulo <br>";
	}
	
	
?>
