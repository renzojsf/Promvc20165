<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Reporte de notas</title>
<link rel="stylesheet" type="text/css" href="archivos/estilo.css">
</head>
<body marginheight="0" marginwidth="0" onload="window.print(); self.close();">

<?
include("conexion.php");
$con = new conexion();
$consulta = "call sp_busca_datos_grupo_numero_pagos(".$_REQUEST['id'].");";
$respuesta_ = $con->consulta($consulta);
while($vector_ = mysqli_fetch_array($respuesta_))
{
	$tmA = explode("-",$vector_['fecini']); $anio = $tmA[0];
	$secc = $vector_['seccion'];
	$desc = $vector_['nivel'];
	$tot_ = $vector_['numero']+1;
	$d_ini = $vector_['fecini'];
}
$d_act = strtotime(date("Y-m-d"));
?>

<table border="0" style="font-family:Verdana; font-size:12px" align="center" cellpadding="0" cellspacing="0">
 <tr><td>&nbsp;</td></tr>
 <tr height="20px"><td align="center"><b>Reporte de notas</b></td></tr>
 <tr height="20px"><td align="center"><?=$desc.' - '.$anio?></td></tr>
 <tr height="20px"><td align="center">Seccion <?=$secc?></td></tr>
 <tr><td>&nbsp;</td></tr>
</table>

<table border="0" style="font-family:Verdana; font-size:12px" align="center" cellpadding="0" cellspacing="0">
 <tr>
  <td width="330px">
    <table border="0" style="font-family:Verdana; font-size:12px" align="center" cellpadding="0" cellspacing="0">
     <tr height="25px">
      <td align="center" width="30px">Nº</td>
      <td width="300px" style="text-indent:15px">Apellidos y Nombres</td>
     </tr>
    </table>
  </td>
  <td>
   <table border="0" align="center" cellpadding="0" cellspacing="0">
    <tr height="25px">
      <?
      $con = new conexion();
      $consulta = "call sp_lista_cursos_curricula(".$_REQUEST['cur'].");";
      $respuesta_ = $con->consulta($consulta);
      while($vector_ = mysqli_fetch_array($respuesta_)){
      ?>
      <td width="30px" align="center"><p class="vertical">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?=substr($vector_['curso'],0,12)?></p>&nbsp;</td>
      <? } ?>
    </tr>
   </table>
  </td>
 </tr>
 <tr>
  <td colspan="2">
   <table border="1" style="font-family:Verdana; font-size:12px" align="center" cellpadding="0" cellspacing="0">
	 <?
     $p=0; $id_g = $_REQUEST['id'];
     $con = new conexion();
     $consulta = "call sp_lista_alumnos_grupo($id_g,0,0);";
     $respuesta = $con->consulta($consulta);
     while($vector = mysqli_fetch_array($respuesta)){ $p++; $id_p = $vector['idproceso'];
     ?>
     <tr height="25px">
      <td width="30px" align="center"><?=$p?></td>
      <td style="text-indent:15px" width="300px"><?=$vector['alumno']?></td>
      <?
      $con = new conexion();
      $consulta = "call sp_lista_cursos_curricula(".$_REQUEST['cur'].");";
      $respuesta_ = $con->consulta($consulta);
      while($vector_ = mysqli_fetch_array($respuesta_)){
		  $con = new conexion();
		  $consulta = "call sp_muestra_nota_alumno(".$vector['idalumno'].",".$vector_['idcurso'].",".$_REQUEST['id'].");";
		  $respuesta_n = $con->consulta($consulta);
		  while($vector_n = mysqli_fetch_array($respuesta_n)){
		  ?>
		  <td width="30px" align="center"><?=$vector_n['promedio']?></td>
		  <? }} ?>
     </tr>
     <? } ?>
    </table>
  </td>
 </tr>
</table>

</body>
</html>