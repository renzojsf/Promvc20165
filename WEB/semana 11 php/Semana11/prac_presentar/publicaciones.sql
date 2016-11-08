# IDAT clase de php
# realizar las consultas.
drop database if exists clase;
create database if not exists clase;
USE clase;


#
# Table structure for table 'editorial'
#

DROP TABLE IF EXISTS editorial;
CREATE TABLE IF NOT EXISTS editorial (
  id_editorial tinyint(3) unsigned NOT NULL DEFAULT '0' ,
  editorial char(100) DEFAULT '0' ,
  PRIMARY KEY (id_editorial),
  UNIQUE KEY id_editorial (id_editorial),
   KEY id_editorial_2 (id_editorial)
);



#
# Dumping data for table 'editorial'
#
INSERT INTO editorial (id_editorial, editorial) VALUES("1", "Gestion Juventud");
INSERT INTO editorial (id_editorial, editorial) VALUES("2", "Creando Futuro");
INSERT INTO editorial (id_editorial, editorial) VALUES("3", "Peru Lector");
INSERT INTO editorial (id_editorial, editorial) VALUES("4", "Leer Peruanos");
INSERT INTO editorial (id_editorial, editorial) VALUES("5", "Mc Sotomayor");
INSERT INTO editorial (id_editorial, editorial) VALUES("6", "Virtual Vision");
INSERT INTO editorial (id_editorial, editorial) VALUES("7", "Empresa Editorial");
INSERT INTO editorial (id_editorial, editorial) VALUES("8", "Lector X Siempre");
INSERT INTO editorial (id_editorial, editorial) VALUES("9", "No leemos Peru");
INSERT INTO editorial (id_editorial, editorial) VALUES("10", "Peru Promocion");


#
# Table structure for table 'libros'
#

DROP TABLE IF EXISTS libros;
CREATE TABLE IF NOT EXISTS libros (
  codigo tinyint(3) unsigned NOT NULL auto_increment,
  titulo char(150) DEFAULT '0' ,
  id_editorial tinyint(3) unsigned DEFAULT '0' ,
  precio int(8) unsigned DEFAULT '0' ,
  PRIMARY KEY (codigo),
  UNIQUE KEY codigo (codigo),
   KEY codigo_2 (codigo)
);



