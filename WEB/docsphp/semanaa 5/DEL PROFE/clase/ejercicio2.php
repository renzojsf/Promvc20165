<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Restaurante - Texto</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_restaurant1.css" type="text/css" />
</head>
<body bgcolor="#0066cc">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr bgcolor="#99ccff">
	<td width="15" nowrap="nowrap">&nbsp;</td>
	<td width="745" height="60" colspan="3" class="logo" nowrap="nowrap"><br />
	TRABAJO DE INCLUDES <span class="tagline"></span></td>
	<td width="100%">&nbsp;</td>
	</tr>

	<tr bgcolor="#003399">
	<td width="15" nowrap="nowrap">&nbsp;</td>
	<td height="36" colspan="3" id="navigation" nowrap="nowrap" class="navText"><a href="javascript:;">INICIO</a></td>
	<td>&nbsp;</td>
	</tr>

	<tr bgcolor="#ffffff">
	<td width="15" valign="top"><img src="mm_spacer.gif" alt="" width="15" height="1" border="0" /></td>
	<td width="140" valign="top"><img src="mm_spacer.gif" alt="" width="140" height="1" border="0" /></td>
	<td width="505" valign="top"><br />
	<table border="0" cellspacing="0" cellpadding="2" width="440">
		<tr>
		<td class="pageName">DESARROLLE</td>
		</tr>

		<tr>
		<td class="bodyText">
		<p>
		<?php
// CODIGO ACA
$numero=$_REQUEST['numero'];
echo "<form name='frm' action='' method='post'>";
echo "<h2>INGRESE VALOR NUMERICO:
<input type='text' name='numero' value='$numero'></h2>";
echo "<h2>Seleccione: </h2>";
echo "<h2>Factorial <input type='radio' name='op' value='F' checked></h2>";
echo "<h2>Divisores <input type='radio' name='op' value='D'></h2>";
echo "<input type='submit' value='Enviar' name='boton'></form>";

$boton=$_REQUEST['boton'];
$numero=$_REQUEST['numero'];
$op=$_REQUEST['op'];
if (isset($boton))
{
	if ($op=='F'){
		include("factorial.inc.php");
	}
	else
	{
		include("divisores.inc.php");
	}
}
?>
		
		
		
		
		&nbsp;</p>

		<br /></td>
		</tr>
	</table>
	�<br />
	&nbsp;<br />	</td>
	<td valign="top">&nbsp;</td>
	<td width="100%">&nbsp;</td>
	</tr>

	<tr>
	<td width="15">&nbsp;</td>
    <td width="140">&nbsp;</td>
    <td width="505">&nbsp;</td>
    <td width="100">&nbsp;</td>
    <td width="100%">&nbsp;</td>
  </tr>
</table>
</body>
</html>
