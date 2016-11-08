<html>
<head>
<title>Problema</title>
</head>
<body>
<?php
include("funcion.inc.php");//llama pagina de la funcion
//nombre de la funciin + `parametros
mensajecentrado("CLASE DE APLICACIONES WEB","seccion noche");	
$dato=suma(5,19);
//variable=reesultado de funcion con ndos parametros
//resultado
echo"<h2>El Resultado es:$dato</h2>";
echo"<hr>";
sumaproducto(4,11,$sum,$prod);
echo "<h2>La suma es: $sum y producto es: $prod</h2>";

?>
</body>
</html>
 