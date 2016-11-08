<? 
session_cache_limiter('nocache');
session_start(); 
if(!(isset($_SESSION['idusuario']))){ 
header("location:index.php");
}
include("conexion.php"); 
include("funcion.php");
$con = new conexion();
?>
<html>
<head>
<title>Fabio Xammar - Intranet</title>
<link rel="stylesheet" type="text/css" href="archivos/estilo.css">
<style>html,body{height:100%}a{text-decoration:none;color:#295886;font-family:verdana;font-size:12px}</style>
<link rel="shortcut icon" href="img/colegio.png" type="image/x-icon" />
<script language="JavaScript" type="text/javascript" src="archivos/sistema.js"></script>
<script type="text/javascript" src="archivos/jquery/jquery.js"></script>
<script type="text/javascript" src="archivos/jquery/maskedinput.js"></script>
<script type="text/javascript" src="archivos/jquery/alphanumeric.js"></script>
<script> $(document).ready(function(){ });</script>
</head>
<body onLoad="enfoque('usr');" marginheight="0" marginwidth="0">

<table border="0" width="100%" height="100%" cellpadding="0" cellspacing="0">
 <tr height="50px"><td valign="top"><? include("cabecera.php"); ?></td></tr>
 <tr height="30px"><td style="border-top:solid 1px #84a9c6;border-bottom:solid 1px #84a9c6;background-color:#a0d3ff"><? include("menu.php"); ?></td></tr>
 <tr>
  <td valign="top">
   <table border="0" width="990px" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px;color:#455471" align="center">
    <tr height="20px"><td>&nbsp;</td></tr>
    <tr>
     <td>
      <table border="0" width="990px" align="center" cellpadding="0" cellspacing="0">
       <tr>
        <td width="220px" align="center" valign="top"><? include("seleccion.php"); ?></td>
        <td valign="top" align="center">
	<?
	if(isset($_REQUEST['pag'])) {
		$con = new conexion();
		$consulta = "call sp_valida_acceso('".$_SESSION['idusuario']."',".$_REQUEST['pag'].");";
		$respuesta = $con->consulta($consulta);
		while($vector = mysqli_fetch_array($respuesta)) {
			if($vector['estado']=='1'){
				$con = new conexion();
				$consulta = "call sp_detalle_pagina(".$_REQUEST['pag'].");";
				$respuesta = $con->consulta($consulta);
				while($vector = mysqli_fetch_array($respuesta)){
					include($vector['url']); break;
				}
			}
			else{
				echo "<center><font style='font-size:12px;font-family:verdana;'>Usted no tiene permiso para ingresar a esta pagina</font><center>";
			}
			break;
		}
	}
	else{
		include("noticias.php");
	}
	?>
	</td>
       </tr>
      </table>
     </td>
    </tr>
   </table>
   <br>
  </td>
 </tr>
</table>

</body>
</html>