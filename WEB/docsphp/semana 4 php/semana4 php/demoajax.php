<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="jquery.js"></script>
<title>Documento sin t&iacute;tulo</title>
</head>

<body>
<table width="100%" border="1">
  <tr>
    <td id="td_1">Pagina1</td>
    <td id="td_2">Pagina2</td>
    <td id="td_3">Pagina3</td>
  </tr>
</table>

<div id="d_web" style="background-color:#FFCC33">
aca apareceran las nuevas paginas
</div>

<script type="text/javascript">
$("#td_1").click(function(){
	$("#d_web").load(
		"pagina1.php"
	)
})

$("#td_2").click(function(){
	$("#d_web").slideUp(function(){
		$("#d_web").load(
			"pagina2.php",
			function(){
				$("#d_web").slideDown();
			}
		)
	})
	
	
})

$("#td_3").click(function(){
	$("#d_web").slideUp(function(){
		$("#d_web").load(
			"pagina3.php",
			function(){
				$("#d_web").slideDown();
			}
		)
	})
	
	
})
</script>

</body>

</html>
