<html>
<head>
<title>Problema</title>
</head>
<body>
<?php
	include("funcion2tarea.inc");
	echo "<form name='form1' action='' method='post'>";
	echo "Nombre: <input name='nom'><br>";
	echo"<hr>";
	echo "Area: <input type='radio' name='rbt' value='1'> Logistica
	<input type='radio' name='rbt' value='2'> Administracion
	<input type='radio' name='rbt' value='3'> Otros<br> ";
	echo"<hr>";
	echo "Sueldo: <input name='sueldo'><br>";
	echo"<hr>";
	echo "<input type='submit' name='boton' value='Enviar'>";
	echo"<hr>";
	cliente($_REQUEST['nom'],$_REQUEST['sueldo'],$_REQUEST['rbt']);
	echo "</form>";
?>
</html>