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
<p>Semana 1</p>
<hr>
<center>
<?php 
print "<h1>welcome</h1>";
echo "hola"," " , "","<br>";
print "welcome";
print ("<P>Párrafo 1</P>");
$mensaje="Hola soy una cadena";
echo($mensaje),"<br>";
echo(gettype($mensaje)),"<br>";
echo(var_dump($mensaje)),"<br>";
$mensaje="BAILE CON EN EXAMEN";
echo(var_dump($mensaje)),"<br>";
echo($mensaje{0}),"<br>";
$precio=15.1;
echo "El valor es: ". $mensaje  ," ". $precio,"<br>";
define("ivg",0.18);
echo"la constante es".ivg, "<br>";
$precio +=5;
echo"El nuevo precio ".$precio;
echo"<hr>"
 
?>
</center>

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
	<p>Officina Central: Canaval Y Moreyra Cudra 4 of 1012</p>
    <p>Telefonos: 94565-6413 Anexo 21	</p>
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