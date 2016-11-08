<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento sin t&iacute;tulo</title>
<script type="text/javascript" src="jquery.js"></script>
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
        <span id="sp_usu"></span>
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
	
	
	var pass = $('#txt_pass').val();
	//debes tener a jquery!!!
	pass = $.trim(pass);
	$('#txt_pass').val(pass);
	if(pass == "" ){
		$('#txt_pass').attr('class','mal');
	}else{
		$('#txt_pass').attr('class','bien');
	}
	
	var pass2 = $('#txt_pass2').val();
	//debes tener a jquery!!!
	pass2 = $.trim(pass2);
	$('#txt_pass2').val(pass2);
	if(pass2 == "" ){
		$('#txt_pass2').attr('class','mal');
	}else{
		$('#txt_pass2').attr('class','bien');
	}

	if(  pass != pass2  ){
		alert(4)
		$('#txt_pass2').attr('class','mal');
	}
	
	//validar longitud de cadena
	/*
	if( usu.lenght < 4  && usu.lenght > 20  ){
		alert(5)
		$('#txt_nom_usu').attr('class','mal');
	}
	*/
	$('#sp_usu').html('<img src="loading.gif" />')
	$('#sp_usu').load(
		"validar_nombre.php",
		{
			usu : usu
		}
	);
	
	document.frm_registro.submit();
	
})
</script>
</body>
</html>
