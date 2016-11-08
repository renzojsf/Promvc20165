drop procedure if exists sp_lista_documento_ingreso//
create procedure sp_lista_documento_ingreso(ndoc_ varchar(100),inicio tinyint,cantidad tinyint)
begin
	SET @doc = concat('%',ndoc_,'%');
	SET @ini = inicio;
	SET @lmt = cantidad; 
	if cantidad = 0 then
		prepare stmt from "select d.iddocumento,concat(p.apellidos,', ',p.nombres) as personal,d.ndocumento,d.monto,d.fecpago,d.estado,c.concepto from cuota c inner join documento d on c.idcuota=d.idcuota inner join usuario u on u.idusuario=d.idusuario inner join personal p on p.idpersonal=u.idpersonal where ndocumento like ?";
		execute stmt using @doc;
	else
		prepare stmt from "select d.iddocumento,concat(p.apellidos,', ',p.nombres) as personal,d.ndocumento,d.monto,d.fecpago,d.estado,c.concepto from cuota c inner join documento d on c.idcuota=d.idcuota inner join usuario u on u.idusuario=d.idusuario inner join personal p on p.idpersonal=u.idpersonal where ndocumento like ? limit ?,?";
		execute stmt using @doc,@ini,@lmt;
	end if;
end //

drop procedure if exists sp_notas_alumno_generales //
create procedure sp_notas_alumno_generales(id_alumno int,id_grupo int)
begin
	select cu.curso,n.promedio from proceso p inner join nota n on p.idproceso=n.idproceso inner join horario h on h.idhorario=n.idhorario inner join grupo g on h.idgrupo=g.idgrupo inner join carga_curricula cc on cc.idcarga=h.idcarga inner join curso cu on cu.idcurso=cc.idcurso where p.idalumno=id_alumno and g.idgrupo=id_grupo;
end //

drop procedure if exists sp_procesos_finalizados_correctos //
create procedure sp_procesos_finalizados_correctos(id_alumno int)
begin
	select g.idgrupo,g.fecini,g.fecfin,concat(gr.grado,' ',ni.nivel) as nivel from proceso p inner join nota n on p.idproceso=n.idproceso inner join horario h on h.idhorario=n.idhorario inner join grupo g on h.idgrupo=g.idgrupo inner join carga_curricula cc on cc.idcarga=h.idcarga inner join curricula cu on cu.idcurricula=cc.idcurricula inner join grado gr on gr.idgrado=cu.idgrado inner join nivel ni on ni.idnivel=gr.idnivel  where p.idalumno=id_alumno and p.estado='0' and p.promovido='1' group by cu.idgrado;
end //

drop procedure if exists sp_recupera_ultimo_boleta //
create procedure sp_recupera_ultimo_boleta()
begin
	select ndocumento from documento order by ndocumento desc limit 0,1;
end //

drop procedure if exists sp_imprimo_boleta //
create procedure sp_imprimo_boleta(id_boleta int)
begin
	select d.ndocumento,a.direccion,d.monto,month(d.fecpago) as mes,c.concepto,c.matricula,d.fecpago,concat(a.apepaterno,' ',a.apematerno,', ',a.nombres) as alumno from documento d inner join cuota c on d.idcuota=c.idcuota inner join proceso p on p.idproceso=c.idproceso inner join alumno a on a.idalumno=p.idalumno where d.iddocumento=id_boleta;
end //

drop procedure if exists sp_muestra_nota_alumno //
create procedure sp_muestra_nota_alumno(id_alumno int,id_curso int,id_grupo int)
begin
	select n.promedio from carga_curricula cc inner join horario h on cc.idcarga=h.idcarga inner join nota n on h.idhorario=n.idhorario inner join proceso p on p.idproceso=n.idproceso where cc.idcurso=id_curso and h.idgrupo=id_grupo and p.idalumno=id_alumno group by n.promedio;
end //

drop procedure if exists sp_busca_datos_grupo //
create procedure sp_busca_datos_grupo(id_grupo int)
begin
	select (select seccion from seccion where idseccion=g.idseccion) as seccion,(select concat(gra.grado,' ',n.nivel) from horario h inner join carga_curricula cc on h.idcarga=cc.idcarga inner join curricula c on c.idcurricula=cc.idcurricula inner join grado gra on gra.idgrado=c.idgrado inner join nivel n on n.idnivel=gra.idnivel where h.idgrupo=g.idgrupo group by  gra.grado, n.nivel) as nivel,g.capacidad,g.matriculados,g.fecini,g.fecfin,g.matricula,g.pension,g.estado from grupo g where g.idgrupo=id_grupo;
end //

drop procedure if exists sp_detalle_grupo //
create procedure sp_detalle_grupo(id_grupo int)
begin
	select g.idgrupo,g.capacidad,g.matriculados,g.fecreg,g.fecini,g.fecfin,g.matricula,g.pension,g.estado,year(fecini) as anio,(select concat('<b>',seccion,'</b>') from seccion where idseccion=g.idseccion) as seccion from grupo g where idgrupo=id_grupo;
end//

drop procedure if exists sp_registra_especializacion //
create procedure sp_registra_especializacion(areas_ text,id_personal int)
begin
	declare resultado tinyint default 0;
	declare comas tinyint;
	declare elemento text;
	declare areas text;
	begin
		declare exit handler for sqlexception set resultado = 1;
		set areas = concat(areas_,',','');
		set comas = instr(areas,',');
		while comas > 0 do
			set elemento = substring(areas,1,comas-1);
			set areas = substring(areas,comas+1);
			insert into especializacion (idaarea,idpersonal) values (elemento,id_personal);
			set comas = instr(areas,',');
		end while;
		select concat('La especializacion fue asignada') as mensaje;
	end;
	if resultado = 1 then
		select concat('Error: La especializacion no pudo ser asignada') as mensaje;
	end if;
end //

drop procedure if exists sp_agrega_curricula //
create procedure sp_agrega_curricula(nivel_ varchar(30),ano char(4), cursos_ varchar(100),verano_ char(1))
begin
	declare id_alumno int default 0;
	declare resultado tinyint default 0;
	declare id_curricula int;
	declare comas tinyint;
	declare elemento text;
	declare cursos text;
	begin
		declare exit handler for sqlexception set resultado = 1;
		set cursos = concat(cursos_,',','');
		insert into curricula (idgrado,anio,fecreg,verano,estado) values (nivel_,ano,curdate(),verano_,'1');
		set id_curricula = last_insert_id();
		set comas = instr(cursos,',');
		while comas > 0 do
			set elemento = substring(cursos,1,comas-1);
			set cursos = substring(cursos,comas+1);
			insert into carga_curricula (idcurso,idcurricula) values (elemento,id_curricula);
			set comas = instr(cursos,',');
		end while;
		select concat('La curricula fue registrada') as mensaje;
	end;
	if resultado = 1 then
		select concat('Error: La curricula no fue registrada') as mensaje;
	end if;
end //

drop procedure if exists sp_relacion_fecha //
create procedure sp_relacion_fecha(anio_ char(4),mes_ tinyint,dia_ tinyint)
begin
	select concat(p.apellidos,', ',p.nombres) as personal,u.usuario,d.ndocumento,d.monto,d.fecpago,d.estado,c.concepto from documento d inner join usuario u on u.idusuario=d.idusuario inner join personal p on p.idpersonal=u.idpersonal inner join cuota c on d.idcuota=c.idcuota where year(d.fecpago)=anio_ and month(d.fecpago)=mes_ and day(d.fecpago)=dia_;
end //

drop procedure if exists sp_caja_x_anio //
create procedure sp_caja_x_anio()
begin
	SELECT sum(monto) as total,year(fecpago) as anio FROM documento where estado='1' group by year(fecpago);
end //

drop procedure if exists sp_caja_x_mes //
create procedure sp_caja_x_mes(anio_ char(4),mes_ tinyint)
begin
	SELECT coalesce(sum(monto),0) as total FROM documento where year(fecpago)=anio_ and month(fecpago)=mes_ and estado='1' group by year(fecpago);
end //

drop procedure if exists sp_caja_x_dia //
create procedure sp_caja_x_dia(anio_ char(4),mes_ tinyint,dia_ tinyint)
begin
	SELECT coalesce(sum(monto),0) as total FROM documento where year(fecpago)=anio_ and month(fecpago)=mes_ and day(fecpago)=dia_ and estado='1' group by year(fecpago);
end //

drop procedure if exists sp_detalle_especializacion_2 //
create procedure sp_detalle_especializacion_2(id_personal int)
begin
	select * from aarea where idaarea not in (select idaarea from especializacion where idpersonal=id_personal);
end //

drop procedure if exists sp_elimina_especializacion //
create procedure sp_elimina_especializacion(id_esp int)
begin
	delete from especializacion where idespecializacion=id_esp;
end //

drop procedure if exists sp_genera_correlativo_codigo_alumno //
create procedure sp_genera_correlativo_codigo_alumno()
begin
	declare numero char(4);
	select count(*)+1 into numero from alumno;
	select numero as mensaje;
end //

drop procedure if exists sp_actualiza_propia_clave //
create procedure sp_actualiza_propia_clave(id_usuario int,old_ text,new_ text)
begin
	declare coincidencia tinyint default 0;
	select count(*) into coincidencia from clave where idusuario=id_usuario and estado='1' and clave=old_;
	if coincidencia = 0 then
		select concat('Su clave actual no es correcta') as mensaje;
	else
		update clave set estado='0' where idusuario=id_usuario and estado='1';
		insert into clave (idusuario,clave,fecreg,estado) values (id_usuario,new_,curdate(),'1');
		select concat('Su clave fue actualizada') as mensaje;
	end if;
end //

drop procedure if exists sp_lista_seccion //
create procedure sp_lista_seccion(id_curricula int,anio_ char(4))
begin
	select idseccion,seccion from seccion where idseccion not in(select g.idseccion from carga_curricula cc inner join horario h on cc.idcarga=h.idcarga inner join grupo g on h.idgrupo=g.idgrupo where cc.idcurricula=id_curricula and year(g.fecini)=anio_);
end //

drop procedure if exists sp_lista_anio_para_grupo //
create procedure sp_lista_anio_para_grupo(id_curricula int)
begin
	select year(g.fecini) from carga_curricula cc inner join horario h on cc.idcarga=h.idcarga inner join grupo g on h.idgrupo=g.idgrupo where cc.idcurricula=id_curricula group by year(g.fecini) order by fecini desc;
end //

drop procedure if exists sp_lista_padre_parentesco //
create procedure sp_lista_padre_parentesco(id_alumno int)
begin
	select p.idparentesco,pa.sexo,pa.idpadre,concat(pa.apellidos,', ',pa.nombres) as padre from parentesco p inner join padre pa on pa.idpadre=p.idpadre where p.idalumno=id_alumno;
end //

