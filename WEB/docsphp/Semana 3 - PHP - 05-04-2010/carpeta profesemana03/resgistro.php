<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento sin t&iacute;tulo</title>
<script type="text/javascript" src="../../../semana 3 php/Semana 3 - PHP - 05-04-2010/carpeta profesemana03/jquery.js"></script>
<style type="text/css">
.bien{
	background-color:#99CCFF;
	border:1px solid #00FF00;
}

.mal{
	background-color:#FFCCCC;
	border:1px solid #FF0000;
}
</style>
</head>

<body>
<form id="form1" name="form1" method="POST" action="">
  <table width="100%" border="1">
    <tr>
      <td>Nombre Usuario</td>
      <td>
        <input type="text" name="txt_nom_usu" id="txt_nom_usu" />
      </td>
    </tr>
    <tr>
      <td>Contraseña</td>
      <td>
        <input type="text" name="txt_pass" id="txt_pass" />
      </td>
    </tr>
    <tr>
      <td>Repita Contraseña</td>
      <td>
        <input type="text" name="txt_pass2" id="txt_pass2" />
      </td>
    </tr>
    <tr>
      <td>Nombre</td>
      <td>
        <input type="text" name="txt_nom" id="txt_nom" />
      </td>
    </tr>
    <tr>
      <td>Apellido</td>
      <td>
        <input type="text" name="txt_ape" id="txt_ape" />
      </td>
    </tr>
    <tr>
      <td>DNI</td>
      <td>
        <input type="text" name="txt_dni" id="txt_dni" />
      </td>
    </tr>
    <tr>
      <td>Fecha de Nacimiento</td>
      <td><input type="text" name="txt_fn" id="txt_fn" /></td>
    </tr>
  </table>
  <input type="button" name="btn_reg" id="btn_reg" value="Enviar" />
  
  <input type="hidden" name="MM_insert" value="form1" />
</form>
<script type="text/javascript">
$('#btn_reg').click(function(){
	var usu = $('#txt_nom_usu').val();
	//debes tener a jquery!!!
	usu = $.trim(usu);
	$('#txt_nom_usu').val(usu);
	if(usu == "" ){
		$('#txt_nom_usu').attr('class','mal');
	}else{
		$('#txt_nom_usu').attr('class','bien');
	}
})
</script>
</body>
</html>
