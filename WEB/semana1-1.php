<?php  
$producto="mouse";
$cantidad=5;
$preciouni=10;
$recargo=($cantidad*$preciouni-$cantidad*$preciouni*0.2)*0.15;
$Descuento=$cantidad*$preciouni*0.2;
$total=$cantidad*$preciouni+$recargo - $Descuento;


echo "El productoses: $producto, la cantidad: $cantidad, El precio uni:$preciouni";
echo "<hr>";
echo "subtotal :".$cantidad*$preciouni."<br>";
echo "Descuento : ".$cantidad*$preciouni*0.2."<br>" ;         
echo "Recargo: $recargo<br>";
	echo "Total Neto : $total";
	?>
