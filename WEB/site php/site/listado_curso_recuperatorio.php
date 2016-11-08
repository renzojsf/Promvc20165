<?
	include("conexion.php");
	$id_a=$_REQUEST['id'];
?>
<html>
<head>
<title>Seleccione</title>
<script language="JavaScript" type="text/javascript" src="archivos/sistema.js"></script>
<style>a{text-decoration:none;color:#000000}</style>
<link rel="stylesheet" type="text/css" href="archivos/estilo.css">
<script>
function reemplaza_nota(nota2)
{
	if(confirm("La nota sera reemplazada por la nota de final de curso."))
	{
		var nota = document.getElementById('nota2');
		nota.value = nota2;
		document.forms.reemplaza.submit();
	}
}
</script>
</head>
<body marginheight="0" marginwidth="0">

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

	if(isset($_POST['nota1']) and isset($_POST['nota2']))
	{
		$con = new conexion();
		$_no1 = $_POST['nota1'];
		$_no2 = $_POST['nota2'];
	
		$consulta = "call sp_reemplaza_nota($_no1,$_no2);";
		$respuesta = $con->consulta($consulta);
		while($vector = mysqli_fetch_array($respuesta)){ $mensaje = $vector['mensaje'];}
	}
?>
<? if($mensaje==1){ ?>
<script>
window.opener.location.reload();
self.close();
</script>
<? } ?>

<form name="reemplaza" id="reemplaza" method="post">
   <input type="hidden" name="nota1" id="nota1" value="<?=$_REQUEST['nt']?>">
   <input type="hidden" name="nota2" id="nota2" value="">
</form>
<table border="0" width="770px" cellpadding="0" cellspacing="0" style="border:solid 1px #CFD9E5;-moz-border-radius: 12px;" align="center">
 <tr>
  <td>
    <table border="0" width="100%" cellpadding="0" cellspacing="0" style="border:solid 1px #FAF8F9;-moz-border-radius: 12px; background-image:url(img/degradado.png); background-repeat:repeat-x; background-position:top; font-family:verdana; font-size:12px">
     <tr height="10px"><td></td></tr>
     <tr>
      <td align="center">
       <table border="0" width="760px" align="center" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px">
        <tr>
         <td colspan="3">
            <table border="0" align="center" width="750px" cellpadding="0" cellspacing="0">
             <tr>
              <td colspan="2">
               <form name="listado" id="listado" method="post">
                <table border="0" width="100%" cellpadding="0" cellspacing="1" align="center" style="font-family:verdana; font-size:12px; color:#7999AE">
                <tr>
                <td>
                <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:solid 1px #7f7f7f;font-size:12px;font-family:verdana;text-shadow:-1px -1px white, 1px 1px #999;color:#333">
                    <tr height="25px">
                     <td width="25px" align="center" class="cabeza">S</td>
                     <td align="left" style="text-indent:15px" class="cabeza">Descripcion</td>
                     <td align="center" width="50px" class="cabeza">Nota</td>
                     <td align="center" width="90px" class="cabeza">F Registro</td>
                     <td align="center" width="90px" class="cabeza">F Inicio</td>
                     <td align="center" width="90px" class="cabeza">F FIn</td>
                     <td align="center" width="90px" class="cabeza">Estado</td>
                    </tr>
                </table>
                </td>
                </tr>
                 <?
				 $cur = $_REQUEST['cu'];
                 $con = new conexion();
                 $resultados = 10;
                 if (empty($_REQUEST["pagina"])){ $inicio = 0; $pagina=1;}else{ $pagina = $_REQUEST["pagina"]; $inicio = ($pagina - 1) * $resultados; }
                 $consulta = "call sp_busca_proceso_alumno_curso($id_a,0,0,$cur);";
    
                 $respuesta = $con->consulta($consulta);
                 $total_registros=mysqli_num_rows($respuesta); 
                 $total_paginas = ceil($total_registros / $resultados);
    
                 $con = new conexion();
                 $consulta = "call sp_busca_proceso_alumno_curso($id_a,$inicio,$resultados,$cur);";
                 $respuesta = $con->consulta($consulta);
                 $numero = mysqli_num_rows($respuesta);
                 while($vector = mysqli_fetch_array($respuesta)){ if($color=='FFFFFF'){$color='C3D9FF';}else{$color='FFFFFF';}?>
                <tr>
                 <td style="background-color:#<? echo $color; ?>">
                  <table border="0" width="100%" cellpadding="0" cellspacing="0" align="center" style="border:dashed 1px #A4A4A4;font-size:12px;font-family:verdana">
                   <tr height="30px" <? if(isset($_REQUEST['ref']) and $_REQUEST['ref']==$vector['idproceso']){ echo "style='background-color:#DDDDDD'";} ?>>
                    <td width="25px" align="center"><? if(nota_letra($vector['promedio'])!='C'){ ?><img src="img/ok.png" onClick="<? if(!empty($vector['refe'])){echo "alert('La nota de verano ya fue asignado a otro curso.');";}else{ ?>reemplaza_nota(<?=$vector['idnota']?>);<? } ?>" style="cursor:pointer;" title="Seleccionar curso de verano"><? } ?></td>
                    <td align="left" style="text-indent:15px"><?=$vector['nivel']." - <font style='color:maroon'><b>".$vector['curso'].'</b></font>'?></td>
                    <td align="center" width="50px" style="color:<? if($vector['promedio']<11){echo "red";}else{echo "blue";} ?>"><?=nota_letra($vector['promedio'])?></td>
                    <td align="center" width="90px"><? $tmp = explode("-",$vector['fecreg']); echo $tmp[2]."/".$tmp[1]."/".$tmp[0];?></td>
                    <td align="center" width="90px"><? $tmp = explode("-",$vector['fecini']); echo $tmp[2]."/".$tmp[1]."/".$tmp[0];?></td>
                    <td align="center" width="90px"><? $tmp = explode("-",$vector['fecfin']); echo $tmp[2]."/".$tmp[1]."/".$tmp[0];?></td>
                    <td align="center" width="90px"><? switch($vector['estado']){ case 0: $msg="Completado"; break; case 1: $msg="<b>Activo</b>";break; case 2: $msg="Anulado"; break;} echo $msg; ?></td>
                   </tr>
                  </table>
                 </td>
                </tr>
                <? } if($numero==0){ ?><tr height="35px"><td style="color:#060" align="center">El alumno no tiene iniciado ningun proceso de curso de verano con este curso</td></tr><? } ?>
                <? if ($total_paginas > 1){ ?>
                 <tr height="25px" align="right">
                  <td>
                   <?
                if($pagina-1>0){echo " <a href='principal.php?sis=".$_REQUEST['sis']."&ven=".$_REQUEST['ven']."&pag=".$_REQUEST['pag']."&id=".$_REQUEST['id']."&pagina=".($pagina-1)."$criterio'>Ant</a>&nbsp;";}   
                for ($i=1;$i<=$total_paginas;$i++){if ($i == $pagina){echo "<font color='#666666'><b>$pagina</b></font>&nbsp;";}else{echo "<a href='principal.php?sis=".$_REQUEST['sis']."&ven=".$_REQUEST['ven']."&id=".$_REQUEST['id']."&pag=".$_REQUEST['pag']."&pagina=".$i."$criterio'>".$i."</a>&nbsp;";}}
                if($pagina + 1 <= $total_paginas){echo "&nbsp;<a href='principal.php?sis=".$_REQUEST['sis']."&ven=".$_REQUEST['ven']."&pag=".$_REQUEST['pag']."&id=".$_REQUEST['id']."&pagina=".($pagina+1)."$criterio'>Sig</a>";}  
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

</body>
</html>