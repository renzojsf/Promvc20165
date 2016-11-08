<?
if(isset($_POST['hcu']) and isset($_POST['cap']) and isset($_POST['ini']) and isset($_POST['fin']) and isset($_POST['pen']) and isset($_POST['mat']))
{
	if(!empty($_POST['hcu']) and !empty($_POST['cap']) and !empty($_POST['ini']) and !empty($_POST['fin']) and !empty($_POST['pen']) and !empty($_POST['mat']))
	{
		if($_POST['cap'] < $_POST['matt']){$mensaje="La capacidad debe ser mayor a ".$_POST['matt'];}
		else
		{
			$con = new conexion();
			$_gru = $_REQUEST['gru'];
			$_cur = $_POST['hcu'];
			$_gra = $_POST['sec'];
			$_cap = $_POST['cap'];
			$_tm1 = explode("/",$_POST['ini']);
			$_ini = $_tm1[2]."-".$_tm1[1]."-".$_tm1[0];
			$_tm2 = explode("/",$_POST['fin']);
			$_fin = $_tm2[2]."-".$_tm2[1]."-".$_tm2[0];
			$_pen = $_POST['pen'];
			$_mat = $_POST['mat'];
			if($vector_['verano']=='0'){$_sec=$_POST['sec'];}else{$_sec='null';}
		
			$consulta = "call sp_actualiza_grupo('$_gru','$_gra','$_cur','$_cap','$_ini','$_fin','$_pen','$_mat');";
			$respuesta = $con->consulta($consulta);
			while($vector = mysqli_fetch_array($respuesta)){ $mensaje = $vector['mensaje'];}
		}
	}else{$mensaje = "Complete todos los campos";}
}
?>

<script language="javascript" type="text/javascript">
function registra()
{
	if(confirm("Se actualizara los datos del grupo.")){document.nuevo.submit();}
}
jQuery(function($){
   $('#cap').numeric();
   $('#mat').numeric();
   $('#pen').numeric();
   $("#fin").mask("99/99/9999");
   $("#ini").mask("99/99/9999");
});
function revisa_func(obj)
{
	var old_fec = obj.value.split("/");
	var dd = old_fec[0];
	var mm = parseInt(old_fec[1])+1;
	var aa = old_fec[2];
	var nu = mm.toString().length;
	mm = mm.toString();
	var m_ = "00".substring(0,2-nu) + mm;
	var n_fin = document.getElementById('fin');
	n_fin.value = dd + "/" + m_ + "/" + aa;
}
</script>

