<?
$con = new conexion();
$consulta = "call sp_busca_datos_personal(".$_REQUEST['id'].");";
$respuesta_ = $con->consulta($consulta);
while($vector_ = mysqli_fetch_array($respuesta_)){
$id_p = $_REQUEST['id'];
?>
<table border="0" width="470px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">

       <table border="0" width="100%" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px">
        <tr height="25px"><td width="100px" style="text-indent:15px">Personal</td><td><?=$vector_['personal']?></td><td width="65px" align="left"><input type="button" value="Atras" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=23&ref=<?=$id_p?>';" style="cursor:pointer;font-family:verdana;font-size:12px"></td></tr>
        <tr height="25px"><td width="100px" style="text-indent:15px">Direccion</td><td><?=$vector_['direccion']?>&nbsp;&nbsp;-&nbsp;&nbsp;Tlf <?=$vector_['telefono']?></td></tr>
        <tr height="25px"><td width="100px" style="text-indent:15px">Tipo</td><td><?=$vector_['tipo']?></td></tr>
        <tr><td colspan="3">&nbsp;</td></tr>
        <tr>
         <td colspan="3">

		<table border="0" align="center" width="430px" cellpadding="0" cellspacing="0">
		<tr>
		<td colspan="2">
        <? $ges=permite(25); $cla=permite(26); ?>
		<form name="listado" id="listado" method="post">
		<table border="0" width="100%" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
		<tr>
		<td>
		<table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:solid 1px #7f7f7f;font-size:12px;font-family:verdana;text-shadow:-1px -1px white, 1px 1px #999;color:#333">
			<tr height="25px">
			<? if($ges=='1'){ ?><td width="30px" align="center" class="cabeza">G</td><? } ?>
			<? if($cla=='1'){ ?><td width="30px" align="center" class="cabeza">C</td><? } ?>
			<td align="center" class="cabeza" width="80px">Cargo</td>
			<td align="left" style="text-indent:10px" class="cabeza">Usuario</td>
			<td align="center" class="cabeza" width="80px">Registro</td>
			<td align="center" class="cabeza" width="80px">Estado</td>
			</tr>
		</table>
		</td>
		</tr>
		<?
		$con = new conexion();
		$resultados = 15;
		if (empty($_REQUEST["pagina"])){ $inicio = 0; $pagina=1;}else{ $pagina = $_REQUEST["pagina"]; $inicio = ($pagina - 1) * $resultados; }
		$consulta = "call sp_lista_usuarios_acceso('".$_REQUEST['id']."',0,0);";
	
		$respuesta = $con->consulta($consulta);
		$total_registros=mysqli_num_rows($respuesta); 
		$total_paginas = ceil($total_registros / $resultados);
	
		$con = new conexion();
		$consulta = "call sp_lista_usuarios_acceso('".$_REQUEST['id']."',$inicio,$resultados);";
		$respuesta = $con->consulta($consulta);
		$numero = mysqli_num_rows($respuesta);
		while($vector = mysqli_fetch_array($respuesta)){ if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';}?>
		<tr>
		<td style="background-color:#<? echo $color; ?>">
		<table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana">
		<tr height="30px" <? if(isset($_REQUEST['ref']) and $_REQUEST['ref']==$vector['idusuario']){ echo "style='background-color:#DDDDDD'";} ?>>
			<? if($ges=='1'){ ?><td width="30px" align="center"><img src="img/nodo.png" onclick="document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=25&id=<?=$_REQUEST['id']?>&usu=<?=$vector['idusuario']?>';" style="cursor:pointer;" title="Listado de accesos"></td><? } ?>
            <? if($cla=='1'){ ?><td width="30px" align="center"><img src="img/clave.png" onclick="<? if($vector['idusuario']==$_SESSION['idusuario']){echo "alert('Utilice el cambio de clave de su menu.');";}else{ ?>document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=26&id=<?=$_REQUEST['id']?>&usu=<?=$vector['idusuario']?>';<? } ?>" style="cursor:pointer;" title="Actualizacion de contrase&ntilde;a"></td><? } ?>
			<td align="center" width="80px"><?=$vector['cargo']?></td>
			<td align="left" style="text-indent:10px"><?=$vector['usuario']?></td>
			<td align="center" width="80px"><? $tmp = explode("-",$vector['fecreg']); echo $tmp[2]."/".$tmp[1]."/".$tmp[0];?></td>
			<td align="center" width="80px"><? if($vector['estado']=='1'){echo "Activo";}else{echo "Bloqueado";}?></td>
		</tr>
		</table>
		</td>
		</tr>
		<? } if($numero==0){ ?><tr height="30px"><td style="color:#060" align="center">No hay personal con acceso al sistema.</td></tr><? } ?>
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
		</form>
		</td>
		</tr>
		</table>
	</td>
	</tr>
	</table>
      </td>
     </tr>
     <tr height="10px"><td></td></tr>
    </table>
  </td>
 </tr>
</table>
<? } ?>