#
# Dumping data for table 'libros'
#
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("1", "PHP avanzado", "3", "410");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("2", "Analisis Estadistico con SPSS", "8", "320");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("3", "Microsoft Office 2007", "3", "470");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("4", "Sectorizacion-herramientas avanzadas", "3", "250");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("5", "Programacion en ASP", "3", "890");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("6", "PHP avanzado", "1", "890");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("7", "Diagramacion Grafica por computadora", "8", "150");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("8", "Animaciones en Flash", "2", "320");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("9", "Animaciones en Flash", "2", "95");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("10", "Sectorizacion-herramientas avanzadas", "4", "480");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("11", "Programacion en ASP", "1", "250");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("12", "Microsoft Office 2007", "5", "320");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("13", "Animaciones en Flash", "5", "890");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("14", "Analisis Estadistico con SPSS", "1", "250");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("15", "Animaciones en Flash", "6", "890");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("16", "Animaciones en Flash", "7", "150");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("17", "PHP avanzado", "4", "95");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("18", "Autocad", "7", "220");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("19", "Programacion en ASP", "3", "410");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("20", "Programacion en ASP", "8", "320");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("21", "Analisis Estadistico con SPSS", "3", "150");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("22", "Programacion en ASP", "1", "470");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("23", "Diagramacion Grafica por computadora", "2", "480");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("24", "Diagramacion Grafica por computadora", "8", "220");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("25", "PHP avanzado", "8", "150");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("26", "Diagramacion Grafica por computadora", "7", "150");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("27", "Gestion de Procesos", "6", "150");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("28", "Animaciones en Flash", "3", "410");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("29", "Autocad", "8", "410");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("30", "Microsoft Office 2007", "1", "410");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("31", "Programacion en ASP", "4", "95");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("32", "Programacion en ASP", "1", "480");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("33", "Animaciones en Flash", "4", "410");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("34", "Diagramacion Grafica por computadora", "5", "890");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("35", "Sectorizacion-herramientas avanzadas", "6", "150");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("36", "Sectorizacion-herramientas avanzadas", "8", "470");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("37", "Microsoft Office 2007", "8", "320");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("38", "Analisis Estadistico con SPSS", "1", "150");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("39", "Gestion de Procesos", "2", "250");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("40", "Gestion de Procesos", "5", "410");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("41", "Microsoft Office 2007", "8", "250");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("42", "Diagramacion Grafica por computadora", "3", "320");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("43", "Diagramacion Grafica por computadora", "8", "410");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("44", "Diagramacion Grafica por computadora", "3", "220");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("45", "Sectorizacion-herramientas avanzadas", "6", "480");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("46", "PHP avanzado", "6", "890");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("47", "Programacion en ASP", "6", "890");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("48", "Animaciones en Flash", "1", "470");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("49", "Analisis Estadistico con SPSS", "3", "410");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("50", "Animaciones en Flash", "8", "95");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("51", "Microsoft Office 2007", "4", "320");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("52", "Sectorizacion-herramientas avanzadas", "5", "410");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("53", "Gestion de Procesos", "8", "470");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("54", "Animaciones en Flash", "6", "95");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("55", "Diagramacion Grafica por computadora", "3", "890");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("56", "Diagramacion Grafica por computadora", "4", "410");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("57", "Diagramacion Grafica por computadora", "7", "320");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("58", "Programacion en ASP", "7", "890");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("59", "Animaciones en Flash", "6", "320");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("60", "Programacion en ASP", "1", "890");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("61", "Analisis Estadistico con SPSS", "7", "480");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("62", "Analisis Estadistico con SPSS", "2", "320");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("63", "Diagramacion Grafica por computadora", "5", "220");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("64", "Sectorizacion-herramientas avanzadas", "5", "410");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("65", "Autocad", "5", "470");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("66", "Gestion de Procesos", "2", "150");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("67", "Microsoft Office 2007", "8", "410");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("68", "Programacion en ASP", "8", "410");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("69", "Analisis Estadistico con SPSS", "1", "480");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("70", "Microsoft Office 2007", "1", "150");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("71", "Diagramacion Grafica por computadora", "4", "480");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("72", "Gestion de Procesos", "6", "890");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("73", "Programacion en ASP", "2", "890");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("74", "PHP avanzado", "2", "890");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("75", "Analisis Estadistico con SPSS", "3", "95");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("76", "Autocad", "2", "250");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("77", "Microsoft Office 2007", "2", "320");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("78", "Autocad", "5", "95");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("79", "Microsoft Office 2007", "2", "890");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("80", "Animaciones en Flash", "7", "320");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("81", "Gestion de Procesos", "1", "480");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("82", "Microsoft Office 2007", "7", "95");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("83", "Animaciones en Flash", "4", "95");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("84", "Diagramacion Grafica por computadora", "1", "410");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("85", "Microsoft Office 2007", "6", "470");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("86", "Sectorizacion-herramientas avanzadas", "7", "150");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("87", "Analisis Estadistico con SPSS", "6", "250");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("88", "Animaciones en Flash", "1", "480");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("89", "Diagramacion Grafica por computadora", "3", "470");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("90", "Gestion de Procesos", "6", "150");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("91", "Autocad", "5", "250");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("92", "Gestion de Procesos", "4", "95");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("93", "Autocad", "2", "480");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("94", "PHP avanzado", "6", "150");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("95", "Gestion de Procesos", "7", "890");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("96", "Diagramacion Grafica por computadora", "6", "150");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("97", "PHP avanzado", "5", "150");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("98", "Diagramacion Grafica por computadora", "4", "320");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("99", "Gestion de Procesos", "5", "410");
INSERT INTO libros (codigo, titulo, id_editorial, precio) VALUES("100", "Microsoft Office 2007", "6", "470");
