<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento sin t&iacute;tulo</title>
<script type="text/javascript" src="jquery.js"></script>
<style type="text/css">
.mal{
	background-color:#FF99CC;
	border: 2px solid #FF0000;
}
</style>
</head>

<body>

<form id="frm" name="frm_crear" method="post" action="crear_usuario.php">
  <table width="100%" border="1">
    <tr>
      <td>Nombre de usuario</td>
      <td>
        <input type="text" name="txt_usu" id="txt_usu" /> 
        <span id="sp_usu"></span>     </td>
    </tr>
    <tr>
      <td>Contraseña</td>
      <td>
        <input type="text" name="txt_pass1" id="txt_pass1" />      </td>
    </tr>
    <tr>
      <td>Repita contraseña</td>
      <td>
        <input type="text" name="txt_pass2" id="txt_pass2" />      </td>
    </tr>
    <tr>
      <td>Nombre</td>
      <td>
        <input type="text" name="txt_nom" id="txt_nom" />      </td>
    </tr>
    <tr>
      <td>Apellido</td>
      <td>
        <input type="text" name="txt_ape" id="txt_ape" />      </td>
    </tr>
    <tr>
      <td>Direccion</td>
      <td>
        <input type="text" name="txt_dir" id="txt_dir" />      </td>
    </tr>
    <tr>
      <td>Fecha de nacimiento</td>
      <td>
      <select name="cbo_ano" id="cbo_ano">
            <option value="0">A&ntilde;o</option>
            <?php
            for(  $i=1930 ; $i<2010;$i++  ){
				?>
				<option value="<?php echo $i ?>"><?php echo $i ?></option>
				<?php
			}
			?>
      </select>
        <select name="cbo_mes" id="cbo_mes">
        	<option value="0">Mes</option>
            <?php
            for(  $i=1 ; $i<13;$i++  ){
				?>
				<option value="<?php echo $i ?>"><?php echo $i ?></option>
				<?php
			}
			?>
        </select>
        <select name="cbo_dia" id="cbo_dia">
        	<option value="0">D&iacute;a</option>
            <?php
            for(  $i=1 ; $i<32;$i++  ){
				?>
				<option value="<?php echo $i ?>"><?php echo $i ?></option>
				<?php
			}
			?>
        </select>      </td>
    </tr>
  </table>
  <input type="button" name="btn_crear" id="btn_crear" value="Enviar" />
</form>
<script type="text/javascript">
$("#btn_crear").click(function(){
	var error = false;


	$("#txt_usu,#txt_pass1,#txt_pass2,#txt_nom,#txt_ape,#txt_dir,#cbo_ano,#cbo_mes,#cbo_dia").removeAttr('class');
	
	
	var usu = $("#txt_usu").val();
	usu = $.trim(usu);
	if(usu == '' ){
		$("#txt_usu").attr("class",'mal');
		error=true;
	}
	
	var pass1 = $("#txt_pass1").val();
	pass1 = $.trim(pass1);
	if(pass1 == '' ){
		$("#txt_pass1").attr("class",'mal');
		error=true;
	}
	
	
	var pass2 = $("#txt_pass2").val();
	pass2 = $.trim(pass2);
	if(pass2 == '' ){
		$("#txt_pass2").attr("class",'mal');
		error=true;
	}
	
	if(pass1 != pass2){
		$("#txt_pass2").attr("class",'mal');
		error=true;
	}
	
	var nom = $("#txt_nom").val();
	nom = $.trim(nom);
	if(nom == '' ){
		$("#txt_nom").attr("class",'mal');
		error=true;
	}
	
	var ape = $("#txt_ape").val();
	ape= $.trim(ape);
	if(ape == '' ){
		$("#txt_ape").attr("class",'mal');
		error=true;
	}
	
	var dir = $("#txt_dir").val();
	dir = $.trim(dir);
	if(dir == '' ){
		$("#txt_dir").attr("class",'mal');
		error=true;
	}
	
	var ano = $("#cbo_ano").val();
	if(ano == 0 ){
		$("#cbo_ano").attr("class",'mal');
		error=true;
	}	
	
	var mes = $("#cbo_mes").val();
	if(mes == 0 ){
		$("#cbo_mes").attr("class",'mal');
		error=true;
	}
	
	var dia = $("#cbo_dia").val();
	if(dia == 0 ){
		$("#cbo_dia").attr("class",'mal');
		error=true;
	}			
	
	$('#sp_usu').html('<img src="load.gif" />');
	$('#sp_usu').load(
		"validar_usuario.php",
		{//parametros de envio a otra web POST
			usu : usu
		},
		function(){
			var res = $('#sp_usu').html();
			if(res == '0' ){
				$('#sp_usu').html('<span style="color:#FF0000">No Disponible</span>');
				error=true;
			}
			
			if(error == false){
				//crear el usuario
				document.frm_crear.submit();
			}
			
		}
	)
	
})
</script>
</body>
</html>
