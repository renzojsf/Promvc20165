<table border="0" width="990px" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px;color:#455471" align="center">
 <tr height="25px">
  <td valign="middle" width="60px"><img src="img/logo_intra.png"></td>
  <td width="150px">
   <table border="0" width="100%" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px;color:#455471" align="center">
    <tr height="15px"><td style="font-size:14px"><b>San Pablo</b></td></tr>
    <tr><td style="width:350px;color:#000000; font-size:12px"><b>Intranet</b></td></tr>
   </table>
  </td>
  <td>
   <table border="0" width="100%" cellpadding="0" cellspacing="0" style="font-family:verdana;font-size:12px;color:#455471" align="center">
    <tr><td style="width:350px" align="right">Bienvenid<? if($_SESSION['sexo']=='1'){echo "o";}else{echo "a";} ?> : <?=$_SESSION['personal']?>&nbsp;</td></tr>
    <tr height="15px"><td style="width:350px;text-indent:20px" align="right">A ingresado como <?=$_SESSION['cargo']?>.&nbsp;</td></tr>
   </table>
  </td>
 </tr>
</table>