<?
session_start();
if(isset($_POST['anul']))
{
	$con = new conexion();
	$consulta = "call sp_anula_documento(".$_POST['anul'].");";
	$respuesta = $con->consulta($consulta);
	while($vector = mysqli_fetch_array($respuesta)){ $mensaje = $vector['mensaje'];}
}

if(isset($_POST['doc']) and isset($_POST['fec']) and isset($_POST['hcu']) and isset($_POST['mon']))
{
	if(!empty($_POST['doc']) and !empty($_POST['fec']) and !empty($_POST['hcu']) and !empty($_POST['mon']))
	{
		$con = new conexion();
		$_cuo = $_POST['hcu'];
		$_doc = $_POST['doc'];
		$_mon = $_POST['mon'];
		$_fec = explode("/",$_POST['fec']);
		$_fec = $_fec[2]."-".$_fec[1]."-".$_fec[0];
		
		$consulta = "call sp_ingresa_pago_cuota($_cuo,'$_doc','".$_SESSION['idusuario']."',$_mon,'$_fec');";
		$respuesta = $con->consulta($consulta);
		while($vector = mysqli_fetch_array($respuesta))
		{
			$msg = split("-",$vector['mensaje']);
			$mensaje = $msg[0];
			$bol = $msg[1];
			$idd = $msg[2];
		}
		$tmp = split("-",$_doc);
		$t_n = (int)$tmp[1]+1;
		$_SESSION['n_doc'] = substr("000000",0,6-strlen($t_n)).$t_n;
	}
	else{$mensaje = "Complete todos los campos.";}
}

if(!(isset($_SESSION['n_doc'])))
{
	$consulta = "call sp_recupera_ultimo_boleta();";
	$con = new conexion();
	$respuesta = $con->consulta($consulta);
	while($vector = mysqli_fetch_array($respuesta))
	{
		$tmp = split("-",$vector['ndocumento']);
		$t_n = (int)$tmp[1]+1;
		$_SESSION['n_doc'] = substr("000000",0,6-strlen($t_n)).$t_n;
	}
}
?>

<script language="javascript" type="text/javascript">
jQuery(function($){
   $("#doc").mask("999-999999");
   $("#fec").mask("99/99/9999");
   $("#mon").numeric();
});
function rev_monto(ctr)
{
	var maximo = parseFloat(document.getElementById('m_max').value);
	var montoa = parseFloat(ctr.value);
	if(montoa > maximo)
	{
		ctr.value = maximo;
		ctr.focus();
	}
}
function anula_doc(id)
{
	if(confirm("El documento se anulara permanentemente."))
	{
		document.getElementById('anul').value = id;
		document.forms.anu_doc.submit();
	}
}
</script>

<form name="anu_doc" id="anu_doc" method="post" action=""><input type="hidden" name="anul" id="anul" /></form>

<table border="0" width="570px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">

        <form name="nuevo" id="nuevo" action="" method="post">
        <table border="0" width="480px" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px;">
         <tr height="25px">
          <td colspan="3" style="color:#295886; font-weight:bold">Registro de pagos</td>
         </tr>
         <tr height="25px"><td colspan="2">&nbsp;</td></tr>
		 <tr height="35px">
          <td width="120px">Documento</td>
          <td width="320"><input type="text" value="001-<? if(isset($_SESSION['n_doc'])){ echo $_SESSION['n_doc'];} ?>" name="doc" id="doc" accesskey="requerido" class="caja" style="text-transform:capitalize;width:110px"></td>
         </tr>
         <tr height="35px">
          <td>Fecha</td>
          <td><input type="text" name="fec" id="fec" accesskey="requerido=valifecha" value="<?=date("d/m/Y");?>" class="caja" style="text-transform:capitalize;width:110px"></td>
         </tr>
         <?
		 if(isset($_REQUEST['ref'])){
		 $con = new conexion();
		 $consulta = "call sp_busca_datos_alumno(".$_REQUEST['ref'].");";
		 $respuesta = $con->consulta($consulta);
		 while($vecto = mysqli_fetch_array($respuesta)){$alum = $vecto['apepaterno'].' '.$vecto['apematerno'].', '.$vecto['nombres'];}
		 }
		 ?>
         <tr height="35px">
          <td width="120px">Alumno</td>
          <td width="320"><input type="text" accesskey="requerido" value="<? if(isset($alum)){echo $alum;}?>" name="alu" id="alu" class="caja" style="text-transform:capitalize;width:320px" readonly="readonly"><input type="hidden" value="<? if(isset($_REQUEST['ref'])){ echo $_REQUEST['ref'];}?>" name="hal" id="hal"></td>
          <td width="40px" align="center"><a href="#" onclick="abrir('listado_alumno.php',600,600);">Sel</a></td>
         </tr>
         <tr height="35px">
          <td>Cuota</td>
          <td><input type="text" name="cuo" id="cuo" accesskey="requerido" class="caja" style="text-transform:capitalize;width:320px" readonly="readonly"><input type="hidden" name="hcu" id="hcu"></td>
          <td width="40px" align="center"><a href="#" onclick="var idd=document.getElementById('hal').value; if(idd.length>0){ abrir('selecciona_pago.php?id='+idd,900,580);}else{alert('Seleccione un alumno antes');}">Sel</a></td>
         </tr>
         <tr height="35px">
          <td>Monto</td>
          <td><input type="hidden" id="m_max" name="m_max"/><input type="text" name="mon" id="mon" onblur="rev_monto(this);" accesskey="requerido" class="caja" style="text-transform:capitalize;width:70px"></td>
         </tr>
         <tr height="35px">
          <td colspan="2" align="right"><input type="button" onclick="validaFormulario(document.nuevo,'Se registrara el pago.');" name="btn_guardar" value="Guardar" style="font-family:verdana;font-size:12px;width:90px;cursor:pointer;height:25px;padding-bottom:3px"></td>
         </tr>
        </table>
        </form>
       
      </td>
     </tr>
     <? if(isset($mensaje)){ ?><tr height="20px"><td colspan="3" align="center" style="font-family:verdana; font-size:12px; color:#F60"><? echo $mensaje; if($bol==1){ echo "<script>abrir('imprime_boleta.php?id=$idd',600,400);</script>";} ?></td></tr><? } ?>
     <tr height="10px"><td></td></tr>
    </table>
  </td>
 </tr>
