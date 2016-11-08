<?
include("conexion.php");
$con = new conexion();
$consulta = "call sp_imprimo_boleta(".$_REQUEST['id'].");";
$respuesta = $con->consulta($consulta);
while($vector = mysqli_fetch_array($respuesta)){
	$_alu = $vector['alumno'];
	$_dir = $vector['direccion'];
	$_mon = $vector['monto'];
	$_mat = $vector['matricula'];
	$_fec = split("-",$vector['fecpago']);
	$_mes = $vector['mes'];
	$_ndo = split("-",$vector['ndocumento']);
}

function pinta($an,$ma,$ms)
{
	if($an == $ms && $ma == 0)
	{
		echo "class='cell'";
		//echo "style='font-size:14px; font-weight:bold; color: #F00";
	}
	else
	{
		echo "class='cel'";
	}
}

function mese($mes)
{
	switch($mes)
	{
		case 1; $mm="Enero"; break;
		case 2; $mm="Febrero"; break;
		case 3; $mm="Marzo"; break;
		case 4; $mm="Abril"; break;
		case 5; $mm="Mayo"; break;
		case 6; $mm="Junio"; break;
		case 7; $mm="Julio"; break;
		case 8; $mm="Agosto"; break;
		case 9; $mm="Setiembre"; break;
		case 10; $mm="Octubre"; break;
		case 11; $mm="Noviembre"; break;
		case 12; $mm="Diciembre"; break;
	}
	return $mm;
}
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento de pago</title>
<style>html,body{height:100%;}.pis{border-bottom:solid 1px #036}.cel{text-align:center;width:20px;border-left:solid 1px #036}.cell{text-align:center;width:20px;font-size:13px;border-left:solid 1px #036;color:#F00;font-weight:bold}</style>
</head>
<body marginheight="0" marginwidth="0" onload="window.print(); self.close();">

<table border="0" width="100%" height="100%" cellpadding="0" cellspacing="0" align="center">
 <tr>
  <td>
   <table border="0" width="500px" cellpadding="0" cellspacing="0" align="center" style="border:solid 1px #036;-moz-border-radius: 6px; font-family:verdana; font-size:10px; color:#036">
    <tr height="10px"><td colspan="3">&nbsp;</td></tr>
    <tr>
     <td width="100px" align="center"><img src="img/insi.png" width="80px"/></td>
     <td>
      <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="font-family:verdana; font-size:10px; color:#036">
       <tr height="10px"><td align="center"><b>I.E.P. "SAN PABLO"</b></td></tr>
       <tr height="10px"><td align="center">R.R.S. Nº 000039</td></tr>
       <tr height="10px"><td align="center">De: B. RUTH DUQUE AMAYA</td></tr>
       <tr height="10px"><td align="center">Calle Buena Vista Nº 164</td></tr>
       <tr height="10px"><td align="center">MANCORA</td></tr>
       <tr height="10px"><td align="center">Cel.: 072 - 679660</td></tr>
      </table>
     </td>
     <td width="170px">
      <table border="0" width="150px" cellpadding="0" cellspacing="0" align="center" style="border:solid 1px #036;-moz-border-radius: 6px; font-family:verdana; font-size:12px; color:#036">
       <tr height="20px"><td align="center">RUC Nº 10166813269</td></tr>
       <tr height="20px"><td align="center" style="font-size:13px; background-color:#C1E0FF"><b>BOLETA DE VENTA</b></td></tr>
       <tr height="20px"><td align="center" style="font-size:13px"><b>Nº <?=$_ndo[0]?> - <font color="#FF0000"><?=$_ndo[1]?></font></b></td></tr>
      </table>
     </td>
    </tr>
    <tr height="20px">
     <td colspan="3">
      <table border="0" width="96%" cellpadding="0" cellspacing="0" style="font-family:verdana; font-size:10px">
       <tr height="17px"><td width="80px" style="text-indent:10px">NOMBRE:</td><td style="border-bottom:solid 1px #036"><?=$_alu?></td></tr>
      </table>
     </td>
    </tr>
    <tr height="20px">
     <td colspan="3">
      <table border="0" width="96%" cellpadding="0" cellspacing="0" style="font-family:verdana; font-size:10px">
       <tr height="17px"><td width="80px" style="text-indent:10px">DIRECCION:</td><td style="border-bottom:solid 1px #036"><?=$_dir?></td></tr>
      </table>
     </td>
    </tr>
    <tr height="5px"><td></td></tr>
    <tr>
     <td colspan="3">
      <table border="0" width="480px" cellpadding="0" cellspacing="0" align="center" style="border:solid 1px #036; font-family:verdana; font-size:10px; color:#036">
       <tr height="20px" style="background-color:#C1E0FF"><td align="center" colspan="3" style="border-bottom:solid 1px #036">Concepto</td><td align="center" width="100px" style="border-bottom:solid 1px #036; border-left:solid 1px #036">TOTAL S/.</td></tr>
       <tr height="20px"><td style="text-indent:5px" width="100px" class="pis">MENSUALIDAD</td><td align="center" width="20px" class="pis">:</td><td class="pis"><table border="0" cellpadding="0" cellspacing="0" align="center" style="font-family:verdana; font-size:10px;"><tr height="20px"><td <? pinta($_mes,$_mat,3); ?>>M</td><td <? pinta($_mes,$_mat,4); ?>>A</td><td <? pinta($_mes,$_mat,5); ?>>M</td><td <? pinta($_mes,$_mat,6); ?>>J</td><td <? pinta($_mes,$_mat,7); ?>>J</td><td <? pinta($_mes,$_mat,8); ?>>A</td><td <? pinta($_mes,$_mat,9); ?>>S</td><td <? pinta($_mes,$_mat,10); ?>>O</td><td <? pinta($_mes,$_mat,11); ?>>N</td><td style="border-right:solid 1px #036" <? pinta($_mes,$_mat,12); ?>>D</td></tr></table></td><td width="100px" style="border-left:solid 1px #036" class="pis" align="center"><? if($_mat==0){ echo number_format($_mon,2,'.',' ');}else{echo "&nbsp;";} ?></td></tr>
       <tr height="20px"><td style="text-indent:5px" width="100px" class="pis">MATRICULA</td><td align="center" width="20px" class="pis">:</td><td class="pis">&nbsp;</td><td width="100px" style="border-left:solid 1px #036" class="pis" align="center"><? if($_mat==1){ echo number_format($_mon,2,'.',' ');}else{echo "&nbsp;";} ?></td></tr>
       <tr height="20px"><td style="text-indent:5px" width="100px" class="pis">PAGO A CUENTA</td><td align="center" width="20px" class="pis">:</td><td class="pis">&nbsp;</td><td width="100px" style="border-left:solid 1px #036" class="pis" align="center">&nbsp;</td></tr>
       <tr height="20px"><td style="text-indent:5px" width="100px" class="pis">LIBROS</td><td align="center" width="20px" class="pis">:</td><td class="pis">&nbsp;</td><td width="100px" style="border-left:solid 1px #036" class="pis" align="center">&nbsp;</td></tr>
       <tr height="20px"><td style="text-indent:5px" width="100px">OTROS</td><td align="center" width="20px">:</td><td>&nbsp;</td><td width="100px" style="border-left:solid 1px #036">&nbsp;</td></tr>
      </table>
     </td>
    </tr>
    <tr height="25px">
     <td colspan="3">
      <table border="0" width="480px" cellpadding="0" cellspacing="0" align="center" style="font-family:verdana; font-size:10px; color:#036">
       <tr height="20px"><td align="right">Total S/.&nbsp;&nbsp;</td><td align="center" width="100px" style="border:solid 1px #036;background-color:#C1E0FF"><?=number_format($_mon,2,'.',' ')?></td></tr>
      </table>
     </td>
    </tr>
    <tr height="25px">
     <td colspan="3">
      <table border="0" width="480px" cellpadding="0" cellspacing="0" align="center" style="font-family:verdana; font-size:10px; color:#036">
       <tr height="20px"><td align="center">Mancora, <span style="border-bottom:dashed 1px #036"><?=$_fec[2]?></span> de <span style="border-bottom:dashed 1px #036"><?=mese($_fec[1])?></span> del <span style="border-bottom:dashed 1px #036"><?=$_fec[0]?></span></td><td align="center" width="100px">EMISOR</td></tr>
      </table>
     </td>
    </tr>
    <tr height="10px"><td colspan="3">&nbsp;</td></tr>
   </table>
  </td>
 </tr>
</table>

</body>
</html>