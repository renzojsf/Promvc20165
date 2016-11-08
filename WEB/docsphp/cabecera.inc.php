<center>
<h2>TRABAJO DE INCLUDE</h2>
<?php
echo "<p style='color:red;'>$nombre</p>";
echo "<b style='color:blue;'>en Altas: ".strtoupper($nombre)."</b><br>";
echo "<h3>Longitud de la cadena: ".strlen($nombre)."</h3>";
echo "<hr>";
echo "<h2>Ahora separamos por caracteres.</h2>";
$long=strlen($nombre);
echo "<table border='1' width='85%'><tr>";
for ($i=0;$i<=$long;$i++)
{
	if (($i%4==0) && ($i!=0))
	{
		echo "</tr><tr>";
	}
	echo "<th>$nombre[$i]</th>";
}
echo "</tr></table>";
?>