</table>

<br /><br />

<?
$con = new conexion();
$consulta = "call sp_muestra_caja_total(".$_SESSION['idusuario'].",'".date("Y-m-d")."');";
$respuesta = $con->consulta($consulta);
while($vecto = mysqli_fetch_array($respuesta)){$G_total = $vecto['total'];}
?>

<table border="0" width="770px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">
        <table border="0" width="680px" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px;">
         <tr height="25px">
          <td style="color:#295886; font-weight:bold">Detalle de cobro por usuario</td>
          <td width="100px" align="right"><?=date("d/m/Y");?></td>
         </tr>
		 <tr height="25px">
          <td style="color:#333; font-weight:bold"><?=$_SESSION['personal']?></td>
          <td width="100px" align="right">Total : <b><?=number_format($G_total,2,'.',' ')?></b></td>
         </tr>
         <tr height="10px"><td colspan="2">&nbsp;</td></tr>
         <tr>
          <td colspan="2">
           <table border="0" width="100%" align="center" cellpadding="0" cellspacing="1" style="font-family:verdana;font-size:12px;">
            <?
			 $mue=permite(38); $imp=permite(41);
			 $con = new conexion();
			 $resultados = 7;
			 if (empty($_REQUEST["pagina"])){ $inicio = 0; $pagina=1;}else{ $pagina = $_REQUEST["pagina"]; $inicio = ($pagina - 1) * $resultados; }
			 $consulta = "call sp_muestra_caja_fecha(".$_SESSION['idusuario'].",'".date("Y-m-d")."',0,0);";
			 $respuesta = $con->consulta($consulta);
			 $total_registros=mysqli_num_rows($respuesta); 
             $total_paginas = ceil($total_registros / $resultados);
			 
			 $con = new conexion();
			 $consulta = "call sp_muestra_caja_fecha(".$_SESSION['idusuario'].",'".date("Y-m-d")."',$inicio,$resultados);";
			 $respuesta = $con->consulta($consulta);
	     	 $numero = mysqli_num_rows($respuesta);
			 while($vecto = mysqli_fetch_array($respuesta)){ if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';}
			 ?>
             <tr height="25px">
             <td style="background-color:#<? echo $color; ?>">
              <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana">
			   <tr height="25px">
                <? if($imp=='1'){ ?><td width="30px" align="center"><img src="img/impresora.png" onclick="abrir('imprime_boleta.php?id=<?=$vecto['iddocumento']?>',600,400);" style="cursor:pointer" title="Imprimir este documento" /></td><? } ?>
                <? if($mue=='1'){ ?><td width="30px" align="center"><? if($vecto['estado']==1){ ?><img src="img/cancelar.png" onclick="anula_doc(<?=$vecto['iddocumento']?>)" style="cursor:pointer" title="Anular este documento" /><? } ?></td><? } ?>
                <td align="center" width="115px"><?=$vecto['ndocumento']?></td>
                <td align="left"><?=$vecto['concepto']?></td>
                <td align="center" width="100px"><?=number_format($vecto['monto'],2,'.',' ')?></td>
                <td align="center" width="90px"><?=$vecto['fecpago']?></td>
                <td align="center" width="80px"><? if($vecto['estado']==1){echo "Normal";}else{echo "Anulado";}?></td>
               </tr>
              </table>
             </td>
             </tr>
			 <? } ?>
			<? if ($total_paginas > 1){ ?>
             <tr height="25px" align="right">
              <td>
               <?
                if(isset($_POST['criteria'])){$criterio="&criteria=".$_POST['criteria'];}else{if(isset($_REQUEST['criteria'])){$criterio="&criteria=".$_REQUEST['criteria'];}}
            	if($pagina-1>0){echo " <a href='principal.php?sis=".$_REQUEST['sis']."&ven=".$_REQUEST['ven']."&pag=".$_REQUEST['pag']."&pagina=".($pagina-1)."'>Ant</a>&nbsp;";}   
            	for ($i=1;$i<=$total_paginas;$i++){if ($i == $pagina){echo "<font color='#666666'><b>$pagina</b></font>&nbsp;";}else{echo "<a href='principal.php?sis=".$_REQUEST['sis']."&ven=".$_REQUEST['ven']."&pag=".$_REQUEST['pag']."&pagina=".$i."'>".$i."</a>&nbsp;";}}
           		if($pagina + 1 <= $total_paginas){echo "&nbsp;<a href='principal.php?sis=".$_REQUEST['sis']."&pag=".$_REQUEST['pag']."&ven=".$_REQUEST['ven']."&pagina=".($pagina+1)."'>Sig</a>";}  
               ?>
              </td>
             </tr> 
            <? } ?>
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