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
<p>Semana 3-4</p>
<hr>
<center>
<?php 
$arreglo2[]=12;
$arreglo2[]=24;
$arreglo[0]=13.2;
echo $arreglo[0];
echo"<br>";
echo"<hr>";
echo $arreglo2[0];
echo"<br>";
 echo $arreglo2[1];
 echo"<br>";	
$arraynombres[]="pedro";
$arraynombres[]="juan";
$arraynombres[]="lucas";
sort($arraynombres);
$i=0;
for ($i=0;$i< count($arraynombres);$i++){
	echo $arraynombres[$i];
	echo"<br>";	
	}
echo"<hr>";	
//matris usando el constructor array
$matris=array(1,"ds","cb");
$a=0;
for($a=0;$a< count($matris);$a++){
	echo $matris[$a];
	}
	echo"<hr>";	
	echo"<br>";	
$arrayasocia["sni"]="1616611";
echo "el dni es :",$arrayasocia["sni"];
echo"<hr>";	
	echo"<br>";
	$asociatino=array("peter" => "apellido");
	echo $asociatino["peter"];
echo"<hr>";
$arreglop[]="papas";
$arreglop[]="camote";
$arrrayconstructor[]=array("camote"=>20);
$aareglosalida=join($arreglop,"/");
echo $aareglosalida,"<br>";
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