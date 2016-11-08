<html>
<head>
<title>manejo de archivos</title>
</head>
<body>
<h2><strong>TRABAJO CON ARCHIVOS </strong></h2>
<p>&nbsp;</p>
<p>
  <?php 
//codigo                                   r  porque abrira tipo lectura 
if($puntero=fopen("form_calificado.php","r")){
echo"<H2>ARCHIVO ABIERTO CORRECTAMENTE</H2>";
fpassthru($puntero);
}else{
echo"<h2>Archivo No Abierto</h2>";
}

?> 
  
  
  
  
</p>
</body>
</html>
