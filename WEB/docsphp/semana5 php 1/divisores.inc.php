<?php
if (!isset($numero) || ($numero==0))
{
$numero=10;
}
echo "<h2>Los divisores primos de $numero son: </h2>";
for ($i=1;$i<=$numero;$i++)
{
	if ($numero%$i==0){
		for ($j=2;$j<$i;$j++){
			if ($i%$j==0)
			{
				continue 2;  // control que permite salir a la 2da Est.Ctrl.
			}
		}
		echo $i.",  ";
	}
}
?>