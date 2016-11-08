<html>
<head>
<title>manejo de archivos</title>
</head>
<body>
<h2><strong>TRABAJO CON ARCHIVOS </strong></h2>
<p>&nbsp;</p>
<p>
  <?php 
//codigo
if ($puntero=fopen("form_calificado.php","r"))
{
	echo "<h2>Archivo abierto correctamente</h2>";
	fpassthru($puntero);
}
else
{
	echo "<h2>Archivo No abierto.</h2>";
}

?> 
  
  
  
  
</p>
</body>
</html>
