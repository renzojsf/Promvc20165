<script language="javascript" type="text/javascript">
function registra(rgl)
{
	if(confirm("Se registraran las notas del alumno."))
	{
		var doc = document.listado;
		var num = doc.elements.length;
		var cad = "";
		var nom = "";

		for(var i=0;i<num;i++)
		{
			if(doc.elements[i].type=='text')
			{
				nom = doc.elements[i].name;
				nom = nom.split("-");
				cad = nom[0] + ":" + nom[1] + ":" + doc.elements[i].value.toUpperCase() + "," + cad;
			}
		}
		var hid = document.getElementById('cade');
		hid.value = cad;
		document.listado.submit();
	}
}
function noSecundaria(control)
{
	var nota = parseInt(control.value,10);
	if(nota>20 || nota<0)
	{
		alert('[Error] Ingrese una nota valida');
		control.value='0';
	}
}
</script>

<?
function nota_letra($nota)
{
	$retorno='';
	if($nota<21 && $nota>17)
	{
		$retorno='AD';
	}
	elseif($nota<18 && $nota>14)
	{
		$retorno='A';
	}
	elseif($nota<15 && $nota>12)
	{
		$retorno='B';
	}
	else
	{
		$retorno='C';
	}
	return $retorno;
}

if(isset($_POST['cade']))
{
	if(!empty($_POST['cade']))
	{
		$con = new conexion();
		$_cad = $_POST['cade'];
	
		$consulta = "call sp_actualiza_nota_aca('$_cad');";
		$respuesta = $con->consulta($consulta);
		while($vector = mysqli_fetch_array($respuesta)){ $mensaje = $vector['mensaje'];}
	}
	else{$mensaje = "Complete todos los campos.";}
}

