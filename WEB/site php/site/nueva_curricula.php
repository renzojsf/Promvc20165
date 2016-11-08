<?
if((isset($_POST['niv']) || isset($_POST['t_tipo'])) && isset($_POST['ano']))
{
	if((!empty($_POST['niv']) || isset($_POST['t_tipo'])) && !empty($_POST['ano']) && !empty($_POST['ch']))
	{
		$con = new conexion();
		$_niv = $_POST['hni'];
		$_ano = $_POST['ano'];
		if(isset($_POST['t_tipo'])){$_ver='1';}else{$_ver='0';}
		$_cur = implode(",",$_POST['ch']);		
	
		$consulta = "call sp_agrega_curricula($_niv,'$_ano','$_cur','$_ver');";
		$respuesta = $con->consulta($consulta);
		while($vector = mysqli_fetch_array($respuesta)){ $mensaje = $vector['mensaje'];}
	}
	else{$mensaje="Complete todos los campos.";}
}
?>

<script language="javascript" type="text/javascript">
jQuery(function($){
   $('#ano').numeric();
});
function verifica_tipo(obj)
{
	var chk = document.getElementById('t_tipo');
	if(chk.checked==true && obj.checked==true)
	{
		checkState(document.forms.nuevo,false);
		chk.checked=true;
		obj.checked=true;
	}
}
function on_click(obj)
{
	var txt = document.getElementById('des');
	if(obj.checked==true)
	{
		checkState(document.forms.nuevo,false);
		obj.checked=true;
		txt.value = '';
	}
	else
	{
		txt.focus();
	}
}
</script>

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
          <td colspan="3" style="color:#295886; font-weight:bold">Registro de curricula</td>
         </tr>
         <tr height="15px"><td colspan="2">&nbsp;</td></tr>
         <tr height="35px">
          <td width="120px">Nivel</td>
          <td><input type="text" name="niv" id="niv" accesskey="requerido" class="caja" readonly style="width:380px" /><input type="hidden" name="hni" id="hni"></td>
          <td width="40px" align="center"><a href="#" onclick="abrir('listado_nivel.php',400,100);">Sel</a></td>
         </tr>
         <tr height="35px">
          <td width="120px">&nbsp;</td>
          <td><table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="font-size:12px;font-family:verdana"><tr><td width="25px" align="left"><input onclick="on_click(this);" type="checkbox" name="t_tipo" id="t_tipo" value="1" style="cursor:pointer" title="Curso de verano"></td><td>Este proceso es un curso de verano</td></tr></table></td>
         </tr>
         <tr height="25px"><td></td>&nbsp;<td><a href="#" onclick="checkState(document.forms.nuevo,true);document.forms.nuevo.t_tipo.checked=false;">Marcar Todos</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" onclick="checkState(document.forms.nuevo,false);">Desmarcar Todos</a></td></tr>
         <tr>
         <tr height="10px"><td colspan="2"></td></tr>
          <td valign="top">Cursos</td>
          <td>
            <table border="0" width="380px" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
            <?
            $con = new conexion();
            $consulta = "call sp_lista_cursos(0);";
            $respuesta = $con->consulta($consulta);
            while($vector = mysqli_fetch_array($respuesta)){ if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';}?>
            <tr>
            <td style="background-color:#<? echo $color; ?>">
            <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana">
            <tr height="25px">
                <td width="50px" align="center"><input type="checkbox" onclick="verifica_tipo(this);" name="ch[]" id="ch[]" value="<?=$vector['idcurso']?>" style="cursor:pointer;"></td>
                <td align="left"><?=$vector['curso']?></td>
            </tr>
            </table>
            </td>
            </tr>
            <? } ?>
            </table>
          </td>
         </tr>
         <tr height="10px"><td colspan="2"></td></tr>
         <tr height="35px">
          <td>A&ntilde;o</td>
          <td><input type="text" name="ano" id="ano" accesskey="requerido=tamanioen:4" value="<?=date("Y")?>" class="caja" style="width:60px" maxlength="4"></td>
         </tr>
         <tr>
          <td colspan="2" align="right"><input type="button" onclick="validaFormulario(document.nuevo,'Se registrara la curricula.');" name="btn_guardar" value="Guardar" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px"></td>
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