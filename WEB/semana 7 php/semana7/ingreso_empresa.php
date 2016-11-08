<html>
<head>
<title>Manejo de archivos</title>
<link rel="stylesheet" href="mm_lodging1.css" type="text/css" />
</head>
<body bgcolor="#999966">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
	<td width="15" nowrap="nowrap"><img src="mm_spacer.gif" alt="" width="15" height="1" border="0" /></td>
	<td height="60" colspan="3" class="logo" nowrap="nowrap"><br />
	  TRABAJO DE ARCHIVOS </td>
	<td width="13">&nbsp;</td>
	<td width="152">&nbsp;</td>
	</tr>

	<tr bgcolor="#ffffff">
	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>

	<tr bgcolor="#a4c2c2">
	<td width="15" nowrap="nowrap">&nbsp;</td>
	<td height="36" colspan="3" id="navigation" class="navText">&nbsp;&nbsp;</td>
	<td width="13">&nbsp;</td>
	<td width="152">&nbsp;</td>
	</tr>

	<tr bgcolor="#ffffff">
	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>

	<tr bgcolor="#ffffff">
	<td colspan="2" valign="top" bgcolor="#a4c2c2"><img src="mm_lodging_image.jpg" alt="Home Page Image" width="230" height="240" border="0" />
	<table border="0" cellspacing="0" cellpadding="0" width="230">
		<tr>
		<td width="15">&nbsp;</td>
		<td width="200" class="sidebarText" id="padding">
		
		Aspectos a tener en cuenta sobre file() son que no es una función apta para archivo binarios (ya que busca un fin de linea como delimitador de cada elemento del array). No precisa de fopen ni fclose
		
		
		<br />
		&nbsp;<br />		</td>
		<td width="15">&nbsp;</td>
		</tr>
	</table>	</td>
	<td width="50" valign="top"><img src="mm_spacer.gif" alt="" width="50" height="1" border="0" /></td>
	<td width="564" valign="top"><br />
	<br />
	<table border="0" cellspacing="0" cellpadding="0" width="560">
		<tr>
		<td class="pageName"><p>INGRESO DE EMPRESAS</p></td>
		</tr>

		<tr>
		<td class="bodyText">
		<p>
		<?php
		//codigo aca.
//grabar datos
if (isset($_REQUEST['grabar']))
{
	$file=fopen("razon_social.dat","a");
	$cadena=$_REQUEST['razon']." - ".$_REQUEST['distrito']."<br>";
	fputs($file,$cadena);
	fclose($file);
	$file=fopen("contador.log","r");
	$contador=fgets($file,10);
	$contador++;
	fclose($file);
	$file=fopen("contador.log","w");
	fputs($file,$contador);
	fclose($file);
	echo "<h3 style='color:red'>Data grabada...</h3>";
}
//formulario
include("distritos.inc");
$file=fopen("contador.log","r");
$contador=fgets($file,10);
fclose($file);
echo "<h2>Empresas ingresadas :  $contador</h2>";
echo "<form name='frm1' action='' method='post'>";
echo"<h2>Razon Social: <input type='text' name='razon' size='40'><br>
Distritos: <select name='distrito'>";
for ($i=0;$i<=12;$i++)
{
	$distrito=distrito($i); //llama a funcion
	echo "<option value='$distrito'>$distrito</option>";
}
echo "</select></h2>";
echo "<br><input type='submit' value='Grabar' name='grabar'><input type='submit' value='Mostrar' name='mostrar'></form>";

// ahora a mostrar
if (isset($_REQUEST['mostrar']))
{
	echo "<h2> Empresas Almacenadas</h2>";
	include("razon_social.dat");
}

		?>
		
		
		</p>

		<br />		</td>
		</tr>
	</table>	</td>
	<td width="13">&nbsp;</td>
	<td width="152">&nbsp;</td>
	</tr>

	<tr bgcolor="#ffffff">
	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>

	<tr>
	<td width="15">&nbsp;</td>
	<td width="215">&nbsp;</td>
	<td width="50">&nbsp;</td>
	<td width="564">&nbsp;</td>
	<td width="13">&nbsp;</td>
	<td width="152">&nbsp;</td>
	</tr>
</table>
</body>
</html>
