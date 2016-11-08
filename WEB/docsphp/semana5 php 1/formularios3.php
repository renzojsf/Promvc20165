<HTML>
 <HEAD>
   <TITLE>Formularios</TITLE>
 </HEAD>
 <BODY>
   <CENTER>
   <H2>Formulario y Respuesta</H2>
     <?php
     //aca va el codigo1
	 
	 
?>
     <FORM METHOD="POST">
        <TABLE>
          <TR>
            <TD ALIGN="LEFT">Modelo:</TD>
            <TD ALIGN="RIGHT" COLSPAN="3"><INPUT TYPE="TEXT" NAME="coche[modelo]" SIZE=25"></TD>
          </TR>
          <TR>
            <TD ALIGN="LEFT">Marca:</TD>
            <TD ALIGN="RIGHT" COLSPAN="3"><INPUT TYPE="TEXT" NAME="coche[marca]" SIZE=25"></TD>
          </TR>
          <TR ALIGN="LEFT">
            <TD>Motor:</TD>
            <TD><INPUT TYPE="TEXT" NAME="coche[motor]" SIZE="5"></TD>
            <TD>Cilindrada:</TD>
            <TD><INPUT TYPE="TEXT" NAME="coche[cc]" SIZE="5"></TD>
          </TR>
          <TR>
            <TD ALIGN="LEFT">Combustible:</TD>
            <TD ALIGN="RIGHT" COLSPAN="3">
               <INPUT TYPE="RADIO" NAME="coche[combustible]" VALUE="gasolina" CHECKED>Gasolina
               <INPUT TYPE="RADIO" NAME="coche[combustible]" VALUE="diesel">Diesel
            </TD>
          </TR>
          <TR>
            <TD ALIGN="LEFT">Opciones:</TD>
            <TD ALIGN="RIGHT" COLSPAN="3">
               <SELECT MULTIPLE NAME="opciones[]">
                  <OPTION VALUE="AA">Aire Acondicionado</OPTION>
                  <OPTION VALUE="CD">Radio CD</OPTION>
                  <OPTION VALUE="CA">Climatizador</OPTION>
                  <OPTION VALUE="SN">Sistema de Navegación</OPTION>
               </SELECT>
            </TD>
          </TR>
        </TABLE><HR><BR>
        <INPUT TYPE="SUBMIT" NAME="enviado"> <INPUT TYPE="RESET">
     </FORM>
     <?php
       //aca va el codigo2



     ?>
   </CENTER>
 </BODY>
</HTML>