drop procedure if exists sp_anula_documento //
create procedure sp_anula_documento(id_documento int)
begin
	declare id_cuota int default 0;
	declare total int default 0;
	declare apagar int default 0;
	declare resultado tinyint default 0;
	begin
		declare exit handler for sqlexception set resultado = 1;
		update documento set estado='0' where iddocumento=id_documento;
		
		select idcuota into id_cuota from documento where iddocumento=id_documento;
		select coalesce(sum(monto),0) into total from documento where idcuota=id_cuota and estado='1';
		select monto into apagar from cuota where idcuota=id_cuota;
		if apagar != total then
			update cuota set estado='0' where idcuota=id_cuota;
		end if;
		select concat('El documento fue anulado') as mensaje;
	end;
	if resultado = 1 then
		select concat('Error: El documento no puede ser anulado') as mensaje;
	end if;
end //

drop procedure if exists sp_muestra_caja_total //
create procedure sp_muestra_caja_total(id_usuario int,fecha_ date)
begin
	select sum(monto) as total from documento d where fecpago=fecha_ and idusuario=id_usuario and estado='1';
end //

drop procedure if exists sp_muestra_caja_fecha //
create procedure sp_muestra_caja_fecha(id_usuario int,fecha_ date,inicio int,cantidad int)
begin
	set @usu = id_usuario;
	set @fec = fecha_;
	set @ini = inicio;
	set @lmt = cantidad;
	if cantidad = 0 then
		select d.iddocumento,d.ndocumento,d.monto,d.fecpago,d.estado,c.concepto from documento d inner join cuota c on d.idcuota=c.idcuota where d.fecpago=fecha_ and d.idusuario=id_usuario order by d.iddocumento desc;
	else
		prepare stmt from "select d.iddocumento,d.ndocumento,d.monto,d.fecpago,d.estado,c.concepto from documento d inner join cuota c on d.idcuota=c.idcuota where d.fecpago=? and d.idusuario=? order by d.iddocumento desc limit ?,?";
		execute stmt using @fec,@usu,@ini,@lmt;
	end if;
end //

drop procedure if exists sp_anio_max //
create procedure sp_anio_max()
begin
	select year(fecini) from grupo order by fecini desc limit 0,1;
end //

drop procedure if exists sp_finaliza_grupo //
create procedure sp_finaliza_grupo(id_grupo int)
begin
	declare final int default 0;
	update grupo set estado='0' where idgrupo=id_grupo;
	update horario as h inner join nota as n on h.idhorario=n.idhorario inner join proceso as p on n.idproceso=p.idproceso set p.estado='0',n.promedio=calcula_valor_promedio(n.idnota) where h.idgrupo=id_grupo and p.estado='1';
	update horario as h inner join nota as n on h.idhorario=n.idhorario inner join proceso as p on p.idproceso=n.idproceso set p.promovido=calcula_valor_promovido(p.idproceso) where h.idgrupo=id_grupo;
	call sp_calcula_orden_merito(id_grupo);
end //

drop procedure if exists sp_calcula_orden_merito //
create procedure sp_calcula_orden_merito(id_grupo int)
begin
	declare done int default 0;
	declare idd int;
	declare ord int default 0;
	declare cur1 cursor for select p.idproceso from horario h inner join nota n on h.idhorario=n.idhorario inner join proceso p on n.idproceso=p.idproceso where h.idgrupo=id_grupo group by p.idproceso order by (select avg(promedio) from nota where idproceso=p.idproceso) desc;
	declare exit handler for sqlexception set done = 1;
	open cur1;
	repeat
		fetch cur1 into idd;
		set ord = ord+1;
		update proceso set merito=ord where idproceso=idd;
	until done end repeat;
	close cur1;
end //

drop procedure if exists sp_rankin_alumnos_grupo //
create procedure sp_rankin_alumnos_grupo(id_grupo int)
begin
	select concat(a.apepaterno,' ',a.apematerno,', ',a.nombres) as alumno,p.idproceso,p.merito,(select avg(promedio) from nota where idproceso=p.idproceso) as promedio from horario h inner join nota n on h.idhorario=n.idhorario inner join proceso p on n.idproceso=p.idproceso inner join alumno a on a.idalumno=p.idalumno where h.idgrupo=id_grupo group by p.idproceso order by (select avg(promedio) from nota where idproceso=p.idproceso) desc;
end//

drop procedure if exists sp_rankin_alumnos_grupo_repro //
create procedure sp_rankin_alumnos_grupo_repro(id_grupo int)
begin
	select concat(a.apepaterno,' ',a.apematerno,', ',a.nombres) as alumno,p.idproceso,p.merito,(select avg(promedio) from nota where idproceso=p.idproceso) as promedio from horario h inner join nota n on h.idhorario=n.idhorario inner join proceso p on n.idproceso=p.idproceso inner join alumno a on a.idalumno=p.idalumno where h.idgrupo=id_grupo and p.estado=0 and p.promovido=0 group by p.idproceso order by (select avg(promedio) from nota where idproceso=p.idproceso) desc;
end//

drop function if exists calcula_valor_promovido //
create function calcula_valor_promovido(id_proceso int) returns int
begin
	declare numero int default 0;
	select count(nt.promedio) into numero from nota nt inner join horario hor on nt.idhorario=hor.idhorario inner join carga_curricula cc on cc.idcarga=hor.idcarga inner join curso cur on cur.idcurso=cc.idcurso where nt.promedio<13 and nt.idproceso=id_proceso and cur.vital='1';
	if numero > 1 then
		set numero = 0;
	else
		select count(nt.promedio) into numero from nota nt inner join horario hor on nt.idhorario=hor.idhorario where nt.promedio<13 and nt.idproceso=id_proceso;
		if numero > 0 then
			if numero < 3 and numero > 0 then
				set numero = 2;
			else
				set numero = 0;
			end if;
		else
			set numero = 1;
		end if;
	end if;
	return numero;
end //

drop function if exists calcula_valor_promedio //
create function calcula_valor_promedio(id_nota int) returns char(2)
begin
	declare pp1 int;
	declare pp2 int;
	declare pp3 int;
	declare ppp int;
	declare vit int default 0;
	select n.nota1,n.nota2,n.nota3,cu.vital into pp1,pp2,pp3,vit from nota n inner join horario h on n.idhorario=h.idhorario inner join carga_curricula cc on cc.idcarga=h.idcarga inner join curso cu on cc.idcurso=cu.idcurso where n.idnota=id_nota;
	set ppp = (pp1 + pp2 + pp3)/3;
	return ppp;
end //

drop function if exists calcula_valor_promedio_recupera //
create function calcula_valor_promedio_recupera(id_proceso int) returns int
begin
	declare numero int default 0;
	select count(nt.promedio) into numero from nota nt where (nt.promedio<=12 and nt.ciber is null) and nt.idproceso=id_proceso;
	if numero > 0 then
		if numero < 3 and numero > 0 then
			set numero = 2;
		else
			set numero = 0;
		end if;
	else
		set numero = 1;
	end if;
	return numero;
end //

drop procedure if exists sp_reemplaza_nota//
create procedure sp_reemplaza_nota(id_nota_1 int,id_nota_2 int)
begin
	declare resultado tinyint default 0;
	declare estado int default 1;
	declare id_proceso int;
	begin
		declare exit handler for sqlexception set resultado = 1;
		update nota set ciber=id_nota_2 where idnota=id_nota_1;
		set id_proceso = (select idproceso from nota where idnota=id_nota_1);
		set estado = calcula_valor_promedio_recupera(id_proceso);
		update proceso set promovido=estado where idproceso=id_proceso;
		select concat('1') as mensaje;
	end;
	if resultado = 1 then
		select concat('0') as mensaje;
	end if;
end//

drop procedure if exists sp_busca_proceso_alumno_curso //
create procedure sp_busca_proceso_alumno_curso(id_alumno int,inicio int,cantidad int,id_curso int)
begin
	set @id_a = id_alumno;
	set @ini = inicio;
	set @lmt = cantidad;
	set @cur = id_curso;
	if cantidad = 0 then
		select p.idproceso,p.fecreg,p.estado,g.fecini,g.fecfin,p.estado,n.promedio,n.idnota,(select curs.curso from curso curs where curs.idcurso=cc.idcurso) as curso,(select concat(gra.grado,' ',niv.nivel) from grado gra inner join nivel niv on niv.idnivel=gra.idnivel where gra.idgrado=cu.idgrado) as nivel,(select COUNT(*) from nota where ciber=n.idnota) as refe from proceso p inner join nota n on p.idproceso=n.idproceso inner join horario h on n.idhorario=h.idhorario inner join grupo g on h.idgrupo=g.idgrupo inner join carga_curricula cc on h.idcarga=cc.idcarga inner join curricula cu on cc.idcurricula=cu.idcurricula where p.idalumno=id_alumno and p.idtipo=2 and p.estado=0 and cc.idcurso=id_curso group by p.idproceso,p.fecreg,p.estado,g.fecini,g.fecfin,p.estado order by p.fecreg desc;
	else
		prepare stmt from "select p.idproceso,p.fecreg,p.estado,g.fecini,g.fecfin,n.idnota,p.estado,n.promedio,(select curs.curso from curso curs where curs.idcurso=cc.idcurso) as curso,(select concat(gra.grado,' ',niv.nivel) from grado gra inner join nivel niv on niv.idnivel=gra.idnivel where gra.idgrado=cu.idgrado) as nivel,(select COUNT(*) from nota where ciber=n.idnota) as refe from proceso p inner join nota n on p.idproceso=n.idproceso inner join horario h on n.idhorario=h.idhorario inner join grupo g on h.idgrupo=g.idgrupo inner join carga_curricula cc on h.idcarga=cc.idcarga inner join curricula cu on cc.idcurricula=cu.idcurricula where p.idalumno=? and p.idtipo=2 and p.estado=0 and cc.idcurso=? group by p.idproceso,p.fecreg,p.estado,g.fecini,g.fecfin,p.estado order by p.fecreg desc limit ?,?";
		execute stmt using @id_a,@cur,@ini,@lmt;
	end if;
end //

drop procedure if exists sp_anula_proceso //
create procedure sp_anula_proceso(id_proceso int)
begin
	declare id_grupo int default 0;
	update proceso set estado='2' where idproceso=id_proceso;
	set id_grupo=(select h.idgrupo from nota n inner join horario h on n.idhorario=h.idhorario where n.idproceso=id_proceso group by h.idgrupo);
	update grupo set matriculados=matriculados-1 where idgrupo=id_grupo;
end //

