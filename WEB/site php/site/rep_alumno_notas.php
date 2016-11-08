<? include("conexion.php"); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Relacion de notas</title>
</head>
<body onload="window.print(); self.close();">

<?
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

    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <? $con = new conexion();$consulta = "call sp_valida_acceso('".$_SESSION['idusuario']."',37);";$respuesta_an = $con->consulta($consulta);while($vector_an = mysqli_fetch_array($respuesta_an)){$mue = $vector_an['estado'];} ?>
      <td align="center">
       <table border="0" width="700px" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px">
        <tr height="25px"><td width="100px" style="text-indent:15px">Codigo</td><td><?=$vector_['ideducando']?></td><td width="65px" align="left">&nbsp;</td></tr>
        <tr height="25px"><td width="100px" style="text-indent:15px">Alumno</td><td><? echo $vector_['apepaterno'].' '.$vector_['apematerno'].', '.$vector_['nombres']; ?></td></tr>
        <?
		$con = new conexion();
		$consulta = "call sp_detalle_proceso($id_p);";
		$respuesta_p = $con->consulta($consulta);
		while($vector_p = mysqli_fetch_array($respuesta_p)){ $G_estado=$vector_p['estado']; $G_idtipo=$vector_p['idtipo']; $regla=$vector_p['idnivel']; $G_promovido = $vector_p['promovido']; $G_merito = $vector_p['merito']; ?>
        <script>jQuery(function($){$('input').numeric();});</script>
        <tr height="25px"><td width="100px" style="text-indent:15px; color:#660000"><b>Proceso</b></td><td><? if($vector_p['verano']=='1'){echo "<b>CV </b> ";}else{echo "<b>AE</b> ";} echo $vector_p['nivel']; if($vector_p['verano']=='1'){echo "<b>&nbsp;&nbsp;-&nbsp;&nbsp;<font color='#800000'>".$vector_p['curso']."</font></b> ";} ?></td></tr>
        <tr><td>&nbsp;</td></tr>
        <? } ?>
        <tr>
         <td colspan="3">

            <table border="0" align="center" width="500px" cellpadding="0" cellspacing="0">
             <tr>
              <td colspan="2">
               <form name="listado" id="listado" method="post">
                <tr>
                <td>
                <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:solid 1px #7f7f7f;font-size:12px;font-family:verdana;color:#333">
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
                 while($vector = mysqli_fetch_array($respuesta)){ 
				 if(strlen($vector['nciber'])>0){$sub=" <span style='color:maroon;cursor:pointer' onclick=\"alert('Curso subsanado. Promedio anterior : ".$vector['promedio']."');\">[Sub]</span>";}else{$sub="";}
				 ?>
                <tr>
                 <td>
                  <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana; color:#000">
                   <tr height="25px">
                    <? if($mue=='1' and $G_estado==0 and (nota_letra($vector['promedio'])=='C' and strlen($vector['nciber'])==0) and $G_idtipo==1 and $G_promovido==2){ ?><td width="25px" align="center"><img src="img/busca1.png" onclick="abrir('listado_curso_recuperatorio.php?id=<?=$_REQUEST['id']?>&nt=<?=$vector['idnota']?>&cu=<?=$vector['idcurso']?>',800,550);" title="Buscar curso recuperatorio" style="cursor:pointer" /></td><? } ?>
                    <td align="left" style="text-indent:15px"><? echo $vector['curso'].$sub?></td>
                    <td align="center" width="50px"><? if($G_estado=='0' or $G_estado=='2'){if($vector['nota1']<13){$col="red";}else{$col="blue";} echo "<font style='color:$col'>".$vector['nota1']."</font>";}else{?><?=$vector['nota1']?><? } ?></td>
                    <td align="center" width="50px"><? if($G_estado=='0' or $G_estado=='2'){if($vector['nota2']<13){$col="red";}else{$col="blue";}echo "<font style='color:$col'>".$vector['nota2']."</font>";}else{?><?=$vector['nota2']?><? } ?></td>
                    <td align="center" width="50px"><? if($G_estado=='0' or $G_estado=='2'){if($vector['nota3']<13){$col="red";}else{$col="blue";}echo "<font style='color:$col'>".$vector['nota3']."</font>";}else{?><?=$vector['nota3']?><? } ?></td>
                    <td align="center" width="50px"><? if($G_estado=='0'){ ?><? if(strlen($vector['nciber'])>0){$nota=$vector['nciber'];}else{$nota=$vector['promedio'];} if($nota<13){$col="red";}else{$col="blue";} ?><font color="<?=$col?>"><b><?=$nota?></b></font><? }else{ echo "&nbsp;";} ?></td>
                   </tr>
                  </table>
                 </td>
                </tr>
                <? $promedioN=0; } if($numero==0){ ?><tr><td style="color:#060" align="center">No se encontraron registros</td></tr><? }else{ if($G_estado=='1'){ ?>
                <? }} if ($total_paginas > 1){ ?>
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
 <? } ?>

</body>
</html>
