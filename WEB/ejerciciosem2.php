<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="CSS/miestilo.css">
	<script type="text/javascript" src="CSS/jquery-2.1.3.js"></script>
    <meta name="viewport" content = "width = device-width"/>
	
	<title>Intranet</title>
</head>
<body>
<header>
<h2><a href=" ">Acceso</a></h2>
<h1>Intranet</h1>

</header>

<nav>
<ul class="">
	<a href=" "><li>INICIO</li></a>
	<a href=" "><li>NOSOTROS</li></a>
	<a href=" "><li>MISION</li></a>
	<a href=" "><li>CONTACTENOS</li></a>
	<a href=" "><li>UBICANOS</li></a>
</ul>	
<div class="handle">Menu</div>
</nav>
<script type="text/javascript">
	$('.handle').on('click', function(){
		$('nav ul').toggleClass('showing')
	});
</script>

<section>
<form name='frm1' action='' method='post'>
<p>Ingrese fila:    <input type="text" name="txtnum" id="txtnum"> </p><br>

 <input type=submit value='ejecutar' name='pulsar'>
</form>
<hr>numero
<br>
<hr>
      <?php
			  $pulsar=$_REQUEST['pulsar'];
$num=$_REQUEST['txtnum'];
if(isset($pulsar))
{
echo"<table border='1' width='90'><tr>";
for($celdas=1;$celdas<=$num;$celdas++)
{
echo"<th>$celdas</th>";
if($celdas%10==10)
{
echo"</tr><tr>";
}
}
}
echo"</tr></table>";
?>


<?php
//nombre del textarea txtnum
//ahora vamos a crear las variables

$cliente="jose Canales";
$distrito="San Borja";
$sueldo=2800;
//mostrar en pantalla el nombre del cliente y su distrito
echo"<h3>Cliente;$cliente,reside en el 
distrito ".""."de:$distrito y percibe un sueldo
 de:$sueldo y su descuento(15%)
  equivale a:".($sueldo*0.15)."recibiendo finalmente:".($sueldo-($sueldo*0.15)."</h3>");
// '.' es par concadenar cadena de texto 
   echo"<hr>";//linea
$num1=15;
echo"<h3>El valor numero es : ".++$num1;//preincremento
echo"<hr>";
$producto="Procesador Core2duo";
$area="laboratorio 1";
$cantidad=15;
$precio=420;
$subtotal=$cantidad*$precio;
$descuento=$subtotal*0.6;
$total=$subtotal-$descuento;
//lostrar el contenido dentro de una tablla
echo"<table width=70% border=1><tr><th>Producto </th><th>area</th>
<th>cantidad</th><th>Precio</th><th>Subtoral</th><th>Descuento 6%</th><th>Total</th><tr>";
echo"<th>$producto</th><th>$area=</th><th>$cantidad</th><th>$precio</th><th>$subtotal</th><th>$descuento</th><th>$total</th><tr>";
echo"</table>"
?>
<div id="d_reloj">
</div>
<script type="text/javascript">
function f_reloj(){
	var fecha = new Date();
	var h =fecha.getHours();
	var m = fecha.getMinutes();
	var s =fecha.getSeconds();
	var hora = h + ":" + m + ":" + s;
	document.getElementById("d_reloj").innerHTML=hora;
	setTimeout("f_reloj()",1000);		
}
f_reloj();


</script>

</section>
<footer>
<center>

<ul>
	
		<li>
        <P>2015© Untitled. All rights reserved</P>
		<p>Siguenos en Facebook  Y Twiter</p>
        </li>
        <li>
        <a  href="" title="Twitter">
		<img alt="Twitter" src="img/Facebook.png" />
		</a>
        </li>
        	<li>
        <a href="" title="Facebook">
		<img alt="Facebook" src="img/Twitter.png" />
		</a>
        </li>
</ul>
</center>
</footer>
</body>
</html>