drop procedure if exists sp_lista_grupo_mat_niv //
create procedure sp_lista_grupo_mat_niv(id_grado int,anio_ int,inicio tinyint,cantidad tinyint)
begin
	SET @gra = id_grado;
	SET @ani = anio_;
	SET @ini = inicio;
	SET @lmt = cantidad; 
	if cantidad = 0 then
		prepare stmt from "select (select seccion from seccion where idseccion=g.idseccion) as sec,(select curr.curso from carga_curricula ccc inner join curso curr on ccc.idcurso=curr.idcurso where ccc.idcurricula=cu.idcurricula limit 0,1) as curso,cu.verano,g.idgrupo,year(g.fecini) as anio,g.fecini,g.fecfin,g.matriculados,g.pension,g.matricula,g.capacidad,g.estado,(select concat(gra.grado,' ',niv.nivel) from grado gra inner join nivel niv on niv.idnivel=gra.idnivel where gra.idgrado=cu.idgrado) as nivel from grupo g inner join horario h on g.idgrupo=h.idgrupo inner join carga_curricula cc on cc.idcarga=h.idcarga inner join curricula cu on cu.idcurricula=cc.idcurricula where cu.idgrado=? and g.estado='1' and year(g.fecini)=? group by cu.verano,g.idgrupo,g.fecini,g.fecini,g.fecfin,g.matriculados,g.pension,g.matricula,g.capacidad,g.estado order by g.idgrupo asc";
		execute stmt using @gra,@ani;
	else
		prepare stmt from "select (select seccion from seccion where idseccion=g.idseccion) as sec,(select curr.curso from carga_curricula ccc inner join curso curr on ccc.idcurso=curr.idcurso where ccc.idcurricula=cu.idcurricula limit 0,1) as curso,cu.verano,g.idgrupo,year(g.fecini) as anio,g.fecini,g.fecfin,g.matriculados,g.pension,g.matricula,g.capacidad,g.estado,(select concat(gra.grado,' ',niv.nivel) from grado gra inner join nivel niv on niv.idnivel=gra.idnivel where gra.idgrado=cu.idgrado) as nivel from grupo g inner join horario h on g.idgrupo=h.idgrupo inner join carga_curricula cc on cc.idcarga=h.idcarga inner join curricula cu on cu.idcurricula=cc.idcurricula where cu.idgrado=? and g.estado='1' and year(g.fecini)=? group by cu.verano,g.idgrupo,g.fecini,g.fecini,g.fecfin,g.matriculados,g.pension,g.matricula,g.capacidad,g.estado order by g.idgrupo asc limit ?,?";
		execute stmt using @gra,@ani,@ini,@lmt;
	end if;
end //

drop procedure if exists sp_detalles_area //
create procedure sp_detalles_area(id_area int)
begin
	select * from aarea where idaarea=id_area;
end //

drop procedure if exists sp_lista_pref_dis //
create procedure sp_lista_pref_dis()
begin
	begin
		select d.iddistrito,concat(pa.pais,' > ',de.departamento,' > ',p.provincia,' > ',d.distrito) as ubicacion,count(a.iddistrito) as total from distrito d inner join alumno a on a.iddistrito=d.iddistrito inner join provincia p on d.idprovincia=p.idprovincia inner join departamento de on p.iddepartamento=de.iddepartamento inner join pais pa on de.idpais=pa.idpais group by a.iddistrito,d.distrito order by total desc limit 0,1;
	end;
end //

drop procedure if exists sp_actualiza_datos_personal //
create procedure sp_actualiza_datos_personal(id_personal int,id_tipo int,dni_ varchar(8),ape varchar(30),nom varchar(30),dir text,tlf varchar(15),fec date,civ char(1),sex char(1))
begin
	declare resultado tinyint default 0;
	declare tipo int default 0;
	begin
		declare exit handler for sqlexception set resultado = 1;
		update personal set dni=dni_,apellidos=ape,nombres=nom,direccion=dir,telefono=tlf,fecnac=fec,sexo=sex,estciv=civ where idpersonal=id_personal;
		set tipo = (select idtipo from tipo_personal where idpersonal=id_personal and estado='1');
		if tipo != id_tipo then
			update tipo_personal set estado='0' where idpersonal=id_personal and estado='1' and idtipo=tipo;
			insert into tipo_personal (idtipo,idpersonal,estado) values (id_tipo,id_personal,'1');
		end if;
		 select concat('Los datos del personal fueron actualizados') as mensaje;
	end;
	if resultado = 1 then
		select concat('Error: Los datos del personal no fueron actualizados') as mensaje;
	end if;
end //

drop procedure if exists sp_nuevo_personal_mis //
create procedure sp_nuevo_personal_mis(id_tipo int,dni_ varchar(8),ape varchar(30),nom varchar(30),dir text,tlf varchar(15),fec date,civ char(1),sex char(1))
begin
	declare resultado tinyint default 0;
	declare id_personal int default 0;
	begin
		declare exit handler for sqlexception set resultado = 1;
		insert into personal (dni,apellidos,nombres,direccion,telefono,fecnac,fecreg,estciv,sexo,foto) values (dni_,ape,nom,dir,tlf,fec,curdate(),civ,sex,'');
		set id_personal = last_insert_id();
		insert into tipo_personal (idtipo,idpersonal,estado) values (id_tipo,id_personal,'1');
		select concat('El personal <b>',ape,', ',nom,'</b> fue registrado') as mensaje;
	end;
	if resultado = 1 then
		select concat('Error: El personal <b>',ape,', ',nom,'</b> no fue registrado') as mensaje;
	end if;
end //

drop procedure if exists sp_lista_personal_mis //
create procedure sp_lista_personal_mis(apellidos_ varchar(100),inicio tinyint,cantidad tinyint)
begin
	SET @cur = concat('%',apellidos_,'%');
	SET @ini = inicio;
	SET @lmt = cantidad; 
	if cantidad = 0 then
		prepare stmt from "select p.*,t.idtipo,t.tipo from personal p inner join tipo_personal tp on p.idpersonal=tp.idpersonal inner join tipo t on t.idtipo=tp.idtipo where p.apellidos like ? and tp.estado='1' order by p.apellidos asc";
		execute stmt using @cur;
	else
		prepare stmt from "select p.*,t.idtipo,t.tipo from personal p inner join tipo_personal tp on p.idpersonal=tp.idpersonal inner join tipo t on t.idtipo=tp.idtipo where p.apellidos like ? and tp.estado='1' order by p.apellidos asc limit ?,?";
		execute stmt using @cur,@ini,@lmt;
	end if;
end //

drop procedure if exists sp_actualiza_area //
create procedure sp_actualiza_area(id_area int,area_ varchar(50))
begin
	declare resultado tinyint default 0;
	begin
		declare exit handler for sqlexception set resultado = 1;
		update aarea set aarea=area_ where idaarea=id_area;
		select concat('El area se actualizo') as mensaje;
	end;
	if resultado = 1 then
		select concat('Error: El area no pudo ser actualizado') as mensaje;
	end if;
end //

drop procedure if exists sp_actualiza_curso //
create procedure sp_actualiza_curso(id_curso int,curso_ varchar(40),abrev_ varchar(20),vital_ char(1))
begin
	declare resultado tinyint default 0;
	begin
		declare exit handler for sqlexception set resultado = 1;
		update curso set curso=curso_,abrev=abrev_ ,vital=vital_ where idcurso=id_curso;
		select concat('El curso se actualizo') as mensaje;
	end;
	if resultado = 1 then
		select concat('Error: El curso no pudo ser actualizado') as mensaje;
	end if;
end //

drop procedure if exists sp_nuevo_area //
create procedure sp_nuevo_area(area_ varchar(50))
begin
	declare estado tinyint default 0;
	declare resultado tinyint default 0;
	begin
		declare exit handler for sqlexception set resultado = 1;
		select count(*) into estado from aarea where aarea=area_;
		if estado = 0 then
			insert into aarea(aarea) values (area_);
			select concat('El area se registro') as mensaje;
		else
			select concat('Error: El area ya existe') as mensaje;
		end if;
	end;
	if resultado = 1 then
		select concat('Error: El area no pudo ser registrada') as mensaje;
	end if;
end //

drop procedure if exists sp_nuevo_curso //
create procedure sp_nuevo_curso(id_area int,curso_ varchar(40),abrev_ varchar(20),vital_ char(1))
begin
	declare existe tinyint default 0;
	declare resultado tinyint default 0;
	begin
		declare exit handler for sqlexception set resultado = 1;
		select count(*) into existe from curso where curso=curso_;
		if existe = 0 then
			insert into curso (idaarea,curso,abrev,vital) values (id_area,curso_,abrev_,vital_);
			select concat('El curso se registro') as mensaje;
		else
			select concat('El curso ya existe') as mensaje;
		end if;
	end;
	if resultado = 1 then
		select concat('Error: El curso no pudo ser registrado') as mensaje;
	end if;
end //

drop procedure if exists sp_lista_area_mis //
create procedure sp_lista_area_mis(area_ varchar(100),inicio tinyint,cantidad tinyint)
begin
	SET @cur = concat('%',area_,'%');
	SET @ini = inicio;
	SET @lmt = cantidad; 
	if cantidad = 0 then
		prepare stmt from "select * from aarea where aarea like ? order by idaarea asc";
		execute stmt using @cur;
	else
		prepare stmt from "select * from aarea where aarea like ? order by idaarea asc limit ?,?";
		execute stmt using @cur,@ini,@lmt;
	end if;
end //

drop procedure if exists sp_lista_curso_mis //
create procedure sp_lista_curso_mis(id_area int,inicio tinyint,cantidad tinyint)
begin
	SET @are = id_area;
	SET @ini = inicio;
	SET @lmt = cantidad; 
	if cantidad = 0 then
		prepare stmt from "select * from curso where idaarea = ? order by idcurso asc";
		execute stmt using @are;
	else
		prepare stmt from "select * from curso where idaarea = ? order by idcurso asc limit ?,?";
		execute stmt using @are,@ini,@lmt;
	end if;
end //

drop procedure if exists sp_lista_personal //
create procedure sp_lista_personal(apellidos_ varchar(100),inicio tinyint,cantidad tinyint,id_personal int)
begin
	SET @ape = concat('%',apellidos_,'%');
	SET @idp = id_personal;
	SET @ini = inicio;
	SET @lmt = cantidad; 
	if cantidad = 0 then
		prepare stmt from "select idpersonal,concat(apellidos,', ',nombres) as personal,sexo from personal where apellidos like ? and idpersonal!=? order by idpersonal asc";
		execute stmt using @ape,@idp;
	else
		prepare stmt from "select idpersonal,concat(apellidos,', ',nombres) as personal,sexo from personal where apellidos like ? and idpersonal!=? order by idpersonal asc limit ?,?";
		execute stmt using @ape,@idp,@ini,@lmt;
	end if;
end //

