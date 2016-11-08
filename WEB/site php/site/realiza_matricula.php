<?
if(isset($_POST['hal']) and isset($_POST['hgr']) and isset($_POST['tip']))
{
	if(!empty($_POST['hal']) and !empty($_POST['hgr']) and ($_POST['tip']!=-1))
	{
		$con = new conexion();
		$_alu = $_POST['hal'];
		$_gra = $_POST['hgr'];
		$_tip = $_POST['tip'];
		$_apo = $_POST['hap'];
	
		if($_tip=='1'){$consulta = "call sp_nuevo_proceso($_tip,$_alu,$_gra,$_apo);";}
		else
		{
			if(!empty($_POST['opt_a'])){$valo = $_POST['opt_a'];}
			else{$valo = 0;}
			
			$consulta = "call sp_nuevo_proceso_recuperacion($_tip,$_alu,$_gra,$valo);";
		}
		$respuesta = $con->consulta($consulta);
		while($vector = mysqli_fetch_array($respuesta))
		{
			$_mensaje = split("-",$vector['mensaje']);
			$mensaje = $_mensaje[0];
			if($_mensaje[1]!='0'){$mensaje.=". Ir a <a href='principal.php?sis=".$_REQUEST['sis']."&ven=".$_REQUEST['ven']."&pag=28&ref=".$_mensaje[1]."'>pagos</a>.";}
		}
	}
	else{$mensaje = "Complete todos los campos.";}
}
?>

<script language="javascript" type="text/javascript">
function revisa_reg()
{
	var sel = document.getElementById('tip').value;
	var hid = document.getElementById('num_reg').value;
	if(sel==1 && hid==1)
	{
		alert('No es posible registrar el alumno, puede que ya tenga un\nproceso iniciado o requiera un curso de verano.');
	}
	else{validaFormulario(document.nuevo,'Se registrara el proceso.');}
}

function revisa(obj)
{
	var div = document.getElementById('chkopt');
	var inn = "";
	if(obj.value==2)
	{
		inn = "<input type='checkbox' name='opt_a' id='opt_a' value='1' style='cursor:pointer' title='El alumno solo dara el examen'>El alumno solo dara el examen de recuperacion";
	}
	div.innerHTML = inn;
}
</script>

<table border="0" width="540px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">

        <form name="nuevo" id="nuevo" action="" method="post">
        <table border="0" width="480px" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px;">
         <tr height="25px">
          <td colspan="3" style="color:#295886; font-weight:bold">Registrar nuevo proceso</td>
         </tr>
         <tr height="25px"><td colspan="2">&nbsp;</td></tr>
         <tr height="35px">
          <td width="120px">Alumno</td>
          <td width="320"><input type="text" name="alu" id="alu" accesskey="requerido" class="caja" style="text-transform:capitalize;width:320px" readonly="readonly"><input type="hidden" name="hal" id="hal"></td>
          <td width="40px" align="center"><a href="#" onclick="abrir('listado_alumno.php',600,600);">Sel</a></td>
         </tr>
         <tr height="35px">
          <td width="120px">Apoderado</td>
          <td width="320"><input type="text" name="apo" id="apo" accesskey="requerido" class="caja" style="text-transform:capitalize;width:320px" readonly="readonly"><input type="hidden" name="hap" id="hap"></td>
          <td width="40px" align="center"><a href="#" onclick="var id_a=document.getElementById('hal').value; if(id_a.length==0){alert('Antes seleccione un alumno');}else{abrir('listado_apoderado.php?id='+id_a,600,550);}">Sel</a></td>
         </tr>
         <tr height="35px">
          <td>Grupo</td>
          <td><input type="text" name="gru" id="gru" class="caja" accesskey="requerido" style="text-transform:capitalize;width:320px" readonly="readonly"><input type="hidden" name="hgr" id="hgr"></td>
          <td width="40px" align="center"><a href="#" onclick="var id_a=document.getElementById('hal').value; if(id_a.length==0){alert('Antes seleccione un alumno');}else{abrir('listado_nivel_mat.php?id='+id_a,700,300);}">Sel</a></td>
         </tr>
         <tr height="35px">
          <td width="120px">Tipo</td>
          <td width="320"><input type="hidden" name="num_reg" id="num_reg" />
          <select name="tip" id="tip" style="width:200px; cursor:pointer; height:22px; font-family:verdana; font-size:12px" onchange="revisa(this)" >
            <?
            $con = new conexion();
            $consulta = "select * from tipo_proceso";
            $respuesta_tp = $con->consulta($consulta);
            while($ptipo = mysqli_fetch_array($respuesta_tp))
            { ?>
            <option value="<?=$ptipo['idtipo']?>"><?=$ptipo['tipo']?></option>
            <? } ?>
          </select>	
          </td>
         </tr>
         <tr height="35px">
          <td>&nbsp;</td>
          <td id="chkopt" colspan="2"></td>
         </tr>
         <tr height="35px">
          <td colspan="2" align="right"><input type="button" onclick="revisa_reg();" name="btn_guardar" value="Guardar" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px"></td>
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