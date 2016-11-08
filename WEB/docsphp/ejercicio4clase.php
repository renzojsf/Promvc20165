<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Desarrollo de Portales</title>
</head>

<body>
<h2><b>Diseñar un algoritmo en que permita mostrar un listado de los primeros "N" números naturales positivos impares. El valor debe ser ingresado por teclado.</b></h2>
<?php
echo"<form name='form1' action='' method='post' >";
echo"<b>Ingrese N&uacute;mero</b> <input type=text name=txtnum> ";
echo"<input type=submit name=pulsar value='Ver Listado'><br/>";
$pulsar=$_POST['pulsar'];
if(isset($pulsar)){
$num=$_POST['txtnum'];
	for($i=1;$i<=$num*2;$i++){
		if($i%2!=0)
		echo"<b>$i - </b>";
							 }
				  }
echo"</form>";
?>
</body>
</html>