drop procedure if exists sp_actualiza_estado_control //
create procedure sp_actualiza_estado_control(id_usuario int,control text)
begin
	declare comas tinyint;
	declare elemento text;
	declare resultado tinyint default 0;
	begin
		declare exit handler for sqlexception set resultado = 1;
		update acceso a inner join control c on a.idacceso=c.idacceso set c.estado='0' where a.idusuario=id_usuario;
		set control = concat(control,',','');
		set comas = instr(control,',');
		while comas > 0 do
			set elemento = substring(control,1,comas-1);
			set control = substring(control,comas+1);
			set elemento = substring(elemento,1);
			update control set estado='1' where idcontrol=elemento;
			set comas = instr(control,',');
		end while;
		select concat('Los permisos se actualizadon') as mensaje;
	end;
	if resultado = 1 then
		select concat('Error: Los permisos no pueden ser actualizados') as mensaje;
	end if;
end //

drop procedure if exists sp_lista_detalle_gestion //
create procedure sp_lista_detalle_gestion(id_usuario int,id_pagina int)
begin
	select a.idacceso,c.idcontrol,c.estado,pa.referencia,pa.idpagina from acceso a inner join control c on a.idacceso=c.idacceso inner join pagina pa on a.idpagina=pa.idpagina where pa.idpagina=id_pagina and a.idusuario=id_usuario;
end //

drop procedure if exists sp_actualiza_clave_usuario_adm //
create procedure sp_actualiza_clave_usuario_adm(id_usuario int,clave_ text)
begin
	declare resultado tinyint default 0;
	begin
		declare exit handler for sqlexception set resultado = 1;
		update clave set estado='0' where estado='1' and idusuario=id_usuario;
		insert into clave (idusuario,clave,fecreg,estado) values (id_usuario,clave_,curdate(),'1');
		 select concat('La clave fue actualizada') as mensaje;
	end;
	if resultado = 1 then
		select concat('Error: La clave no pude ser actualizada') as mensaje;
	end if;
end //

drop procedure if exists sp_busca_datos_personal //
create procedure sp_busca_datos_personal(id_personal int)
begin
	select t.tipo,p.dni,p.fecreg,p.direccion,p.telefono,concat(p.apellidos,', ',p.nombres) as personal from personal p inner join tipo_personal tp on p.idpersonal=tp.idpersonal inner join tipo t on t.idtipo=tp.idtipo where p.idpersonal=id_personal and tp.estado='1';
end //

drop procedure if exists sp_lista_personal_acceso //
create procedure sp_lista_personal_acceso(apellidos_ varchar(100),inicio tinyint,cantidad tinyint)
begin
	SET @ape = concat('%',apellidos_,'%');
	SET @ini = inicio;
	SET @lmt = cantidad; 
	if cantidad = 0 then
		prepare stmt from "select p.idpersonal,concat(p.apellidos,', ',p.nombres) as personal from personal p inner join usuario u on p.idpersonal=u.idpersonal where p.apellidos like ? group by p.idpersonal,p.apellidos,p.nombres";
		execute stmt using @ape;
	else
		prepare stmt from "select p.idpersonal,concat(p.apellidos,', ',p.nombres) as personal from personal p inner join usuario u on p.idpersonal=u.idpersonal where p.apellidos like ? group by p.idpersonal,p.apellidos,p.nombres limit ?,?";
		execute stmt using @ape,@ini,@lmt;
	end if;
end //

drop procedure if exists sp_lista_usuarios_acceso //
create procedure sp_lista_usuarios_acceso(id_personal int,inicio tinyint,cantidad tinyint)
begin
	SET @idd = id_personal;
	SET @ini = inicio;
	SET @lmt = cantidad; 
	if cantidad = 0 then
		select u.idusuario,c.cargo,u.usuario,u.fecreg,u.estado from usuario u inner join cargo c on c.idcargo=u.idcargo where u.idpersonal=id_personal;
	else
		prepare stmt from "select u.idusuario,c.cargo,u.usuario,u.fecreg,u.estado from usuario u inner join cargo c on c.idcargo=u.idcargo where u.idpersonal=? limit ?,?";
		execute stmt using @idd,@ini,@lmt;
	end if;
end //

drop procedure if exists sp_detalle_usuario //
create procedure sp_detalle_usuario(id_usuario int)
begin
	select u.idusuario,c.cargo,u.usuario,u.fecreg,u.estado from usuario u inner join cargo c on c.idcargo=u.idcargo where u.idusuario=id_usuario;
end //

drop procedure if exists sp_muestra_detalle_hora_horario //
create procedure sp_muestra_detalle_hora_horario(id_dia int,id_hora int,id_grupo int)
begin
	select cu.curso,cu.color,cu.abrev from programa p inner join horario h on h.idhorario=p.idhorario inner join carga_curricula cc on cc.idcarga=h.idcarga inner join curso cu on cu.idcurso=cc.idcurso where p.iddia=id_dia and p.idhora=id_hora and h.idgrupo=id_grupo;
end //

drop procedure if exists sp_nuevo_curso_docente//
create procedure sp_nuevo_curso_docente(id_personal int,id_horario int)
begin
	update carga_docente set estado='0',fecfin=curdate() where estado='1' and idhorario=id_horario;
	insert into carga_docente (idpersonal,idhorario,fecreg,fecfin,estado) values (id_personal,id_horario,curdate(),curdate(),'1');
end //

drop procedure if exists sp_lista_personal_docente//
create procedure sp_lista_personal_docente(apellidos_ varchar(100),inicio tinyint,cantidad tinyint,id_personal int,id_curso int)
begin
	SET @ape = concat('%',apellidos_,'%');
	SET @ini = inicio;
	SET @lmt = cantidad; 
	SET @idp = id_personal;
	SET @idc = id_curso;
	if cantidad = 0 then
		prepare stmt from "select p.sexo,p.idpersonal,concat(p.apellidos,', ',p.nombres) as personal from personal p inner join tipo_personal tp on p.idpersonal=tp.idpersonal inner join tipo t on t.idtipo=tp.idtipo inner join especializacion es on p.idpersonal=es.idpersonal inner join aarea aa on es.idaarea=aa.idaarea inner join curso cur on aa.idaarea=cur.idaarea where t.tipo='Docente' and tp.estado='1' and p.apellidos like ? and p.idpersonal!=? and cur.idcurso=?";
		execute stmt using @ape,@idp,@idc;
	else
		prepare stmt from "select p.sexo,p.idpersonal,concat(p.apellidos,', ',p.nombres) as personal from personal p inner join tipo_personal tp on p.idpersonal=tp.idpersonal inner join tipo t on t.idtipo=tp.idtipo inner join especializacion es on p.idpersonal=es.idpersonal inner join aarea aa on es.idaarea=aa.idaarea inner join curso cur on aa.idaarea=cur.idaarea where t.tipo='Docente' and tp.estado='1' and p.apellidos like ? and p.idpersonal!=? and cur.idcurso=? limit ?,?";
		execute stmt using @ape,@idp,@idc,@ini,@lmt;
	end if;
end //

drop procedure if exists sp_lista_cursos_grupo //
create procedure sp_lista_cursos_grupo(id_grupo int,inicio tinyint,cantidad tinyint)
begin
	select h.idhorario,c.curso,c.abrev,c.idcurso from horario h inner join carga_curricula cc on h.idcarga=cc.idcarga inner join curso c on c.idcurso=cc.idcurso where h.idgrupo=id_grupo;
end //

drop procedure if exists sp_lista_docentes_curso_grupo //
create procedure sp_lista_docentes_curso_grupo (id_horario int)
begin
	select p.idpersonal,concat(p.apellidos,', ',p.nombres) as docente,cd.estado from carga_docente cd inner join personal p on cd.idpersonal=p.idpersonal where cd.idhorario=id_horario order by cd.estado desc;
end //

drop procedure if exists sp_agrega_descuento_1 //
create procedure sp_agrega_descuento_1(id_cuota int,id_proceso int,id_motivo tinyint,monto_ float,fec_ini date)
begin
	declare resultado tinyint default 0;
	begin
		declare exit handler for sqlexception set resultado = 1;
		insert into descuento (idproceso,idmotivo,monto,fecreg,fecini,estado) values (id_proceso,id_motivo,monto_,curdate(),fec_ini,'1');
		update cuota set descuento=monto_ where idproceso=id_proceso and idcuota >= id_cuota;
		select concat('El descuento fue registrado') as mensaje;
	end;
	if resultado = 1 then
		select concat('Error: El descuento no fue registrado') as mensaje;
	end if;
end //

drop procedure if exists sp_detalle_descuento //
create procedure sp_detalle_descuento(id_proceso int)
begin
	select m.motivo,m.porcentaje,c.monto,c.fecini from descuento c inner join motivo m on c.idmotivo=m.idmotivo where c.idproceso=id_proceso and c.estado='1';
end//

drop procedure if exists sp_detalle_curricula //
create procedure sp_detalle_curricula(id_curricula int)
begin
	select c.*,(select concat(gra.grado,' ',niv.nivel) from grado gra inner join nivel niv on gra.idnivel=niv.idnivel where idgrado=c.idgrado) as nivel,(select cur.curso from carga_curricula cc inner join curso cur on cc.idcurso=cur.idcurso where cc.idcurricula=c.idcurricula limit 0,1) as curso,(select count(*) from carga_curricula where idcurricula=id_curricula) as cursos from curricula c where c.idcurricula=id_curricula;
end//

drop procedure if exists sp_quita_curso_curricula //
create procedure sp_quita_curso_curricula(id_carga int)
begin
	delete from carga_curricula where idcarga=id_carga;
end//

drop procedure if exists sp_lista_cursos //
create procedure sp_lista_cursos(id_curricula int)
begin
	declare cantidad int default 0;
	set cantidad = id_curricula;
	if cantidad = 0 then
		select * from curso;
	else
		select * from curso where idcurso not in (select idcurso from carga_curricula where idcurricula=id_curricula);
	end if;
end //

drop procedure if exists sp_lista_cursos_curricula //
create procedure sp_lista_cursos_curricula(id_curricula int)
begin
	select cu.idcarga,c.idcurso,c.curso,c.abrev from carga_curricula cu inner join curso c on cu.idcurso=c.idcurso where cu.idcurricula=id_curricula;
end //

