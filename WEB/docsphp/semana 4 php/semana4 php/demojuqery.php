<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento sin t&iacute;tulo</title>
<script type="text/javascript" src="jquery.js"></script>
<style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	left:228px;
	top:124px;
	width:158px;
	height:101px;
	z-index:1;
	background-color: #FF0000;
}
-->
</style>
</head>

<body>

<div id="apDiv1"></div>
<script type="text/javascript">
$("#apDiv1").click(function(){
	$("#apDiv1").fadeOut();
	$("#apDiv1").fadeIn();
	$("#apDiv1").slideUp();
	$("#apDiv1").slideDown();
	$("#apDiv1").animate({left:350});
	$("#apDiv1").animate({top:250});
	$("#apDiv1").animate({left:50});
	$("#apDiv1").animate({top:50});
	$("#apDiv1").animate({width:450});
	$("#apDiv1").animate({height:200});
	$("#apDiv1").animate({height:50,width:50});
})
</script>

</body>
</html>
