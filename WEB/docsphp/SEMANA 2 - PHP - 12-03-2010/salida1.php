<html>
<head>
<title>REPORTE IDAT</title>
</head>

<body>
 <h2><strong>REPORTE DE SALIDA </strong></h2>
 <hr />
 <p>&nbsp;</p>
 
 <?
//codigo
//captura de variables
$cod=$_REQUEST['txtcod']; //cadena
$nom=$_REQUEST['txtnom']; //cadena
$tipo=$_REQUEST['cmbtipo']; //numero
$imp1=$_REQUEST['chka']; //logico
$imp2=$_REQUEST['chkb']; //logico
$op=$_REQUEST['rad']; //cadena

switch($tipo)
{
case 0:$tipo="Computador Personal";break;
case 1:$tipo="Monitor LCD";break;
case 2:$tipo="Impresora";break;
case 3:$tipo="Mouse Inalambrico";break;
case 4:$tipo="Impresora Laser";break;
} //fin de swotich 
if ($imp1)
{
  $imp1="IGV";
}
else
{
 $imp1="";
}
if($imp2)
{
 $imp2="Transporte";
}
else
{
 $imp2="";
}
if(($imp1=="")&&($imp2==""))
{
 $imp1="<b style='color:red;'>No Impuestos</b>";
}
if (($cod!="")&&($nom!=""))
{
echo"<form>";
echo"<h2>Codigo:<input type=text value='$cod' disabled></h2>";
echo"<h2>Nombre:<input type=text value='$nom' size=40 disabled></h2>";
echo"<h2>Tipo:<input type=text value='$tipo' size=40 disabled></h2>";
echo"<h2>Impuestos:<b><font color=blue>$imp1 $imp2</font></b></h2>";
echo"<h2>Tipo de Venta:$op</h2></form>";
}
else
{
 echo"<h2>FORMULARIO INCOMPLETO</h2>";
}


 ?>
 <p>&nbsp;
 
  </p>
</body>
</html>
