<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Seleccionar pago</title>
<style>html,body{height:100%}a{text-decoration:none;color:#295886;font-family:verdana;font-size:12px}</style>
<link rel="stylesheet" type="text/css" href="archivos/estilo.css">
<script>
function llama(id_pago,concepto,monto,idtipo,id_n)
{
	var est = true;
	if(idtipo==1) //indica que el proceso es por año escolar y no por curso de verano
	{
		if(id_n!=id_pago)
		{
			alert('Es necesario realizar pagos anteriores para seleccionar esta cuota');
			est=false;
		}
	}
	
	if(est==true)
	{
		window.opener.document.nuevo.cuo.value = concepto;
		window.opener.document.nuevo.hcu.value = id_pago;
		window.opener.document.nuevo.mon.value = monto;
		window.opener.document.nuevo.m_max.value = monto;
		self.close();
	}
}
</script>
</head>
<body>

<?
include("conexion.php");
$con = new conexion();
$consulta = "call sp_busca_datos_alumno(".$_REQUEST['id'].");";
$respuesta_ = $con->consulta($consulta);
while($vector_ = mysqli_fetch_array($respuesta_)){
$id_a = $_REQUEST['id'];
?>
<br />
<table border="0" width="850px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">
       <table border="0" width="820px" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px">
        <tr height="25px"><td width="100px" style="text-indent:15px">Codigo</td><td><?=$vector_['ideducando']?></td><td width="65px" align="left"><input type="button" value="Cerrar" title="Cerrar ventana" onclick="javascript:self.close();" style="cursor:pointer;font-family:verdana;font-size:12px"></td></tr>
        <tr height="25px"><td width="100px" style="text-indent:15px">Alumno</td><td><? echo $vector_['apepaterno'].' '.$vector_['apematerno'].', '.$vector_['nombres']; ?></td></tr>
        <tr><td colspan="3">&nbsp;</td></tr>
        <tr>
         <td colspan="3">

            <table border="0" align="center" width="820px" cellpadding="0" cellspacing="0">
             <tr>
              <td colspan="2">
               <form name="listado" id="listado" method="post">
                <table border="0" width="100%" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
                <tr>
                <td>
                <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:solid 1px #7f7f7f;font-size:12px;font-family:verdana;text-shadow:-1px -1px white, 1px 1px #999;color:#333">
                    <tr height="25px">
                    <td width="65px" align="center" class="cabeza">&nbsp;</td>
                    <td align="left" style="text-indent:15px" class="cabeza">Descripcion</td>
                    <td align="center" width="90px" class="cabeza">Monto</td>
                    <td align="center" width="90px" class="cabeza">M Pagado</td>
                    <td align="center" width="120px" class="cabeza">F programado</td>
                    </tr>
                </table>
                </td>
                </tr>
                 <?
                 $con = new conexion();
                 $resultados = 9;
                 if (empty($_REQUEST["pagina"])){ $inicio = 0; $pagina=1;}else{ $pagina = $_REQUEST["pagina"]; $inicio = ($pagina - 1) * $resultados; }
                 $consulta = "call sp_lista_pagos_activos_alumno($id_a,0,0);";
    
                 $respuesta = $con->consulta($consulta);
                 @$total_registros=mysqli_num_rows($respuesta); 
                 $total_paginas = ceil($total_registros / $resultados);
    
                 $con = new conexion();
                 $consulta = "call sp_lista_pagos_activos_alumno($id_a,$inicio,$resultados);";
                 $respuesta = $con->consulta($consulta);
                 @$numero = mysqli_num_rows($respuesta);
                 while($vector = @mysqli_fetch_array($respuesta)){ if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';} 
				 if($vector['estado']=='0' and !(isset($st_estado))){ $st_estado=$vector['idcuota'];} ?>
                <tr>
                 <td style="background-color:#<? if(isset($_REQUEST['ref']) and $_REQUEST['ref']==$vector['idcuota']){echo "DDDDDD";}else{echo $color;} ?>">
                  <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana;color:#333">
                   <tr height="30px">
                    <td align="center" width="65px"><input type="button" <? if($vector['estado']=='0'){ ?>onclick="javascript:llama(<?=$vector['idcuota']?>,'<?=$vector['concepto']?>','<?=number_format(($vector['monto']-$vector['pagado']),2,'.',' ') ?>',<?=$vector['idtipo']?>,<? if(isset($st_estado)){echo $st_estado;}else{echo "-1";} ?>);"<? }else{ ?>onclick="javascript:alert('El pago ya ha sido registrado');"<? } ?> value="Usar" title="Seleccionar pago" style="font-family:verdana;font-size:12px;width:50px;cursor:pointer;height:25px;padding-bottom:3px"/></td>
                    <!-- <td align="center" width="65px"><input type="button" <? if($vector['estado']=='0'){ ?>onclick="javascript:llama(<?=$vector['idcuota']?>,'<?=$vector['concepto']?>','<?=number_format(($vector['monto']-$vector['pagado']),2,'.',' ') ?>',<?=$vector['idtipo']?>,<? if(isset($st_estado)){echo $st_estado;}else{echo "-1";} ?>);"<? }else{ ?>onclick="javascript:alert('El pago ya ha sido registrado');"<? } ?> value="Usar" title="Seleccionar pago" style="font-family:verdana;font-size:12px;width:50px;cursor:pointer;height:25px;padding-bottom:3px"/></td> -->
                    <td align="left" style="text-indent:15px"><?=$vector['concepto']; if($vector['verano']==1){echo " - <font style='color:maroon'><b>".$vector['curso']."<b></font>";}?></td>
                    <td align="center" width="90px"><?=number_format($vector['monto'],2,'.',' ')?></td>
                    <td align="center" width="90px"><?=number_format($vector['pagado'],2,'.',' ')?></td>
                    <td align="center" width="120px"><? $tmp = explode("-",$vector['fecpago']); echo $tmp[2]."/".$tmp[1]."/".$tmp[0];?></td>
                   </tr>
                  </table>
                 </td>
                </tr>
                <? } if($numero==0){ ?><tr height="30px"><td style="color:#060" align="center"><? if(strlen($id_p)==0){ echo "El alumno no tiene ningun pago pendiente";}else{echo "No se encontraron registros";}?></td></tr><? } ?>
                <? if ($total_paginas > 1){ ?>
                 <tr height="25px" align="right">
                  <td>
                   <?
                if($pagina-1>0){echo " <a href='selecciona_pago.php?id=".$_REQUEST['id']."&pagina=".($pagina-1)."'>Ant</a>&nbsp;";}   
                for ($i=1;$i<=$total_paginas;$i++){if ($i == $pagina){echo "<font color='#666666'><b>$pagina</b></font>&nbsp;";}else{echo "<a href='selecciona_pago.php?id=".$_REQUEST['id']."&pagina=".$i."'>".$i."</a>&nbsp;";}}
                if($pagina + 1 <= $total_paginas){echo "&nbsp;<a href='selecciona_pago.php?id=".$_REQUEST['id']."&pagina=".($pagina+1)."'>Sig</a>";}  
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


</body>
</html>