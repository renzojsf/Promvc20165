<html>
<head>
<TITLE>Seleccione...</TITLE>
<script>
function cierra()
{
    var niv = document.getElementById('nivel');
    var gra = document.getElementById('grado');

    if(niv.selectedIndex>0 && gra.selectedIndex>0)
    {
	var cadena = '';
	cadena = niv.options[niv.selectedIndex].text + ' > ' + gra.options[gra.selectedIndex].text;
	window.opener.document.nuevo.hni.value = gra.options[gra.selectedIndex].value;
	window.opener.document.nuevo.niv.value = cadena;
	self.close();
    }
}
</script>
</head>
<body>

<? include("conexion.php"); ?>

<form name="busqueda" method="post" action="listado_nivel.php">
<table border="0" width="300px" cellpadding="1" cellspacing="1" align="center">
 <tr>
  <td style="background-color:#C3D9FF">
   <table border="0" width="100%" cellpadding="1" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-family:verdana; font-size:12px">
    <tr height="30px">
     <td style="text-indent:10px;width:130px">Nivel</td>
     <td align="left">
      <select name="nivel" id="nivel" style="width:130px; cursor:pointer;" onChange="document.busqueda.submit();">
	<option value="-1">Seleccione</option>
	<?
	$con = new conexion();
	$consulta = "select * from nivel";
	$respuesta = $con->consulta($consulta);
	while($nivel = mysqli_fetch_array($respuesta))
	{ ?>
	<option value="<?=$nivel['idnivel']?>" <? if($_POST['nivel']==$nivel['idnivel']){ echo "selected";} ?>><?=$nivel['nivel']?></option>
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
     <td style="text-indent:10px; width:130px">Grado</td>
     <td align="left">
      <select name="grado" id="grado" style="width:130px; cursor:pointer;" onChange="document.busqueda.submit();">
	<option value="-1">Seleccione</option>
	<?
	$con = new conexion();
	$consulta = "select * from grado where idnivel='$_POST[nivel]'";
	$respuesta = $con->consulta($consulta);
	while($grado = mysqli_fetch_array($respuesta))
	{ ?>
	<option value="<?=$grado['idgrado']?>" <? if($_POST['grado']==$grado['idgrado']){ echo "selected";} ?>><?=$grado['grado']?></option>
	<? } ?>
      </select>	
     </td>
    </tr>
   </table>
  </td>
 </tr>

 <tr><td align="right"><a href="#" onClick="cierra();" style="text-decoration:none; color:blue; font-family:verdana; font-size:12px">Seleccionar</a></td></tr>
</table>
</form>

</body>
</html>