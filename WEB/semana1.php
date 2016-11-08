<?php  

echo "<!DOCTYPE html> ";
echo "<head>";
echo "<title> PAGINA INICIAL </title>";
echo "<link rel='stylesheet' type='text/css' href='CSS/miestilo.css'>";
echo "</head>";
echo "<body>";
echo "<h2>TRABAJO PRACTICO</h2>";
//CREANDIO VARIABLES
$nombre_cliente="Julio Cesar";
$apellido_cliente="Valdivieso Gomez";
echo  "Cliente:$nombre_cliente - $apellido_cliente <br>";
$producto="Mouse Inalambrico";
$costo=50;
$cantidad=19;
echo "El cliente $nombre_cliente  a llevado $producto donde el precio unitario es: $costo <br> ,
en $cantidad unidades totalizando: ".$costo * $cantidad." soles";
//DE ESTA MANERA SE PUEDE REALIZAR OPERACIONES ARITMETICAS : ".$costo * $cantidad."
echo "</body>";
echo "</html>";
?>
