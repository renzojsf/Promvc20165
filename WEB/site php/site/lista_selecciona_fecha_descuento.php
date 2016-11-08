<html>
<head>
<title>Seleccione</title>
<script language="JavaScript" type="text/javascript" src="archivos/sistema.js"></script>
<style>a{text-decoration:none;color:#000000}</style>
<script>
function aigna(cuota,fecha)
{
	window.opener.document.nuevo.fecini.value = fecha;
	window.opener.document.nuevo.hfe.value = cuota;
	self.close();
}

</script>
</head>

<? include("conexion.php"); $id_p = $_REQUEST['pro']; ?>

<body marginheight="0" marginwidth="0">

<br>
            <table border="0" align="center" width="95%" cellpadding="0" cellspacing="0">
             <tr>
              <td colspan="2">
               <form name="listado" id="listado" method="post">
                <table border="0" width="100%" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
		<tr>
		<td>
		<table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="background-image:url('img/degrada.png');background-repeat:repeat-x;height:25px;border:solid 1px #7f7f7f;font-size:12px;font-family:verdana;text-shadow:-1px -1px white, 1px 1px #999;color:#333">
			<tr height="25px">
			<td width="65px" align="center" class="cabeza">A</td>
			<td align="left" style="text-indent:15px" class="cabeza">Descripcion</td>
			<td align="center" width="100px" class="cabeza">F programado</td>
			</tr>
		</table>
		</td>
		</tr>
                 <?
                 $con = new conexion();
                 if (empty($_REQUEST["pagina"])){ $inicio = 0; $pagina=1;}else{ $pagina = $_REQUEST["pagina"]; $inicio = ($pagina - 1) * $resultados; }
                 $consulta = "call sp_lista_pagos_proceso($id_p,0,0);";
                 $respuesta = $con->consulta($consulta);
                 while($vector = mysqli_fetch_array($respuesta)){ if($vector['matricula']=='0' and $vector['pagado']==0){ if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';} ?>
                <tr>
                 <td style="background-color:#<? echo $color; ?>">
                  <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana">
                   <tr height="30px">
                    <td align="center" width="65px"><input type="button" value="Usar" onclick="aigna(<?=$vector['idcuota']?>,'<? $tmp = explode("-",$vector['fecpago']); echo $tmp[2]."/".$tmp[1]."/".$tmp[0]; ?>');" title="Empezar por este pago" style="cursor:pointer;"></td>
                    <td align="left" style="text-indent:15px"><?=$vector['concepto']?></td>
                    <td align="center" width="100px"><? $tmp = explode("-",$vector['fecpago']); echo $tmp[2]."/".$tmp[1]."/".$tmp[0];?></td>
                   </tr>
                  </table>
                 </td>
                </tr> 
                <? }} ?>
                </table>
               </form>
              </td>
             </tr>
            </table>

</body>
</html>