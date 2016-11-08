<?php
//recibir un nro y mostrar el factorial.
if (!isset($numero) || ($numero==0))
{
	$numero=10;
}
echo "<center><br><b>$numero!</b> = ";
$factorial=1;
do{
echo $numero."x";
$factorial*=$numero;    // por igual
$numero--;  // menos menos
} while ($numero>1);
echo " 1 = <b>$factorial</b>";
?>