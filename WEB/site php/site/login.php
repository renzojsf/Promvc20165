<? ob_start(); ?>
<html>
<head>
<title>Ptincipal sistema</title>
<link rel="stylesheet" type="text/css" href="archivos/estilo.css">
<style>
html,body{height:100%}
.txt{border:solid 1px #9a9a9a;text-indent:10px;font-family:verdana;font-size:12px}
</style>
<script language="JavaScript" type="text/javascript" src="archivos/sistema.js"></script>
<script>
function Gabrir(url,wid,hei)
{
	abrir(url,wid,hei);
	self.close();
}
</script>
</head>
<body>

<?
include_once("conexion.php");
$con = new conexion();

$usuario = $_POST['usr'];
$clave = md5($_POST['pwd']);

$consulta = "call sp_ingreso_login('$usuario','$clave');";
$respuesta = $con->consulta($consulta);

if(mysqli_num_rows($respuesta)==1) {
	while($vector = mysqli_fetch_array($respuesta)) {
		session_start();
		$_SESSION['idusuario']	=	$vector['idusuario'];
		$_SESSION['idpersonal']	=	$vector['idpersonal'];
		$_SESSION['idcargo']	=	$vector['idcargo'];
		$_SESSION['cargo']	    =	$vector['cargo'];
		$_SESSION['usuario']	=	$vector['usuario'];
		$_SESSION['personal']	=	$vector['personal'];
		$_SESSION['sexo']	    =	$vector['sexo'];

		$con = new conexion();
		$consulta_ = "call sp_menu_usuario(".$_SESSION['idusuario'].");";
		$respuesta_ = $con->consulta($consulta_);
		while($vector_ = mysqli_fetch_array($respuesta_)) {
			$url = "principal.php?sis=".$vector_['idsistema'];
			header("Location: $url");
			?>
            <a href="#" onClick="Gabrir('<?=$url?>',0,0);">Ingresar</a><?
			break;
		}
	}
}
else {
	$url = "index.php?err=1";
	header("Location: $url");
}
?>
</body>
</html>
<? ob_flush(); ?>