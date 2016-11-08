<?
if(isset($_POST['hids']))
{
	$con = new conexion();
	$_chk = @implode(",",$_POST['ch']);
	$_usu = $_REQUEST['usu'];
	$consulta = "call sp_actualiza_estado_control($_usu,'$_chk');";
	$respuesta = $con->consulta($consulta);
	while($vector = mysqli_fetch_array($respuesta)){ $mensaje = $vector['mensaje'];}
}
?>

<script language="JavaScript" type="text/javascript">
function actualizar()
{
	var a =  document.getElementById('pwd_a');
	var b =  document.getElementById('pwd_b');
	if(a.value.length>0 && b.value.length>0)
	{
		if(a.value==b.value)
		{
			document.forms.actualiza.submit();
		}
		else{alert("Las claves no coinciden");a.value="";b.value="";a.focus();}
	}
	else{alert("Ingrese ambos campos");}
}
function ch_arbol(yo,idd)
{
	marca_Arbol(yo,idd);
	desmarca_Arbol(yo,idd);
}

function marca_Arbol(yo,idd)
{
	var tmp = idd.split(":");
	var ref = tmp[1]; //referencia
	var idp = tmp[2]; //pagina
	
	if(ref > -1)
	{
		var formulario = document.forms.gestion;
		var numero = formulario.elements.length;
		for(var i=0;i<numero;i++)
		{
			if(formulario.elements[i].type=='checkbox')
			{
				var ref_ = formulario.elements[i].id.split(":");
				if(ref_[2]==ref)
				{
					if(formulario.elements[i].checked==false && yo.checked==true)
					{
						formulario.elements[i].checked = true;
						marca_Arbol(yo,formulario.elements[i].id);
					}
				}
			}
		}
	}
}

function desmarca_Arbol(yo,idd)
{
	var tmp = idd.split(":");
	var ref = tmp[1]; //referencia
	var idp = tmp[2]; //pagina
	
	var formulario = document.forms.gestion;
	var numero = formulario.elements.length;
	if(yo.checked==false)
	{
		for(var i=0;i<numero;i++)
		{
			if(formulario.elements[i].type=='checkbox')
			{
				var ref_ = formulario.elements[i].id.split(":");
				if(ref_[1]==idp)
				{
					formulario.elements[i].checked = false;
					desmarca_Arbol(yo,formulario.elements[i].id);
				}
			}
		}
	}
}
</script>

<?
function muestra_per($id_us,$_venta,$id_pag)
{
	$con = new conexion();
	if($id_pag==-1){$condicion = "and referencia is null";}
	else{$condicion = "and referencia=$id_pag";}
	$consulta = "select * from pagina where idventana='$_venta' $condicion";
	$respuesta_p = $con->consulta($consulta);
	$num_temp  = mysqli_num_rows($respuesta_p);
	if($num_temp>0)
	{
		echo "<tr><td>&nbsp;</td><td colspan='2'>";
		echo "<table border='0' cellpadding='0' cellspacing='1' align='left' style='font-family:verdana; font-size:12px; color:#000000'>"; 
	}
	while($vector_p = mysqli_fetch_array($respuesta_p))
	{
		$con = new conexion();
		$consulta = "call sp_lista_detalle_gestion($id_us,".$vector_p['idpagina'].");";
		$respuesta_e = $con->consulta($consulta);
		while($vector_e = mysqli_fetch_array($respuesta_e))
		{
			$id_codigo = $vector_e['idcontrol'];
			$id_paginaT = $vector_e['idpagina'];
			if($vector_e['estado']=='0'){$marca="";}
			else{$marca="checked";}
			if($estado=='0' or $id_us==$_SESSION['idusuario']){$disa = "disabled";}
			echo "<tr height='25px'>";
			echo "<td width='25px' align='center'><input type='checkbox' name='ch[]' id='R:$id_pag:$id_paginaT' onclick='ch_arbol(this,this.id);' value='$id_codigo' $disa $marca/></td>";
			echo "<td width='25px' align='center'><img src='img/".$vector_p['icono']."' /></td>";
			echo "<td>".$vector_p['descripcion']."</td>";
			echo "</tr>";

			$con = new conexion();
			$consulta = "call sp_lista_detalle_gestion($id_us,".$vector_p['idpagina'].");";
			$respuesta_pk = $con->consulta($consulta);
			while($vector_pk = mysqli_fetch_array($respuesta_pk))
			{
				muestra_per($id_us,$_venta,$vector_pk['idpagina']);
			}
		}
	}
	if($num_temp>0){ echo "</table>"; echo "</td></tr>"; }
}
?>

