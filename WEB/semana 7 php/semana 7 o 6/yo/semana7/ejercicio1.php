<html>
<head>
<title>manejo de archivos</title>
</head>
<body>
<h2><strong>TRABAJO CON ARCHIVOS </strong></h2>
<p>&nbsp;</p>
<p>
  <?php 
//codigo                                           r es porque abrira de tipo lectura
if ($puntero=fopen("form_calificado.php","r"))
{
echo"<h2>Archivo abierto correctamente</h2>";
fpassthru($puntero);
//este ciierra el archivo automaticamente
}else{
echo"<h2>Archivo No Abierto</h2>";
}

?> 
  
  
  
  
</p>
</body>
</html>
