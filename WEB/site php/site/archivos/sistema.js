function enfoque(control)
{
	var ctr = document.getElementById(control);
	ctr.focus();
}

function checkState(formulario,marcado)
{
	var numero = formulario.elements.length;
	for(var i=0;i<numero;i++)
	{
		if(formulario.elements[i].type=='checkbox')
		{
			formulario.elements[i].checked=marcado;
		}
	}
}

function marcacheck(id_check,formulario)
{
	checkState(formulario,false);
	var _ck = document.getElementById(id_check);
	var estado = true;
	if(_ck.checked==true){estado=false;}
	$('#'+id_check).attr("checked",estado);
}

function retornaEstado(formulario)
{
	var numero = formulario.elements.length;
	for(var i=0;i<numero;i++)
	{
		if(formulario.elements[i].type=='checkbox' && formulario.elements[i].checked==true)
		{
			return 1;
		}
	}
	return 0;
}

function packudp(formulario,url)
{
	if(retornaEstado(formulario)==1)
	{
		document.location.href = url;
	}
	else{alert('No hay ningun elemento seleccionada.');}
}

function abrir(url,wid,hei)
{
	if(wid==0 && hei==0)
	{
		wid = screen.width ;
		hei = screen.heigh;
	}
	var x = (screen.width - wid)/2;
	var y = (screen.height - hei)/2;
	window.open(url,'','top='+y+'px,left='+x+'px,width='+wid+'px,height='+hei+'px');
}

function busqueda(formulario)
{
	var numero = formulario.elements.length;
	for(var i=0;i<numero;i++)
	{
		if(formulario.elements[i].type=='text' && formulario.elements[i].name=='criteria' && formulario.elements[i].value.length>0)
		{
			formulario.submit();
			break;
		}
	}
}

//empieza validacion

function validaFormulario(frm,msg)
{
	var obj = null;
	var atr = null;
	var est = true;
	var tam = frm.elements.length;
	for(var i=0;i<tam;i++)
	{
		obj = frm.elements[i];
		atr = obj.getAttribute('accesskey');
		if(atr != null && obj.disabled==false)
		{
			est = modoValida(obj);
			if(est==false){return false;}
		}
	}
	if(est==true)
	{
		if(confirm(msg)){frm.submit();}
	}
}

function modoValida(obj)
{
	var est = true;
	var atr = obj.getAttribute('accesskey').split("=");
	var tam = atr.length;
	for(var i=0;i<tam;i++)
	{
		tmp = atr[i].split(":");
		switch(tmp[0])
		{
			case "requerido": est = requerudiFunc(obj); break; //el control no puede estar vacio
			case "tamanioen": est = tamanioinFunc(obj,tmp[1]); break; //el control debe tener el tamaño indicado
			case "valifecha": est = valifechaFunc(obj); break; //el control debe tener una fecha valida
			case "mayorquee": est = fechanomayorq(obj,tmp[1]); break; //el control debe tener una fecha valida
			case "menorquee": est = fechanomenorq(obj,tmp[1]); break; //el control debe tener una fecha valida
		}
		if(est==false){ break; }
	}
	return est;
}

function fechanomenorq(obj,txt)
{
	var est = true;
	var fec = obj.value.split("/");
	var ani = parseInt(fec[2]);
	var mni = parseInt(txt);
	if(ani > mni)
	{
		//alert('El año en la fecha debe ser menor a ' + txt);
		obj.value='';
		obj.focus();
		est = false;
	}
	return est;
}

function fechanomayorq(obj,txt)
{
	var est = true;
	var fec = obj.value.split("/");
	var ani = parseInt(fec[2]);
	var mxa = parseInt(txt);
	if(ani < mxa)
	{
		//alert('El año en la fecha debe ser mayor a ' + txt);
		obj.value='';
		obj.focus();
		est = false;
	}
	return est;
}

function requerudiFunc(obj)
{
	var esc = obj.value.length;
	if(esc==0)
	{
		obj.focus();
		return false;
	}
	return true;
}

function tamanioinFunc(obj,tam)
{
	var esc = obj.value.length;
	if(esc != tam)
	{
		obj.focus();
		return false;
	}
	return true;
}

function valifechaFunc(obj)
{
	var fec = obj.value.split("/");
	var dia = fec[0]; var mes = fec[1];	var ano = fec[2]; var estado = false;
	if((dia.length == 2) && (mes.length == 2) && (ano.length == 4))
	{
		if((parseInt(mes,10) >= 1) && (parseInt(mes,10) <= 12))
		{
			switch(parseInt(mes,10))
			{
				case 1:  dmax = 31; break;
				case 2:  if (ano % 4 == 0) dmax = 29; else dmax = 28; break;
				case 3:  dmax = 31; break;
				case 4:  dmax = 30; break;
				case 5:  dmax = 31; break;
				case 6:  dmax = 30; break;
				case 7:  dmax = 31; break;
				case 8:  dmax = 31; break;
				case 9:  dmax = 30; break;
				case 10: dmax = 31; break;
				case 11: dmax = 30; break;
				case 12: dmax = 31; break;
			}
			
			if ((dia >= 1) && (dia <= dmax))
			{
				estado=true;
			}
		}
	}
	if(estado==false)
	{
		//alert('Ingrese una fecha valida');
		obj.value="";
		obj.focus();
	}
	return estado;
}