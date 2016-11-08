<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento sin t&iacute;tulo</title>
</head>
<body>

<div id="d_reloj">
</div>
<script type="text/javascript">
function f_reloj(){
	var fecha = new Date();
	var h = fecha.getHours();
	var m = fecha.getMinutes();
	var s = fecha.getSeconds();
	var hora = h + ":" + m + ":" + s;
	document.getElementById("d_reloj").innerHTML = hora;
	setTimeout("f_reloj()",1000);
}
f_reloj();
</script>

</body>
</html>
