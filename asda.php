<html>
 
<head>
 
<title>Ejemplo sencillo de AJAX</title>
 
<script type="text/javascript" src="Vista/js/jquery-3.1.1.js"></script>
 
<script>
function realizaProceso(valorCaja1, valorCaja2){
        var parametros = {
                "valorCaja1" : valorCaja1,
                "valorCaja2" : valorCaja2
        };
        $.ajax({
                data:  parametros,
                url:   'o.php',
                type:  'post',
                beforeSend: function () {
                        $("#resultado").html("Procesando, espere por favor...");
                },
                success:  function (response) {
                        $("#resultado").html(response);
                }
        });
}
</script>
 
</head>
 
<body>
 
Introduce valor 1
 
<input type="text" name="caja_texto" id="valor1" value="0"/> 
 
 
Introduce valor 2
 
<input type="text" name="caja_texto" id="valor2" value="0"/>
 
Realiza suma
 
<input type="button" href="javascript:;" onclick="realizaProceso($('#valor1').val(), $('#valor2').val());return false;" value="Calcula"/>
 
<br/>
 
Resultado: <div id="resultado">0</div>
 
</body>
 
</html>