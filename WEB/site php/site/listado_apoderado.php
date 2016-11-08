<? if(isset($_POST['criteria'])){$criterio=$_POST['criteria'];}else{if(isset($_REQUEST['criteria'])){$criterio=$_REQUEST['criteria'];}} ?>
<html>
<head>
<title>Seleccione</title>
<script language="JavaScript" type="text/javascript" src="archivos/sistema.js"></script>
<style>a{text-decoration:none;color:#000000}</style>
<script>
function aigna_padre(idpadre,padre)
{
	window.opener.document.nuevo.apo.value = padre;
	window.opener.document.nuevo.hap.value = idpadre;
	self.close();
}

</script>
</head>
<body marginheight="0" marginwidth="0" onLoad="enfoque('criteria');">

<form name="buscar" id="buscar" method="post" action="">
<table border="0" align="center" width="350px" cellpadding="0" cellspacing="0">
 <tr><td>&nbsp;</td></tr> 
 <tr>
  <td width="325x"><input type="text" value="<?=$criterio?>" name="criteria" id="criteria" style="font-family:verdana;font-size:12px;width:325px;border:solid 1px #6A798C;height:25px; padding-top:4px;text-indent:10px"></td>
  <td width="25px"><img src="img/buscar.png" onClick="busqueda(document.buscar);" style="cursor:pointer" title="Buscar"></td>
 </tr>
</table>
</form>

<table border="0" align="center" width="350px" cellpadding="0" cellspacing="0">
 <tr>
  <td colspan="2">
   <form name="listado" id="listado" method="post">
    <table border="0" width="100%" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
     <?
	 $id_a = $_REQUEST['id'];
     include("conexion.php");
     $con = new conexion();
     $consulta = "call sp_lista_padre_parentesco($id_a);";
     $respuesta = $con->consulta($consulta);
     while($vector = mysqli_fetch_array($respuesta)){ if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';}?>
    <tr>
     <td style="background-color:#<? echo $color; ?>">
      <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana">
       <tr height="30px">
        <td width="50px" align="center"><input type="button" value="Sel" onClick="aigna_padre('<?=$vector['idpadre']?>','<?=$vector['padre']?>');"></td>
		<td width="30px" align="center"><img src="img/padre<?=$vector['sexo']?>.png"></td>
        <td align="left"><?=$vector['padre']?></td>
       </tr>
      </table>
     </td>
    </tr>
    <? } ?>
    </table>
   </form>
  </td>
 </tr>
</table>

<table border="0" align="center" width="350px" cellpadding="0" cellspacing="0">
 <tr>
  <td colspan="2">
   <form name="listado" id="listado" method="post">
    <table border="0" width="100%" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
     <?
     $con = new conexion();

     $resultados = 12;
     if (empty($_REQUEST["pagina"])){ $inicio = 0; $pagina=1;}else{ $pagina = $_REQUEST["pagina"]; $inicio = ($pagina - 1) * $resultados; }
     $consulta = "call sp_lista_padres_excepto($id_a,'$criterio',0,0);";
     $respuesta = $con->consulta($consulta);
     $total_registros=mysqli_num_rows($respuesta); 
     $total_paginas = ceil($total_registros / $resultados);

     $con = new conexion();
     $consulta = "select idpadre,concat(apellidos,', ',nombres) as padre,direccion,telefono,fecnac,fecreg,sexo,estciv from padre where apellidos like '%".$_POST['criteria']."%' and idpadre not in (select idpadre from parentesco where idalumno=$id_a) order by apellidos asc limit $inicio,$resultados";
     $respuesta = $con->consulta($consulta);
     while($vector = mysqli_fetch_array($respuesta)){ if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';}?>
    <tr>
     <td style="background-color:#<? echo $color; ?>">
      <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana">
       <tr height="30px">
        <td width="50px" align="center"><input type="button" value="Sel" onClick="aigna_padre('<?=$vector['idpadre']?>','<?=$vector['padre']?>');"></td>
		<td width="30px" align="center"><img src="img/padre<?=$vector['sexo']?>.png"></td>
        <td align="left"><?=$vector['padre']?></td>
       </tr>
      </table>
     </td>
    </tr>
    <? } if ($total_paginas > 1){ ?>
     <tr height="25px" align="right">
      <td>
       <?
        if(isset($_POST['criteria'])){$criterio="&criteria=".$_POST['criteria'];}else{if(isset($_REQUEST['criteria'])){$criterio="&criteria=".$_REQUEST['criteria'];}}
	if($pagina-1>0){echo " <a href='listado_apoderado.php?id=$id_a&pagina=".($pagina-1)."$criterio'>Ant</a>&nbsp;";}   
	for ($i=1;$i<=$total_paginas;$i++){if ($i == $pagina){echo "<b>$pagina</b>&nbsp;";}else{echo "<a href='listado_apoderado.php?id=$id_a&pagina=".$i."$criterio'>".$i."</a>&nbsp;";}}
	if($pagina + 1 <= $total_paginas){echo "&nbsp;<a href='listado_apoderado.php?id=$id_a&pagina=".($pagina+1)."$criterio'>Sig</a>";}  
       ?>
      </td>
     </tr> 
    <? } ?>
    </table>
   </form>
  </td>
 </tr>
</table>

</body>
</html>