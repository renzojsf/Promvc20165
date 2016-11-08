<html>
<head>
<TITLE>Seleccione...</TITLE>
<script>
function cierra()
{
    var pai = document.getElementById('pais');
    var dep = document.getElementById('departamento');
    var pro = document.getElementById('provincia');
    var dis = document.getElementById('distrito');

    if(pai.selectedIndex>0 && dep.selectedIndex>0 && pro.selectedIndex>0 && dis.selectedIndex>0)
    {
	var cadena = '';
	cadena = pai.options[pai.selectedIndex].text + ' > ' + dep.options[dep.selectedIndex].text + ' > ' + pro.options[pro.selectedIndex].text + ' > ' + dis.options[dis.selectedIndex].text;
	window.opener.document.nuevo.hdi.value = dis.options[dis.selectedIndex].value;
	window.opener.document.nuevo.dis.value = cadena;
	self.close();
    }
}
</script>
</head>
<body>

<? include("conexion.php"); ?>

<form name="busqueda" method="post" action="listado_nacionalidad.php">
<table border="0" width="300px" cellpadding="1" cellspacing="1" align="center">
 <tr>
  <td style="background-color:#C3D9FF">
   <table border="0" width="100%" cellpadding="1" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-family:verdana; font-size:12px">
    <tr height="30px">
     <td style="text-indent:10px;width:130px">Pais</td>
     <td align="left">
      <select name="pais" id="pais" style="width:130px; cursor:pointer;" onchange="document.busqueda.submit();">
	<option value="-1">Seleccione</option>
	<?
	$con = new conexion();
	$consulta = "select * from pais";
	$respuesta = $con->consulta($consulta);
	while($ppais = mysqli_fetch_array($respuesta))
	{ ?>
	<option value="<?=$ppais['idpais']?>" <? if($_POST['pais']==$ppais['idpais']){ echo "selected";} ?>><?=$ppais['pais']?></option>
	<? } ?>
      </select>	
     </td>
    </tr>
   </table>
  </td>
 </tr>

 <tr>
  <td style="background-color:#<? echo $col; ?>">
   <table border="0" width="100%" cellpadding="1" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-family:verdana; font-size:12px">
    <tr height="30px">
     <td style="text-indent:10px; width:130px">Departamento</td>
     <td align="left">
      <select name="departamento" id="departamento" style="width:130px; cursor:pointer;" onchange="document.busqueda.submit();">
	<option value="-1">Seleccione</option>
	<?
	$con = new conexion();
	$consulta = "select * from departamento where idpais='$_POST[pais]'";
	$respuesta = $con->consulta($consulta);
	while($pdepa = mysqli_fetch_array($respuesta))
	{ ?>
	<option value="<?=$pdepa['iddepartamento']?>" <? if($_POST['departamento']==$pdepa['iddepartamento']){ echo "selected";} ?>><?=$pdepa['departamento']?></option>
	<? } ?>
      </select>	
     </td>
    </tr>
   </table>
  </td>
 </tr>

 <tr>
  <td style="background-color:#C3D9FF">
   <table border="0" width="100%" cellpadding="1" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-family:verdana; font-size:12px">
    <tr height="30px">
     <td style="text-indent:10px; width:130px">Provincia</td>
     <td align="left">
      <select name="provincia" id="provincia" style="width:130px; cursor:pointer;" onchange="document.busqueda.submit();">
	<option value="-1">Seleccione</option>
	<?
	$con = new conexion();
	$consulta = "select * from provincia where iddepartamento='$_POST[departamento]'";
	$respuesta = $con->consulta($consulta);
	while($ppro = mysqli_fetch_array($respuesta))
	{ ?>
	<option value="<?=$ppro['idprovincia']?>" <? if($_POST['provincia']==$ppro['idprovincia']){ echo "selected";} ?>><?=$ppro['provincia']?></option>
	<? } ?>
      </select>	
     </td>
    </tr>
   </table>
  </td>
 </tr>

 <tr>
  <td style="background-color:#<? echo $col; ?>">
   <table border="0" width="100%" cellpadding="1" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-family:verdana; font-size:12px">
    <tr height="30px">
     <td style="text-indent:10px; width:130px">Distrito</td>
     <td align="left">
      <select name="distrito" id="distrito" style="width:130px; cursor:pointer;" onchange="document.busqueda.submit();">
	<option value="-1">Seleccione</option>
	<?
	$con = new conexion();
	$consulta = "select * from distrito where idprovincia='$_POST[provincia]'";
	$respuesta = $con->consulta($consulta);
	while($pdis = mysqli_fetch_array($respuesta))
	{ ?>
	<option value="<?=$pdis['iddistrito']?>" <? if($_POST['distrito']==$pdis['iddistrito']){ echo "selected";} ?>><?=$pdis['distrito']?></option>
	<? } ?>
      </select>	
     </td>
    </tr>
   </table>
  </td>
 </tr>

 <tr><td align="right"><a href="#" onclick="cierra();" style="text-decoration:none; color:blue; font-family:verdana; font-size:12px">Seleccionar</a></td></tr>
</table>
</form>

</body>
</html>