drop procedure if exists sp_lista_grupo //
create procedure sp_lista_grupo(id_curricula int,inicio int,cantidad int,anio char(4))
begin
	set @cur = id_curricula;
	set @ani = anio;
	set @ini = inicio;
	set @lmt = cantidad;
	if cantidad = 0 then
		select (select count(cd.idcarga) from horario hor inner join carga_docente cd on hor.idhorario=cd.idhorario where hor.idgrupo=g.idgrupo and cd.estado='1') as profes,g.idgrupo,g.capacidad,g.matriculados,g.fecini,g.fecfin,g.matricula,g.pension,g.estado,(select concat('<b>',sec.seccion,'</b>') from seccion sec where sec.idseccion=g.idseccion) as nivel from carga_curricula cc inner join horario h on cc.idcarga=h.idcarga inner join grupo g on h.idgrupo=g.idgrupo where cc.idcurricula=id_curricula and year(g.fecini)=anio group by g.idgrupo,g.capacidad,g.matriculados,g.fecini,g.fecfin,g.matricula,g.pension,g.estado;
	else
		prepare stmt from "select (select count(cd.idcarga) from horario hor inner join carga_docente cd on hor.idhorario=cd.idhorario where hor.idgrupo=g.idgrupo and cd.estado='1') as profes,g.idgrupo,g.capacidad,g.matriculados,g.fecini,g.fecfin,g.matricula,g.pension,g.estado,(select concat('<b>',sec.seccion,'</b>') from seccion sec where sec.idseccion=g.idseccion) as nivel from carga_curricula cc inner join horario h on cc.idcarga=h.idcarga inner join grupo g on h.idgrupo=g.idgrupo where cc.idcurricula=? and year(g.fecini)=? group by g.idgrupo,g.capacidad,g.matriculados,g.fecini,g.fecfin,g.matricula,g.pension,g.estado limit ?,?";
		execute stmt using @cur,@ani,@ini,@lmt;
	end if;
end//

drop procedure if exists sp_lista_alumnos_grupo //
create procedure sp_lista_alumnos_grupo(id_grupo int,inicio int,cantidad int)
begin
	set @idg = id_grupo;
	set @ini = inicio;
	set @lmt = cantidad;
	if cantidad = 0 then
		select p.idproceso,a.idalumno,a.ideducando,concat(a.apepaterno,' ',a.apematerno,', ',a.nombres) as alumno,p.fecreg from horario h inner join nota n on h.idhorario=n.idhorario inner join proceso p on n.idproceso=p.idproceso inner join alumno a on p.idalumno=a.idalumno where h.idgrupo=id_grupo and p.estado!='2' group by a.idalumno,a.ideducando,a.apepaterno,a.apematerno,a.nombres,p.fecreg order by a.apepaterno,a.apematerno asc;
	else
		prepare stmt from "select p.idproceso,a.idalumno,a.ideducando,concat(a.apepaterno,' ',a.apematerno,', ',a.nombres) as alumno,p.fecreg from horario h inner join nota n on h.idhorario=n.idhorario inner join proceso p on n.idproceso=p.idproceso inner join alumno a on p.idalumno=a.idalumno where h.idgrupo=? and p.estado!='2' group by a.idalumno,a.ideducando,a.apepaterno,a.apematerno,a.nombres,p.fecreg order by a.apepaterno,a.apematerno asc limit ?,?";
		execute stmt using @idg,@ini,@lmt;
	end if;
end//

drop procedure if exists sp_lista_cuotas_pago_reporte //
create procedure sp_lista_cuotas_pago_reporte(id_proceso int)
begin
	select * from cuota where idproceso=id_proceso order by idcuota asc;
end//

drop procedure if exists sp_lista_curricula //
create procedure sp_lista_curricula(inicio int,cantidad int)
begin
	set @ini = inicio;
	set @lmt = cantidad;
	if cantidad = 0 then
		select (select cur.curso from carga_curricula cc inner join curso cur on cc.idcurso=cur.idcurso where cc.idcurricula=c.idcurricula limit 0,1) as curso,c.idcurricula,concat(gra.grado,' ',ni.nivel) as nivel,c.anio,c.fecreg,c.estado,c.verano,(select count(idcarga) from carga_curricula where idcurricula=c.idcurricula) as cursos from curricula c inner join grado gra on gra.idgrado=c.idgrado inner join nivel ni on ni.idnivel=gra.idnivel;
	else
		prepare stmt from "select (select cur.curso from carga_curricula cc inner join curso cur on cc.idcurso=cur.idcurso where cc.idcurricula=c.idcurricula limit 0,1) as curso,c.idcurricula,concat(gra.grado,' ',ni.nivel) as nivel,c.anio,c.verano,c.fecreg,c.estado, (select count(idcarga) from carga_curricula where idcurricula=c.idcurricula) as cursos from curricula c inner join grado gra on gra.idgrado=c.idgrado inner join nivel ni on ni.idnivel=gra.idnivel limit ?,?";
		execute stmt using @ini,@lmt;
	end if;
end //

drop procedure if exists sp_relacion_hijos //
create procedure sp_relacion_hijos(id_padre int,inicio int,cantidad int)
begin
	set @id_p = id_padre;
	set @ini = inicio;
	set @lmt = cantidad;
	if cantidad = 0 then
		select a.idalumno,concat(apepaterno,' ',apematerno,', ',nombres) as alumno,p.fecreg,a.sexo from parentesco p inner join alumno a on p.idalumno=a.idalumno where p.idpadre=id_padre and p.padre='1' order by p.idparentesco asc;
	else
		prepare stmt from "select a.idalumno,concat(apepaterno,' ',apematerno,', ',nombres) as alumno,p.fecreg,a.sexo from parentesco p inner join alumno a on p.idalumno=a.idalumno where p.idpadre=? and p.padre='1' order by p.idparentesco asc limit ?,?";
		execute stmt using @id_p,@ini,@lmt;
	end if;
end //

drop procedure if exists sp_nuevo_padre //
create procedure sp_nuevo_padre(ape varchar(30),nom varchar(30),dir text,tlf varchar(15),cel varchar(15),ocupa text,fec date,sex char(1),civ char(1))
begin
	declare resultado tinyint default 0;
	begin
		declare exit handler for sqlexception set resultado = 1;
		insert into padre (apellidos,nombres,direccion,telefono,celular,ocupacion,fecnac,fecreg,sexo,estciv) values (ape,nom,dir,tlf,cel,ocupa,fec,curdate(),sex,civ);
		select concat('El padre <b>',ape,', ',nom,'</b> fue registrado') as mensaje;
	end;
	if resultado = 1 then
		select concat('Error: El padre <b>',ape,', ',nom,'</b> no fue registrado') as mensaje;
	end if;
end //

drop procedure if exists sp_lista_notas //
create procedure sp_lista_notas(id_proceso int)
begin
	select pro.estado,n.idnota,cu.idcurso,cu.curso,n.nota1,n.nota2,n.nota3,n.promedio,(select promedio from nota nt where nt.idnota=n.ciber) as nciber from proceso pro inner join nota n on pro.idproceso=n.idproceso inner join horario h on n.idhorario=h.idhorario inner join carga_curricula cc on h.idcarga=cc.idcarga inner join curso cu on cc.idcurso=cu.idcurso where pro.idproceso=id_proceso;
end //

drop procedure if exists sp_actualiza_nota_aca //
create procedure sp_actualiza_nota_aca(cadena text)
begin
	declare comas tinyint;
	declare elemento text;
	declare comas_ tinyint;
	declare elemento_ text;
	declare cadena_ text;
	
	declare p1 int;
	declare p2 varchar(30);
	declare p3 char(2);
	declare resultado tinyint default 0;

	begin
		declare exit handler for sqlexception set resultado = 1;
		set comas = instr(cadena,',');
		while comas > 0 do
			set elemento = substring(cadena,1,comas-1);
			set cadena = substring(cadena,comas+1);
			
			set cadena_ = concat(elemento,':','');
			set comas_ = instr(cadena_,':');
			
			
			while comas_ > 0 do
				set elemento_ = substring(cadena_,1,comas_-1);
				set cadena_ = substring(cadena_,comas_+1);
				set p1 = elemento_;
				set comas_ = instr(cadena_,':');
				
				set elemento_ = substring(cadena_,1,comas_-1);
				set cadena_ = substring(cadena_,comas_+1);
				set p2 = elemento_;
				set comas_ = instr(cadena_,':');
				
				set elemento_ = substring(cadena_,1,comas_-1);
				set cadena_ = substring(cadena_,comas_+1);
				set p3 = elemento_;
				set comas_ = instr(cadena_,':');
				
				case p2
					when 1 then update nota set nota1=p3 where idnota=p1;
					when 2 then update nota set nota2=p3 where idnota=p1;
					when 3 then update nota set nota3=p3 where idnota=p1;
				end case;
			end while;
			
			set comas = instr(cadena,',');
		end while;
		select concat('Las notas fueron actualizadas') as mensaje;
	end;
	if resultado = 1 then
		select concat('Error al actualizar las notas') as mensaje;
	end if;	
end //

drop procedure if exists sp_detalle_documento_por_cuota //
create procedure sp_detalle_documento_por_cuota(id_cuota int,inicio int,cantidad int)
begin
	set @id_c = id_cuota;
	set @ini = inicio;
	set @lmt = cantidad;
	if cantidad = 0 then
		select d.ndocumento,concat(p.apellidos,', ',p.nombres) as personal,d.iddocumento,d.monto,d.fecpago,d.estado from documento d inner join usuario u on d.idusuario=u.idusuario inner join personal p on u.idpersonal=p.idpersonal where idcuota=id_cuota;
	else
		prepare stmt from "select d.ndocumento,concat(p.apellidos,', ',p.nombres) as personal,d.iddocumento,d.monto,d.fecpago,d.estado from documento d inner join usuario u on d.idusuario=u.idusuario inner join personal p on u.idpersonal=p.idpersonal where idcuota=? limit ?,?";
		execute stmt using @id_c,@ini,@lmt;
	end if;
end //

drop procedure if exists sp_detalle_cuota //
create procedure sp_detalle_cuota(id_cuota int)
begin
	select * from cuota where idcuota=id_cuota;
end //

drop procedure if exists sp_lista_pagos_activos_alumno //
create procedure sp_lista_pagos_activos_alumno(id_alumno int,inicio int,cantidad int)
begin
	set @id_a = id_alumno;
	set @ini = inicio;
	set @lmt = cantidad;
	if cantidad = 0 then
		select (select cu.verano from nota na inner join horario hora on na.idhorario=hora.idhorario inner join carga_curricula ccc on ccc.idcarga=hora.idcarga inner join curricula cu on cu.idcurricula=ccc.idcurricula where na.idproceso=p.idproceso group by cu.verano) as verano,(select cur.curso from nota nt inner join horario hor on nt.idhorario=hor.idhorario inner join carga_curricula cc on cc.idcarga=hor.idcarga inner join curso cur on cur.idcurso=cc.idcurso where nt.idproceso=p.idproceso order by hor.idhorario limit 0,1) as curso,p.idtipo,c.idcuota,c.concepto,c.matricula,(c.monto-c.descuento) as monto,c.estado,c.fecpago,(select coalesce(sum(monto),0) from documento where idcuota=c.idcuota and estado='1') as pagado from cuota c inner join proceso p on c.idproceso=p.idproceso where p.idalumno=id_alumno and p.estado='1' order by idcuota asc;
	else
		prepare stmt from "select (select cu.verano from nota na inner join horario hora on na.idhorario=hora.idhorario inner join carga_curricula ccc on ccc.idcarga=hora.idcarga inner join curricula cu on cu.idcurricula=ccc.idcurricula where na.idproceso=p.idproceso group by cu.verano) as verano,(select cur.curso from nota nt inner join horario hor on nt.idhorario=hor.idhorario inner join carga_curricula cc on cc.idcarga=hor.idcarga inner join curso cur on cur.idcurso=cc.idcurso where nt.idproceso=p.idproceso order by hor.idhorario limit 0,1) as curso,p.idtipo,c.idcuota,c.matricula,c.concepto,(c.monto-c.descuento) as monto,c.estado,c.fecpago,(select coalesce(sum(monto),0) from documento where idcuota=c.idcuota and estado='1') as pagado from cuota c inner join proceso p on c.idproceso=p.idproceso where p.idalumno=? and p.estado='1' order by idcuota asc limit ?,?";
		execute stmt using @id_a,@ini,@lmt;
	end if;
