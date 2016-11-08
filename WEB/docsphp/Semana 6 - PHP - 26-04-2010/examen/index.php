<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento sin t&iacute;tulo</title><script type="text/javascript" src="../../../semana 6 php/Semana 6 - PHP - 26-04-2010/examen/livevalidation_standalone.compressed.js"></script>
</head>
<body>



<form name="form1" method="post" action="../../../semana 6 php/Semana 6 - PHP - 26-04-2010/examen/enter_it.php">
Codigo : <input type="text" name="codigo" /><br />
Nombre : <input id="f11" type="text" name="nombre" /><br />
<script type="text/javascript">
var f11 = new LiveValidation('f11');
f11.add( Validate.Length, { minimum: 4, maximum: 10 } );
</script> 
Precio : <input type="text" name="precio" /><br />
Stock  : <input type="text" name="stock"  /><br />
<input type="submit" name="submit" value="submit" />
</form> 





</body>
</html>
