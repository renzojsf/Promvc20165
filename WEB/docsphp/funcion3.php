
<html>
<head>
<title>Problema 1</title>
</head>
<body>
<?php
include("funcion2tarea.inc");
echo "<form name='form1' action='' method='post'>";
echo "Ingrese un numero: <input name='txtnum'><br>";
echo "<input type='submit' name='boton' value='enviar'>";
matriz($_REQUEST['txtnum']);
echo "</form>";
?>
</body>
</html>
 
