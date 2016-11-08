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
      <td>Codigo</td>
      <td>
        <input type="text" name="txt_codigo" id="txt_codigo" />
        <span id="sp_cod"></span>
      </td>
    </tr>
    <tr>
      <td>Nombre</td>
      <td>
        <input type="text" name="txt_nom" id="txt_nom" />
        <span id="sp_nom"></span>
      </td>
    </tr>
    <tr>
      <td>Precio</td>
      <td>
        <input type="text" name="txt_pre" id="txt_pre" />
      </td>
    </tr>
    <tr>
      <td>Stock</td>
      <td>
        <input type="text" name="txt_stock" id="txt_stock" />
      </td>
    </tr>
    
  </table>
  <input type="button" name="btn_reg" id="btn_reg" value="Enviar" />
  
  <input type="hidden" name="MM_insert" value="form1" />
</form>
<script type="text/javascript">
$('#btn_reg').click(function(){
	var cod = $('#txt_codigo').val();
	//debes tener a jquery!!!
	cod = $.trim(cod);
	$('#txt_codigo').val(cod);
	if(cod == "" ){
		$('#txt_codigo').attr('class','mal');
	}else{
		$('#txt_codigo').attr('class','bien');
	}
	
	
	var nom = $('#txt_nom').val();
	//debes tener a jquery!!!
	nom = $.trim(nom);
	$('#txt_nom').val(nom);
	if(nom == "" ){
		$('#txt_nom').attr('class','mal');
	}else{
		$('#txt_nom').attr('class','bien');
	}
	
	var pre = $('#txt_pre').val();
	//debes tener a jquery!!!
	pre = $.trim(pre);
	$('#txt_pre').val(pre);
	if(pre == "" ){
		$('#txt_pre').attr('class','mal');
	}else{
		$('#txt_pre').attr('class','bien');
	}
	
	var stock = $('#txt_stock').val();
	//debes tener a jquery!!!
	stock = $.trim(stock);
	$('#txt_stock').val(stock);
	if(stock == "" ){
		$('#txt_stock').attr('class','mal');
	}else{
		$('#txt_stock').attr('class','bien');
	}

/* 	if(  nom != pre  ){
		alert(4)
		$('#txt_nom').attr('class','mal');
	} */
	
	//validar longitud de cadena
	
	if( nom.length < 5){
		alert(5)
		$('#txt_nom').attr('class','mal');
	} 
	
	
	if( nom.length > 12){
	alert(12)
	$('#txt_nom').attr('class','mal');
	} 
	
	
 	$('#sp_cod').html('<img src="loading.gif" />')
	$('#sp_cod').load(
		"validar_producto.php",
		{
			cod : cod
		}
	);
	
	
	$('#sp_nom').html('<img src="loading.gif" />')
	$('#sp_nom').load(
		"validar_producto.php",
		{
			nom : nom
		}
	);
	
/* 	document.frm_registro.submit(); */
	
})
</script>
</body>
</html>
