<?php
	
	function matriz($num){
		echo "<table border=2 width='90%'>";
		echo "<tr>";
		for($x=1;$x<=$num;$x++){
			echo "<td>$x";
			if(($x%8)==0){
				echo "<tr>";
			}
		}		
		echo "</table>";
	}
	function cliente($nom,$suel,$area){
		switch($area){
			case 1:$dsc=$suel*0.10;break;
			case 2:$dsc=$suel*0.15;break;
			case 3:$dsc=$suel*0.05;break;
		}
		$total=$suel-$dsc;
		echo "El Cliente:$nom<br>Su sueldo: $suel <br>
		El descuento: $dsc <br> El Total es:$total";
		}
?>