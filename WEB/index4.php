<?php

function tabladatos(){
	return 51;

}	
$a=tabladatos();
echo"$a:<br>";

echo strlen($a);
echo $a="MAYU";
echo strtolower($a),"<br>";
$var="es entra conjuntos";
echo "$var";
echo "<hr>";
echo substr($var,5),"<br>";
echo substr($var,0),"<br>";
echo substr($var,5,11),"<br>";
$var="es un camote";
echo str_replace("camote","papas",$var);


?>
