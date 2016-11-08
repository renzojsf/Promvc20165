<?php
session_start();
?>

<table width="100%" border="1">
  <tr>
    <td>Nombre</td>
    <td>Precio</td>
    <td>Cantidad</td>
    <td>Total</td>
    <td>Opciones</td>
  </tr>
  <?php
  foreach( $_SESSION['nom'] as $i => $v  ){
  	//2 no mostrar los vacios
  	if( $v == '' ) continue;
	//break
  ?>
  <tr>
    <td><?php echo $_SESSION['nom'][$i] ?></td>
    <td><?php echo $_SESSION['precio'][$i] ?></td>
    <td><?php echo $_SESSION['canti'][$i] ?></td>
    <td><?php echo $_SESSION['pt'][$i] ?></td>
    <td>
    	<a href="#" class="a">Aumentar</a>
        <a href="#" class="d">Disminuir</a>
        <a href="#" class="e">Eliminar</a>
    </td>
  </tr>
  <?php
  }
  ?>
</table>
<script type="text/javascript">
$('.d').click(function(){
	var nom = $(this).parent().prev().prev().prev().prev().html();
	var can =  $(this).parent().prev().prev().html();
	
	if(can == 1){
		pag = 'carrito_eliminar.php';
		$(this).parent().parent().fadeOut();
	}else{
		pag = 'carrito_disminuir.php';
		can = can - 1;
		$(this).parent().prev().prev().html( can );
		precio = $(this).parent().prev().prev().prev().html();
		pt = can * precio;
		$(this).parent().prev().html( pt );
		
	}
	
	$.post(
		pag,
		{
			nom:nom
		}
	)
	
})

$('.e').click(function(){
	//saber que producto debo eliminar
	var nom = $(this).parent().prev().prev().prev().prev().html();
	$.post(
		"carrito_eliminar.php",
		{
			nom:nom
		}
	)
	$(this).parent().parent().fadeOut();
})
</script>
