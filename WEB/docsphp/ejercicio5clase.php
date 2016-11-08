<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Desarrollo de Portales Web</title>
</head>

<body>
<?php
echo"<form name='form1' action='' method='post'>";
echo"<h2>REPORTE DE PANTALLA</h2>";
echo"<table border=1 cellspacing=0 cellpadding=0>";
echo"<tr><td><b>Ingrese Producto</b></td><td><input type='text' name='txtpro'></td></tr>";
echo"<tr><td><b>Ingrese Precio</b></td><td><input type='text' name='txtpre'></td></tr>";
echo"<tr><td><b>Ingrese Cantidad</b></td><td><input type='text' name='txtcan'></td></tr>";
echo"<tr><td colspan=2><center><input type='submit' name='boton' value='Ver Reporte'></center></td></tr>";
echo"</table><br />";
echo"</form>";
$txtpro=$_POST['txtpro'];
$txtpre=$_POST['txtpre'];
$txtcan=$_POST['txtcan'];
$boton=$_POST['boton'];
$subtotal=$txtpre * $txtcan;
$descuento=$subtotal * 0.20;
$recargo=(($subtotal * 0.15) + ($descuento * 0.15));
$neto=(($subtotal - $descuento) + $recargo);
if(isset($boton)){
   if(($txtpro!="")&&($txtpre!="")&&($txtcan!="")){
echo"<form>";
echo"<table border=0 cellspacing=0 cellpadding=0>";
echo"<tr><td><b>El Producto:</b></td><td><b>$txtpro</b></td></tr>";
echo"<tr><td><b>El Precio:</b></td><td><b>$txtpre</b></td></tr>";
echo"<tr><td><b>La Cantidad:</b></td><td><b>$txtcan</b></td></tr>";
echo"<tr><td><b>Sub Total:</b></td><td><b>$subtotal</b></td></tr>";
echo"<tr><td><b>Descuento:</b></td><td><b>$descuento</b></td></tr>";
echo"<tr><td><b>Recargo:</b></td><td><b>$recargo</b></td></tr>";
echo"<tr><td><b>Total Neto:</b></td><td><b>$neto</b></td></tr>";
echo"</table>";
echo"</form>";
				  								  } 
else{echo"<h2><b>No se han Ingresado Datos</b></h2>";}
				   }
?>
</body>
</html>
