<?
$con = new conexion();
$consulta = "call sp_busca_datos_alumno(".$_REQUEST['id'].");";
$respuesta_ = $con->consulta($consulta);
while($vector_ = mysqli_fetch_array($respuesta_)){
$id_a = $_REQUEST['id'];
$id_p = $_REQUEST['pro'];
?>
<table border="0" width="770px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">
       <table border="0" width="700px" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px">
        <tr height="25px"><td width="100px" style="text-indent:15px">Codigo</td><td><?=$vector_['ideducando']?></td><td width="65px" align="left"><input type="button" value="Atras" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=4&id=<?=$_REQUEST['id']?>&ref=<?=$id_p?>';" style="cursor:pointer;font-family:verdana;font-size:12px"></td></tr>
        <tr height="25px"><td width="100px" style="text-indent:15px">Alumno</td><td><? echo $vector_['apepaterno'].' '.$vector_['apematerno'].', '.$vector_['nombres']; ?></td></tr>
        <tr height="25px"><td width="100px" style="text-indent:15px">Direccion</td><td><?=$vector_['direccion']?>&nbsp;&nbsp;-&nbsp;&nbsp;Tlf <?=$vector_['telefono']?></td></tr>
        <?
	$con = new conexion();
	$consulta = "call sp_detalle_proceso($id_p);";
	$respuesta_p = $con->consulta($consulta);
	while($vector_p = mysqli_fetch_array($respuesta_p)){ ?>
        <tr height="25px"><td width="100px" style="text-indent:15px; color:#660000"><b>Proceso</b></td><td><? if($vector_p['verano']=='1'){echo "<b>CV </b> ";}else{echo "<b>AE</b> ";} echo $vector_p['nivel']; if($vector_p['verano']=='1'){echo "<b>&nbsp;&nbsp;-&nbsp;&nbsp;<font color='#800000'>".$vector_p['curso']."</font></b> ";} ?> - [<font color="#336699"><? switch($vector_p['estado']){ case 0: $msg="Completado"; break; case 1: $msg="<b>Activo</b>";break; case 2: $msg="Anulado"; break;} echo $msg; ?></font>]</td></tr>
        <?
	if($vector_p['descuento']!=0){ 
	$con = new conexion();
	$consulta = "call sp_detalle_descuento($id_p);";
	$respuesta_d = $con->consulta($consulta);
	while($vector_d = mysqli_fetch_array($respuesta_d)){ 
	?>
	<tr height="25px"><td width="100px" style="text-indent:15px; color:#660000"><b>Descuento</b></td><td>Motivo <?=$vector_d['motivo']?> (<?=$vector_d['porcentaje']?> %) :: Desde <?=$vector_d['fecini']?></td></tr>
	<? }} ?>
        <? } ?>
        <tr><td colspan="3">&nbsp;</td></tr>
        <tr>
         <td colspan="3">

            <table border="0" align="center" width="680px" cellpadding="0" cellspacing="0">
             <tr>
              <td colspan="2">
               <form name="listado" id="listado" method="post">
                <table border="0" width="100%" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
		<tr>
		<td>
		<table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:solid 1px #7f7f7f;font-size:12px;font-family:verdana;text-shadow:-1px -1px white, 1px 1px #999;color:#333">
			<tr height="25px">
			<td width="25px" align="center" class="cabeza">A</td>
			<td align="left" style="text-indent:15px" class="cabeza">Descripcion</td>
			<td align="center" width="90px" class="cabeza">Monto</td>
			<td align="center" width="90px" class="cabeza">M Pagado</td>
			<td align="center" width="90px" class="cabeza">F programado</td>
			<td align="center" width="90px" class="cabeza">Estado</td>
			</tr>
		</table>
		</td>
		</tr>
                 <?
                 $con = new conexion();
                 $resultados = 9;
                 if (empty($_REQUEST["pagina"])){ $inicio = 0; $pagina=1;}else{ $pagina = $_REQUEST["pagina"]; $inicio = ($pagina - 1) * $resultados; }
                 $consulta = "call sp_lista_pagos_proceso($id_p,0,0);";
    
                 $respuesta = $con->consulta($consulta);
                 $total_registros=mysqli_num_rows($respuesta); 
                 $total_paginas = ceil($total_registros / $resultados);
    
                 $con = new conexion();
                 $consulta = "call sp_lista_pagos_proceso($id_p,$inicio,$resultados);";
                 $respuesta = $con->consulta($consulta);
                 $numero = mysqli_num_rows($respuesta);
                 while($vector = mysqli_fetch_array($respuesta)){ if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';}?>
                <tr>
                 <td style="background-color:#<? if(isset($_REQUEST['ref']) and $_REQUEST['ref']==$vector['idcuota']){echo "DDDDDD";}else{echo $color;} ?>">
                  <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana">
                   <tr height="30px">
                    <td align="center" width="25px"><img src="img/detalles.png" onclick="document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=7&id=<?=$_REQUEST['id']?>&pro=<?=$_REQUEST['pro']?>&cuo=<?=$vector['idcuota']?>';" style="cursor:pointer" title="Detalle de documentos"/></td>
                    <td align="left" style="text-indent:15px"><?=$vector['concepto']?></td>
                    <td align="center" width="90px"><?=number_format($vector['monto'],2,'.',' ')?></td>
                    <td align="center" width="90px"><?=number_format($vector['pagado'],2,'.',' ')?></td>
                    <td align="center" width="90px"><? $tmp = explode("-",$vector['fecpago']); echo $tmp[2]."/".$tmp[1]."/".$tmp[0];?></td>
                    <td align="center" width="90px"><? if($vector['estado']=='0'){ echo "Debe";}else{echo "Pagado";} ?></td>
                   </tr>
                  </table>
                 </td>
                </tr>
                <? } if($numero==0){ ?><tr><td style="color:#060" align="center">No se encontraron registros</td></tr><? } ?>
                <? if ($total_paginas > 1){ ?>
                 <tr height="25px" align="right">
                  <td>
                   <?
                if($pagina-1>0){echo " <a href='principal.php?sis=".$_REQUEST['sis']."&ven=".$_REQUEST['ven']."&pag=".$_REQUEST['pag']."&id=".$_REQUEST['id']."&pro=".$_REQUEST['pro']."&pagina=".($pagina-1)."$criterio'>Ant</a>&nbsp;";}   
                for ($i=1;$i<=$total_paginas;$i++){if ($i == $pagina){echo "<font color='#666666'><b>$pagina</b></font>&nbsp;";}else{echo "<a href='principal.php?sis=".$_REQUEST['sis']."&ven=".$_REQUEST['ven']."&pag=".$_REQUEST['pag']."&id=".$_REQUEST['id']."&pro=".$_REQUEST['pro']."&pagina=".$i."$criterio'>".$i."</a>&nbsp;";}}
                if($pagina + 1 <= $total_paginas){echo "&nbsp;<a href='principal.php?sis=".$_REQUEST['sis']."&ven=".$_REQUEST['ven']."&pag=".$_REQUEST['pag']."&id=".$_REQUEST['id']."&pro=".$_REQUEST['pro']."&pagina=".($pagina+1)."$criterio'>Sig</a>";}  
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