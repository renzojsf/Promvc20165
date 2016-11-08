<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento sin t&iacute;tulo</title>
</head>

Color:
<FORM ACTION="" METHOD="POST">

<SELECT NAME="color">
<OPTION VALUE="rojo" SELECTED>Rojo
<OPTION VALUE="verde">Verde
<OPTION VALUE="azul">Azul
</SELECT>
<INPUT TYPE="submit" NAME="enviar" VALUE="Enviar datos">
Idiomas:
<SELECT MULTIPLE SIZE="3" NAME="idiomas[]">
<OPTION VALUE="ingles" SELECTED>Inglés
<OPTION VALUE="frances">Francés
<OPTION VALUE="aleman">Alemán
<OPTION VALUE="holandes">Holandés
</SELECT>
Comentario:
<TEXTAREA COLS="50" ROWS="4" NAME="comentario">
Este libro me parece ...
</TEXTAREA>
</FORM>
<body>
</body>

</html>
<?PHP
$color = $_REQUEST['color'];
print ($color);
echo"<br><br><th><tr>";
$idiomas = $_REQUEST['idiomas'];
$n = count ($idiomas);
for ($i=0; $i<$n; $i++)
print ("$idiomas[$i]<BR>\n");
//foreach ($idiomas as $idioma)
//print (“$idioma<BR>\n”);
echo"<br><br><th><tr>";
$comentario = $_REQUEST['comentario'];
print ($comentario);
?>