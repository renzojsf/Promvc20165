<? if(isset($_POST['criteria'])){$criterio=$_POST['criteria'];}else{if(isset($_REQUEST['criteria'])){$criterio=$_REQUEST['criteria'];}} ?>
<script language="javascript" type="text/javascript">
jQuery(function($){
   $("#criteria").mask("999-999999");
});
</script>

<?
$con = new conexion();
$resultados = 10;
if (empty($_REQUEST["pagina"]) || isset($_POST['criteria'])){ $inicio = 0; $pagina=1;}else{ $pagina = $_REQUEST["pagina"]; $inicio = ($pagina - 1) * $resultados; }
$consulta = "call sp_lista_documento_ingreso('$criterio',0,0);";
$respuesta = $con->consulta($consulta);
$total_registros=mysqli_num_rows($respuesta); 
$total_paginas = ceil($total_registros / $resultados);

$con = new conexion();
$consulta = "select d.iddocumento,concat(p.apellidos,', ',p.nombres) as personal,d.ndocumento,d.monto,d.fecpago,d.estado,c.concepto from cuota c inner join documento d on c.idcuota=d.idcuota inner join usuario u on u.idusuario=d.idusuario inner join personal p on p.idpersonal=u.idpersonal where ndocumento like '%$criterio%' limit $inicio,$resultados";
$respuesta_pa = $con->consulta($consulta);
?>

<table border="0" width="770px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">
        <form name="buscar" id="buscar" method="post" action="">
        <table border="0" align="center" width="730px" cellpadding="0" cellspacing="0">
         <tr>
          <td style="font-family:verdana; font-size:11px; color:#333">Mostrando del <?=($inicio+1)?> al <? $tot=$inicio+$resultados; if($tot>$total_registros){echo $tot-($tot-$total_registros);}else{echo $tot;} ?> del total <b><?=$total_registros?></b></td>
          <td align="right" width="325px"><input type="text" value="<?=$criterio?>" name="criteria" id="criteria" style="font-family:verdana;font-size:12px;width:110px;border:solid 1px #6A798C;height:25px; padding-top:4px;text-indent:10px"></td>
          <td width="25px"><img src="img/buscar.png" onClick="busqueda(document.buscar);" style="cursor:pointer" title="Buscar"></td>
         </tr>
        </table>
        </form>
        <table border="0" align="center" width="730px" cellpadding="0" cellspacing="0">
         <tr>
          <td colspan="2">
           <form name="listado" id="listado" method="post">
            <table border="0" width="100%" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
             <tr>
              <td>
               <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:solid 1px #7f7f7f;font-size:12px;font-family:verdana;text-shadow:-1px -1px white, 1px 1px #999;color:#333">
                <tr height="25px">
                 <td align="center" class="cabeza" width="90px">Nº Doc</td>
                 <td align="left" width="200px" style="text-indent:10px" class="cabeza">Usuario</td>
                 <td align="left" width="260px" style="text-indent:10px" class="cabeza">Concepto</td>
				 <td align="center" width="90px" class="cabeza">Fecha</td>
                 <td align="center" width="70px" class="cabeza">Monto</td>
                 <td align="center" width="20px" class="cabeza">O</td>
                </tr>
               </table>
              </td>
             </tr>
             <? while($vector = mysqli_fetch_array($respuesta_pa)){ if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';}?>
            <tr>
             <td style="background-color:#<? echo $color; ?>">
              <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana">
               <tr height="30px" <? if(isset($_REQUEST['ref']) and $_REQUEST['ref']==$vector['idpadre']){ echo "style='background-color:#DDDDDD'";} ?>>
                <td align="center" width="90px"><?=$vector['ndocumento']?></td>
                <td align="left" width="200px" style="text-indent:10px"><?=$vector['personal']?></td>
                <td align="left" style="text-indent:10px"><?=$vector['concepto']?></td>
                <td align="center" width="90px"><?=$vector['fecpago']?></td>
                <td align="center" width="70px"><?=number_format($vector['monto'],2,'.',' ')?></td>
                <td align="center" width="20px"><? if($vector['estado']==1){$let="N";$tool="Documento normal";}else{$let="A";$tool="Documento anulado";}?><span title="<?=$tool?>" style="cursor:pointer"><?=$let?></span></td>
               </tr>
              </table>
             </td>
            </tr>
            <? } if($numero==0){ ?><tr height="30px"><td style="color:#060" align="center">No se encontraron registros</td></tr><? } ?>
			<? if ($total_paginas > 1){ ?>
             <tr height="25px" align="right">
              <td>
               <?
                if(isset($_POST['criteria'])){$criterio="&criteria=".$_POST['criteria'];}else{if(isset($_REQUEST['criteria'])){$criterio="&criteria=".$_REQUEST['criteria'];}}
				if($pagina-1>0){echo " <a href='principal.php?sis=".$_REQUEST['sis']."&ven=".$_REQUEST['ven']."&pag=".$_REQUEST['pag']."&pagina=".($pagina-1)."$criterio'>Ant</a>&nbsp;";}   
				for ($i=1;$i<=$total_paginas;$i++){if ($i == $pagina){echo "<font color='black'><b>$pagina</b></font>&nbsp;";}else{echo "<a href='principal.php?sis=".$_REQUEST['sis']."&ven=".$_REQUEST['ven']."&pag=".$_REQUEST['pag']."&pagina=".$i."$criterio'>".$i."</a>&nbsp;";}}
				if($pagina + 1 <= $total_paginas){echo "&nbsp;<a href='principal.php?sis=".$_REQUEST['sis']."&ven=".$_REQUEST['ven']."&pag=".$_REQUEST['pag']."&pagina=".($pagina+1)."$criterio'>Sig</a>";}  
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
     <tr height="10px"><td></td></tr>
    </table>
  </td>
 </tr>
</table>
