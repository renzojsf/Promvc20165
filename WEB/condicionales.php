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

<hr>
<?php 
print "<h1>If</h1>";
$sexo="M";
$nombre="Rea";
if($sexo=="M"){
	$sexo="Mujer";
	}else{
	$sexo= "Hombre";	
		}
		echo"$sexo"," ",$nombre;
echo"<hr>";
echo"<h2>Switch</h2>";
$sueldo=1000;
$mensaje="poco";
echo"<br>";
switch($sueldo){
	case 10200:
	echo("poco");
	break;
	
	case 1000:
	echo("medio");
	break;
	
	default:
		echo"fuera del rango";
	}
echo"<hr>";
echo"<p>While</p>";
$i=1;
echo"<ul>";
while($i<=10){
	print("<li> Elemento $i </li>");
	$i++;
	}
	print("fin");
	echo"</ul>";
$a=0;
do{
	print "El numero:$a <br>";
	$a++;
	}while($a<5);
echo"<hr>";
echo"<br>";
$e=0;
for($e;$e<=10;$e++){
	echo $e."<br>";
	}
echo("hr");
$precio=199;
$cantidad=10;
$total=($precio*$cantidad)/100;
echo"El precio es".$precio*$cantidad;

?>
<center>
<hr>
<?php 

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
    <p>Telefonos: 94565-6413 Anexo 21</p>
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