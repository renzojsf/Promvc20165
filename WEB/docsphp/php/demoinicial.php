<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript" src="../../docs php/php/jquery.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento sin t&iacute;tulo</title>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	left:129px;
	top:83px;
	width:183px;
	height:128px;
	z-index:1;
	background-color: #0066CC;
}
-->
</style>
</head>

<body>



<div id="apDiv1">
<img src="../img/img1.jpg"</div>
<script type="text/javascript">
$("#apDiv1").click(function(){
	$("#apDiv1").fadeOut("fast");//400
	$("#apDiv1").fadeIn("slow");//600
	$("#apDiv1").slideUp("normal");//500
	$("#apDiv1").slideDown(500);
	$("#apDiv1").animate({ left:429 })
	$("#apDiv1").animate({ left:50 })
	$("#apDiv1").animate({ top:350 })
	$("#apDiv1").animate({ top:30 })
	$("#apDiv1").animate({ top:350, left : 200 })
	$("#apDiv1").animate({ width:400 })
	$("#apDiv1").animate({ height:200 })
	$("#apDiv1").animate({ width:40,height:20 })
})

</script>

</body>
</html>
