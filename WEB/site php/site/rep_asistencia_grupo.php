<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Listado de asistencia</title>
</head>
<body marginheight="0" marginwidth="0" onload="window.print(); self.close();">

<?
function dia($num)
{
	$v_dia = "";
	switch($num)
	{
		case 1: $v_dia = "Lu"; break;
		case 2: $v_dia = "Ma"; break;
		case 3: $v_dia = "Mi"; break;
		case 4: $v_dia = "Ju"; break;
		case 5: $v_dia = "Vi"; break;
		case 6: $v_dia = "Sa"; break;
	}
	return $v_dia;
}
?>

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
 <tr height="20px"><td align="center">Control de Asistencia - <?=$desc.' '.$sec.' - '.$anio?></td></tr>
 <tr height="20px"><td align="center">Semana del .............. al .............. </td></tr>
 <tr><td>&nbsp;</td></tr>
</table>

<table border="1" style="font-family:Verdana; font-size:12px" align="center" cellpadding="0" cellspacing="0">
 <tr height="25px">
  <td align="center" width="30px">Nº</td>
  <td width="300px" style="text-indent:15px">Apellidos y Nombres</td>
  <? for($j=0;$j<4;$j++){for($i=1;$i<7;$i++){ ?>
  <td width="20px" align="center"><?=dia($i)?></td>
  <? }} ?>
 </tr>
 <?
 $p=0; $id_g = $_REQUEST['id'];
 $con = new conexion();
 $consulta = "call sp_lista_alumnos_grupo($id_g,0,0);";
 $respuesta = $con->consulta($consulta);
 while($vector = mysqli_fetch_array($respuesta)){ $p++;
 ?>
 <tr height="25px">
  <td width="30px" align="center"><?=$p?></td>
  <td style="text-indent:15px"><?=$vector['alumno']?></td>
  <? for($j=0;$j<4;$j++){for($i=1;$i<7;$i++){ ?>
  <td width="20px" align="center">&nbsp;</td>
  <? }} ?>
 </tr>
 <? } ?>
</table>

</body>
</html>