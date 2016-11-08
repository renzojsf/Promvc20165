   <table border="0" cellpadding="0" cellspacing="0" align="center">
    <tr height="30px">
     <?
     $consulta = "call sp_menu_usuario(".$_SESSION['idusuario'].");";
     $respuesta = $con->consulta($consulta);
     $numero = mysqli_num_rows($respuesta);
     $contad = 1;
     while($vector = mysqli_fetch_array($respuesta)){
     ?>
     <td class="botonMenu1" <? if($contad==$numero){echo "style='border-right:solid 1px #7aa9d3'";} ?>><table border="0" width="100%" cellpadding="0" cellspacing="0"><tr height="30px"><td class="botonMenu2" <? if($_REQUEST['sis']==$vector['idsistema']){ echo "style='background-color: #FFFFFF'";} ?> onmouseover="javascript:this.bgColor='#E1E1E1';" onmouseout="javascript:this.bgColor='#a0d3ff';" onclick="javascript:document.location.href='principal.php?sis=<?=$vector['idsistema']?>';" title="<?=$vector['abrev']?>"><?=$vector['sistema']?></td></tr></table></td>
     <? $contad++;} ?>
    </tr>
   </table>