$con = new conexion();
$consulta = "call sp_busca_datos_apoderado_alumno(".$_REQUEST['id'].",".$_REQUEST['pro'].");";
$respuesta_ = $con->consulta($consulta);
while($vector_ = mysqli_fetch_array($respuesta_)){$G_apode = $vector_['apoderado'];}

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
      <? $con = new conexion();$consulta = "call sp_valida_acceso('".$_SESSION['idusuario']."',37);";$respuesta_an = $con->consulta($consulta);while($vector_an = mysqli_fetch_array($respuesta_an)){$mue = $vector_an['estado'];} ?>
      <td align="center">
       <table border="0" width="700px" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px">
        <tr height="25px"><td width="100px" style="text-indent:15px">Codigo</td><td><?=$vector_['ideducando']?></td><td width="65px" align="left"><input type="button" value="Atras" onclick="javascript:document.location.href='principal.php?sis=<?=$_REQUEST['sis']?>&ven=<?=$_REQUEST['ven']?>&pag=4&id=<?=$_REQUEST['id']?>&ref=<?=$id_p?>';" style="cursor:pointer;font-family:verdana;font-size:12px"></td></tr>
        <tr height="25px"><td width="100px" style="text-indent:15px">Alumno</td><td><? echo $vector_['apepaterno'].' '.$vector_['apematerno'].', '.$vector_['nombres']; ?></td></tr>
        <? if(strlen($G_apode)>0){ ?><tr height="25px"><td width="100px" style="text-indent:15px">Apoderado</td><td><?=$G_apode?></td></tr><? } ?>
        <tr height="25px"><td width="100px" style="text-indent:15px">Direccion</td><td><?=$vector_['direccion']?>&nbsp;&nbsp;-&nbsp;&nbsp;Tlf <?=$vector_['telefono']?></td></tr>
        <?
		$con = new conexion();
		$consulta = "call sp_detalle_proceso($id_p);";
		$respuesta_p = $con->consulta($consulta);
		while($vector_p = mysqli_fetch_array($respuesta_p)){ $G_estado=$vector_p['estado']; $G_idtipo=$vector_p['idtipo']; $regla=$vector_p['idnivel']; $G_promovido = $vector_p['promovido']; $G_merito = $vector_p['merito']; ?>
        <script>jQuery(function($){$('input').numeric();});</script>
        <tr height="25px"><td width="100px" style="text-indent:15px; color:#660000"><b>Proceso</b></td><td><? if($vector_p['verano']=='1'){echo "<b>CV </b> ";}else{echo "<b>AE</b> ";} echo $vector_p['nivel']; if($vector_p['verano']=='1'){echo "<b>&nbsp;&nbsp;-&nbsp;&nbsp;<font color='#800000'>".$vector_p['curso']."</font></b> ";} ?> - [<font color="#336699"><? switch($vector_p['estado']){ case 0: $msg="Completado"; if($vector_p['idtipo']==1){ switch($vector_p['promovido']){ case 0: $msg="Repitente";break; case 1: $msg="Promovido";break; case 2: $msg="Requiere recuperacion";break; }} break; case 1: $msg="<b>Activo</b>";break; case 2: $msg="Anulado"; break;} echo $msg; ?></font>]&nbsp;&nbsp;-&nbsp;&nbsp;<i><a href="#" onclick="abrir('rep_alumno_notas.php?id=<?=$_REQUEST['id']?>&pro=<?=$_REQUEST['pro']?>',700,500);">Imprimir notas</a></i></td></tr>
        <? } ?>
        <? if(strlen($G_merito)>0){ ?><tr height="25px"><td width="100px" style="text-indent:15px">&nbsp;</td><td>Orden de merito <b><font style="font-size:14px; font-family:vertana"><?=$G_merito?></font></b></td></tr><? } ?>
        <tr>
         <td colspan="3">

            <table border="0" align="center" width="500px" cellpadding="0" cellspacing="0">
             <tr>
              <td colspan="2">
               <form name="listado" id="listado" method="post">
                <tr>
                <td>
                <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:solid 1px #7f7f7f;font-size:12px;font-family:verdana;text-shadow:-1px -1px white, 1px 1px #999;color:#333">
                    <tr height="25px">
                     <td align="left" style="text-indent:15px" class="cabeza">Curso</td>
                     <td align="center" width="50px" class="cabeza">1 U</td>
                     <td align="center" width="50px" class="cabeza">2 U</td>
                     <td align="center" width="50px" class="cabeza">3 U</td>
                     <td align="center" width="50px" class="cabeza">Prom</td>
                    </tr>
                </table>
                </td>
                </tr>
                <table border="0" width="500px" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
                 <?
                 $con = new conexion();
                 $resultados = 20;
                 if (empty($_REQUEST["pagina"])){ $inicio = 0; $pagina=1;}else{ $pagina = $_REQUEST["pagina"]; $inicio = ($pagina - 1) * $resultados; }
                 $consulta = "call sp_lista_notas($id_p);";
    
                 $respuesta = $con->consulta($consulta);
                 $total_registros=mysqli_num_rows($respuesta); 
                 $total_paginas = ceil($total_registros / $resultados);
    
                 $con = new conexion();
                 $consulta = "call sp_lista_notas($id_p);";
                 $respuesta = $con->consulta($consulta);
                 $numero = mysqli_num_rows($respuesta);
                 while($vector = mysqli_fetch_array($respuesta)){ if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';}
				 if(strlen($vector['nciber'])>0){$sub=" <span style='color:maroon;cursor:pointer' onclick=\"alert('Curso subsanado. Promedio anterior : ".$vector['promedio']."');\">[Sub]</span>";}else{$sub="";}
				 ?>
                <tr>
                 <td style="background-color:#<? echo $color; ?>">
                  <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana">
                   <tr height="30px">
                    <? if($mue=='1' and $G_estado==0 and (nota_letra($vector['promedio'])=='C' and strlen($vector['nciber'])==0) and $G_idtipo==1 and $G_promovido==2){ ?><td width="25px" align="center"><img src="img/busca1.png" onclick="abrir('listado_curso_recuperatorio.php?id=<?=$_REQUEST['id']?>&nt=<?=$vector['idnota']?>&cu=<?=$vector['idcurso']?>',800,550);" title="Buscar curso recuperatorio" style="cursor:pointer" /></td><? } ?>
                    <td align="left" style="text-indent:15px"><? echo $vector['curso'].$sub?></td>
                    <td align="center" width="50px"><? if($G_estado=='0' or $G_estado=='2'){if($vector['nota1']<13){$col="red";}else{$col="blue";} echo "<font style='color:$col'>".nota_letra($vector['nota1'])."</font>&nbsp;<font style='color:#666'>[".$vector['nota1']."]</font>";}else{?><input name="<?=$vector['idnota']?>-1" id="<?=$vector['idnota']?>-nota1" type="text" value="<?=$vector['nota1']?>" maxlength="2" <? if($G_estado=='0' or $G_estado=='2'){ echo "readonly";}?> style="width:30px; text-align:center; border:solid 1px #666; font-family:verdana; font-size:12px; height:23px" <? if($regla<3 and $G_estado==1){ ?>onblur="noSecundaria(this);"<? } ?> /><? } ?></td>
                    <td align="center" width="50px"><? if($G_estado=='0' or $G_estado=='2'){if($vector['nota2']<13){$col="red";}else{$col="blue";}echo "<font style='color:$col'>".nota_letra($vector['nota2'])."</font>&nbsp;<font style='color:#666'>[".$vector['nota2']."]";}else{?><input name="<?=$vector['idnota']?>-2" id="<?=$vector['idnota']?>-nota2" type="text" value="<?=$vector['nota2']?>" maxlength="2" <? if($G_estado=='0' or $G_estado=='2'){ echo "readonly";}?> style="width:30px; text-align:center; border:solid 1px #666; font-family:verdana; font-size:12px; height:23px" <? if($regla<3 and $G_estado==1){ ?>onblur="noSecundaria(this);"<? } ?> /><? } ?></td>
                    <td align="center" width="50px"><? if($G_estado=='0' or $G_estado=='2'){if($vector['nota3']<13){$col="red";}else{$col="blue";}echo "<font style='color:$col'>".nota_letra($vector['nota3'])."</font>&nbsp;<font style='color:#666'>[".$vector['nota3']."]";}else{?><input name="<?=$vector['idnota']?>-3" id="<?=$vector['idnota']?>-nota3" type="text" value="<?=$vector['nota3']?>" maxlength="2" <? if($G_estado=='0' or $G_estado=='2'){ echo "readonly";}?> style="width:30px; text-align:center; border:solid 1px #666; font-family:verdana; font-size:12px; height:23px" <? if($regla<3 and $G_estado==1){ ?>onblur="noSecundaria(this);"<? } ?> /><? } ?></td>
                    <td align="center" width="50px"><? if($G_estado=='0'){ ?><? if(strlen($vector['nciber'])>0){$nota=$vector['nciber'];}else{$nota=$vector['promedio'];} if($nota<13){$col="red";}else{$col="blue";} ?><font color="<?=$col?>"><b><?=nota_letra($nota)?></b></font><? echo "&nbsp;<font style='color:#666'>[".$nota."]";?><? }else{ echo "&nbsp;";} ?></td>
                   </tr>
                  </table>
                 </td>
                </tr>
                <? $promedioN=0; } if($numero==0){ ?><tr><td style="color:#060" align="center">No se encontraron registros</td></tr><? }else{ if($G_estado=='1'){ ?>
                <tr height="35px"><td align="right"><input type="button" value="Guardar" onclick="registra(<?=$regla?>);" title="Actualizar notas" style="font-family:verdana; font-size:12px; width:100px; height:24px; padding-top:1px; cursor:pointer" /></td></tr>
                <? }} if ($total_paginas > 1){ ?>
                 <tr height="35px" align="right">
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
                <input type="hidden" name="cade" id="cade" />
               </form>
              </td>
             </tr>
            </table>

         </td>
        </tr>
       </table>
      </td>
     </tr>
     <? if(isset($mensaje)){ ?><tr height="20px"><td colspan="3" align="center" style="font-family:verdana; font-size:12px; color:#F60"><?=$mensaje?></td></tr><? } ?>
     <tr height="10px"><td></td></tr>
    </table>
  </td>
 </tr>
</table>
<? } ?>