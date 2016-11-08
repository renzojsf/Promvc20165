<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Rankin de seccion</title>
</head>
<body marginheight="0" marginwidth="0" onload="window.print(); self.close();">

<?
include("conexion.php");
$con = new conexion();
$consulta = "call sp_busca_datos_grupo(".$_REQUEST['id'].");";
$respuesta_ = $con->consulta($consulta);
while($vector_ = mysqli_fetch_array($respuesta_))
{
	$tmA = explode("-",$vector_['fecini']); $anio = $tmA[0];
	$desc = $vector_['nivel'];
	$sec = $vector_['seccion'];
}
?>

<table border="0" style="font-family:Verdana; font-size:12px" align="center" cellpadding="0" cellspacing="0">
 <tr><td>&nbsp;</td></tr>
 <tr height="20px"><td align="center">Rankin de seccion - <?=$desc?></td></tr>
 <tr height="20px"><td align="center">Seccion - <?=$sec?></td></tr>
 <tr height="20px"><td align="center"><?=$anio?></td></tr>
 <tr><td>&nbsp;</td></tr>
</table>

<table border="1" style="font-family:Verdana; font-size:12px" align="center" cellpadding="0" cellspacing="0">
 <tr height="25px">
  <td align="center" width="30px">Nº</td>
  <td width="300px" style="text-indent:15px">Apellidos y Nombres</td>
  <td width="100px" align="center">Prom Final</td>
  <td width="100px" align="center">&nbsp;</td>
 </tr>
 <?
 $p=0; $id_g = $_REQUEST['id'];
 $con = new conexion();
 $consulta = "call sp_rankin_alumnos_grupo_repro($id_g);";
 $respuesta = $con->consulta($consulta);
 while($vector = mysqli_fetch_array($respuesta)){ $p++;
 ?>
 <tr height="25px">
  <td width="30px" align="center"><?=$p?></td>
  <td style="text-indent:15px"><?=$vector['alumno']?></td>
  <td align="center"><?=number_format($vector['promedio'],2,'.',' ')?></td>
  <td align="center">Repitente</td>
 </tr>
 <? } ?>
</table>

</body>
</html>