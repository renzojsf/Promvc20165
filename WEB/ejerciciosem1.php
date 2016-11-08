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
<p>Ingrese fila:<input type=text name='txtfila'> </p><br>
<p>Ingrese celdas x fila:<input type=text name='txtcelda'> </p><br>
<h2>Ingrese texto: <input type=text name='txttexto'></h2>
 <input type=submit value='ejecutar' name='pulsar'>
</form>
<hr>
<?php
$fila=$_REQUEST['txtfila'];
$cel=$_REQUEST['txtcelda'];
$texto=$_REQUEST['txttexto'];
$boton=$_REQUEST['pulsar'];
 if (isset($boton))
{
echo "<table border=1 width=90%>";
for ($i=1;$i<=$fila;$i++)
{
echo "<tr>";
for ($j=1;$j<=$cel;$j++)
{
echo "<th>$texto</th>";
}
echo "</tr>";
}
echo "</table>";
}

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