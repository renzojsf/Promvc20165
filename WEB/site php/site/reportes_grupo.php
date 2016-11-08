<style>.impb{background-image:url(img/impresora.png); width:25px; height:25px; background-position:center; background-repeat:no-repeat; border:solid 1px #666; cursor:pointer}</style>
<?
$con = new conexion();
$consulta = "call sp_detalle_curricula(".$_REQUEST['id'].");";
$respuesta_ = $con->consulta($consulta);
while($vector_ = mysqli_fetch_array($respuesta_)){
$id_g = $_REQUEST['gru'];
?>
<table border="0" width="770px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">
       <table border="0" width="100%" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px">
        <tr height="25px"><td width="100px" style="text-indent:15px">Curricula</td><td><?=$vector_['anio']?> - <? if($vector_['verano']=='1'){echo "<b>CV <font color='#800000'>".$vector_['curso']."</font></b> ";}else{echo "<b>AE</b> ";} echo $vector_['nivel']; ?></td><td width="65px" align="left"><input type="button" value="Atras" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=16&id=<?=$_REQUEST['id']?>&ref=<?=$_REQUEST['gru']?>';" style="font-family:verdana;font-size:12px;width:60px;cursor:pointer;height:25px;padding-bottom:3px;cursor:pointer"></td></tr>
		<?
        $con = new conexion();
        $consulta = "call sp_detalle_grupo($id_g);";
        $respuesta = $con->consulta($consulta);
        while($vector = mysqli_fetch_array($respuesta)){ $g_g_est = $vector['estado'];
        ?>
        <tr height="25px"><td width="100px" style="text-indent:15px">Grupo</td><td>Seccion <?=$vector['seccion']?> del <?=$vector['anio']?></td></tr>
        <? } ?>
        <tr><td colspan="3">&nbsp;</td></tr>
        <tr>
         <td>&nbsp;</td><td colspan="2">
          <table border="0" align="center" cellpadding="1" width="100%" cellspacing="1" style="font-family:verdana; font-size:12px">
           <tr height="30px"><td width="30px" align="center"><input type="button" onclick="abrir('rep_asistencia_grupo.php?id=<?=$_REQUEST['gru']?>',900,600);" class="impb" title="Muestra ventana para impresion"/></td><td style="text-indent:15px">Reporte de asistencia</td></tr>
           <tr height="30px"><td width="30px" align="center"><input type="button" onclick="abrir('rep_pagos_grupo.php?id=<?=$_REQUEST['gru']?>',900,600);" class="impb" title="Muestra ventana para impresion"/></td><td style="text-indent:15px">Reporte de pagos</td></tr>
           <tr height="30px"><td width="30px" align="center"><input type="button" onclick="<? if($g_g_est==1){echo "alert('Las notas solo pueden ser mostradas si el grupo ya ha sido promediado.');";}else{ ?>abrir('rep_notas_grupo.php?id=<?=$_REQUEST['gru']?>&cur=<?=$_REQUEST['id']?>',900,600);<? } ?>" class="impb" title="Muestra ventana para impresion"/></td><td style="text-indent:15px">Reporte de notas</td></tr>
           <tr height="30px"><td width="30px" align="center"><input type="button" onclick="<? if($g_g_est==1){echo "alert('El ranking solo puede ser mostrado si el grupo ya ha sido promediado.');";}else{ ?>abrir('rep_rankin_grupo.php?id=<?=$_REQUEST['gru']?>',900,600);<? } ?>" class="impb" title="Muestra ventana para impresion"/></td><td style="text-indent:15px">Rankin de merito</td></tr>
           <tr height="30px"><td width="30px" align="center"><input type="button" onclick="<? if($g_g_est==1){echo "alert('Los alumnos repitentes solo pueden ser mostrados si el grupo ya ha sido promediado.');";}else{ ?>abrir('rep_alumnos_repro.php?id=<?=$_REQUEST['gru']?>',900,600);<? } ?>" class="impb" title="Muestra ventana para impresion"/></td><td style="text-indent:15px">Alumnos repitentes</td></tr>
          </table>
         </td>
        </tr>
       </table>
      </td>
     </tr>
     <tr height="20px"><td></td></tr>
    </table>
  </td>
 </tr>
</table>
<? } ?>