<style>
.cabeza{background-color:#8CA8D5; color:#036; border-bottom:dashed 1px #666666}
</style>
<script type="text/javascript" language="javascript">
function localiza(dia,hora)
{
	alert(dia + "=" + hora);
}
</script>
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
        <tr height="25px"><td width="100px" style="text-indent:15px">Curricula</td><td><?=$vector_['anio']?> - <? if($vector_['verano']=='1'){echo "<b>CV <font color='#800000'>".$vector_['curso']."</font></b> ";}else{echo "<b>AE</b> ";} echo $vector_['descripcion']; ?></td><td width="65px" align="left"><input type="button" value="Atras" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=16&id=<?=$_REQUEST['id']?>&ref=<?=$_REQUEST['gru']?>';" style="font-family:verdana;font-size:12px;width:60px;cursor:pointer;height:25px;padding-bottom:3px;cursor:pointer"></td></tr>
		<?
        $con = new conexion();
        $consulta = "call sp_detalle_grupo($id_g);";
        $respuesta = $con->consulta($consulta);
        while($vector = mysqli_fetch_array($respuesta)){
        ?>
        <tr height="25px"><td width="100px" style="text-indent:15px">Grupo</td><td><?=$vector['nivel']?>  [ <?=$vector['anio']?> ]</td></tr>
        <? } ?>
        <tr><td colspan="3">&nbsp;</td></tr>
        <tr>
         <td colspan="3">
          <table border="0" align="center" cellpadding="1" cellspacing="1" style="font-family:verdana; font-size:12px">
           <tr>
           <!--
            <td valign="top">
             <table border="0" align="center" cellpadding="2" cellspacing="1" style="font-family:verdana; font-size:12px">
              <tr height="30px"><td>&nbsp;</td></tr>
			  <?
              $con = new conexion();
              $consulta = "select * from hora order by idhora asc";
              $respuesta_h = $con->consulta($consulta);
              while($vector_h = mysqli_fetch_array($respuesta_h)){ echo "<tr height='30px'><td align='center'>".$vector_h['inicio']." - ".$vector_h['fin']."</td></tr>";}
              ?>
             </table>
            </td>
            -->
            <td valign="top">
			<table border="0" align="center" cellpadding="2" cellspacing="1" style="border:solid 1px #666666; font-family:verdana; font-size:12px">
             <!--EMPIEZA ENCABEZADO DE DIAS-->
                <tr height="30px">
                    <?
                    $con = new conexion();
                    $consulta = "select * from dia";
                    $respuesta_d = $con->consulta($consulta);
                    while($vector_d = mysqli_fetch_array($respuesta_d)){
                    ?>
                    <td width="100px" align="center" class="cabeza"><?=$vector_d['dia']?></td>
                    <? } ?>
                </tr>
                <!--EMPIEZA DETALLE DE HORAS-->
				<?
                $con = new conexion();
                $consulta = "select * from hora order by idhora asc";
                $respuesta_h = $con->consulta($consulta);
                while($vector_h = mysqli_fetch_array($respuesta_h)){
                ?>
                <tr height="30px">
					<?
                    $con = new conexion();
                    $consulta = "select * from dia order by iddia asc";
                    $respuesta_c = $con->consulta($consulta);
                    while($vector_c = mysqli_fetch_array($respuesta_c)){
					if(!($vector_h['idhora']==4 and isset($tmp_h))){
                    ?>
                    <td align="center" onclick="localiza(<?=$vector_c['iddia']?>,<?=$vector_h['idhora']?>);" style="background-color:#CCCCCC; border:dashed 1px #999" <? if($vector_h['idhora']==4){$tmp_h=1;echo "colspan='5'";} ?>>
	                    <!--EMPIEZA VALIDA SI LA HORA ESTA OCUPADA-->
						<?
                        $con = new conexion();
                        $consulta = "call sp_muestra_detalle_hora_horario(".$vector_c['iddia'].",".$vector_h['idhora'].",$id_g);";
                        $respuesta_m = $con->consulta($consulta);
						$registros = mysqli_num_rows($respuesta_m);
                        while($vector_m = mysqli_fetch_array($respuesta_m)){ echo $vector_m['curso']; } if($registros==0){ if($vector_h['idhora']==4){ echo "<font style='letter-spacing:50px'><b>RECREO</b></font>";}else{echo "vacio";}} ?>
                    </td>
                    <? }} ?>
                </tr>
                <? } ?>
			</table>
            </td>
           </tr>
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