end //

drop procedure if exists sp_lista_pagos_proceso //
create procedure sp_lista_pagos_proceso(id_proceso int,inicio int,cantidad int)
begin
	set @id_p = id_proceso;
	set @ini = inicio;
	set @lmt = cantidad;
	if cantidad = 0 then
		select c.idcuota,c.concepto,c.matricula,(c.monto-c.descuento) as monto,c.estado,c.fecpago,(select coalesce(sum(monto),0) from documento where idcuota=c.idcuota and estado='1') as pagado from cuota c where idproceso=id_proceso order by idcuota asc;
	else
		prepare stmt from "select c.idcuota,c.matricula,c.concepto,(c.monto-c.descuento) as monto,c.estado,c.fecpago,(select coalesce(sum(monto),0) from documento where idcuota=c.idcuota and estado='1') as pagado from cuota c where idproceso=? order by idcuota asc limit ?,?";
		execute stmt using @id_p,@ini,@lmt;
	end if;
end //

drop procedure if exists sp_detalle_proceso //
create procedure sp_detalle_proceso(id_proceso int)
begin
	select (select curs.curso from carga_curricula ccc inner join curso curs on ccc.idcurso=curs.idcurso where ccc.idcurricula=cu.idcurricula limit 0,1) as curso,p.merito,p.idproceso,p.idtipo,p.fecreg,p.estado,g.fecini,g.fecfin,cu.verano,p.promovido,g.pension,(select count(*) from descuento where idproceso=p.idproceso) as descuento,(select concat(gra.grado,' ',niv.nivel) from grado gra inner join nivel niv on gra.idnivel=niv.idnivel where gra.idgrado=cu.idgrado) as nivel,(select seccion from seccion where idseccion=g.idseccion) as seccion from proceso p inner join nota n on p.idproceso=n.idproceso inner join horario h on n.idhorario=h.idhorario inner join grupo g on h.idgrupo=g.idgrupo inner join carga_curricula cc on h.idcarga=cc.idcarga inner join curricula cu on cc.idcurricula=cu.idcurricula where p.idproceso=id_proceso group by p.idproceso,p.fecreg,p.estado,g.fecini,g.fecfin,p.estado order by p.fecreg desc;
end //

drop procedure if exists sp_busca_proceso_alumno //
create procedure sp_busca_proceso_alumno(id_alumno int,inicio int,cantidad int)
begin
	set @id_a = id_alumno;
	set @ini = inicio;
	set @lmt = cantidad;
	if cantidad = 0 then
		select (select cur.curso from grupo gru inner join horario hor on gru.idgrupo=hor.idgrupo inner join carga_curricula cacu on hor.idcarga=cacu.idcarga inner join curso cur on cacu.idcurso=cur.idcurso where gru.idgrupo=g.idgrupo limit 0,1) as curso,p.idproceso,p.idtipo,p.fecreg,p.estado,g.fecini,g.fecfin,(select seccion from seccion where idseccion=g.idseccion) as seccion,(select concat(gra.grado,' ',niv.nivel) from grado gra inner join nivel niv on niv.idnivel=gra.idnivel where gra.idgrado=cu.idgrado) as nivel,p.estado,p.promovido,cu.verano from proceso p inner join nota n on p.idproceso=n.idproceso inner join horario h on n.idhorario=h.idhorario inner join grupo g on h.idgrupo=g.idgrupo inner join carga_curricula cc on h.idcarga=cc.idcarga inner join curricula cu on cc.idcurricula=cu.idcurricula where p.idalumno=id_alumno group by p.idproceso,p.fecreg,p.estado,g.fecini,g.fecfin,p.estado order by p.fecreg desc;
	else
		prepare stmt from "select (select cur.curso from grupo gru inner join horario hor on gru.idgrupo=hor.idgrupo inner join carga_curricula cacu on hor.idcarga=cacu.idcarga inner join curso cur on cacu.idcurso=cur.idcurso where gru.idgrupo=g.idgrupo limit 0,1) as curso,p.idproceso,p.idtipo,p.fecreg,p.estado,g.fecini,(select seccion from seccion where idseccion=g.idseccion) as seccion,(select concat(gra.grado,' ',niv.nivel) from grado gra inner join nivel niv on niv.idnivel=gra.idnivel where gra.idgrado=cu.idgrado) as nivel,g.fecfin,p.estado,p.promovido,cu.verano from proceso p inner join nota n on p.idproceso=n.idproceso inner join horario h on n.idhorario=h.idhorario inner join grupo g on h.idgrupo=g.idgrupo inner join carga_curricula cc on h.idcarga=cc.idcarga inner join curricula cu on cc.idcurricula=cu.idcurricula where p.idalumno=? group by p.idproceso,p.fecreg,p.estado,g.fecini,g.fecfin,p.estado order by p.fecreg desc limit ?,?";
		execute stmt using @id_a,@ini,@lmt;
	end if;
end //

drop procedure if exists sp_busca_datos_alumno //
create procedure sp_busca_datos_alumno(id_alumno int)
begin
	select a.iddistrito,a.iddistrito,a.ideducando,a.nombres,a.apepaterno,a.apematerno,a.sexo,a.direccion,a.fecnac,a.telefono,concat(pa.pais,' > ',de.departamento,' > ',p.provincia,' > ',d.distrito) as ubicacion from alumno a inner join distrito d on a.iddistrito=d.iddistrito inner join provincia p on d.idprovincia=p.idprovincia inner join departamento de on p.iddepartamento=de.iddepartamento inner join pais pa on de.idpais=pa.idpais where a.idalumno=id_alumno;
end //

drop procedure if exists sp_busca_datos_apoderado_alumno //
create procedure sp_busca_datos_apoderado_alumno(id_alumno int,id_proceso int)
begin
	select concat(apellidos,', ',nombres) as apoderado from proceso p inner join padre pa on p.apoderado=pa.idpadre and p.idalumno=id_alumno and p.idproceso=id_proceso;
end //

drop procedure if exists sp_busca_datos_personal_mis //
create procedure sp_busca_datos_personal_mis(id_personal int)
begin
	select p.*,t.idtipo from personal p inner join tipo_personal t on t.idpersonal=p.idpersonal where p.idpersonal=id_personal and t.estado='1';
end //

drop procedure if exists sp_busca_datos_area //
create procedure sp_busca_datos_area(id_area int)
begin
	select * from aarea where idaarea=id_area;
end //

drop procedure if exists sp_busca_datos_curso //
create procedure sp_busca_datos_curso(id_curso int)
begin
	select * from curso where idcurso=id_curso;
end //

drop procedure if exists sp_busca_datos_grupo_numero_pagos //
create procedure sp_busca_datos_grupo_numero_pagos(id_grupo int)
begin
	select (select seccion from seccion where idseccion=g.idseccion) as seccion,(select concat(gra.grado,' ',n.nivel) from horario h inner join carga_curricula cc on h.idcarga=cc.idcarga inner join curricula c on c.idcurricula=cc.idcurricula inner join grado gra on gra.idgrado=c.idgrado inner join nivel n on n.idnivel=gra.idnivel where h.idgrupo=g.idgrupo group by c.idcurricula) as nivel,g.capacidad,g.matriculados,g.fecini,g.fecfin,g.matricula,g.pension,g.estado,(month(fecfin)-month(fecini)) as numero from grupo g where g.idgrupo=id_grupo;
end //

drop procedure if exists sp_busca_datos_curricula //
create procedure sp_busca_datos_curricula(id_curricula int)
begin
	select c.*,concat(g.grado,' ',n.nivel) as nivel from curricula c inner join grado g on g.idgrado=c.idgrado inner join nivel n on n.idnivel=g.idnivel where c.idcurricula=id_curricula;
end //

drop procedure if exists sp_busca_datos_padre //
create procedure sp_busca_datos_padre(id_padre int)
begin
	select idpadre,concat(apellidos,', ',nombres) as padre,direccion,telefono,ocupacion from padre where idpadre=id_padre;
end //

drop procedure if exists sp_busca_datos_padre //
create procedure sp_busca_datos_padre(id_padre int)
begin
	select * from padre where idpadre=id_padre;
end //

drop procedure if exists sp_busca_padres_alumno //
create procedure sp_busca_padres_alumno(id_alumno int)
begin
	select concat(apellidos,' ',nombres) as padre,sexo from parentesco p inner join padre pa on p.idpadre=pa.idpadre where p.idalumno=id_alumno and p.padre='1';
end //

drop procedure if exists sp_lista_padres_excepto //
create procedure sp_lista_padres_excepto(id_alumno int,apellidos_ varchar(100),inicio tinyint,cantidad tinyint)
begin
	SET @ape = concat('%',apellidos_,'%');
	SET @ida = id_alumno;
	SET @ini = inicio;
	SET @lmt = cantidad; 
	if cantidad = 0 then
		prepare stmt from "select idpadre,concat(apellidos,', ',nombres) as padre,direccion,telefono,fecnac,fecreg,sexo,estciv from padre where apellidos like ? and idpadre not in (select idpadre from parentesco where idalumno=?) order by apellidos asc";
		execute stmt using @ape,@ida;
	else
		prepare stmt from "select idpadre,concat(apellidos,', ',nombres) as padre,direccion,telefono,fecnac,fecreg,sexo,estciv from padre where apellidos like ? and idpadre not in (select idpadre from parentesco where idalumno=?) order by apellidos asc limit ?,?";
		execute stmt using @ape,@ida,@ini,@lmt;
	end if;
end //

drop procedure if exists sp_lista_padres_1 //
create procedure sp_lista_padres_1(apellidos_ varchar(100))
begin
	SET @ape = concat('%',apellidos_,'%');
	prepare stmt from "select p.idpadre,concat(p.apellidos,', ',p.nombres) as padre,(select count(*) from parentesco where idpadre=p.idpadre) as hijos,p.direccion,p.telefono,p.fecnac,p.fecreg,p.sexo,p.estciv from padre p where p.apellidos like ? order by p.apellidos asc";
	execute stmt using @ape;
end //