<?
$con = new conexion();
$consulta = "call sp_busca_datos_personal(".$_REQUEST['id'].");";
$respuesta_ = $con->consulta($consulta);
while($vector_ = mysqli_fetch_array($respuesta_)){
$id_p = $_REQUEST['id'];
$id_u = $_REQUEST['usu'];
?>
<table border="0" width="570px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">

       <table border="0" width="100%" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px">
        <tr height="25px"><td width="100px" style="text-indent:15px">Personal</td><td><?=$vector_['personal']?></td><td width="65px" align="left"><input type="button" value="Atras" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=24&id=<?=$_REQUEST['id']?>&ref=<?=$id_u?>';" style="cursor:pointer;font-family:verdana;font-size:12px"></td></tr>
        <tr height="25px"><td width="100px" style="text-indent:15px">Direccion</td><td><?=$vector_['direccion']?>&nbsp;&nbsp;-&nbsp;&nbsp;Tlf <?=$vector_['telefono']?></td></tr>
        <tr height="25px"><td width="100px" style="text-indent:15px">Tipo</td><td><?=$vector_['tipo']?></td></tr>

	<?
	$con = new conexion();
	$consulta = "call sp_detalle_usuario(".$_REQUEST['usu'].");";
	$respuesta_d = $con->consulta($consulta);
	while($vector_d = mysqli_fetch_array($respuesta_d)){
	$estado = $vector_d['estado'];
	$idT_usu = $vector_d['idusuario'];
	?>
	<tr height="25px"><td width="100px" style="text-indent:15px">Usuario</td><td>[<?=$vector_d['cargo']?>] <b><?=$vector_d['usuario']?></b></td></tr>
   	<tr height="25px"><td width="100px" style="text-indent:15px">Estado</td><td><? if($estado=='1'){echo "Disponible";}else{echo "Bloqueado";}?></b>&nbsp;<? if(isset($mensaje)){ echo "-&nbsp;<font color='maroon'>".$mensaje."</font>";} ?></td></tr>
	<? } ?>
        <tr><td colspan="3">&nbsp;</td></tr>
        <tr>
  	     <td valign="top">
          <? if($estado=='1' and $idT_usu!=$_SESSION['idusuario']){ ?>
          <table border="0" align="center" width="100%" cellpadding="0" cellspacing="0">
           <tr height="30px"><td>&nbsp;</td></tr>
           <tr height="30px"><td align="center"><input type="button" value="Guardar" onclick="javascript:document.gestion.submit();" style="cursor:pointer;font-family:verdana;font-size:12px;width:80px;height:25px"></td></tr>
           <tr height="30px"<td align="center"><input type="button" value="Todos" onclick="javascript:checkState(gestion,true);" style="cursor:pointer;font-family:verdana;font-size:12px;width:80px;height:25px"></td></tr>
           <tr height="30px"><td align="center"><input type="button" value="Ninguno" onclick="javascript:checkState(gestion,false);" style="cursor:pointer;font-family:verdana;font-size:12px;width:80px;height:25px"></td></tr>
          </table>
          <? } ?>
         </td>
         <td colspan="2" valign="top">

		<table border="0" align="center" width="390px" cellpadding="0" cellspacing="0">
		<tr>
		<td colspan="2">
		<form name="gestion" id="gestion" method="post">
		<table border="0" cellpadding="0" cellspacing="1" align="left" style="font-family:verdana; font-size:12px; color:#000000">
			<?
            $con = new conexion();
            $consulta = "select * from sistema;";
            $respuesta_s = $con->consulta($consulta);
            while($vector_s = mysqli_fetch_array($respuesta_s)){
            ?>	
        	<tr height="30px"><td><b><?=$vector_s['sistema']?></b></td></tr>
            <tr>
             <td>
            <table border="0" cellpadding="0" cellspacing="1" align="left" style="font-family:verdana; font-size:12px; color:#000000">
                <?
                $con = new conexion();
                $consulta = "select * from ventana where idsistema='".$vector_s['idsistema']."';";
                $respuesta_v = $con->consulta($consulta);
                while($vector_v = mysqli_fetch_array($respuesta_v)){
                ?>	
                <tr height="25px"><td width="25px" align="center"><img src="img/<?=$vector_v['icono']?>" /></td><td><?=$vector_v['titulo']?></td></tr>
                <? muestra_per($id_u,$vector_v['idventana'],-1); ?>
                <? } ?>
            </table>
             </td>
            </tr>
			<? } ?>
        </table>
        <input type="hidden" name="hids" id="hids" value="1" />
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