<?
$con = new conexion();
$consulta = "call sp_detalle_curricula(".$_REQUEST['id'].");";
$respuesta_ = $con->consulta($consulta);
while($vector_ = mysqli_fetch_array($respuesta_)){
$id_c = $_REQUEST['id'];
$id_g = $_REQUEST['gru'];
$G_verano = $vector_['verano'];
?>

<table border="0" width="550px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">
        <form name="nuevo" id="nuevo" action="" method="post">
		<?
        $con = new conexion();
        $consulta = "call sp_busca_datos_grupo($id_g);";
        $respuesta = $con->consulta($consulta);
        while($vector = mysqli_fetch_array($respuesta)){ $est = $vector['matriculados'];
        ?>
        <table border="0" width="500px" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px;">
         <tr height="25px">
          <td colspan="3" style="color:#295886; font-weight:bold">Actualizacion datos de grupo</td>
         </tr>
         <tr height="25px"><td colspan="2">&nbsp;</td></tr>
         <tr height="35px">
          <td width="120px">Curricula</td>
          <td><?=$vector_['anio']?> - <? if($vector_['verano']=='1'){echo "<b>CV </b> ";}else{echo "<b>AE</b> ";} echo $vector_['nivel']; if($vector_['verano']=='1'){echo "<b>&nbsp;&nbsp;-&nbsp;&nbsp;<font color='#800000'>".$vector_['curso']."</font></b> ";} ?><input type="hidden" value="<?=$id_c?>" name="hcu" id="hcu"></td>
         </tr>
         <tr height="35px">
          <td>Fec Inicio</td>
          <td><? $tmA = explode("-",$vector['fecini']); $fa1 = $tmA[2]."/".$tmA[1]."/".$tmA[0]; if($est==0){ ?><input type="text" value="<?=$fa1?>" name="ini" id="ini" readonly class="caja" accesskey="requerido=valifecha=mayorquee:<?=$vector_['anio']?>" onblur="modoValida(this);<? if($G_verano==1){ echo "revisa_func(this);";} ?>" style="width:100px;"><? }else{ echo $fa1; ?><input type="hidden" value="<?=$fa1?>" name="ini" id="ini"><? } ?></td>
         </tr>
         <tr height="35px">
          <td>Fec fin</td>
          <td><? $tmB = explode("-",$vector['fecfin']); $fa2 = $tmB[2]."/".$tmB[1]."/".$tmB[0]; if($est==0){ ?><input type="text" value="<?=$fa2?>" <? if($G_verano==1){ echo "readonly";} ?> readonly accesskey="requerido=valifecha=mayorquee:<?=$vector_['anio']?>" onblur="modoValida(this);" name="fin" id="fin" class="caja" style="width:100px;" maxlength="9"><? }else{ echo $fa2; ?><input type="hidden" value="<?=$fa2?>" name="fin" id="fin"><? } ?></td>
         </tr>
         <? if($vector_['verano']=='0'){ ?>
         <tr height="35px">
          <td>Seccion</td>
          <td>
           <select name="sec" id="sec" style="width:100px; font-family:verdana; font-size:12px; height:25px; cursor:pointer">
			<?
			$f_t_i = split("/",$_POST['ini']);
            $con = new conexion();
            $consulta = "call sp_lista_seccion($id_c,'$f_t_i[2]')";
            $respuesta_se = $con->consulta($consulta);
            while($vector_se = mysqli_fetch_array($respuesta_se))
            { ?>
            <option value="<?=$vector_se['idseccion']?>" <? if($vector['idseccion']==$vector_se['idseccion']){echo "selected";} ?>><?=$vector_se['seccion']?></option>
            <? } ?>
           </select>
          </td>
         </tr>
         <? } ?>
         <tr height="35px">
          <td>Capacidad</td>
          <td><input type="text" value="<?=$vector['capacidad']?>" name="cap" id="cap" class="caja" style="width:70px;" maxlength="5"></td>
         </tr>
         <tr height="35px">
          <td>Matriculados</td>
          <td><?=$vector['matriculados']?></td>
         </tr>
         <tr height="35px">
          <td>Matricula</td>
          <td><? if($est==0){ ?><input type="text" value="<?=number_format($vector['matricula'],2,'.',' ')?>" name="mat" id="mat" class="caja" style="width:70px" maxlength="5"><? }else{ echo number_format($vector['matricula'],2,'.',' '); ?><input type="hidden" value="<?=$vector['matricula']?>" name="mat" id="mat"><? } ?></td>
         </tr>
         <tr height="35px">
          <td>Pension</td>
          <td><? if($est==0){ ?><input type="text" value="<?=number_format($vector['pension'],2,'.',' ')?>" name="pen" id="pen" class="caja" style="width:70px;" maxlength="5"><? }else{ echo number_format($vector['pension'],2,'.',' '); ?><input type="hidden" value="<?=$vector['pension']?>" name="pen" id="pen"><? } ?></td>
         </tr>
          <td colspan="2" align="right"><input type="button" value="Atras" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=16&id=<?=$_REQUEST['id']?>&ref=<?=$_REQUEST['gru']?>';" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px;cursor:pointer">&nbsp;<input type="button" onclick="registra();" name="btn_guardar" value="Guardar" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px"></td>
         </tr>
        </table>
	<input type="hidden" value="<?=$vector['matriculados']?>" name="matt" id="matt">
	<? } ?>
        </form>
      </td>
     </tr>
     <? if(isset($mensaje)){ ?><tr height="20px"><td colspan="3" align="center" style="font-family:verdana; font-size:12px; color:#F60"><?=$mensaje?></td></tr><? } ?>
     <tr height="10px"><td></td></tr>
    </table>
  </td>
 </tr>
</table>
<? } ?>