drop procedure if exists sp_lista_alumnos //
create procedure sp_lista_alumnos(apellidos_ varchar(100),inicio tinyint,cantidad tinyint)
begin
	SET @ape = concat('%',apellidos_,'%');
	SET @ini = inicio;
	SET @lmt = cantidad; 
	if cantidad = 0 then
		prepare stmt from "select (select count(*) from proceso where idalumno=a.idalumno and estado='1') as procs,(year(curdate())-year(fecnac)) as edad,idalumno,ideducando,concat(apepaterno,' ',apematerno,', ',nombres) as alumno,sexo,direccion,telefono,fecnac,telefono,de.departamento from alumno a inner join distrito d on a.iddistrito=d.iddistrito inner join provincia p on d.idprovincia=p.idprovincia inner join departamento de on p.iddepartamento=de.iddepartamento where concat(apepaterno,' ',apematerno) like ? order by apepaterno,apematerno asc";
		execute stmt using @ape;
	else
		prepare stmt from "select (select count(*) from proceso where idalumno=a.idalumno and estado='1') as procs,(year(curdate())-year(fecnac)) as edad,idalumno,ideducando,concat(apepaterno,' ',apematerno,', ',nombres) as alumno,sexo,direccion,telefono,fecnac,telefono,de.departamento from alumno a inner join distrito d on a.iddistrito=d.iddistrito inner join provincia p on d.idprovincia=p.idprovincia inner join departamento de on p.iddepartamento=de.iddepartamento where concat(apepaterno,' ',apematerno) like ? order by apepaterno,apematerno asc limit ?,?";
		execute stmt using @ape,@ini,@lmt;
	end if;
end //

drop procedure if exists sp_detalle_especializacion //
create procedure sp_detalle_especializacion(id_personal int)
begin
	select e.idespecializacion,a.idaarea,a.aarea from especializacion e inner join aarea a on e.idaarea=a.idaarea where e.idpersonal=id_personal;
end //

drop procedure if exists sp_detalle_pagina //
create procedure sp_detalle_pagina(id_pagina int)
begin
	select idpagina,url from pagina where idpagina=id_pagina;
end //

drop procedure if exists sp_carga_sub_permisos //
create procedure sp_carga_sub_permisos(id_usuario int,id_ventana int)
begin
	select pa.idpagina,pa.titulo,pa.url,pa.icono,pa.muestra,pa.descripcion from sistema s inner join ventana v on s.idsistema=v.idsistema inner join pagina pa on v.idventana=pa.idventana inner join acceso a on pa.idpagina=a.idpagina inner join control c on a.idacceso=c.idacceso inner join permiso p on c.idpermiso=p.idpermiso where pa.idventana=id_ventana and a.idusuario=id_usuario and c.estado='1';
end //

drop procedure if exists sp_lista_alumnos1 //
create procedure sp_lista_alumnos1()
begin
	select pa.pais,de.departamento,p.provincia,d.distrito,a.idalumno,a.ideducando,concat(concat(a.apepaterno,' ',a.apematerno),', ',a.nombres) as alumno,a.sexo,a.direccion,a.fecnac,a.fecreg,a.telefono from alumno a inner join distrito d on a.iddistrito=d.iddistrito inner join provincia p on d.idprovincia=p.idprovincia inner join departamento de on p.iddepartamento=de.iddepartamento inner join pais pa on de.idpais=pa.idpais;
end //

drop procedure if exists sp_carga_menu //
create procedure sp_carga_menu(id_sistema int,id_usuario int)
begin
	select v.idventana,v.titulo,v.icono from sistema s inner join ventana v on s.idsistema=v.idsistema inner join pagina pa on v.idventana=pa.idventana inner join acceso a on pa.idpagina=a.idpagina inner join control c on a.idacceso=c.idacceso where a.idusuario=id_usuario and s.idsistema=id_sistema and c.estado='1' group by v.idventana,v.titulo,v.icono ;
end //

drop procedure if exists sp_ingreso_login //
create procedure sp_ingreso_login(usuario_ varchar(30),clave_ text)
begin
	select u.idusuario,p.idpersonal,ca.idcargo,ca.cargo,u.usuario,concat(p.apellidos,', ',p.nombres) as personal,p.sexo from usuario u inner join clave c on u.idusuario=c.idusuario inner join personal p on p.idpersonal=u.idpersonal inner join cargo ca on u.idcargo=ca.idcargo where u.estado='1' and c.estado='1' and u.usuario=usuario_ and c.clave=clave_;
end //

drop procedure if exists sp_menu_usuario //
create procedure sp_menu_usuario(id_usuario int)
begin
	select s.idsistema,s.sistema from sistema s inner join ventana v on s.idsistema=v.idsistema inner join pagina pa on v.idventana=pa.idventana inner join acceso a on pa.idpagina=a.idpagina inner join control c on a.idacceso=c.idacceso where a.idusuario=id_usuario and c.estado='1' group by s.sistema;
end //

drop procedure if exists sp_nuevo_usuario //
create procedure sp_nuevo_usuario(id_cargo int,id_personal int,usuario_ varchar(30),clave_ text)
begin
	declare existe int;
	declare id_usuario int;
	declare comas tinyint;
	declare elemento text;
	declare resultado tinyint default 0;
	begin
		declare exit handler for sqlexception set resultado = 1;
		select count(*) into existe from usuario where usuario=usuario_;
		if existe=0 then
			update usuario u inner join clave c on u.idusuario=c.idusuario set u.estado='0',c.estado='0' where u.idpersonal=id_personal and u.estado='1' and c.estado='1';
			insert into usuario (idcargo,idpersonal,usuario,fecreg,estado) values (id_cargo,id_personal,usuario_,curdate(),'1');
			set id_usuario = last_insert_id();
			insert into clave (idusuario,clave,fecreg,estado) values (id_usuario,clave_,curdate(),'1');
			insert into acceso (idpagina,idusuario) select idpagina,id_usuario from pagina;
		end if;
		select concat('Se registro el usuario') as mensaje;
	end;
	if resultado = 1 then
		select concat('Error: El usuario no ha sido registrado') as mensaje;
	end if;
end //

drop trigger if exists tr_acceso_permiso //
create trigger tr_acceso_permiso after insert on acceso
for each row
begin
	insert into control (idpermiso,idacceso,estado) select idpermiso,new.idacceso,'1' from permiso;
end //

drop procedure if exists sp_actualiza_clave //
create procedure sp_actualiza_clave(id_usuario int,clave text)
begin
	update clave set estado='0' where estado='1' and idusuario=id_usuario;
	insert into clave (idusuario,clave,fecreg,estado) values (id_usuario,clave,curdate(),'1');
end //

drop procedure if exists sp_agrega_tipo_personal //
create procedure sp_agrega_tipo_personal(id_personal int,id_tipo int)
begin
	update tipo_personal set estado='0' where estado='1' and idpersonal=id_personal;
	insert into tipo_personal (idtipo,idpersonal,estado) values (id_tipo,id_personal,'1');
end //

drop procedure if exists sp_actualiza_curricula //
create procedure sp_actualiza_curricula(id_curricula int,nivel_ varchar(30),ano char(4), cursos_ varchar(100),verano_ char(1))
begin
	declare id_alumno int default 0;
	declare resultado tinyint default 0;
	declare comas tinyint;
	declare elemento text;
	declare cursos text;
	declare valida int default 0;
	begin
		declare exit handler for sqlexception set resultado = 1;
		update curricula set idgrado=nivel_,anio=ano,verano=verano_ where idcurricula=id_curricula;
		set valida = LENGTH(cursos_);
		if valida > 0 then
			set cursos = concat(cursos_,',','');
			set comas = instr(cursos,',');
			while comas > 0 do
				set elemento = substring(cursos,1,comas-1);
				set cursos = substring(cursos,comas+1);
				insert into carga_curricula (idcurso,idcurricula) values (elemento,id_curricula);
				set comas = instr(cursos,',');
			end while;
		end if;
		select concat('La curricula fue actualizada') as mensaje;
	end;
	if resultado = 1 then
		select concat('Error: La curricula no fue actualizada') as mensaje;
	end if;
end //

drop procedure if exists sp_agrega_curso_curricula//
create procedure sp_agrega_curso_curricula(id_curricula int,cursos varchar(100))
begin
	declare numero tinyint;
	declare comas tinyint;
	declare elemento text;
	select estado into numero from curricula where idcurricula=id_curricula;
	if numero > 0 then
		set comas = instr(cursos,',');
		while comas > 0 do
			set elemento = substring(cursos,1,comas-1);
			set cursos = substring(cursos,comas+1);
			insert into carga_curricula (idcurso,idcurricula) values (elemento,id_curricula);
			set comas = instr(cursos,',');
		end while;
	end if;
end //

drop procedure if exists sp_nuevo_grupo//
create procedure sp_nuevo_grupo(id_seccion int,id_curricula int,capacidad_ int,fecini_ date,fecfin_ date,pension_ double,matricula_ double)
begin
	declare id_grupo int default 0;
	declare resultado tinyint default 0;
	begin
		declare exit handler for sqlexception set resultado = 1;
		insert into grupo (idseccion,capacidad,matriculados,fecreg,fecini,fecfin,matricula,pension,estado) values (id_seccion,capacidad_,0,curdate(),fecini_,fecfin_,matricula_,pension_,'1');
		set id_grupo = last_insert_id();
		insert into horario (idcarga,idgrupo) select idcarga,id_grupo from carga_curricula where idcurricula=id_curricula; 
		update curricula set estado='0' where estado='1' and idcurricula=id_curricula;
		select concat('El grupo fue registrado') as mensaje;
	end;
	if resultado = 1 then
		select concat('Error: El grupo no fue registrado') as mensaje;
	end if;
end //

drop procedure if exists sp_actualiza_grupo//
create procedure sp_actualiza_grupo(id_grupo int,id_seccion int,id_curricula int,capacidad_ int,fecini_ date,fecfin_ date,pension_ double,matricula_ double)
begin
	declare resultado tinyint default 0;
	begin
		declare exit handler for sqlexception set resultado = 1;
		update grupo set idseccion=id_seccion,capacidad=capacidad_,fecini=fecini_,fecfin=fecfin_,pension=pension_,matricula=matricula_ where idgrupo=id_grupo;

		select concat('El grupo fue actualizado') as mensaje;
	end;
	if resultado = 1 then
		select concat('Error: El grupo no fue actualizado') as mensaje;
	end if;
end //

