<?php 
function mensajecentrado($mensaje,$secc="3513")
{
echo"<table border=0 bgcolor='lightyellow' width='90%'>";
echo"<tr><th><h2 style='colort:blue;'>$mensaje($secc)</h2></th></tr>";
echo"</table>";
}
function suma($num1,$num2)
{
$resultado=$num1+$num2;
return $resultado;
}

function sumaproducto($num1,$num2,&$suma,&$producto)
{
$suma=$num1+$num2;
$producto=$num1*$num2;
}
//no carga nada
?>