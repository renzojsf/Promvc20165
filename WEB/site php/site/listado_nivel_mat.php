<html>
<head>
<TITLE>Seleccione...</TITLE>
<script>
function cierra(idgrado,cadena,estado,total,verano)
{
	if(estado==true)
	{
		window.opener.document.nuevo.num_reg.value = total;
		window.opener.document.nuevo.hgr.value = idgrado;
		window.opener.document.nuevo.gru.value = cadena;
		window.opener.document.nuevo.tip.options[verano].selected=true;
		window.opener.revisa(window.opener.document.nuevo.tip);
		self.close();
	}
	else{alert('No es posible porque ya no hay vacantes para este grupo.');}
}
</script>
<link rel="stylesheet" type="text/css" href="archivos/estilo.css">
</head>
<body>

<?
	include("conexion.php");
	$con = new conexion();
	$consulta = "select count(*) as suma from proceso where idalumno=".$_REQUEST['id']." and idtipo=1 and (estado=1 or promovido=2)";
	$respuesta = $con->consulta($consulta);
	while($vector = mysqli_fetch_array($respuesta)){ $total_reg=$vector['suma']; }
?>

<form name="busqueda" method="post" action="listado_nivel_mat.php?id=<?=$_REQUEST['id']?>">
<table border="0" width="570px" cellpadding="1" cellspacing="1" align="center">
 <tr>
  <td align="center">
    <table border="0" width="570px" cellpadding="1" cellspacing="1" align="center">
     <tr>
      <td width="140px">
       <select name="nivel" id="nivel" style="width:130px; cursor:pointer;" onChange="document.busqueda.submit();">
        <option value="-1">Seleccione</option>
        <?
        $con = new conexion();
        $consulta = "select * from nivel";
        $respuesta = $con->consulta($consulta);
        while($nivel = mysqli_fetch_array($respuesta))
        { ?>
        <option value="<?=$nivel['idnivel']?>" <? if($_POST['nivel']==$nivel['idnivel']){ echo "selected"; $nivel_g = $nivel['nivel']; } ?>><?=$nivel['nivel']?></option>
        <? } ?>
       </select>	
      </td>
      <td width="140px">
       <select name="grado" id="grado" style="width:130px; cursor:pointer;" onChange="document.busqueda.submit();">
        <option value="-1">Seleccione</option>
        <?
        $con = new conexion();
        $consulta = "select * from grado where idnivel='$_POST[nivel]'";
        $respuesta = $con->consulta($consulta);
        while($grado = mysqli_fetch_array($respuesta))
        { ?>
        <option value="<?=$grado['idgrado']?>" <? if($_POST['grado']==$grado['idgrado']){ echo "selected"; $grado_g = $grado['grado'];} ?>><?=$grado['grado']?></option>
        <? } ?>
       </select>	
      </td>
      <?
        $con = new conexion();
        $consulta = "call sp_anio_max(); ";
        $respuesta = $con->consulta($consulta);
		while($fech = mysqli_fetch_array($respuesta))
		{
			$_anio = (int)$fech[0];
		}
	  ?>
      <td width="140px">
       <select name="anio" id="anio" style="width:130px; cursor:pointer;" onChange="document.busqueda.submit();">
        <option value="-1">Seleccione</option>
        <?
		if(isset($_anio)){ for($i=0;$i<15;$i++){
        ?>
        <option value="<?=$_anio?>" <? if($_POST['anio']==$_anio){ echo "selected";} ?>><?=$_anio?></option>
        <? $_anio=$_anio-1; }} ?>
       </select>	
      </td>
     </tr>
    </table>
  </td>
 </tr>
 <tr height="10px"><td></td></tr>
 <tr>
  <td colspan="3">
  
    <table border="0" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
     <tr>
      <td>
       <table border="0" cellpadding="0" width="640px" cellspacing="0" align="center" style="border:solid 1px #7f7f7f;font-size:12px;font-family:verdana;text-shadow:-1px -1px white, 1px 1px #999;color:#333">
        <tr height="25px">
         <td width="60px" align="center" class="cabeza">U</td>
         <td align="left" width="250px" class="cabeza" style="text-indent:20px">Descripcion</td>
         <td align="center" width="90px" class="cabeza">Inicio</td>
         <td align="center" width="60px" class="cabeza">Cap</td>
         <td align="center" width="60px" class="cabeza">Mat</td>
         <td align="center" width="60px" class="cabeza">Mat</td>
         <td align="center" width="60px" class="cabeza">Pen</td>
        </tr>
       </table>
      </td>
     </tr>
     <?
	 $ida = $_POST['anio'];
	 $idg = $_POST['grado'];
     $con = new conexion();
     $resultados = 15;
     if (empty($_REQUEST["pagina"])){ $inicio = 0; $pagina=1;}else{ $pagina = $_REQUEST["pagina"]; $inicio = ($pagina - 1) * $resultados; }
     $consulta = "call sp_lista_grupo_mat_niv('$idg','$ida',0,0);";

     $respuesta = $con->consulta($consulta);
     $total_registros=mysqli_num_rows($respuesta); 
     $total_paginas = ceil($total_registros / $resultados);

     $con = new conexion();
     $consulta = "call sp_lista_grupo_mat_niv('$idg','$ida',$inicio,$resultados);";
     $respuesta = $con->consulta($consulta);
 	 $numero = mysqli_num_rows($respuesta);
     while($vector = mysqli_fetch_array($respuesta)){ if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';}?>
    <tr>
     <td style="background-color:#<? echo $color; ?>">
      <table border="0" width="640px" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana;color:#000">
       <tr height="30px" <? if(isset($_REQUEST['ref']) and $_REQUEST['ref']==$vector['idgrupo']){ echo "style='background-color:#DDDDDD'";} ?>>
        <td width="60px" align="center"><input type="button" value="Usar" onClick="cierra('<?=$vector['idgrupo']?>','<? echo $grado_g.' > '.$nivel_g;?>',<? if($vector['capacidad']>$vector['matriculados']){echo "true";}else{echo "false";}?>,<?=$total_reg?>,<?=$vector['verano']?>);"></td>
        <td align="left" width="250px" style="text-indent:20px"><? if($vector['verano']=='1'){echo "<b>CV</b> ";}else{echo "<b>AE</b> "; echo $vector['nivel'];} if($vector['verano']=='1'){echo "<b>&nbsp;&nbsp;-&nbsp;&nbsp;<font color='#800000'>".$vector['curso']."</font></b> ";}else{echo "<b>&nbsp;&nbsp;-&nbsp;&nbsp;<font style='color:maroon'>".$vector['sec']."</font></b>";} ?></td>
        <td align="center" width="90px"><?=$vector['fecini']?></td>
        <td align="center" width="60px"><?=$vector['capacidad']?></td>
        <td align="center" width="60px"><?=$vector['matriculados']?></td>
        <td align="center" width="60px"><?=number_format($vector['matricula'],2,'.',' ')?></td>
        <td align="center" width="60px"><?=number_format($vector['pension'],2,'.',' ')?></td>
       </tr>
      </table>
     </td>
    </tr>
    <? } if($numero==0){ ?><tr height="35px"><td style="color:#060" align="center">No hay ninguna curricula registrada.</td></tr><? } ?>
    <? if ($total_paginas > 1){ ?>

     <tr height="25px" align="right">
      <td>
       <?
        if(isset($_POST['criteria'])){$criterio="&criteria=".$_POST['criteria'];}else{if(isset($_REQUEST['criteria'])){$criterio="&criteria=".$_REQUEST['criteria'];}}
    if($pagina-1>0){echo " <a href='principal.php?sis=".$_REQUEST['sis']."&ven=".$_REQUEST['ven']."&pag=".$_REQUEST['pag']."&pagina=".($pagina-1)."$criterio'>Ant</a>&nbsp;";}   
    for ($i=1;$i<=$total_paginas;$i++){if ($i == $pagina){echo "<font color='#666666'><b>$pagina</b></font>&nbsp;";}else{echo "<a href='principal.php?sis=".$_REQUEST['sis']."&ven=".$_REQUEST['ven']."&pag=".$_REQUEST['pag']."&pagina=".$i."$criterio'>".$i."</a>&nbsp;";}}
    if($pagina + 1 <= $total_paginas){echo "&nbsp;<a href='principal.php?sis=".$_REQUEST['sis']."&pag=".$_REQUEST['pag']."&ven=".$_REQUEST['ven']."&pagina=".($pagina+1)."$criterio'>Sig</a>";}  
       ?>
      </td>
     </tr> 
    <? } ?>
    </table>
  
  </td>
 </tr>
</table>
</form>

</body>
</html>