drop procedure if exists sp_nuevo_proceso_recuperacion //
create procedure sp_nuevo_proceso_recuperacion(id_tipo int,id_alumno int,id_grupo int,pag_o int)
begin
	declare id_proceso int;
	declare fecha date;
	declare resultado tinyint default 0;
	begin
		declare exit handler for sqlexception set resultado = 1;
		set fecha = (select fecini from grupo where idgrupo=id_grupo);
		insert into proceso (idtipo,idalumno,apoderado,fecreg,estado,promovido) values (id_tipo,id_alumno,null,curdate(),'1','0');
		set id_proceso = last_insert_id();
		insert into nota (idhorario,ciber,idproceso,nota1,nota2,nota3,promedio) select idhorario,null,id_proceso,'0','0','0','1' from horario where idgrupo=id_grupo;
		insert into cuota (idproceso,matricula,monto,fecpago,concepto,estado,descuento) select id_proceso,1,matricula,fecha,'Pago por derecho al examen','0',0 from grupo where idgrupo=id_grupo;
		if pag_o = 0 then
			insert into cuota (idproceso,matricula,monto,fecpago,concepto,estado,descuento) select id_proceso,0,pension,fecha,'Pago de mensualidad por recuperacion','0',0 from grupo where idgrupo=id_grupo; 
		end if;
		update grupo set matriculados=matriculados+1 where idgrupo=id_grupo;
		select concat('La matricula se ha realizado-',id_alumno) as mensaje;
	end;
	if resultado = 1 then
		select concat('Error: La matricula no se pudo realizar-0') as mensaje;
	end if;
end //

drop procedure if exists sp_nuevo_proceso //
create procedure sp_nuevo_proceso(id_tipo int,id_alumno int,id_grupo int,apoderado_ int)
begin
	declare id_proceso int;
	declare mes int default 0;
	declare tipo_pago tinyint default 1;
	declare fecha date;
	declare fin date;
	declare cuota tinyint default 1;
	declare meses tinyint default 0;
	declare resultado tinyint default 0;
	begin
		declare exit handler for sqlexception set resultado = 1;
		set fecha = (select fecini from grupo where idgrupo=id_grupo);
		set fin = (select fecfin from grupo where idgrupo=id_grupo);
		set meses = month(fin) - month(fecha) + 2;
		insert into proceso (idtipo,idalumno,apoderado,fecreg,estado,promovido) values (id_tipo,id_alumno,apoderado_,curdate(),'1','0');
		set id_proceso = last_insert_id();
		insert into nota (idhorario,ciber,idproceso,nota1,nota2,nota3,promedio) select idhorario,null,id_proceso,'','','','1' from horario where idgrupo=id_grupo;
		while cuota <= meses do
			insert into cuota (idproceso,matricula,monto,fecpago,concepto,estado,descuento) select id_proceso,tipo_pago,if(tipo_pago=1,matricula,pension),fecha,if(tipo_pago=1,'Pago por matricula',concat('Cuota de mensualidad',' numero ',cuota-1)),'0',0 from grupo where idgrupo=id_grupo;
			if tipo_pago = 1 then set tipo_pago = 0;
			else
				case month(fecha)
					when 1 then set mes=31;
					when 2 then if mod(year(fecha),4)=0 then set mes=29;else set mes=29; end if;
					when 3 then set mes=31;
					when 4 then set mes=30;
					when 5 then set mes=31;
					when 6 then set mes=30;
					when 7 then set mes=31;
					when 8 then set mes=31;
					when 9 then set mes=30;
					when 10 then set mes=31;
					when 11 then set mes=30;
					when 12 then set mes=31;
				end case;
				set fecha = adddate(fecha,interval mes day);
			end if;
			set cuota = cuota + 1;
		end while;
		update grupo set matriculados=matriculados+1 where idgrupo=id_grupo;
		select concat('La matricula se ha realizado-',id_alumno) as mensaje;
	end;
	if resultado = 1 then
		select concat('Error: La matricula no se pudo realizar-0') as mensaje;
	end if;
end //

drop procedure if exists sp_ingresa_pago_cuota //
create procedure sp_ingresa_pago_cuota(id_cuota int,n_documento varchar(15),id_usuario int,monto_ double,fecpago_ date)
begin
	declare acumulado double default 0;
	declare apagar double default 0;
	declare resultado tinyint default 0;
	declare id_doc int default 0;
	declare existe_documento tinyint default 0;
	begin
		select count(*) into existe_documento from documento where ndocumento=n_documento;
		if existe_documento = 0 then
			set apagar = (select round(monto-descuento,2) from cuota where idcuota=id_cuota);
			insert into documento (idcuota,ndocumento,idusuario,monto,fecpago,estado) values (id_cuota,n_documento,id_usuario,monto_,fecpago_,'1');
			set id_doc = last_insert_id();
			set acumulado = (select round(coalesce(sum(monto),0),2) from documento where idcuota=id_cuota and estado='1');
			if acumulado >= apagar then
				update cuota set estado='1' where estado='0' and idcuota=id_cuota;
			end if;
			select concat('El pago ha sido registrado-1-',id_doc) as mensaje;
		else
			select concat('Error: El numero de documento ya fue asignado antes-0') as mensaje;
		end if;
	end;
	if resultado = 1 then
		select concat('Error: El pago no fue registrado') as mensaje;
	end if;
end //

drop procedure if exists sp_agrega_descuento //
create procedure sp_agrega_descuento(id_proceso int,id_motivo int)
begin
	declare existe tinyint default 0;
	declare fecinic date;
	declare porcent double default 0;
	declare cuota double default 0;
	declare descuent double default 0;
	set existe = (select count(*) from descuento where idproceso=id_proceso and estado='1');
	if existe = 0 then
		set fecinic = (select fecpago from cuota c where idproceso=id_proceso and (select coalesce(sum(monto),0) from documento where idcuota=c.idcuota)=0 order by fecpago asc limit 0,1);
		set porcent = (select porcentaje from motivo where idmotivo=id_motivo);
		set cuota = (select monto from cuota where idproceso=id_proceso and estado='0' group by monto);
		set descuent = (cuota*porcent)/100;
		insert into descuento(idproceso,idmotivo,monto,fecreg,fecini,estado) values (id_proceso,id_motivo,descuent,curdate(),fecinic,'1');
		update cuota set monto = monto - descuent where idproceso=id_proceso and estado='0' and (select count(*) from documento where idcuota=cuota.idcuota)=0;
	end if;
end //

drop procedure if exists sp_nuevo_alumno //
create procedure sp_nuevo_alumno(id_distrito int,ideducando_ varchar(14),nombres_ varchar(30),sexo_ char(1),direc text,fecnac_ date,tlf varchar(12),parentesco varchar(30),cel varchar(12))
begin
	declare id_alumno int default 0;
	declare resultado tinyint default 0;
	declare estado tinyint default 0;
	begin
		declare exit handler for sqlexception set resultado = 1;
		set estado = (select count(*) from alumno where ideducando=ideducando_);
		if estado = 0 then
			insert into alumno (iddistrito,ideducando,nombres,sexo,direccion,fecnac,fecreg,telefono,celular,foto) values (id_distrito,ideducando_,nombres_,sexo_,direc,fecnac_,curdate(),tlf,cel,'');
			set id_alumno = last_insert_id();
			call sp_agrega_parentesco(id_alumno,parentesco);
			select concat('El alumno <b>',nombres_,'</b> fue registrado') as mensaje;
		else
			select concat('Error: El codigo del alumno ya esta en uso') as mensaje;
		end if;
	end;
	if resultado = 1 then
		select concat('Error: El alumno <b>',nombres_,'</b> no fue registrado') as mensaje;
	end if;
end //

drop procedure if exists sp_actualiza_datos_alumno //
create procedure sp_actualiza_datos_alumno(id_alumno int,id_distrito int,educando varchar(14),nom varchar(30),sex char(1),direc text,fec_nac date,tlf varchar(12),cel varchar(12))
begin
	declare resultado tinyint default 0;
	begin
		declare exit handler for sqlexception set resultado = 1;
		update alumno set iddistrito=id_distrito,ideducando=educando,nombres=nom,sexo=sex,direccion=direc,fecnac=fec_nac,telefono=tlf,celular=cel where idalumno=id_alumno;
		 select concat('Los datos del alumno fueron actualizados') as mensaje;
	end;
	if resultado = 1 then
		select concat('Error: Los datos del alumno no fueron actualizados') as mensaje;
	end if;
end //

drop procedure if exists sp_actualiza_datos_padre //
create procedure sp_actualiza_datos_padre(id_padre int,ape varchar(30),nom varchar(30),dir text,tlf varchar(15),cel varchar(15),ocupa text,fec date,sex char(1),civ char(1))
begin
	declare resultado tinyint default 0;
	begin
		declare exit handler for sqlexception set resultado = 1;
		update padre set apellidos=ape,nombres=nom,direccion=dir,telefono=tlf,celular=cel,ocupacion=ocupa,fecnac=fec,sexo=sex,estciv=civ where idpadre=id_padre;
		 select concat('Los datos del padre fueron actualizados') as mensaje;
	end;
	if resultado = 1 then
		select concat('Error: Los datos del padre no fueron actualizados') as mensaje;
	end if;
end //

drop procedure if exists sp_existencia_de_parentesco //
create procedure sp_existencia_de_parentesco(id_padre int)
begin
	declare resultado tinyint default 0;
	set resultado = (select count(*) from parentesco where idpadre=id_padre and padre='1');
	select resultado;
end //

drop procedure if exists sp_agrega_parentesco //
create procedure sp_agrega_parentesco(id_alumno int,parentes varchar(30))
begin
	declare comas tinyint;
	declare elemento text;
	declare padrecheck char(1);
	declare apoderacheck char(1);
	set parentes = concat(parentes,',','');
	set comas = instr(parentes,',');
	while comas > 0 do
		set elemento = substring(parentes,1,comas-1);
		set parentes = substring(parentes,comas+1);
		set padrecheck = substring(elemento,1,1);
		set apoderacheck = substring(elemento,2,1);
		set elemento = substring(elemento,3);
		insert into parentesco (idpadre,idalumno,fecreg,padre,apoderado) values (elemento,id_alumno,curdate(),padrecheck,apoderacheck);
		set comas = instr(parentes,',');
	end while;
end //

drop trigger if exists tr_asigna_apellido //
create trigger tr_asigna_apellido after insert on parentesco
for each row
begin
	declare padrecheck char(1);
	declare apellido varchar(30);
	declare comas tinyint;
	declare sex char(1);
	set padrecheck = new.padre;
	if padrecheck = '1' then
		set sex = (select sexo from padre where idpadre=new.idpadre);
		set apellido = (select apellidos from padre where idpadre=new.idpadre);
		set comas = instr(apellido,' ');
		set apellido = substring(apellido,1,comas-1);
		if sex = '1' then
			update alumno set apepaterno=apellido where idalumno=new.idalumno;
		else
			update alumno set apematerno=apellido where idalumno=new.idalumno;
		end if;
	end if;
end //

drop procedure if exists sp_valida_acceso //
create procedure sp_valida_acceso(id_usuario varchar(30),id_pagina int)
begin
	select c.estado from acceso a inner join control c on a.idacceso=c.idacceso inner join permiso p on c.idpermiso=p.idpermiso where a.idpagina=id_pagina and a.idusuario=id_usuario;
end //

