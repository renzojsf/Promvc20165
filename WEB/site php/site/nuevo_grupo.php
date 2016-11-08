<script language="javascript" type="text/javascript">
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
function modo(th,con)
{
	var est = modoValida(th);
	if(est==true && con==1)
	{
		revisa_func(th);
	}
}
</script>

<?
$con = new conexion();
$consulta = "call sp_detalle_curricula(".$_REQUEST['id'].");";
$respuesta_ = $con->consulta($consulta);
while($vector_ = mysqli_fetch_array($respuesta_)){
$id_c = $_REQUEST['id'];
$G_verano = $vector_['verano'];

//codigo para registro
if(isset($_POST['hcu']) and isset($_POST['cap']) and isset($_POST['ini']) and isset($_POST['fin']) and isset($_POST['pen']) and isset($_POST['mat']))
{
	if(!empty($_POST['hcu']) and !empty($_POST['cap']) and !empty($_POST['ini']) and !empty($_POST['fin']) and !empty($_POST['pen']) and !empty($_POST['mat']))
	{
		$con = new conexion();
		$_cur = $_POST['hcu'];
		$_cap = $_POST['cap'];
		$_tm1 = explode("/",$_POST['ini']);
		$_ini = $_tm1[2]."-".$_tm1[1]."-".$_tm1[0];
		$_tm2 = explode("/",$_POST['fin']);
		$_fin = $_tm2[2]."-".$_tm2[1]."-".$_tm2[0];
		$_pen = $_POST['pen'];
		$_mat = $_POST['mat'];
		if($vector_['verano']=='0'){$_sec=$_POST['sec'];}else{$_sec='null';}
			
		$consulta = "call sp_nuevo_grupo($_sec,'$_cur','$_cap','$_ini','$_fin','$_pen','$_mat');";
		$respuesta = $con->consulta($consulta);
		while($vector = mysqli_fetch_array($respuesta)){ $mensaje = $vector['mensaje'];}
	}else{$mensaje = "Complete todos los campos";}
}
?>

<table border="0" width="550px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">
        <form name="nuevo" id="nuevo" action="" method="post">
        <table border="0" width="500px" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px;">
         <tr height="25px">
          <td colspan="3" style="color:#295886; font-weight:bold">Registro de nuevo grupo</td>
         </tr>
         <tr height="10px"><td colspan="2">&nbsp;</td></tr>
         <tr height="35px">
          <td width="120px">Curricula</td>
          <td><?=$vector_['anio']?> - <?  if($vector_['verano']=='1'){echo "<b>CV</b> ";}else{echo "<b>AE</b> ";} echo $vector_['nivel']; if($vector_['verano']=='1'){echo "<b>&nbsp;&nbsp;-&nbsp;&nbsp;<font color='#800000'>".$vector_['curso']."</font></b> ";} ?><input type="hidden" value="<?=$id_c?>" name="hcu" id="hcu"></td>
         </tr>
         <tr height="30px"><td></td><td valign="top"><font color="#660000" style="font-family:verdana; font-size:11px">A&ntilde;o de inicio y fin no menores a <?=$vector_['anio']?>.</font></td></tr>
         <tr height="35px">
          <td>Fecha Inicio</td>
          <td><input type="text" <? if(isset($_POST['ini']) && !empty($_POST['ini']) && !isset($mensaje)){ echo "value='".$_POST['ini']."' readonly";} ?> name="ini" id="ini" onblur="modo(this,<? if($G_verano==1){ echo "1";}else{echo "0";} ?>);" accesskey="requerido=valifecha=mayorquee:<?=$vector_['anio']?>" class="caja" style="width:100px;"></td>
         </tr>
         <tr height="35px">
          <td>Fecha final</td>
          <td><input type="text" onblur="modoValida(this);" <? if(isset($_POST['fin']) && !empty($_POST['fin']) && !isset($mensaje)){ echo "value='".$_POST['fin']."' readonly";} ?> name="fin" id="fin" <? if($G_verano==1){ echo "readonly";} ?> accesskey="requerido=valifecha=mayorquee:<?=$vector_['anio']?>" class="caja" style="width:100px;">&nbsp;&nbsp;&nbsp;<a href="#" onclick="document.forms.nuevo.submit();">Ok</a></td>
         </tr>
         <? if(isset($_POST['ini']) && isset($_POST['fin']) && !empty($_POST['ini']) && !empty($_POST['fin']) && !isset($_POST['cap'])){ ?>
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
            <option value="<?=$vector_se['idseccion']?>"><?=$vector_se['seccion']?></option>
            <? } ?>
           </select>
          </td>
         </tr>
         <? } ?>
         <tr height="35px">
          <td>Capacidad</td>
          <td><input type="text" name="cap" id="cap" accesskey="requerido" class="caja" style="width:70px;" maxlength="5"></td>
         </tr>
         <tr height="35px">
          <td>Matricula</td>
          <td><input type="text" name="mat" id="mat" accesskey="requerido" class="caja" style="width:70px" maxlength="5"></td>
         </tr>
         <tr height="35px">
          <td>Pension</td>
          <td><input type="text" name="pen" id="pen" accesskey="requerido" class="caja" style="width:70px;" maxlength="5"></td>
         </tr>
		 <? } ?>
         <tr>
          <td colspan="2" align="right"><input type="button" value="Atras" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=12&ref=<?=$_REQUEST['id']?>';" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px;cursor:pointer"><? if(isset($_POST['ini']) && isset($_POST['fin']) && !empty($_POST['ini']) && !empty($_POST['fin']) && !isset($_POST['cap'])){ ?>&nbsp;<input type="button" onclick="validaFormulario(document.nuevo,'Se registrara el grupo.');" name="btn_guardar" value="Guardar" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px"><? } ?></td>
         </tr>
        </table>
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