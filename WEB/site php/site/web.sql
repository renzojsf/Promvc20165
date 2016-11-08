-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 15-07-2010 a las 10:42:17
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `web`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `aarea`
-- 

CREATE TABLE `aarea` (
  `idaarea` int(11) NOT NULL auto_increment,
  `aarea` varchar(50) collate utf8_spanish2_ci default NULL,
  PRIMARY KEY  (`idaarea`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=12 ;

-- 
-- Volcar la base de datos para la tabla `aarea`
-- 

INSERT INTO `aarea` VALUES (1, 'Comunicacion Integral');
INSERT INTO `aarea` VALUES (2, 'Logico Matematico');
INSERT INTO `aarea` VALUES (3, 'Personal Social');
INSERT INTO `aarea` VALUES (4, 'Ciencia Y Ambiente');
INSERT INTO `aarea` VALUES (5, 'Talleres');
INSERT INTO `aarea` VALUES (6, 'Religion');
INSERT INTO `aarea` VALUES (7, 'Educacion Artistica');
INSERT INTO `aarea` VALUES (8, 'Educacion Fisica');
INSERT INTO `aarea` VALUES (9, 'Otros');
INSERT INTO `aarea` VALUES (10, 'Ingles');
INSERT INTO `aarea` VALUES (11, 'Cultura General');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `acceso`
-- 

CREATE TABLE `acceso` (
  `idacceso` int(11) NOT NULL auto_increment,
  `idpagina` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  PRIMARY KEY  (`idacceso`),
  KEY `acceso_FKIndex1` (`idusuario`),
  KEY `acceso_FKIndex2` (`idpagina`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=401 ;

-- 
-- Volcar la base de datos para la tabla `acceso`
-- 

INSERT INTO `acceso` VALUES (1, 1, 1);
INSERT INTO `acceso` VALUES (2, 2, 1);
INSERT INTO `acceso` VALUES (3, 3, 1);
INSERT INTO `acceso` VALUES (4, 4, 1);
INSERT INTO `acceso` VALUES (5, 5, 1);
INSERT INTO `acceso` VALUES (6, 6, 1);
INSERT INTO `acceso` VALUES (7, 7, 1);
INSERT INTO `acceso` VALUES (8, 8, 1);
INSERT INTO `acceso` VALUES (9, 9, 1);
INSERT INTO `acceso` VALUES (10, 10, 1);
INSERT INTO `acceso` VALUES (11, 11, 1);
INSERT INTO `acceso` VALUES (12, 12, 1);
INSERT INTO `acceso` VALUES (13, 13, 1);
INSERT INTO `acceso` VALUES (14, 14, 1);
INSERT INTO `acceso` VALUES (15, 15, 1);
INSERT INTO `acceso` VALUES (16, 16, 1);
INSERT INTO `acceso` VALUES (17, 17, 1);
INSERT INTO `acceso` VALUES (18, 18, 1);
INSERT INTO `acceso` VALUES (19, 19, 1);
INSERT INTO `acceso` VALUES (20, 20, 1);
INSERT INTO `acceso` VALUES (21, 21, 1);
INSERT INTO `acceso` VALUES (22, 22, 1);
INSERT INTO `acceso` VALUES (23, 23, 1);
INSERT INTO `acceso` VALUES (24, 24, 1);
INSERT INTO `acceso` VALUES (25, 25, 1);
INSERT INTO `acceso` VALUES (26, 26, 1);
INSERT INTO `acceso` VALUES (27, 27, 1);
INSERT INTO `acceso` VALUES (28, 28, 1);
INSERT INTO `acceso` VALUES (29, 29, 1);
INSERT INTO `acceso` VALUES (30, 30, 1);
INSERT INTO `acceso` VALUES (31, 31, 1);
INSERT INTO `acceso` VALUES (32, 32, 1);
INSERT INTO `acceso` VALUES (33, 33, 1);
INSERT INTO `acceso` VALUES (34, 34, 1);
INSERT INTO `acceso` VALUES (35, 35, 1);
INSERT INTO `acceso` VALUES (36, 36, 1);
INSERT INTO `acceso` VALUES (37, 37, 1);
INSERT INTO `acceso` VALUES (38, 38, 1);
INSERT INTO `acceso` VALUES (39, 39, 1);
INSERT INTO `acceso` VALUES (40, 40, 1);
INSERT INTO `acceso` VALUES (41, 41, 1);
INSERT INTO `acceso` VALUES (42, 1, 2);
INSERT INTO `acceso` VALUES (43, 2, 2);
INSERT INTO `acceso` VALUES (44, 3, 2);
INSERT INTO `acceso` VALUES (45, 4, 2);
INSERT INTO `acceso` VALUES (46, 5, 2);
INSERT INTO `acceso` VALUES (47, 6, 2);
INSERT INTO `acceso` VALUES (48, 7, 2);
INSERT INTO `acceso` VALUES (49, 8, 2);
INSERT INTO `acceso` VALUES (50, 9, 2);
INSERT INTO `acceso` VALUES (51, 10, 2);
INSERT INTO `acceso` VALUES (52, 11, 2);
INSERT INTO `acceso` VALUES (53, 12, 2);
INSERT INTO `acceso` VALUES (54, 13, 2);
INSERT INTO `acceso` VALUES (55, 14, 2);
INSERT INTO `acceso` VALUES (56, 15, 2);
INSERT INTO `acceso` VALUES (57, 16, 2);
INSERT INTO `acceso` VALUES (58, 17, 2);
INSERT INTO `acceso` VALUES (59, 18, 2);
INSERT INTO `acceso` VALUES (60, 19, 2);
INSERT INTO `acceso` VALUES (61, 20, 2);
INSERT INTO `acceso` VALUES (62, 21, 2);
INSERT INTO `acceso` VALUES (63, 22, 2);
INSERT INTO `acceso` VALUES (64, 23, 2);
INSERT INTO `acceso` VALUES (65, 24, 2);
INSERT INTO `acceso` VALUES (66, 25, 2);
INSERT INTO `acceso` VALUES (67, 26, 2);
INSERT INTO `acceso` VALUES (68, 27, 2);
INSERT INTO `acceso` VALUES (69, 28, 2);
INSERT INTO `acceso` VALUES (70, 29, 2);
INSERT INTO `acceso` VALUES (71, 30, 2);
INSERT INTO `acceso` VALUES (72, 31, 2);
INSERT INTO `acceso` VALUES (73, 32, 2);
INSERT INTO `acceso` VALUES (74, 33, 2);
INSERT INTO `acceso` VALUES (75, 34, 2);
INSERT INTO `acceso` VALUES (76, 35, 2);
INSERT INTO `acceso` VALUES (77, 36, 2);
INSERT INTO `acceso` VALUES (78, 37, 2);
INSERT INTO `acceso` VALUES (79, 38, 2);
INSERT INTO `acceso` VALUES (80, 39, 2);
INSERT INTO `acceso` VALUES (81, 40, 2);
INSERT INTO `acceso` VALUES (82, 41, 2);
INSERT INTO `acceso` VALUES (83, 1, 3);
INSERT INTO `acceso` VALUES (84, 2, 3);
INSERT INTO `acceso` VALUES (85, 3, 3);
INSERT INTO `acceso` VALUES (86, 4, 3);
INSERT INTO `acceso` VALUES (87, 5, 3);
INSERT INTO `acceso` VALUES (88, 6, 3);
INSERT INTO `acceso` VALUES (89, 7, 3);
INSERT INTO `acceso` VALUES (90, 8, 3);
INSERT INTO `acceso` VALUES (91, 9, 3);
INSERT INTO `acceso` VALUES (92, 10, 3);
INSERT INTO `acceso` VALUES (93, 11, 3);
INSERT INTO `acceso` VALUES (94, 12, 3);
INSERT INTO `acceso` VALUES (95, 13, 3);
INSERT INTO `acceso` VALUES (96, 14, 3);
INSERT INTO `acceso` VALUES (97, 15, 3);
INSERT INTO `acceso` VALUES (98, 16, 3);
INSERT INTO `acceso` VALUES (99, 17, 3);
INSERT INTO `acceso` VALUES (100, 18, 3);
INSERT INTO `acceso` VALUES (101, 19, 3);
INSERT INTO `acceso` VALUES (102, 20, 3);
INSERT INTO `acceso` VALUES (103, 21, 3);
INSERT INTO `acceso` VALUES (104, 22, 3);
INSERT INTO `acceso` VALUES (105, 23, 3);
INSERT INTO `acceso` VALUES (106, 24, 3);
INSERT INTO `acceso` VALUES (107, 25, 3);
INSERT INTO `acceso` VALUES (108, 26, 3);
INSERT INTO `acceso` VALUES (109, 27, 3);
INSERT INTO `acceso` VALUES (110, 28, 3);
INSERT INTO `acceso` VALUES (111, 29, 3);
INSERT INTO `acceso` VALUES (112, 30, 3);
INSERT INTO `acceso` VALUES (113, 31, 3);
INSERT INTO `acceso` VALUES (114, 32, 3);
INSERT INTO `acceso` VALUES (115, 33, 3);
INSERT INTO `acceso` VALUES (116, 34, 3);
INSERT INTO `acceso` VALUES (117, 35, 3);
INSERT INTO `acceso` VALUES (118, 36, 3);
INSERT INTO `acceso` VALUES (119, 37, 3);
INSERT INTO `acceso` VALUES (120, 38, 3);
INSERT INTO `acceso` VALUES (121, 39, 3);
INSERT INTO `acceso` VALUES (122, 40, 3);
INSERT INTO `acceso` VALUES (123, 41, 3);
INSERT INTO `acceso` VALUES (124, 42, 1);
INSERT INTO `acceso` VALUES (125, 42, 2);
INSERT INTO `acceso` VALUES (126, 42, 3);
INSERT INTO `acceso` VALUES (127, 1, 4);
INSERT INTO `acceso` VALUES (128, 2, 4);
INSERT INTO `acceso` VALUES (129, 3, 4);
INSERT INTO `acceso` VALUES (130, 4, 4);
INSERT INTO `acceso` VALUES (131, 5, 4);
INSERT INTO `acceso` VALUES (132, 6, 4);
INSERT INTO `acceso` VALUES (133, 7, 4);
INSERT INTO `acceso` VALUES (134, 8, 4);
INSERT INTO `acceso` VALUES (135, 9, 4);
INSERT INTO `acceso` VALUES (136, 10, 4);
INSERT INTO `acceso` VALUES (137, 11, 4);
INSERT INTO `acceso` VALUES (138, 12, 4);
INSERT INTO `acceso` VALUES (139, 13, 4);
INSERT INTO `acceso` VALUES (140, 14, 4);
INSERT INTO `acceso` VALUES (141, 15, 4);
INSERT INTO `acceso` VALUES (142, 16, 4);
INSERT INTO `acceso` VALUES (143, 17, 4);
INSERT INTO `acceso` VALUES (144, 18, 4);
INSERT INTO `acceso` VALUES (145, 19, 4);
INSERT INTO `acceso` VALUES (146, 20, 4);
INSERT INTO `acceso` VALUES (147, 21, 4);
INSERT INTO `acceso` VALUES (148, 22, 4);
INSERT INTO `acceso` VALUES (149, 23, 4);
INSERT INTO `acceso` VALUES (150, 24, 4);
INSERT INTO `acceso` VALUES (151, 25, 4);
INSERT INTO `acceso` VALUES (152, 26, 4);
INSERT INTO `acceso` VALUES (153, 27, 4);
INSERT INTO `acceso` VALUES (154, 28, 4);
INSERT INTO `acceso` VALUES (155, 29, 4);
INSERT INTO `acceso` VALUES (156, 30, 4);
INSERT INTO `acceso` VALUES (157, 31, 4);
INSERT INTO `acceso` VALUES (158, 32, 4);
INSERT INTO `acceso` VALUES (159, 33, 4);
INSERT INTO `acceso` VALUES (160, 34, 4);
INSERT INTO `acceso` VALUES (161, 35, 4);
INSERT INTO `acceso` VALUES (162, 36, 4);
INSERT INTO `acceso` VALUES (163, 37, 4);
INSERT INTO `acceso` VALUES (164, 38, 4);
INSERT INTO `acceso` VALUES (165, 39, 4);
INSERT INTO `acceso` VALUES (166, 40, 4);
INSERT INTO `acceso` VALUES (167, 41, 4);
INSERT INTO `acceso` VALUES (168, 42, 4);
INSERT INTO `acceso` VALUES (169, 43, 1);
INSERT INTO `acceso` VALUES (170, 44, 1);
INSERT INTO `acceso` VALUES (171, 45, 1);
INSERT INTO `acceso` VALUES (172, 43, 2);
INSERT INTO `acceso` VALUES (173, 44, 2);
INSERT INTO `acceso` VALUES (174, 45, 2);
INSERT INTO `acceso` VALUES (175, 43, 3);
INSERT INTO `acceso` VALUES (176, 44, 3);
INSERT INTO `acceso` VALUES (177, 45, 3);
INSERT INTO `acceso` VALUES (178, 43, 4);
INSERT INTO `acceso` VALUES (179, 44, 4);
INSERT INTO `acceso` VALUES (180, 45, 4);
INSERT INTO `acceso` VALUES (181, 46, 1);
INSERT INTO `acceso` VALUES (182, 46, 2);
INSERT INTO `acceso` VALUES (183, 46, 3);
INSERT INTO `acceso` VALUES (184, 46, 4);
INSERT INTO `acceso` VALUES (185, 47, 1);
INSERT INTO `acceso` VALUES (186, 47, 2);
INSERT INTO `acceso` VALUES (187, 47, 3);
INSERT INTO `acceso` VALUES (188, 47, 4);
INSERT INTO `acceso` VALUES (189, 48, 1);
INSERT INTO `acceso` VALUES (190, 48, 2);
INSERT INTO `acceso` VALUES (191, 48, 3);
INSERT INTO `acceso` VALUES (192, 48, 4);
INSERT INTO `acceso` VALUES (193, 49, 1);
INSERT INTO `acceso` VALUES (194, 49, 2);
INSERT INTO `acceso` VALUES (195, 49, 3);
INSERT INTO `acceso` VALUES (196, 49, 4);
INSERT INTO `acceso` VALUES (197, 50, 1);
INSERT INTO `acceso` VALUES (198, 50, 2);
INSERT INTO `acceso` VALUES (199, 50, 3);
INSERT INTO `acceso` VALUES (200, 50, 4);
INSERT INTO `acceso` VALUES (201, 1, 5);
INSERT INTO `acceso` VALUES (202, 2, 5);
INSERT INTO `acceso` VALUES (203, 3, 5);
INSERT INTO `acceso` VALUES (204, 4, 5);
INSERT INTO `acceso` VALUES (205, 5, 5);
INSERT INTO `acceso` VALUES (206, 6, 5);
INSERT INTO `acceso` VALUES (207, 7, 5);
INSERT INTO `acceso` VALUES (208, 8, 5);
INSERT INTO `acceso` VALUES (209, 9, 5);
INSERT INTO `acceso` VALUES (210, 10, 5);
INSERT INTO `acceso` VALUES (211, 11, 5);
INSERT INTO `acceso` VALUES (212, 12, 5);
INSERT INTO `acceso` VALUES (213, 13, 5);
INSERT INTO `acceso` VALUES (214, 14, 5);
INSERT INTO `acceso` VALUES (215, 15, 5);
INSERT INTO `acceso` VALUES (216, 16, 5);
INSERT INTO `acceso` VALUES (217, 17, 5);
INSERT INTO `acceso` VALUES (218, 18, 5);
INSERT INTO `acceso` VALUES (219, 19, 5);
INSERT INTO `acceso` VALUES (220, 20, 5);
INSERT INTO `acceso` VALUES (221, 21, 5);
INSERT INTO `acceso` VALUES (222, 22, 5);
INSERT INTO `acceso` VALUES (223, 23, 5);
INSERT INTO `acceso` VALUES (224, 24, 5);
INSERT INTO `acceso` VALUES (225, 25, 5);
INSERT INTO `acceso` VALUES (226, 26, 5);
INSERT INTO `acceso` VALUES (227, 27, 5);
INSERT INTO `acceso` VALUES (228, 28, 5);
INSERT INTO `acceso` VALUES (229, 29, 5);
INSERT INTO `acceso` VALUES (230, 30, 5);
INSERT INTO `acceso` VALUES (231, 31, 5);
INSERT INTO `acceso` VALUES (232, 32, 5);
INSERT INTO `acceso` VALUES (233, 33, 5);
INSERT INTO `acceso` VALUES (234, 34, 5);
INSERT INTO `acceso` VALUES (235, 35, 5);
INSERT INTO `acceso` VALUES (236, 36, 5);
INSERT INTO `acceso` VALUES (237, 37, 5);
INSERT INTO `acceso` VALUES (238, 38, 5);
INSERT INTO `acceso` VALUES (239, 39, 5);
INSERT INTO `acceso` VALUES (240, 40, 5);
INSERT INTO `acceso` VALUES (241, 41, 5);
INSERT INTO `acceso` VALUES (242, 42, 5);
INSERT INTO `acceso` VALUES (243, 43, 5);
INSERT INTO `acceso` VALUES (244, 44, 5);
INSERT INTO `acceso` VALUES (245, 45, 5);
INSERT INTO `acceso` VALUES (246, 46, 5);
INSERT INTO `acceso` VALUES (247, 47, 5);
INSERT INTO `acceso` VALUES (248, 48, 5);
INSERT INTO `acceso` VALUES (249, 49, 5);
INSERT INTO `acceso` VALUES (250, 50, 5);
INSERT INTO `acceso` VALUES (251, 1, 6);
INSERT INTO `acceso` VALUES (252, 2, 6);
INSERT INTO `acceso` VALUES (253, 3, 6);
INSERT INTO `acceso` VALUES (254, 4, 6);
INSERT INTO `acceso` VALUES (255, 5, 6);
INSERT INTO `acceso` VALUES (256, 6, 6);
INSERT INTO `acceso` VALUES (257, 7, 6);
INSERT INTO `acceso` VALUES (258, 8, 6);
INSERT INTO `acceso` VALUES (259, 9, 6);
INSERT INTO `acceso` VALUES (260, 10, 6);
INSERT INTO `acceso` VALUES (261, 11, 6);
INSERT INTO `acceso` VALUES (262, 12, 6);
INSERT INTO `acceso` VALUES (263, 13, 6);
INSERT INTO `acceso` VALUES (264, 14, 6);
INSERT INTO `acceso` VALUES (265, 15, 6);
INSERT INTO `acceso` VALUES (266, 16, 6);
INSERT INTO `acceso` VALUES (267, 17, 6);
INSERT INTO `acceso` VALUES (268, 18, 6);
INSERT INTO `acceso` VALUES (269, 19, 6);
INSERT INTO `acceso` VALUES (270, 20, 6);
INSERT INTO `acceso` VALUES (271, 21, 6);
INSERT INTO `acceso` VALUES (272, 22, 6);
INSERT INTO `acceso` VALUES (273, 23, 6);
INSERT INTO `acceso` VALUES (274, 24, 6);
INSERT INTO `acceso` VALUES (275, 25, 6);
INSERT INTO `acceso` VALUES (276, 26, 6);
INSERT INTO `acceso` VALUES (277, 27, 6);
INSERT INTO `acceso` VALUES (278, 28, 6);
INSERT INTO `acceso` VALUES (279, 29, 6);
INSERT INTO `acceso` VALUES (280, 30, 6);
INSERT INTO `acceso` VALUES (281, 31, 6);
INSERT INTO `acceso` VALUES (282, 32, 6);
INSERT INTO `acceso` VALUES (283, 33, 6);
INSERT INTO `acceso` VALUES (284, 34, 6);
INSERT INTO `acceso` VALUES (285, 35, 6);
INSERT INTO `acceso` VALUES (286, 36, 6);
INSERT INTO `acceso` VALUES (287, 37, 6);
INSERT INTO `acceso` VALUES (288, 38, 6);
INSERT INTO `acceso` VALUES (289, 39, 6);
INSERT INTO `acceso` VALUES (290, 40, 6);
INSERT INTO `acceso` VALUES (291, 41, 6);
INSERT INTO `acceso` VALUES (292, 42, 6);
INSERT INTO `acceso` VALUES (293, 43, 6);
INSERT INTO `acceso` VALUES (294, 44, 6);
INSERT INTO `acceso` VALUES (295, 45, 6);
INSERT INTO `acceso` VALUES (296, 46, 6);
INSERT INTO `acceso` VALUES (297, 47, 6);
INSERT INTO `acceso` VALUES (298, 48, 6);
INSERT INTO `acceso` VALUES (299, 49, 6);
INSERT INTO `acceso` VALUES (300, 50, 6);
INSERT INTO `acceso` VALUES (301, 1, 7);
INSERT INTO `acceso` VALUES (302, 2, 7);
INSERT INTO `acceso` VALUES (303, 3, 7);
INSERT INTO `acceso` VALUES (304, 4, 7);
INSERT INTO `acceso` VALUES (305, 5, 7);
INSERT INTO `acceso` VALUES (306, 6, 7);
INSERT INTO `acceso` VALUES (307, 7, 7);
INSERT INTO `acceso` VALUES (308, 8, 7);
INSERT INTO `acceso` VALUES (309, 9, 7);
INSERT INTO `acceso` VALUES (310, 10, 7);
INSERT INTO `acceso` VALUES (311, 11, 7);
INSERT INTO `acceso` VALUES (312, 12, 7);
INSERT INTO `acceso` VALUES (313, 13, 7);
INSERT INTO `acceso` VALUES (314, 14, 7);
INSERT INTO `acceso` VALUES (315, 15, 7);
INSERT INTO `acceso` VALUES (316, 16, 7);
INSERT INTO `acceso` VALUES (317, 17, 7);
INSERT INTO `acceso` VALUES (318, 18, 7);
INSERT INTO `acceso` VALUES (319, 19, 7);
INSERT INTO `acceso` VALUES (320, 20, 7);
INSERT INTO `acceso` VALUES (321, 21, 7);
INSERT INTO `acceso` VALUES (322, 22, 7);
INSERT INTO `acceso` VALUES (323, 23, 7);
INSERT INTO `acceso` VALUES (324, 24, 7);
INSERT INTO `acceso` VALUES (325, 25, 7);
INSERT INTO `acceso` VALUES (326, 26, 7);
INSERT INTO `acceso` VALUES (327, 27, 7);
INSERT INTO `acceso` VALUES (328, 28, 7);
INSERT INTO `acceso` VALUES (329, 29, 7);
INSERT INTO `acceso` VALUES (330, 30, 7);
INSERT INTO `acceso` VALUES (331, 31, 7);
INSERT INTO `acceso` VALUES (332, 32, 7);
INSERT INTO `acceso` VALUES (333, 33, 7);
INSERT INTO `acceso` VALUES (334, 34, 7);
INSERT INTO `acceso` VALUES (335, 35, 7);
INSERT INTO `acceso` VALUES (336, 36, 7);
INSERT INTO `acceso` VALUES (337, 37, 7);
INSERT INTO `acceso` VALUES (338, 38, 7);
INSERT INTO `acceso` VALUES (339, 39, 7);
INSERT INTO `acceso` VALUES (340, 40, 7);
INSERT INTO `acceso` VALUES (341, 41, 7);
INSERT INTO `acceso` VALUES (342, 42, 7);
INSERT INTO `acceso` VALUES (343, 43, 7);
INSERT INTO `acceso` VALUES (344, 44, 7);
INSERT INTO `acceso` VALUES (345, 45, 7);
INSERT INTO `acceso` VALUES (346, 46, 7);
INSERT INTO `acceso` VALUES (347, 47, 7);
INSERT INTO `acceso` VALUES (348, 48, 7);
INSERT INTO `acceso` VALUES (349, 49, 7);
INSERT INTO `acceso` VALUES (350, 50, 7);
INSERT INTO `acceso` VALUES (351, 1, 8);
INSERT INTO `acceso` VALUES (352, 2, 8);
INSERT INTO `acceso` VALUES (353, 3, 8);
INSERT INTO `acceso` VALUES (354, 4, 8);
INSERT INTO `acceso` VALUES (355, 5, 8);
INSERT INTO `acceso` VALUES (356, 6, 8);
INSERT INTO `acceso` VALUES (357, 7, 8);
INSERT INTO `acceso` VALUES (358, 8, 8);
INSERT INTO `acceso` VALUES (359, 9, 8);
INSERT INTO `acceso` VALUES (360, 10, 8);
INSERT INTO `acceso` VALUES (361, 11, 8);
INSERT INTO `acceso` VALUES (362, 12, 8);
INSERT INTO `acceso` VALUES (363, 13, 8);
INSERT INTO `acceso` VALUES (364, 14, 8);
INSERT INTO `acceso` VALUES (365, 15, 8);
INSERT INTO `acceso` VALUES (366, 16, 8);
INSERT INTO `acceso` VALUES (367, 17, 8);
INSERT INTO `acceso` VALUES (368, 18, 8);
INSERT INTO `acceso` VALUES (369, 19, 8);
INSERT INTO `acceso` VALUES (370, 20, 8);
INSERT INTO `acceso` VALUES (371, 21, 8);
INSERT INTO `acceso` VALUES (372, 22, 8);
INSERT INTO `acceso` VALUES (373, 23, 8);
INSERT INTO `acceso` VALUES (374, 24, 8);
INSERT INTO `acceso` VALUES (375, 25, 8);
INSERT INTO `acceso` VALUES (376, 26, 8);
INSERT INTO `acceso` VALUES (377, 27, 8);
INSERT INTO `acceso` VALUES (378, 28, 8);
INSERT INTO `acceso` VALUES (379, 29, 8);
INSERT INTO `acceso` VALUES (380, 30, 8);
INSERT INTO `acceso` VALUES (381, 31, 8);
INSERT INTO `acceso` VALUES (382, 32, 8);
INSERT INTO `acceso` VALUES (383, 33, 8);
INSERT INTO `acceso` VALUES (384, 34, 8);
INSERT INTO `acceso` VALUES (385, 35, 8);
INSERT INTO `acceso` VALUES (386, 36, 8);
INSERT INTO `acceso` VALUES (387, 37, 8);
INSERT INTO `acceso` VALUES (388, 38, 8);
INSERT INTO `acceso` VALUES (389, 39, 8);
INSERT INTO `acceso` VALUES (390, 40, 8);
INSERT INTO `acceso` VALUES (391, 41, 8);
INSERT INTO `acceso` VALUES (392, 42, 8);
INSERT INTO `acceso` VALUES (393, 43, 8);
INSERT INTO `acceso` VALUES (394, 44, 8);
INSERT INTO `acceso` VALUES (395, 45, 8);
INSERT INTO `acceso` VALUES (396, 46, 8);
INSERT INTO `acceso` VALUES (397, 47, 8);
INSERT INTO `acceso` VALUES (398, 48, 8);
INSERT INTO `acceso` VALUES (399, 49, 8);
INSERT INTO `acceso` VALUES (400, 50, 8);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `alumno`
-- 

CREATE TABLE `alumno` (
  `idalumno` int(11) NOT NULL auto_increment,
  `iddistrito` int(11) NOT NULL,
  `ideducando` varchar(14) collate utf8_spanish2_ci NOT NULL,
  `nombres` varchar(30) collate utf8_spanish2_ci NOT NULL,
  `apepaterno` varchar(30) collate utf8_spanish2_ci NOT NULL,
  `apematerno` varchar(30) collate utf8_spanish2_ci NOT NULL,
  `sexo` char(1) collate utf8_spanish2_ci NOT NULL,
  `direccion` text collate utf8_spanish2_ci NOT NULL,
  `fecnac` date NOT NULL,
  `fecreg` date NOT NULL,
  `telefono` varchar(12) collate utf8_spanish2_ci default NULL,
  `celular` varchar(15) collate utf8_spanish2_ci default NULL,
  `foto` varchar(11) collate utf8_spanish2_ci default NULL,
  PRIMARY KEY  (`idalumno`),
  KEY `alumno_FKIndex1` (`iddistrito`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=93 ;

-- 
-- Volcar la base de datos para la tabla `alumno`
-- 

INSERT INTO `alumno` VALUES (1, 64, '1057462500010', 'Cecilia Maria', 'Adrianzen', 'Aguinaga', '0', 'Av. Grau #182', '2007-04-21', '2010-06-25', '(73)-258467', '', '');
INSERT INTO `alumno` VALUES (2, 64, '1057462500020', 'Manuel Gerardo', 'Agapito', 'Alamo', '1', 'Av grau 147', '2007-07-07', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (3, 64, '1057462500030', 'Carla Susana', 'Alarcon', 'Alvarado', '0', 'Los alelies 147', '2007-12-12', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (4, 64, '1057462500040', 'Patricia', 'Aleman', 'Alvarez', '0', 'Ca. tumbes 700', '2007-08-23', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (5, 64, '1057462500050', 'Mercedes', 'Angeles', 'Alvaro', '0', 'Manuel soani 500', '2007-09-28', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (6, 64, '1057462500060', 'Manuel', 'Baldera', 'Ayesta', '1', 'J.L.O # 100', '2007-12-17', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (7, 64, '1057462500070', 'Nelidita', 'Baldera', 'Baldera', '0', 'Nuevo mancora # 589', '2007-05-25', '2010-06-25', '(73)-859647', '', '');
INSERT INTO `alumno` VALUES (8, 64, '1057462500080', 'Frank', 'Bances', 'Bances', '1', 'Micaela bastidas', '2007-03-23', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (9, 64, '1057462500090', 'Jorge Luis', 'Bances', 'Barrantes', '1', 'Santa rosa # 474', '2007-08-28', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (10, 64, '1057462500100', 'Sandy', 'Barrantes', 'Barrantes', '0', 'Alfonso ugarte #144', '2006-01-01', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (11, 64, '1057462500110', 'Paolo', 'Bazan', 'Barrantes', '1', 'Av martin waiss', '2006-06-06', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (12, 63, '1057462500120', 'Florecita', 'Bazan', 'Barrantes', '0', 'Av san martin #501', '2006-05-05', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (13, 64, '1057462500130', 'Erica', 'Burga', 'Bravo', '0', 'Av san roman # 100', '2006-01-01', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (14, 64, '1057462500140', 'Mariana ', 'Capu', 'Burga', '0', 'Romon castilla s/n', '2006-08-08', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (15, 64, '1057462500150', 'Anjello Andres', 'Carrero', 'Cajusol', '1', 'Leticia # 758', '2006-10-10', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (16, 64, '1057462500160', 'Pablo Elias ', 'Carrion', 'Calderon', '1', 'San jose 567', '2006-08-16', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (17, 64, '1057462500170', 'Sandrita', 'Carrion', 'Calderon', '0', 'Margaritas # 122', '2006-10-10', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (18, 64, '1057462500180', 'Alexander Jose', 'Castellanos', 'Campos', '1', 'San luis 988', '2006-11-18', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (19, 64, '1057462500190', 'Eduardo Nicolas ', 'Chancafe', 'Carrasco', '1', 'Argentina # 888', '2006-11-29', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (20, 64, '1057462500200', 'Alejandro ', 'Chavez', 'Carrion', '1', 'Av pedri ruiz 656', '2006-05-20', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (21, 64, '1057462500210', 'Angelito Carlos', 'Chavez', 'Chumacedo', '1', 'Av demetrio acosta # 444', '2005-05-05', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (22, 64, '1057462500220', 'Nora Elvita', 'Chen', 'Chumioque', '0', 'Av san lorenzo 788', '2005-10-10', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (23, 64, '1057462500230', 'Maricarmen ', 'Chozo', 'Cieza', '0', 'Balta # 363', '2005-03-23', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (24, 64, '1057462500240', 'Neiber ', 'Corcuera', 'Cortez', '1', 'Arica #565', '2005-12-30', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (25, 64, '1057462500250', 'Claudia Marleni', 'Coronel', 'Delgado', '0', 'Santa victoria # 323', '2005-08-30', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (26, 64, '1057462500260', 'Angelica Maria', 'Cruz', 'Diaz', '0', 'Santa rosa # 900', '2005-06-26', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (27, 64, '1057462500270', 'Armando', 'De', 'Diaz', '1', 'Luis gonsales 444', '2005-07-27', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (28, 64, '1057462500280', 'Marisol Soledad', 'Del', 'Garcia', '0', 'Av 7 de enero # 700', '2005-08-28', '2010-06-25', '', '', '');
INSERT INTO `alumno` VALUES (29, 64, '1057462500290', 'Marixa Lucia', 'Del', 'Gil', '0', 'Av gray 174', '2005-12-20', '2010-06-26', '(73)-568920', '', '');
INSERT INTO `alumno` VALUES (30, 64, '1057462500300', 'Daniela ', 'Diaz', 'Gil', '0', 'Los pinos #899', '2005-11-26', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (31, 64, '1057462500310', 'Juan Jose Luis', 'Farro', 'Gimenes', '1', 'Luis gonzales', '2004-10-19', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (32, 64, '1057462500320', 'Rosalia', 'Fiestas', 'Gomez', '0', 'Av alfonzo ugarte #345', '2004-03-30', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (33, 64, '1057462500330', 'Teodora', 'Galan', 'Gonzales', '0', 'Mariscal caceres #566', '2004-12-13', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (34, 64, '1057462500340', 'Marleni Sol', 'Goicochea', 'Guerro', '0', 'Juan ortiz # 980', '2004-01-21', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (35, 64, '1057462500350', 'Juliana Cris', 'Gonzales', 'Guevara', '0', 'Av san lorenzo # 405', '2004-06-23', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (36, 64, '1057462500360', 'Alonso ', 'Granados', 'Guzman', '1', 'Urb 6 de febrero ', '2004-10-10', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (37, 63, '1057462500370', 'Maria Del Carmen', 'Heredia', 'Herrera', '0', 'Jose olaya #500', '2004-05-25', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (38, 64, '1057462500380', 'Lesli ', 'Hernandez', 'Horna', '0', 'Av piura1258', '2004-08-22', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (39, 64, '1057462500390', 'Veronica ', 'Ipanaque', 'Huaman', '0', 'Av piura 5963', '2004-02-26', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (40, 63, '1057462500400', 'Yannet', 'Jauregui', 'Huancas', '0', 'Barrio leticia', '2004-09-09', '2010-06-26', '(73)-202010', '', '');
INSERT INTO `alumno` VALUES (41, 64, '1057462500410', 'Adelaida', 'Jauregui', 'Lalangui', '0', 'Nuevo mancora #100', '2003-09-20', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (42, 64, '1057462500420', 'Benny', 'Ku', 'Lopez', '0', 'Santa rosa #200', '2003-02-23', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (43, 64, '1057462500430', 'Santa Maria', 'Lalangui', 'Marco', '0', 'Los algarrobos # 200', '2003-03-23', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (44, 64, '1057462500440', 'Lilianita', 'Larreatigue', 'Martinez', '0', 'Demetrio acosta', '2003-01-20', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (45, 64, '1057462500450', 'Eduardo ', 'Llauca', 'Mateo', '1', 'Maria Izaga #344', '2003-05-15', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (46, 64, '1057462500460', 'Katerine ', 'Llenque', 'Mego', '0', 'Los jardines #900', '2003-09-20', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (47, 64, '1057462500470', 'Margare', 'Loo', 'Nazario', '0', 'Santa elena # 200', '2003-01-31', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (48, 64, '1057462500480', 'Suhey', 'Lozano', 'Neira', '0', 'San luis Mz C', '2003-05-29', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (49, 64, '1057462500490', 'Carolay', 'Lozano', 'Olivos', '0', 'Av grau 800', '2003-02-24', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (50, 64, '1057462500500', 'Marcos Saul', 'Malca', 'Paredes', '1', 'Lobitos # 200', '2003-10-10', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (51, 64, '1057462500510', 'Mirella ', 'Marinez', 'Peralta', '0', 'Av. maria izaga #676', '2002-10-20', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (52, 64, '1057462500520', 'Libertad ', 'Mazabel', 'Quesquen', '0', 'San jose # 1000', '2003-01-01', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (53, 64, '1057462500530', 'Juan Carlos', 'More', 'Quesquen', '1', 'Satelite # 258', '2002-02-02', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (54, 64, '1057462500540', 'Roxana ', 'Mundaca', 'Quispe', '0', 'Santa victoria #1000', '2002-03-03', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (55, 64, '1057462500550', 'Alicia', 'Oca', 'Ramirez', '0', 'Luis gonsales #4862', '2002-04-04', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (56, 64, '1057462500560', 'Estrella', 'Ojeda', 'Ramos', '0', 'Santa cruz # 410', '2002-05-05', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (57, 64, '1057462500570', 'Alonso ', 'Paucar', 'Reyes', '1', 'Av legui # 212', '2002-06-06', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (58, 64, '1057462500580', 'Maria Fernanda', 'Pe', 'Rico', '0', 'Lora y lora #1212', '2002-07-07', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (59, 64, '1057462500590', 'Yessica', 'Perez', 'Roberto', '0', 'Las casuarinas # 700', '2002-02-20', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (60, 64, '1057462500600', 'Jeff', 'Perez', 'Romero', '1', 'Demetrio acosta #1025', '2002-06-06', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (61, 64, '1057462500610', 'Melisa ', 'Perez', 'Rodas', '0', 'Ramon castilla #325', '2001-01-31', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (62, 64, '1057462500620', 'Juan Alex', 'Pisfil', 'Salazar', '1', 'Nuevo mancora ', '2001-04-04', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (63, 64, '1057462500630', 'Martha', 'Plasencia', 'Sanchez', '0', 'Barrio nicaragua # 200', '2001-08-08', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (64, 64, '1057462500640', 'Ivan ', 'Quiroz', 'Sanchez', '1', 'Av san luis # 2058', '2001-09-09', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (65, 64, '1057462500650', 'Lucas ', 'Quispe', 'Sandoval', '1', 'Av nicaragua #125', '2001-10-10', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (66, 64, '1057462500660', 'Nicolas Edgar', 'Rodas', 'Rojas', '1', 'Santa rosa # 1000', '2001-05-15', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (67, 64, '1057462500670', 'Luis Eduardo', 'Rubio', 'Sandoval', '1', 'Av san francisco', '2001-12-13', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (68, 64, '1057462500680', 'Pablo Eliu', 'Santiesteban', 'Santacruz', '1', 'Av la victoria # 1866', '2001-12-16', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (69, 64, '1057462500690', 'Luis Alexander', 'Sialer', 'Santamaria', '1', 'Ca. talara # 2000', '2001-12-12', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (70, 64, '1057462500700', 'Anita ', 'Sialer', 'Santiesteban', '0', 'Ava demetrio acosta # 150', '2001-09-07', '2010-06-26', '', '', '');
INSERT INTO `alumno` VALUES (71, 64, '1057462500710', 'Saucedo Carlos', 'Suclupe', 'Solano', '1', 'Av. piura # 263', '2000-10-10', '2010-06-26', '(73)-859555', '', '');
INSERT INTO `alumno` VALUES (72, 64, '1057462500720', 'Sonia ', 'Flores', 'Tarrillo', '0', 'Suton #100', '2000-10-10', '2010-06-27', '', '', '');
INSERT INTO `alumno` VALUES (73, 64, '1057462500730', 'Leonardo Ivan', 'Tapia', 'Tejada', '1', 'Ca. lobitos # 4444', '2000-12-19', '2010-06-27', '', '', '');
INSERT INTO `alumno` VALUES (74, 64, '1057462500740', 'Betsy Laura', 'Vigo', 'Tirado', '0', 'Ca. micaela bastidas S/N', '2000-06-26', '2010-06-27', '', '', '');
INSERT INTO `alumno` VALUES (75, 64, '1057462500750', 'Jesus', 'Vilca', 'Vargas', '1', 'Ca. demetrio acosata # 7000', '2000-10-18', '2010-06-27', '', '', '');
INSERT INTO `alumno` VALUES (76, 64, '1057462500760', 'Marcelo', 'Yafac', 'Julca', '1', 'Av los pinos # 1000', '2000-01-31', '2010-06-27', '', '', '');
INSERT INTO `alumno` VALUES (77, 64, '1057462500770', 'Miguel ', 'Alzamora', 'Arca', '0', 'Av grau # 345', '1999-10-10', '2010-07-02', '', '', '');
INSERT INTO `alumno` VALUES (78, 64, '1057462500780', 'Jefri', 'Julca', 'Ruiz', '1', 'Ca. santa rosa', '1999-04-10', '2010-07-02', '', '', '');
INSERT INTO `alumno` VALUES (79, 64, '1057462500790', 'Mario', 'Santa', 'Aguirre', '1', 'Av. grau 567', '1999-10-10', '2010-07-02', '', '', '');
INSERT INTO `alumno` VALUES (80, 64, '1057462500800', 'Melissa', 'Vilchez', 'Pe', '0', 'Ca. martin waiss', '1999-12-30', '2010-07-02', '', '', '');
INSERT INTO `alumno` VALUES (81, 64, '1057462500810', 'Marquitos', 'Pe', 'Yopo', '1', 'Av lobitos', '1999-10-13', '2010-07-03', '', '', '');
INSERT INTO `alumno` VALUES (82, 64, '1057462500820', 'Flor Dely', 'Santiago', 'Perez', '0', 'Roma 684', '2006-04-12', '2010-07-07', '(96)-256845', '', '');
INSERT INTO `alumno` VALUES (83, 64, '1057462500830', 'Ana Lucia', 'Santiago', 'Perez', '0', 'Roma 684', '2007-04-12', '2010-07-07', '(76)-264897', '', '');
INSERT INTO `alumno` VALUES (84, 63, '1057462500840', 'Juanita', 'Zapata', 'Amaya', '0', 'Av grau 100', '2007-01-21', '2010-07-07', '', '', '');
INSERT INTO `alumno` VALUES (85, 64, '1057462500850', 'Jorge Luis', 'Zarate', 'Mari', '1', 'Ca. talara 899', '2007-10-10', '2010-07-07', '', '', '');
INSERT INTO `alumno` VALUES (86, 64, '1057462500860', 'Maribel', 'Aleman', 'Ayesta', '0', 'Av grau 567', '2003-03-03', '2010-07-07', '', '', '');
INSERT INTO `alumno` VALUES (87, 64, '1057462500870', 'Juan', 'Lalangui', 'Lopez', '1', 'Santa rosa s/n', '2008-09-09', '2010-07-07', '', '', '');
INSERT INTO `alumno` VALUES (88, 64, '1057462500880', 'Marian', 'Sialer', 'Tirado', '0', 'Ca. marton waiss', '2008-12-12', '2010-07-07', '', '', '');
INSERT INTO `alumno` VALUES (89, 64, '1057462500890', 'Liliana Rosio', 'Quiroz', 'Suarez', '0', 'Progreso 1889', '2006-12-19', '2010-07-08', '(96)-254512', '', '');
INSERT INTO `alumno` VALUES (90, 64, '1057462500900', 'Ana Lia', 'Quiroz', 'Suarez', '0', 'Progreso 1889', '2004-10-04', '2010-07-08', '(96)-254587', '', '');
INSERT INTO `alumno` VALUES (91, 64, '1057462500910', 'Milagros', 'Lozano', 'Rodas', '0', 'Roma650', '2006-06-04', '2010-07-11', '(73)-256989', '', '');
INSERT INTO `alumno` VALUES (92, 64, '1057462500920', 'Alejandro', 'Jauregui', 'Julca', '1', 'Av grau # 2000', '2007-01-01', '2010-07-13', '', '', '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `carga_curricula`
-- 

CREATE TABLE `carga_curricula` (
  `idcarga` int(11) NOT NULL auto_increment,
  `idcurso` int(11) NOT NULL,
  `idcurricula` int(11) NOT NULL,
  PRIMARY KEY  (`idcarga`),
  KEY `carga_FKIndex1` (`idcurricula`),
  KEY `carga_FKIndex2` (`idcurso`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=159 ;

-- 
-- Volcar la base de datos para la tabla `carga_curricula`
-- 

INSERT INTO `carga_curricula` VALUES (1, 1, 1);
INSERT INTO `carga_curricula` VALUES (2, 2, 1);
INSERT INTO `carga_curricula` VALUES (3, 3, 1);
INSERT INTO `carga_curricula` VALUES (4, 4, 1);
INSERT INTO `carga_curricula` VALUES (5, 8, 1);
INSERT INTO `carga_curricula` VALUES (6, 9, 1);
INSERT INTO `carga_curricula` VALUES (7, 13, 1);
INSERT INTO `carga_curricula` VALUES (8, 14, 1);
INSERT INTO `carga_curricula` VALUES (9, 15, 1);
INSERT INTO `carga_curricula` VALUES (10, 1, 2);
INSERT INTO `carga_curricula` VALUES (11, 2, 2);
INSERT INTO `carga_curricula` VALUES (12, 3, 2);
INSERT INTO `carga_curricula` VALUES (13, 4, 2);
INSERT INTO `carga_curricula` VALUES (14, 8, 2);
INSERT INTO `carga_curricula` VALUES (15, 9, 2);
INSERT INTO `carga_curricula` VALUES (16, 13, 2);
INSERT INTO `carga_curricula` VALUES (17, 14, 2);
INSERT INTO `carga_curricula` VALUES (18, 15, 2);
INSERT INTO `carga_curricula` VALUES (19, 1, 3);
INSERT INTO `carga_curricula` VALUES (20, 2, 3);
INSERT INTO `carga_curricula` VALUES (21, 3, 3);
INSERT INTO `carga_curricula` VALUES (22, 4, 3);
INSERT INTO `carga_curricula` VALUES (23, 8, 3);
INSERT INTO `carga_curricula` VALUES (24, 9, 3);
INSERT INTO `carga_curricula` VALUES (25, 13, 3);
INSERT INTO `carga_curricula` VALUES (26, 14, 3);
INSERT INTO `carga_curricula` VALUES (27, 15, 3);
INSERT INTO `carga_curricula` VALUES (28, 1, 4);
INSERT INTO `carga_curricula` VALUES (29, 2, 4);
INSERT INTO `carga_curricula` VALUES (30, 3, 4);
INSERT INTO `carga_curricula` VALUES (31, 4, 4);
INSERT INTO `carga_curricula` VALUES (32, 5, 4);
INSERT INTO `carga_curricula` VALUES (33, 6, 4);
INSERT INTO `carga_curricula` VALUES (34, 7, 4);
INSERT INTO `carga_curricula` VALUES (35, 8, 4);
INSERT INTO `carga_curricula` VALUES (36, 9, 4);
INSERT INTO `carga_curricula` VALUES (37, 10, 4);
INSERT INTO `carga_curricula` VALUES (38, 11, 4);
INSERT INTO `carga_curricula` VALUES (39, 12, 4);
INSERT INTO `carga_curricula` VALUES (40, 13, 4);
INSERT INTO `carga_curricula` VALUES (41, 14, 4);
INSERT INTO `carga_curricula` VALUES (42, 15, 4);
INSERT INTO `carga_curricula` VALUES (43, 16, 4);
INSERT INTO `carga_curricula` VALUES (44, 17, 4);
INSERT INTO `carga_curricula` VALUES (45, 18, 4);
INSERT INTO `carga_curricula` VALUES (46, 19, 4);
INSERT INTO `carga_curricula` VALUES (47, 20, 4);
INSERT INTO `carga_curricula` VALUES (48, 23, 4);
INSERT INTO `carga_curricula` VALUES (49, 1, 5);
INSERT INTO `carga_curricula` VALUES (50, 2, 5);
INSERT INTO `carga_curricula` VALUES (51, 3, 5);
INSERT INTO `carga_curricula` VALUES (52, 4, 5);
INSERT INTO `carga_curricula` VALUES (53, 5, 5);
INSERT INTO `carga_curricula` VALUES (54, 6, 5);
INSERT INTO `carga_curricula` VALUES (55, 7, 5);
INSERT INTO `carga_curricula` VALUES (56, 8, 5);
INSERT INTO `carga_curricula` VALUES (57, 9, 5);
INSERT INTO `carga_curricula` VALUES (58, 10, 5);
INSERT INTO `carga_curricula` VALUES (59, 11, 5);
INSERT INTO `carga_curricula` VALUES (60, 12, 5);
INSERT INTO `carga_curricula` VALUES (61, 13, 5);
INSERT INTO `carga_curricula` VALUES (62, 14, 5);
INSERT INTO `carga_curricula` VALUES (63, 15, 5);
INSERT INTO `carga_curricula` VALUES (64, 17, 5);
INSERT INTO `carga_curricula` VALUES (65, 18, 5);
INSERT INTO `carga_curricula` VALUES (66, 19, 5);
INSERT INTO `carga_curricula` VALUES (67, 20, 5);
INSERT INTO `carga_curricula` VALUES (68, 23, 5);
INSERT INTO `carga_curricula` VALUES (69, 1, 6);
INSERT INTO `carga_curricula` VALUES (70, 2, 6);
INSERT INTO `carga_curricula` VALUES (71, 3, 6);
INSERT INTO `carga_curricula` VALUES (72, 4, 6);
INSERT INTO `carga_curricula` VALUES (73, 5, 6);
INSERT INTO `carga_curricula` VALUES (74, 6, 6);
INSERT INTO `carga_curricula` VALUES (75, 7, 6);
INSERT INTO `carga_curricula` VALUES (76, 8, 6);
INSERT INTO `carga_curricula` VALUES (77, 9, 6);
INSERT INTO `carga_curricula` VALUES (78, 10, 6);
INSERT INTO `carga_curricula` VALUES (79, 11, 6);
INSERT INTO `carga_curricula` VALUES (80, 12, 6);
INSERT INTO `carga_curricula` VALUES (81, 13, 6);
INSERT INTO `carga_curricula` VALUES (82, 14, 6);
INSERT INTO `carga_curricula` VALUES (83, 15, 6);
INSERT INTO `carga_curricula` VALUES (84, 17, 6);
INSERT INTO `carga_curricula` VALUES (85, 18, 6);
INSERT INTO `carga_curricula` VALUES (86, 19, 6);
INSERT INTO `carga_curricula` VALUES (87, 20, 6);
INSERT INTO `carga_curricula` VALUES (88, 23, 6);
INSERT INTO `carga_curricula` VALUES (89, 1, 7);
INSERT INTO `carga_curricula` VALUES (90, 2, 7);
INSERT INTO `carga_curricula` VALUES (91, 3, 7);
INSERT INTO `carga_curricula` VALUES (92, 4, 7);
INSERT INTO `carga_curricula` VALUES (93, 5, 7);
INSERT INTO `carga_curricula` VALUES (94, 6, 7);
INSERT INTO `carga_curricula` VALUES (95, 7, 7);
INSERT INTO `carga_curricula` VALUES (96, 8, 7);
INSERT INTO `carga_curricula` VALUES (97, 9, 7);
INSERT INTO `carga_curricula` VALUES (98, 10, 7);
INSERT INTO `carga_curricula` VALUES (99, 11, 7);
INSERT INTO `carga_curricula` VALUES (100, 12, 7);
INSERT INTO `carga_curricula` VALUES (101, 13, 7);
INSERT INTO `carga_curricula` VALUES (102, 14, 7);
INSERT INTO `carga_curricula` VALUES (103, 15, 7);
INSERT INTO `carga_curricula` VALUES (104, 16, 7);
INSERT INTO `carga_curricula` VALUES (105, 17, 7);
INSERT INTO `carga_curricula` VALUES (106, 18, 7);
INSERT INTO `carga_curricula` VALUES (107, 19, 7);
INSERT INTO `carga_curricula` VALUES (108, 20, 7);
INSERT INTO `carga_curricula` VALUES (109, 21, 7);
INSERT INTO `carga_curricula` VALUES (110, 22, 7);
INSERT INTO `carga_curricula` VALUES (111, 23, 7);
INSERT INTO `carga_curricula` VALUES (112, 1, 8);
INSERT INTO `carga_curricula` VALUES (113, 2, 8);
INSERT INTO `carga_curricula` VALUES (114, 3, 8);
INSERT INTO `carga_curricula` VALUES (115, 4, 8);
INSERT INTO `carga_curricula` VALUES (116, 5, 8);
INSERT INTO `carga_curricula` VALUES (117, 6, 8);
INSERT INTO `carga_curricula` VALUES (118, 7, 8);
INSERT INTO `carga_curricula` VALUES (119, 8, 8);
INSERT INTO `carga_curricula` VALUES (120, 9, 8);
INSERT INTO `carga_curricula` VALUES (121, 10, 8);
INSERT INTO `carga_curricula` VALUES (122, 11, 8);
INSERT INTO `carga_curricula` VALUES (123, 12, 8);
INSERT INTO `carga_curricula` VALUES (124, 13, 8);
INSERT INTO `carga_curricula` VALUES (125, 14, 8);
INSERT INTO `carga_curricula` VALUES (126, 15, 8);
INSERT INTO `carga_curricula` VALUES (127, 16, 8);
INSERT INTO `carga_curricula` VALUES (128, 17, 8);
INSERT INTO `carga_curricula` VALUES (129, 18, 8);
INSERT INTO `carga_curricula` VALUES (130, 19, 8);
INSERT INTO `carga_curricula` VALUES (131, 20, 8);
INSERT INTO `carga_curricula` VALUES (132, 21, 8);
INSERT INTO `carga_curricula` VALUES (133, 22, 8);
INSERT INTO `carga_curricula` VALUES (134, 23, 8);
INSERT INTO `carga_curricula` VALUES (135, 1, 9);
INSERT INTO `carga_curricula` VALUES (136, 2, 9);
INSERT INTO `carga_curricula` VALUES (137, 3, 9);
INSERT INTO `carga_curricula` VALUES (138, 4, 9);
INSERT INTO `carga_curricula` VALUES (139, 5, 9);
INSERT INTO `carga_curricula` VALUES (140, 6, 9);
INSERT INTO `carga_curricula` VALUES (141, 7, 9);
INSERT INTO `carga_curricula` VALUES (142, 8, 9);
INSERT INTO `carga_curricula` VALUES (143, 9, 9);
INSERT INTO `carga_curricula` VALUES (144, 10, 9);
INSERT INTO `carga_curricula` VALUES (145, 11, 9);
INSERT INTO `carga_curricula` VALUES (146, 12, 9);
INSERT INTO `carga_curricula` VALUES (147, 13, 9);
INSERT INTO `carga_curricula` VALUES (148, 14, 9);
INSERT INTO `carga_curricula` VALUES (149, 15, 9);
INSERT INTO `carga_curricula` VALUES (150, 16, 9);
INSERT INTO `carga_curricula` VALUES (151, 17, 9);
INSERT INTO `carga_curricula` VALUES (152, 18, 9);
INSERT INTO `carga_curricula` VALUES (153, 19, 9);
INSERT INTO `carga_curricula` VALUES (154, 20, 9);
INSERT INTO `carga_curricula` VALUES (155, 21, 9);
INSERT INTO `carga_curricula` VALUES (156, 22, 9);
INSERT INTO `carga_curricula` VALUES (157, 23, 9);
INSERT INTO `carga_curricula` VALUES (158, 15, 10);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `carga_docente`
-- 

CREATE TABLE `carga_docente` (
  `idcarga` int(11) NOT NULL auto_increment,
  `idpersonal` int(11) NOT NULL,
  `idhorario` int(11) NOT NULL,
  `fecreg` date NOT NULL,
  `fecfin` date NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY  (`idcarga`),
  KEY `carga_docente_FKIndex1` (`idhorario`),
  KEY `carga_docente_FKIndex3` (`idpersonal`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=154 ;

-- 
-- Volcar la base de datos para la tabla `carga_docente`
-- 

INSERT INTO `carga_docente` VALUES (1, 3, 1, '2010-07-14', '2010-07-14', 0);
INSERT INTO `carga_docente` VALUES (2, 3, 2, '2010-07-14', '2010-07-14', 0);
INSERT INTO `carga_docente` VALUES (3, 12, 1, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (4, 12, 2, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (5, 12, 3, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (6, 12, 4, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (7, 12, 5, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (8, 12, 6, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (9, 12, 7, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (10, 12, 8, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (11, 12, 9, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (12, 3, 10, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (13, 3, 11, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (14, 3, 12, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (15, 3, 13, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (16, 3, 14, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (17, 3, 15, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (18, 3, 16, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (19, 3, 17, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (20, 3, 18, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (21, 10, 19, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (22, 10, 20, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (23, 10, 21, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (24, 10, 22, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (25, 10, 23, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (26, 5, 24, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (27, 10, 25, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (28, 10, 26, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (29, 10, 27, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (30, 10, 28, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (31, 10, 29, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (32, 10, 30, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (33, 10, 31, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (34, 11, 32, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (35, 10, 33, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (36, 10, 34, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (37, 10, 35, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (38, 10, 36, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (39, 10, 37, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (40, 10, 38, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (41, 10, 39, '2010-07-14', '2010-07-14', 0);
INSERT INTO `carga_docente` VALUES (42, 10, 39, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (43, 2, 40, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (44, 2, 41, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (45, 2, 42, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (46, 2, 43, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (47, 2, 44, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (48, 2, 45, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (49, 5, 46, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (50, 2, 47, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (51, 2, 48, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (52, 2, 49, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (53, 2, 50, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (54, 2, 51, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (55, 2, 52, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (56, 5, 53, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (57, 2, 54, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (58, 2, 55, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (59, 2, 56, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (60, 2, 57, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (61, 2, 58, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (62, 2, 59, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (63, 11, 60, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (64, 11, 61, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (65, 11, 62, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (66, 11, 63, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (67, 11, 64, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (68, 5, 65, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (69, 5, 66, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (70, 11, 67, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (71, 11, 68, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (72, 11, 69, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (73, 11, 70, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (74, 11, 71, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (75, 11, 72, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (76, 5, 73, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (77, 11, 74, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (78, 11, 75, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (79, 11, 76, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (80, 11, 77, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (81, 11, 78, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (82, 11, 79, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (83, 12, 80, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (84, 12, 81, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (85, 12, 82, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (86, 12, 83, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (87, 12, 84, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (88, 5, 85, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (89, 5, 86, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (90, 12, 87, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (91, 12, 88, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (92, 12, 89, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (93, 12, 90, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (94, 12, 91, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (95, 12, 92, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (96, 5, 93, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (97, 12, 94, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (98, 12, 95, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (99, 12, 96, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (100, 12, 97, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (101, 12, 98, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (102, 12, 99, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (103, 12, 100, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (104, 12, 101, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (105, 12, 102, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (106, 13, 103, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (107, 13, 104, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (108, 13, 105, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (109, 13, 106, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (110, 11, 107, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (111, 15, 108, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (112, 15, 109, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (113, 13, 110, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (114, 13, 111, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (115, 13, 112, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (116, 13, 113, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (117, 13, 114, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (118, 13, 115, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (119, 13, 116, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (120, 13, 117, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (121, 13, 118, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (122, 13, 119, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (123, 13, 120, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (124, 13, 121, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (125, 13, 122, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (126, 13, 123, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (127, 13, 124, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (128, 13, 125, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (129, 14, 126, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (130, 14, 127, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (131, 14, 128, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (132, 14, 129, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (133, 14, 130, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (134, 14, 131, '2010-07-14', '2010-07-14', 0);
INSERT INTO `carga_docente` VALUES (135, 16, 132, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (136, 16, 131, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (137, 14, 133, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (138, 14, 134, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (139, 14, 135, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (140, 14, 136, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (141, 14, 137, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (142, 14, 138, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (143, 14, 139, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (144, 14, 140, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (145, 14, 141, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (146, 14, 142, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (147, 14, 143, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (148, 14, 144, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (149, 14, 145, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (150, 14, 146, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (151, 14, 147, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (152, 14, 148, '2010-07-14', '2010-07-14', 1);
INSERT INTO `carga_docente` VALUES (153, 10, 149, '2010-07-14', '2010-07-14', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `cargo`
-- 

CREATE TABLE `cargo` (
  `idcargo` int(11) NOT NULL auto_increment,
  `cargo` varchar(30) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`idcargo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `cargo`
-- 

INSERT INTO `cargo` VALUES (1, 'Director');
INSERT INTO `cargo` VALUES (2, 'Secretaria');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `clave`
-- 

CREATE TABLE `clave` (
  `idclave` int(11) NOT NULL auto_increment,
  `idusuario` int(11) NOT NULL,
  `clave` text collate utf8_spanish2_ci NOT NULL,
  `fecreg` date NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY  (`idclave`),
  KEY `clave_FKIndex1` (`idusuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=25 ;

-- 
-- Volcar la base de datos para la tabla `clave`
-- 

INSERT INTO `clave` VALUES (1, 1, 'c4ca4238a0b923820dcc509a6f75849b', '2010-06-23', 0);
INSERT INTO `clave` VALUES (2, 1, '811914fc92fc8cf2b38b51342b6d13b2', '2010-06-23', 0);
INSERT INTO `clave` VALUES (3, 2, 'dc599a9972fde3045dab59dbd1ae170b', '2010-06-23', 0);
INSERT INTO `clave` VALUES (4, 3, '4cddb5be1b125edbf1a5835a1e93d810', '2010-06-23', 0);
INSERT INTO `clave` VALUES (5, 1, '7e7ec59d1f4b21021577ff562dc3d48b', '2010-06-24', 0);
INSERT INTO `clave` VALUES (6, 4, '81ea66d57d6b827ef722f4f20f8a669c', '2010-06-25', 1);
INSERT INTO `clave` VALUES (7, 1, '7e7ec59d1f4b21021577ff562dc3d48b', '2010-07-02', 0);
INSERT INTO `clave` VALUES (8, 1, '7434fafe9980dfc097fb979ba9e14812', '2010-07-02', 0);
INSERT INTO `clave` VALUES (9, 2, '86c06093b9c9351bcea13ba73dcf9502', '2010-07-05', 0);
INSERT INTO `clave` VALUES (10, 3, '3723abd95c0e4718765176af2e5223dd', '2010-07-08', 0);
INSERT INTO `clave` VALUES (11, 1, 'a870e547dbd975fca0c7235c694d6a4e', '2010-07-08', 0);
INSERT INTO `clave` VALUES (12, 1, '461f78b17cfedc128c202b35f488c91b', '2010-07-08', 0);
INSERT INTO `clave` VALUES (13, 1, 'f0ab3f8e54e813ad8410d40f7cd4621c', '2010-07-08', 0);
INSERT INTO `clave` VALUES (14, 5, '10bab2c711bca9ace3036044b0efcc8a', '2010-07-13', 0);
INSERT INTO `clave` VALUES (15, 5, '124c54355f396f0d1b0f653d105340b3', '2010-07-13', 0);
INSERT INTO `clave` VALUES (16, 1, '811914fc92fc8cf2b38b51342b6d13b2', '2010-07-14', 0);
INSERT INTO `clave` VALUES (17, 3, '4cddb5be1b125edbf1a5835a1e93d810', '2010-07-14', 0);
INSERT INTO `clave` VALUES (18, 2, 'dc599a9972fde3045dab59dbd1ae170b', '2010-07-14', 0);
INSERT INTO `clave` VALUES (19, 3, '4cddb5be1b125edbf1a5835a1e93d810', '2010-07-14', 0);
INSERT INTO `clave` VALUES (20, 5, '4d186321c1a7f0f354b297e8914ab240', '2010-07-14', 1);
INSERT INTO `clave` VALUES (21, 6, '0f26db1430a787ea72e1727cab97ec1c', '2010-07-14', 0);
INSERT INTO `clave` VALUES (22, 7, '58429fafdb6f5935a477efc8c50d2eea', '2010-07-15', 1);
INSERT INTO `clave` VALUES (23, 8, '17d7cd52cd18e7bab99bb71de1669d95', '2010-07-15', 1);
INSERT INTO `clave` VALUES (24, 6, '0f26db1430a787ea72e1727cab97ec1c', '2010-07-15', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `control`
-- 

CREATE TABLE `control` (
  `idcontrol` int(11) NOT NULL auto_increment,
  `idpermiso` int(11) NOT NULL,
  `idacceso` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY  (`idcontrol`),
  KEY `control_FKIndex1` (`idacceso`),
  KEY `control_FKIndex2` (`idpermiso`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=401 ;

-- 
-- Volcar la base de datos para la tabla `control`
-- 

INSERT INTO `control` VALUES (1, 1, 1, 1);
INSERT INTO `control` VALUES (2, 1, 2, 1);
INSERT INTO `control` VALUES (3, 1, 3, 1);
INSERT INTO `control` VALUES (4, 1, 4, 1);
INSERT INTO `control` VALUES (5, 1, 5, 1);
INSERT INTO `control` VALUES (6, 1, 6, 0);
INSERT INTO `control` VALUES (7, 1, 7, 1);
INSERT INTO `control` VALUES (8, 1, 8, 1);
INSERT INTO `control` VALUES (9, 1, 9, 1);
INSERT INTO `control` VALUES (10, 1, 10, 1);
INSERT INTO `control` VALUES (11, 1, 11, 1);
INSERT INTO `control` VALUES (12, 1, 12, 1);
INSERT INTO `control` VALUES (13, 1, 13, 1);
INSERT INTO `control` VALUES (14, 1, 14, 1);
INSERT INTO `control` VALUES (15, 1, 15, 1);
INSERT INTO `control` VALUES (16, 1, 16, 1);
INSERT INTO `control` VALUES (17, 1, 17, 1);
INSERT INTO `control` VALUES (18, 1, 18, 1);
INSERT INTO `control` VALUES (19, 1, 19, 1);
INSERT INTO `control` VALUES (20, 1, 20, 1);
INSERT INTO `control` VALUES (21, 1, 21, 1);
INSERT INTO `control` VALUES (22, 1, 22, 1);
INSERT INTO `control` VALUES (23, 1, 23, 0);
INSERT INTO `control` VALUES (24, 1, 24, 0);
INSERT INTO `control` VALUES (25, 1, 25, 0);
INSERT INTO `control` VALUES (26, 1, 26, 0);
INSERT INTO `control` VALUES (27, 1, 27, 0);
INSERT INTO `control` VALUES (28, 1, 28, 1);
INSERT INTO `control` VALUES (29, 1, 29, 0);
INSERT INTO `control` VALUES (30, 1, 30, 0);
INSERT INTO `control` VALUES (31, 1, 31, 0);
INSERT INTO `control` VALUES (32, 1, 32, 0);
INSERT INTO `control` VALUES (33, 1, 33, 0);
INSERT INTO `control` VALUES (34, 1, 34, 0);
INSERT INTO `control` VALUES (35, 1, 35, 1);
INSERT INTO `control` VALUES (36, 1, 36, 1);
INSERT INTO `control` VALUES (37, 1, 37, 0);
INSERT INTO `control` VALUES (38, 1, 38, 1);
INSERT INTO `control` VALUES (39, 1, 39, 0);
INSERT INTO `control` VALUES (40, 1, 40, 0);
INSERT INTO `control` VALUES (41, 1, 41, 1);
INSERT INTO `control` VALUES (42, 1, 42, 0);
INSERT INTO `control` VALUES (43, 1, 43, 0);
INSERT INTO `control` VALUES (44, 1, 44, 0);
INSERT INTO `control` VALUES (45, 1, 45, 0);
INSERT INTO `control` VALUES (46, 1, 46, 0);
INSERT INTO `control` VALUES (47, 1, 47, 0);
INSERT INTO `control` VALUES (48, 1, 48, 0);
INSERT INTO `control` VALUES (49, 1, 49, 0);
INSERT INTO `control` VALUES (50, 1, 50, 0);
INSERT INTO `control` VALUES (51, 1, 51, 0);
INSERT INTO `control` VALUES (52, 1, 52, 0);
INSERT INTO `control` VALUES (53, 1, 53, 0);
INSERT INTO `control` VALUES (54, 1, 54, 0);
INSERT INTO `control` VALUES (55, 1, 55, 0);
INSERT INTO `control` VALUES (56, 1, 56, 0);
INSERT INTO `control` VALUES (57, 1, 57, 0);
INSERT INTO `control` VALUES (58, 1, 58, 0);
INSERT INTO `control` VALUES (59, 1, 59, 0);
INSERT INTO `control` VALUES (60, 1, 60, 0);
INSERT INTO `control` VALUES (61, 1, 61, 0);
INSERT INTO `control` VALUES (62, 1, 62, 0);
INSERT INTO `control` VALUES (63, 1, 63, 0);
INSERT INTO `control` VALUES (64, 1, 64, 1);
INSERT INTO `control` VALUES (65, 1, 65, 1);
INSERT INTO `control` VALUES (66, 1, 66, 1);
INSERT INTO `control` VALUES (67, 1, 67, 1);
INSERT INTO `control` VALUES (68, 1, 68, 1);
INSERT INTO `control` VALUES (69, 1, 69, 0);
INSERT INTO `control` VALUES (70, 1, 70, 1);
INSERT INTO `control` VALUES (71, 1, 71, 1);
INSERT INTO `control` VALUES (72, 1, 72, 1);
INSERT INTO `control` VALUES (73, 1, 73, 1);
INSERT INTO `control` VALUES (74, 1, 74, 1);
INSERT INTO `control` VALUES (75, 1, 75, 1);
INSERT INTO `control` VALUES (76, 1, 76, 0);
INSERT INTO `control` VALUES (77, 1, 77, 0);
INSERT INTO `control` VALUES (78, 1, 78, 0);
INSERT INTO `control` VALUES (79, 1, 79, 0);
INSERT INTO `control` VALUES (80, 1, 80, 0);
INSERT INTO `control` VALUES (81, 1, 81, 0);
INSERT INTO `control` VALUES (82, 1, 82, 0);
INSERT INTO `control` VALUES (83, 1, 83, 1);
INSERT INTO `control` VALUES (84, 1, 84, 0);
INSERT INTO `control` VALUES (85, 1, 85, 0);
INSERT INTO `control` VALUES (86, 1, 86, 1);
INSERT INTO `control` VALUES (87, 1, 87, 0);
INSERT INTO `control` VALUES (88, 1, 88, 1);
INSERT INTO `control` VALUES (89, 1, 89, 0);
INSERT INTO `control` VALUES (90, 1, 90, 0);
INSERT INTO `control` VALUES (91, 1, 91, 0);
INSERT INTO `control` VALUES (92, 1, 92, 0);
INSERT INTO `control` VALUES (93, 1, 93, 0);
INSERT INTO `control` VALUES (94, 1, 94, 1);
INSERT INTO `control` VALUES (95, 1, 95, 1);
INSERT INTO `control` VALUES (96, 1, 96, 1);
INSERT INTO `control` VALUES (97, 1, 97, 1);
INSERT INTO `control` VALUES (98, 1, 98, 1);
INSERT INTO `control` VALUES (99, 1, 99, 1);
INSERT INTO `control` VALUES (100, 1, 100, 1);
INSERT INTO `control` VALUES (101, 1, 101, 0);
INSERT INTO `control` VALUES (102, 1, 102, 0);
INSERT INTO `control` VALUES (103, 1, 103, 1);
INSERT INTO `control` VALUES (104, 1, 104, 0);
INSERT INTO `control` VALUES (105, 1, 105, 0);
INSERT INTO `control` VALUES (106, 1, 106, 0);
INSERT INTO `control` VALUES (107, 1, 107, 0);
INSERT INTO `control` VALUES (108, 1, 108, 0);
INSERT INTO `control` VALUES (109, 1, 109, 0);
INSERT INTO `control` VALUES (110, 1, 110, 1);
INSERT INTO `control` VALUES (111, 1, 111, 0);
INSERT INTO `control` VALUES (112, 1, 112, 0);
INSERT INTO `control` VALUES (113, 1, 113, 0);
INSERT INTO `control` VALUES (114, 1, 114, 0);
INSERT INTO `control` VALUES (115, 1, 115, 0);
INSERT INTO `control` VALUES (116, 1, 116, 0);
INSERT INTO `control` VALUES (117, 1, 117, 1);
INSERT INTO `control` VALUES (118, 1, 118, 0);
INSERT INTO `control` VALUES (119, 1, 119, 1);
INSERT INTO `control` VALUES (120, 1, 120, 1);
INSERT INTO `control` VALUES (121, 1, 121, 1);
INSERT INTO `control` VALUES (122, 1, 122, 1);
INSERT INTO `control` VALUES (123, 1, 123, 1);
INSERT INTO `control` VALUES (124, 1, 124, 0);
INSERT INTO `control` VALUES (125, 1, 125, 1);
INSERT INTO `control` VALUES (126, 1, 126, 0);
INSERT INTO `control` VALUES (127, 1, 127, 1);
INSERT INTO `control` VALUES (128, 1, 128, 1);
INSERT INTO `control` VALUES (129, 1, 129, 1);
INSERT INTO `control` VALUES (130, 1, 130, 1);
INSERT INTO `control` VALUES (131, 1, 131, 1);
INSERT INTO `control` VALUES (132, 1, 132, 1);
INSERT INTO `control` VALUES (133, 1, 133, 1);
INSERT INTO `control` VALUES (134, 1, 134, 1);
INSERT INTO `control` VALUES (135, 1, 135, 1);
INSERT INTO `control` VALUES (136, 1, 136, 1);
INSERT INTO `control` VALUES (137, 1, 137, 1);
INSERT INTO `control` VALUES (138, 1, 138, 1);
INSERT INTO `control` VALUES (139, 1, 139, 1);
INSERT INTO `control` VALUES (140, 1, 140, 1);
INSERT INTO `control` VALUES (141, 1, 141, 1);
INSERT INTO `control` VALUES (142, 1, 142, 1);
INSERT INTO `control` VALUES (143, 1, 143, 1);
INSERT INTO `control` VALUES (144, 1, 144, 1);
INSERT INTO `control` VALUES (145, 1, 145, 1);
INSERT INTO `control` VALUES (146, 1, 146, 1);
INSERT INTO `control` VALUES (147, 1, 147, 1);
INSERT INTO `control` VALUES (148, 1, 148, 1);
INSERT INTO `control` VALUES (149, 1, 149, 1);
INSERT INTO `control` VALUES (150, 1, 150, 1);
INSERT INTO `control` VALUES (151, 1, 151, 1);
INSERT INTO `control` VALUES (152, 1, 152, 1);
INSERT INTO `control` VALUES (153, 1, 153, 1);
INSERT INTO `control` VALUES (154, 1, 154, 1);
INSERT INTO `control` VALUES (155, 1, 155, 1);
INSERT INTO `control` VALUES (156, 1, 156, 1);
INSERT INTO `control` VALUES (157, 1, 157, 1);
INSERT INTO `control` VALUES (158, 1, 158, 1);
INSERT INTO `control` VALUES (159, 1, 159, 1);
INSERT INTO `control` VALUES (160, 1, 160, 1);
INSERT INTO `control` VALUES (161, 1, 161, 1);
INSERT INTO `control` VALUES (162, 1, 162, 1);
INSERT INTO `control` VALUES (163, 1, 163, 1);
INSERT INTO `control` VALUES (164, 1, 164, 1);
INSERT INTO `control` VALUES (165, 1, 165, 1);
INSERT INTO `control` VALUES (166, 1, 166, 1);
INSERT INTO `control` VALUES (167, 1, 167, 1);
INSERT INTO `control` VALUES (168, 1, 168, 1);
INSERT INTO `control` VALUES (169, 1, 169, 0);
INSERT INTO `control` VALUES (170, 1, 170, 0);
INSERT INTO `control` VALUES (171, 1, 171, 0);
INSERT INTO `control` VALUES (172, 1, 172, 1);
INSERT INTO `control` VALUES (173, 1, 173, 1);
INSERT INTO `control` VALUES (174, 1, 174, 1);
INSERT INTO `control` VALUES (175, 1, 175, 0);
INSERT INTO `control` VALUES (176, 1, 176, 0);
INSERT INTO `control` VALUES (177, 1, 177, 0);
INSERT INTO `control` VALUES (178, 1, 178, 1);
INSERT INTO `control` VALUES (179, 1, 179, 1);
INSERT INTO `control` VALUES (180, 1, 180, 1);
INSERT INTO `control` VALUES (181, 1, 181, 0);
INSERT INTO `control` VALUES (182, 1, 182, 1);
INSERT INTO `control` VALUES (183, 1, 183, 0);
INSERT INTO `control` VALUES (184, 1, 184, 1);
INSERT INTO `control` VALUES (185, 1, 185, 0);
INSERT INTO `control` VALUES (186, 1, 186, 1);
INSERT INTO `control` VALUES (187, 1, 187, 0);
INSERT INTO `control` VALUES (188, 1, 188, 1);
INSERT INTO `control` VALUES (189, 1, 189, 1);
INSERT INTO `control` VALUES (190, 1, 190, 0);
INSERT INTO `control` VALUES (191, 1, 191, 1);
INSERT INTO `control` VALUES (192, 1, 192, 1);
INSERT INTO `control` VALUES (193, 1, 193, 0);
INSERT INTO `control` VALUES (194, 1, 194, 0);
INSERT INTO `control` VALUES (195, 1, 195, 1);
INSERT INTO `control` VALUES (196, 1, 196, 1);
INSERT INTO `control` VALUES (197, 1, 197, 1);
INSERT INTO `control` VALUES (198, 1, 198, 0);
INSERT INTO `control` VALUES (199, 1, 199, 1);
INSERT INTO `control` VALUES (200, 1, 200, 1);
INSERT INTO `control` VALUES (201, 1, 201, 0);
INSERT INTO `control` VALUES (202, 1, 202, 0);
INSERT INTO `control` VALUES (203, 1, 203, 0);
INSERT INTO `control` VALUES (204, 1, 204, 0);
INSERT INTO `control` VALUES (205, 1, 205, 0);
INSERT INTO `control` VALUES (206, 1, 206, 0);
INSERT INTO `control` VALUES (207, 1, 207, 0);
INSERT INTO `control` VALUES (208, 1, 208, 0);
INSERT INTO `control` VALUES (209, 1, 209, 0);
INSERT INTO `control` VALUES (210, 1, 210, 0);
INSERT INTO `control` VALUES (211, 1, 211, 0);
INSERT INTO `control` VALUES (212, 1, 212, 0);
INSERT INTO `control` VALUES (213, 1, 213, 0);
INSERT INTO `control` VALUES (214, 1, 214, 0);
INSERT INTO `control` VALUES (215, 1, 215, 0);
INSERT INTO `control` VALUES (216, 1, 216, 0);
INSERT INTO `control` VALUES (217, 1, 217, 0);
INSERT INTO `control` VALUES (218, 1, 218, 0);
INSERT INTO `control` VALUES (219, 1, 219, 0);
INSERT INTO `control` VALUES (220, 1, 220, 0);
INSERT INTO `control` VALUES (221, 1, 221, 0);
INSERT INTO `control` VALUES (222, 1, 222, 0);
INSERT INTO `control` VALUES (223, 1, 223, 1);
INSERT INTO `control` VALUES (224, 1, 224, 1);
INSERT INTO `control` VALUES (225, 1, 225, 1);
INSERT INTO `control` VALUES (226, 1, 226, 1);
INSERT INTO `control` VALUES (227, 1, 227, 1);
INSERT INTO `control` VALUES (228, 1, 228, 0);
INSERT INTO `control` VALUES (229, 1, 229, 1);
INSERT INTO `control` VALUES (230, 1, 230, 1);
INSERT INTO `control` VALUES (231, 1, 231, 1);
INSERT INTO `control` VALUES (232, 1, 232, 1);
INSERT INTO `control` VALUES (233, 1, 233, 1);
INSERT INTO `control` VALUES (234, 1, 234, 1);
INSERT INTO `control` VALUES (235, 1, 235, 0);
INSERT INTO `control` VALUES (236, 1, 236, 0);
INSERT INTO `control` VALUES (237, 1, 237, 0);
INSERT INTO `control` VALUES (238, 1, 238, 0);
INSERT INTO `control` VALUES (239, 1, 239, 0);
INSERT INTO `control` VALUES (240, 1, 240, 0);
INSERT INTO `control` VALUES (241, 1, 241, 0);
INSERT INTO `control` VALUES (242, 1, 242, 1);
INSERT INTO `control` VALUES (243, 1, 243, 1);
INSERT INTO `control` VALUES (244, 1, 244, 1);
INSERT INTO `control` VALUES (245, 1, 245, 1);
INSERT INTO `control` VALUES (246, 1, 246, 1);
INSERT INTO `control` VALUES (247, 1, 247, 1);
INSERT INTO `control` VALUES (248, 1, 248, 0);
INSERT INTO `control` VALUES (249, 1, 249, 0);
INSERT INTO `control` VALUES (250, 1, 250, 0);
INSERT INTO `control` VALUES (251, 1, 251, 1);
INSERT INTO `control` VALUES (252, 1, 252, 1);
INSERT INTO `control` VALUES (253, 1, 253, 1);
INSERT INTO `control` VALUES (254, 1, 254, 1);
INSERT INTO `control` VALUES (255, 1, 255, 1);
INSERT INTO `control` VALUES (256, 1, 256, 1);
INSERT INTO `control` VALUES (257, 1, 257, 1);
INSERT INTO `control` VALUES (258, 1, 258, 1);
INSERT INTO `control` VALUES (259, 1, 259, 1);
INSERT INTO `control` VALUES (260, 1, 260, 1);
INSERT INTO `control` VALUES (261, 1, 261, 1);
INSERT INTO `control` VALUES (262, 1, 262, 1);
INSERT INTO `control` VALUES (263, 1, 263, 1);
INSERT INTO `control` VALUES (264, 1, 264, 1);
INSERT INTO `control` VALUES (265, 1, 265, 1);
INSERT INTO `control` VALUES (266, 1, 266, 1);
INSERT INTO `control` VALUES (267, 1, 267, 1);
INSERT INTO `control` VALUES (268, 1, 268, 1);
INSERT INTO `control` VALUES (269, 1, 269, 1);
INSERT INTO `control` VALUES (270, 1, 270, 1);
INSERT INTO `control` VALUES (271, 1, 271, 1);
INSERT INTO `control` VALUES (272, 1, 272, 1);
INSERT INTO `control` VALUES (273, 1, 273, 1);
INSERT INTO `control` VALUES (274, 1, 274, 1);
INSERT INTO `control` VALUES (275, 1, 275, 1);
INSERT INTO `control` VALUES (276, 1, 276, 1);
INSERT INTO `control` VALUES (277, 1, 277, 1);
INSERT INTO `control` VALUES (278, 1, 278, 1);
INSERT INTO `control` VALUES (279, 1, 279, 1);
INSERT INTO `control` VALUES (280, 1, 280, 1);
INSERT INTO `control` VALUES (281, 1, 281, 1);
INSERT INTO `control` VALUES (282, 1, 282, 1);
INSERT INTO `control` VALUES (283, 1, 283, 1);
INSERT INTO `control` VALUES (284, 1, 284, 1);
INSERT INTO `control` VALUES (285, 1, 285, 1);
INSERT INTO `control` VALUES (286, 1, 286, 1);
INSERT INTO `control` VALUES (287, 1, 287, 1);
INSERT INTO `control` VALUES (288, 1, 288, 1);
INSERT INTO `control` VALUES (289, 1, 289, 1);
INSERT INTO `control` VALUES (290, 1, 290, 1);
INSERT INTO `control` VALUES (291, 1, 291, 1);
INSERT INTO `control` VALUES (292, 1, 292, 1);
INSERT INTO `control` VALUES (293, 1, 293, 1);
INSERT INTO `control` VALUES (294, 1, 294, 1);
INSERT INTO `control` VALUES (295, 1, 295, 1);
INSERT INTO `control` VALUES (296, 1, 296, 1);
INSERT INTO `control` VALUES (297, 1, 297, 1);
INSERT INTO `control` VALUES (298, 1, 298, 1);
INSERT INTO `control` VALUES (299, 1, 299, 1);
INSERT INTO `control` VALUES (300, 1, 300, 1);
INSERT INTO `control` VALUES (301, 1, 301, 1);
INSERT INTO `control` VALUES (302, 1, 302, 0);
INSERT INTO `control` VALUES (303, 1, 303, 0);
INSERT INTO `control` VALUES (304, 1, 304, 1);
INSERT INTO `control` VALUES (305, 1, 305, 0);
INSERT INTO `control` VALUES (306, 1, 306, 1);
INSERT INTO `control` VALUES (307, 1, 307, 0);
INSERT INTO `control` VALUES (308, 1, 308, 0);
INSERT INTO `control` VALUES (309, 1, 309, 0);
INSERT INTO `control` VALUES (310, 1, 310, 0);
INSERT INTO `control` VALUES (311, 1, 311, 0);
INSERT INTO `control` VALUES (312, 1, 312, 1);
INSERT INTO `control` VALUES (313, 1, 313, 1);
INSERT INTO `control` VALUES (314, 1, 314, 1);
INSERT INTO `control` VALUES (315, 1, 315, 1);
INSERT INTO `control` VALUES (316, 1, 316, 1);
INSERT INTO `control` VALUES (317, 1, 317, 1);
INSERT INTO `control` VALUES (318, 1, 318, 1);
INSERT INTO `control` VALUES (319, 1, 319, 0);
INSERT INTO `control` VALUES (320, 1, 320, 0);
INSERT INTO `control` VALUES (321, 1, 321, 1);
INSERT INTO `control` VALUES (322, 1, 322, 0);
INSERT INTO `control` VALUES (323, 1, 323, 0);
INSERT INTO `control` VALUES (324, 1, 324, 0);
INSERT INTO `control` VALUES (325, 1, 325, 0);
INSERT INTO `control` VALUES (326, 1, 326, 0);
INSERT INTO `control` VALUES (327, 1, 327, 0);
INSERT INTO `control` VALUES (328, 1, 328, 1);
INSERT INTO `control` VALUES (329, 1, 329, 0);
INSERT INTO `control` VALUES (330, 1, 330, 0);
INSERT INTO `control` VALUES (331, 1, 331, 0);
INSERT INTO `control` VALUES (332, 1, 332, 0);
INSERT INTO `control` VALUES (333, 1, 333, 0);
INSERT INTO `control` VALUES (334, 1, 334, 0);
INSERT INTO `control` VALUES (335, 1, 335, 1);
INSERT INTO `control` VALUES (336, 1, 336, 0);
INSERT INTO `control` VALUES (337, 1, 337, 1);
INSERT INTO `control` VALUES (338, 1, 338, 1);
INSERT INTO `control` VALUES (339, 1, 339, 1);
INSERT INTO `control` VALUES (340, 1, 340, 1);
INSERT INTO `control` VALUES (341, 1, 341, 1);
INSERT INTO `control` VALUES (342, 1, 342, 0);
INSERT INTO `control` VALUES (343, 1, 343, 0);
INSERT INTO `control` VALUES (344, 1, 344, 0);
INSERT INTO `control` VALUES (345, 1, 345, 0);
INSERT INTO `control` VALUES (346, 1, 346, 0);
INSERT INTO `control` VALUES (347, 1, 347, 0);
INSERT INTO `control` VALUES (348, 1, 348, 1);
INSERT INTO `control` VALUES (349, 1, 349, 1);
INSERT INTO `control` VALUES (350, 1, 350, 1);
INSERT INTO `control` VALUES (351, 1, 351, 1);
INSERT INTO `control` VALUES (352, 1, 352, 1);
INSERT INTO `control` VALUES (353, 1, 353, 1);
INSERT INTO `control` VALUES (354, 1, 354, 1);
INSERT INTO `control` VALUES (355, 1, 355, 1);
INSERT INTO `control` VALUES (356, 1, 356, 0);
INSERT INTO `control` VALUES (357, 1, 357, 1);
INSERT INTO `control` VALUES (358, 1, 358, 1);
INSERT INTO `control` VALUES (359, 1, 359, 1);
INSERT INTO `control` VALUES (360, 1, 360, 1);
INSERT INTO `control` VALUES (361, 1, 361, 1);
INSERT INTO `control` VALUES (362, 1, 362, 1);
INSERT INTO `control` VALUES (363, 1, 363, 1);
INSERT INTO `control` VALUES (364, 1, 364, 1);
INSERT INTO `control` VALUES (365, 1, 365, 1);
INSERT INTO `control` VALUES (366, 1, 366, 1);
INSERT INTO `control` VALUES (367, 1, 367, 1);
INSERT INTO `control` VALUES (368, 1, 368, 1);
INSERT INTO `control` VALUES (369, 1, 369, 1);
INSERT INTO `control` VALUES (370, 1, 370, 1);
INSERT INTO `control` VALUES (371, 1, 371, 1);
INSERT INTO `control` VALUES (372, 1, 372, 0);
INSERT INTO `control` VALUES (373, 1, 373, 0);
INSERT INTO `control` VALUES (374, 1, 374, 0);
INSERT INTO `control` VALUES (375, 1, 375, 0);
INSERT INTO `control` VALUES (376, 1, 376, 0);
INSERT INTO `control` VALUES (377, 1, 377, 0);
INSERT INTO `control` VALUES (378, 1, 378, 1);
INSERT INTO `control` VALUES (379, 1, 379, 0);
INSERT INTO `control` VALUES (380, 1, 380, 0);
INSERT INTO `control` VALUES (381, 1, 381, 0);
INSERT INTO `control` VALUES (382, 1, 382, 0);
INSERT INTO `control` VALUES (383, 1, 383, 0);
INSERT INTO `control` VALUES (384, 1, 384, 0);
INSERT INTO `control` VALUES (385, 1, 385, 1);
INSERT INTO `control` VALUES (386, 1, 386, 1);
INSERT INTO `control` VALUES (387, 1, 387, 0);
INSERT INTO `control` VALUES (388, 1, 388, 1);
INSERT INTO `control` VALUES (389, 1, 389, 0);
INSERT INTO `control` VALUES (390, 1, 390, 0);
INSERT INTO `control` VALUES (391, 1, 391, 1);
INSERT INTO `control` VALUES (392, 1, 392, 0);
INSERT INTO `control` VALUES (393, 1, 393, 0);
INSERT INTO `control` VALUES (394, 1, 394, 0);
INSERT INTO `control` VALUES (395, 1, 395, 0);
INSERT INTO `control` VALUES (396, 1, 396, 0);
INSERT INTO `control` VALUES (397, 1, 397, 0);
INSERT INTO `control` VALUES (398, 1, 398, 1);
INSERT INTO `control` VALUES (399, 1, 399, 0);
INSERT INTO `control` VALUES (400, 1, 400, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `cuota`
-- 

CREATE TABLE `cuota` (
  `idcuota` int(11) NOT NULL auto_increment,
  `idproceso` int(11) NOT NULL,
  `matricula` tinyint(1) NOT NULL,
  `monto` float NOT NULL,
  `fecpago` date NOT NULL,
  `concepto` varchar(30) collate utf8_spanish2_ci NOT NULL,
  `estado` char(1) collate utf8_spanish2_ci NOT NULL,
  `descuento` float NOT NULL,
  PRIMARY KEY  (`idcuota`),
  KEY `pago_FKIndex1` (`idproceso`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=642 ;

-- 
-- Volcar la base de datos para la tabla `cuota`
-- 

INSERT INTO `cuota` VALUES (1, 1, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (2, 1, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 5.6);
INSERT INTO `cuota` VALUES (3, 1, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 5.6);
INSERT INTO `cuota` VALUES (4, 1, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 5.6);
INSERT INTO `cuota` VALUES (5, 1, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 5.6);
INSERT INTO `cuota` VALUES (6, 1, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 5.6);
INSERT INTO `cuota` VALUES (7, 1, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 5.6);
INSERT INTO `cuota` VALUES (8, 1, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 5.6);
INSERT INTO `cuota` VALUES (9, 1, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 5.6);
INSERT INTO `cuota` VALUES (10, 1, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 5.6);
INSERT INTO `cuota` VALUES (11, 2, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (12, 2, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (13, 2, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (14, 2, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (15, 2, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (16, 2, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (17, 2, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (18, 2, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (19, 2, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (20, 2, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (21, 3, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (22, 3, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (23, 3, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (24, 3, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (25, 3, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (26, 3, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (27, 3, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (28, 3, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (29, 3, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (30, 3, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (31, 4, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (32, 4, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (33, 4, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (34, 4, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (35, 4, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (36, 4, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (37, 4, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (38, 4, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (39, 4, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (40, 4, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (41, 5, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (42, 5, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (43, 5, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (44, 5, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (45, 5, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (46, 5, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (47, 5, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (48, 5, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (49, 5, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (50, 5, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (51, 6, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (52, 6, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (53, 6, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (54, 6, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (55, 6, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (56, 6, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (57, 6, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (58, 6, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (59, 6, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (60, 6, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (61, 7, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (62, 7, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (63, 7, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (64, 7, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (65, 7, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (66, 7, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (67, 7, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (68, 7, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (69, 7, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (70, 7, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (71, 8, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (72, 8, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (73, 8, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (74, 8, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (75, 8, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (76, 8, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (77, 8, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (78, 8, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (79, 8, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (80, 8, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (81, 9, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (82, 9, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (83, 9, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (84, 9, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (85, 9, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (86, 9, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (87, 9, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (88, 9, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (89, 9, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (90, 9, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (91, 10, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (92, 10, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (93, 10, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (94, 10, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (95, 10, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (96, 10, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (97, 10, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (98, 10, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (99, 10, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (100, 10, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (101, 11, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (102, 11, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (103, 11, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (104, 11, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (105, 11, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (106, 11, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (107, 11, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (108, 11, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (109, 11, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (110, 11, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (111, 12, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (112, 12, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (113, 12, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (114, 12, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (115, 12, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (116, 12, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (117, 12, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (118, 12, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (119, 12, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (120, 12, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (121, 13, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (122, 13, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (123, 13, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (124, 13, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (125, 13, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (126, 13, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (127, 13, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (128, 13, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (129, 13, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (130, 13, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (131, 14, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (132, 14, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (133, 14, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (134, 14, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (135, 14, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (136, 14, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (137, 14, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (138, 14, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (139, 14, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (140, 14, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (141, 15, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (142, 15, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 5.6);
INSERT INTO `cuota` VALUES (143, 15, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 5.6);
INSERT INTO `cuota` VALUES (144, 15, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 5.6);
INSERT INTO `cuota` VALUES (145, 15, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 5.6);
INSERT INTO `cuota` VALUES (146, 15, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 5.6);
INSERT INTO `cuota` VALUES (147, 15, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 5.6);
INSERT INTO `cuota` VALUES (148, 15, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 5.6);
INSERT INTO `cuota` VALUES (149, 15, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 5.6);
INSERT INTO `cuota` VALUES (150, 15, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 5.6);
INSERT INTO `cuota` VALUES (151, 16, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (152, 16, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (153, 16, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (154, 16, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (155, 16, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (156, 16, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (157, 16, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (158, 16, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (159, 16, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (160, 16, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (161, 17, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (162, 17, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (163, 17, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (164, 17, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (165, 17, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (166, 17, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (167, 17, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (168, 17, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (169, 17, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (170, 17, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (171, 18, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (172, 18, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (173, 18, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (174, 18, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (175, 18, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (176, 18, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (177, 18, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (178, 18, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (179, 18, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (180, 18, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (181, 19, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (182, 19, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (183, 19, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (184, 19, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (185, 19, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (186, 19, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (187, 19, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (188, 19, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (189, 19, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (190, 19, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (191, 20, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (192, 20, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (193, 20, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (194, 20, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (195, 20, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (196, 20, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (197, 20, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (198, 20, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (199, 20, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (200, 20, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (201, 21, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (202, 21, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (203, 21, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (204, 21, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (205, 21, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (206, 21, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (207, 21, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (208, 21, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (209, 21, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (210, 21, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (211, 22, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (212, 22, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (213, 22, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (214, 22, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (215, 22, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (216, 22, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (217, 22, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (218, 22, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (219, 22, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (220, 22, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (221, 23, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (222, 23, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (223, 23, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (224, 23, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (225, 23, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (226, 23, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (227, 23, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (228, 23, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (229, 23, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (230, 23, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (231, 24, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (232, 24, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (233, 24, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (234, 24, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (235, 24, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (236, 24, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (237, 24, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (238, 24, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (239, 24, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (240, 24, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (241, 25, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (242, 25, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (243, 25, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (244, 25, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (245, 25, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (246, 25, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (247, 25, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (248, 25, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (249, 25, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (250, 25, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (251, 26, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (252, 26, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (253, 26, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (254, 26, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (255, 26, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (256, 26, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (257, 26, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (258, 26, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (259, 26, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (260, 26, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (261, 27, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (262, 27, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (263, 27, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (264, 27, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (265, 27, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (266, 27, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (267, 27, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (268, 27, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (269, 27, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (270, 27, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (271, 28, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (272, 28, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (273, 28, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (274, 28, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (275, 28, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (276, 28, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (277, 28, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (278, 28, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (279, 28, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (280, 28, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (281, 29, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (282, 29, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (283, 29, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (284, 29, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (285, 29, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (286, 29, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (287, 29, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (288, 29, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (289, 29, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (290, 29, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (291, 30, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (292, 30, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (293, 30, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (294, 30, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (295, 30, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (296, 30, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (297, 30, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (298, 30, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (299, 30, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (300, 30, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (301, 31, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (302, 31, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (303, 31, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (304, 31, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (305, 31, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (306, 31, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (307, 31, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (308, 31, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (309, 31, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (310, 31, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (311, 32, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (312, 32, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (313, 32, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (314, 32, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (315, 32, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (316, 32, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (317, 32, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (318, 32, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (319, 32, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (320, 32, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (321, 33, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (322, 33, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (323, 33, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (324, 33, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (325, 33, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (326, 33, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (327, 33, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (328, 33, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (329, 33, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (330, 33, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (331, 34, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (332, 34, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (333, 34, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (334, 34, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (335, 34, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (336, 34, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (337, 34, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (338, 34, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (339, 34, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (340, 34, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (341, 35, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (342, 35, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (343, 35, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (344, 35, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (345, 35, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (346, 35, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (347, 35, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (348, 35, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (349, 35, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (350, 35, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (351, 36, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (352, 36, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (353, 36, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (354, 36, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (355, 36, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (356, 36, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (357, 36, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (358, 36, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (359, 36, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (360, 36, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (361, 37, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (362, 37, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (363, 37, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (364, 37, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (365, 37, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (366, 37, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (367, 37, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (368, 37, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (369, 37, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (370, 37, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (371, 38, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (372, 38, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (373, 38, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (374, 38, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (375, 38, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (376, 38, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (377, 38, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (378, 38, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (379, 38, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (380, 38, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (381, 39, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (382, 39, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (383, 39, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (384, 39, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (385, 39, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (386, 39, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (387, 39, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (388, 39, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (389, 39, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (390, 39, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (391, 40, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (392, 40, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (393, 40, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (394, 40, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (395, 40, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (396, 40, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (397, 40, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (398, 40, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (399, 40, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (400, 40, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (401, 41, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (402, 41, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (403, 41, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (404, 41, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (405, 41, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (406, 41, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (407, 41, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (408, 41, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (409, 41, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (410, 41, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (411, 42, 1, 30, '2011-01-20', 'Pago por derecho al examen', '1', 0);
INSERT INTO `cuota` VALUES (412, 43, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (413, 43, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (414, 43, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (415, 43, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (416, 43, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (417, 43, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (418, 43, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (419, 43, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (420, 43, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (421, 43, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (422, 44, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (423, 44, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 8.4);
INSERT INTO `cuota` VALUES (424, 44, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 8.4);
INSERT INTO `cuota` VALUES (425, 44, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 8.4);
INSERT INTO `cuota` VALUES (426, 44, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 8.4);
INSERT INTO `cuota` VALUES (427, 44, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 8.4);
INSERT INTO `cuota` VALUES (428, 44, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 8.4);
INSERT INTO `cuota` VALUES (429, 44, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 8.4);
INSERT INTO `cuota` VALUES (430, 44, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 8.4);
INSERT INTO `cuota` VALUES (431, 44, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 8.4);
INSERT INTO `cuota` VALUES (432, 45, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (433, 45, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (434, 45, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (435, 45, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (436, 45, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (437, 45, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (438, 45, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (439, 45, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (440, 45, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (441, 45, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (442, 46, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (443, 46, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (444, 46, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (445, 46, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (446, 46, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (447, 46, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (448, 46, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (449, 46, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (450, 46, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (451, 46, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (452, 47, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (453, 47, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (454, 47, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (455, 47, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (456, 47, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (457, 47, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (458, 47, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (459, 47, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (460, 47, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (461, 47, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (462, 48, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (463, 48, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (464, 48, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (465, 48, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (466, 48, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (467, 48, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (468, 48, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (469, 48, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (470, 48, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (471, 48, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (472, 49, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (473, 49, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (474, 49, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (475, 49, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (476, 49, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (477, 49, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (478, 49, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (479, 49, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (480, 49, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (481, 49, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (482, 50, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (483, 50, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (484, 50, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (485, 50, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (486, 50, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (487, 50, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (488, 50, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (489, 50, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (490, 50, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (491, 50, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (492, 51, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (493, 51, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (494, 51, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (495, 51, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 5.6);
INSERT INTO `cuota` VALUES (496, 51, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 5.6);
INSERT INTO `cuota` VALUES (497, 51, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 5.6);
INSERT INTO `cuota` VALUES (498, 51, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 5.6);
INSERT INTO `cuota` VALUES (499, 51, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 5.6);
INSERT INTO `cuota` VALUES (500, 51, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 5.6);
INSERT INTO `cuota` VALUES (501, 51, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 5.6);
INSERT INTO `cuota` VALUES (502, 52, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (503, 52, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (504, 52, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (505, 52, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (506, 52, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (507, 52, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (508, 52, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (509, 52, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (510, 52, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (511, 52, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (512, 53, 1, 60, '2010-04-04', 'Pago por matricula', '1', 0);
INSERT INTO `cuota` VALUES (513, 53, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '1', 0);
INSERT INTO `cuota` VALUES (514, 53, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '1', 0);
INSERT INTO `cuota` VALUES (515, 53, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '1', 0);
INSERT INTO `cuota` VALUES (516, 53, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '1', 0);
INSERT INTO `cuota` VALUES (517, 53, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '1', 0);
INSERT INTO `cuota` VALUES (518, 53, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '1', 0);
INSERT INTO `cuota` VALUES (519, 53, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '1', 0);
INSERT INTO `cuota` VALUES (520, 53, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '1', 0);
INSERT INTO `cuota` VALUES (521, 53, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '1', 0);
INSERT INTO `cuota` VALUES (522, 54, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (523, 54, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (524, 54, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (525, 54, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (526, 54, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (527, 54, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (528, 54, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (529, 54, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (530, 54, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (531, 54, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (532, 55, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (533, 55, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (534, 55, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (535, 55, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (536, 55, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (537, 55, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (538, 55, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (539, 55, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (540, 55, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (541, 55, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (542, 56, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (543, 56, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (544, 56, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (545, 56, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (546, 56, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (547, 56, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (548, 56, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (549, 56, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (550, 56, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (551, 56, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (552, 57, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (553, 57, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (554, 57, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (555, 57, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (556, 57, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (557, 57, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (558, 57, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (559, 57, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (560, 57, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (561, 57, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (562, 58, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (563, 58, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (564, 58, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (565, 58, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (566, 58, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (567, 58, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (568, 58, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (569, 58, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (570, 58, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (571, 58, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (572, 59, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (573, 59, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (574, 59, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (575, 59, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (576, 59, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (577, 59, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (578, 59, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (579, 59, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (580, 59, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (581, 59, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (582, 60, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (583, 60, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (584, 60, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (585, 60, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (586, 60, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (587, 60, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (588, 60, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (589, 60, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (590, 60, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (591, 60, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (592, 61, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (593, 61, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (594, 61, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (595, 61, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (596, 61, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (597, 61, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (598, 61, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (599, 61, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (600, 61, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (601, 61, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (602, 62, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (603, 62, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (604, 62, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (605, 62, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (606, 62, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (607, 62, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (608, 62, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (609, 62, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (610, 62, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (611, 62, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (612, 63, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (613, 63, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (614, 63, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (615, 63, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (616, 63, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (617, 63, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (618, 63, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (619, 63, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (620, 63, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (621, 63, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (622, 64, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (623, 64, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (624, 64, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (625, 64, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (626, 64, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (627, 64, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (628, 64, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (629, 64, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (630, 64, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (631, 64, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);
INSERT INTO `cuota` VALUES (632, 65, 1, 60, '2010-04-04', 'Pago por matricula', '0', 0);
INSERT INTO `cuota` VALUES (633, 65, 0, 70, '2010-04-04', 'Cuota de mensualidad numero 1', '0', 0);
INSERT INTO `cuota` VALUES (634, 65, 0, 70, '2010-05-04', 'Cuota de mensualidad numero 2', '0', 0);
INSERT INTO `cuota` VALUES (635, 65, 0, 70, '2010-06-04', 'Cuota de mensualidad numero 3', '0', 0);
INSERT INTO `cuota` VALUES (636, 65, 0, 70, '2010-07-04', 'Cuota de mensualidad numero 4', '0', 0);
INSERT INTO `cuota` VALUES (637, 65, 0, 70, '2010-08-04', 'Cuota de mensualidad numero 5', '0', 0);
INSERT INTO `cuota` VALUES (638, 65, 0, 70, '2010-09-04', 'Cuota de mensualidad numero 6', '0', 0);
INSERT INTO `cuota` VALUES (639, 65, 0, 70, '2010-10-04', 'Cuota de mensualidad numero 7', '0', 0);
INSERT INTO `cuota` VALUES (640, 65, 0, 70, '2010-11-04', 'Cuota de mensualidad numero 8', '0', 0);
INSERT INTO `cuota` VALUES (641, 65, 0, 70, '2010-12-04', 'Cuota de mensualidad numero 9', '0', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `curricula`
-- 

CREATE TABLE `curricula` (
  `idcurricula` int(11) NOT NULL auto_increment,
  `idgrado` int(11) NOT NULL,
  `anio` char(4) collate utf8_spanish2_ci NOT NULL,
  `fecreg` date NOT NULL,
  `verano` char(1) collate utf8_spanish2_ci NOT NULL,
  `estado` char(1) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`idcurricula`),
  KEY `curricula_FKIndex1` (`idgrado`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=11 ;

-- 
-- Volcar la base de datos para la tabla `curricula`
-- 

INSERT INTO `curricula` VALUES (1, 1, '2010', '2010-07-14', '0', '1');
INSERT INTO `curricula` VALUES (2, 2, '2010', '2010-07-14', '0', '0');
INSERT INTO `curricula` VALUES (3, 3, '2010', '2010-07-14', '0', '0');
INSERT INTO `curricula` VALUES (4, 4, '2010', '2010-07-14', '0', '0');
INSERT INTO `curricula` VALUES (5, 5, '2010', '2010-07-14', '0', '0');
INSERT INTO `curricula` VALUES (6, 6, '2010', '2010-07-14', '0', '0');
INSERT INTO `curricula` VALUES (7, 7, '2010', '2010-07-14', '0', '0');
INSERT INTO `curricula` VALUES (8, 8, '2010', '2010-07-14', '0', '0');
INSERT INTO `curricula` VALUES (9, 9, '2010', '2010-07-14', '0', '0');
INSERT INTO `curricula` VALUES (10, 2, '2011', '2010-07-14', '1', '0');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `curso`
-- 

CREATE TABLE `curso` (
  `idcurso` int(11) NOT NULL auto_increment,
  `idaarea` int(11) NOT NULL,
  `curso` varchar(40) collate utf8_spanish2_ci NOT NULL,
  `abrev` varchar(20) collate utf8_spanish2_ci NOT NULL,
  `color` varchar(6) collate utf8_spanish2_ci NOT NULL,
  `vital` char(1) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`idcurso`),
  KEY `curso_FKIndex1` (`idaarea`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=24 ;

-- 
-- Volcar la base de datos para la tabla `curso`
-- 

INSERT INTO `curso` VALUES (1, 9, 'Habito De Aseo', 'HA', '', '0');
INSERT INTO `curso` VALUES (2, 9, 'Puntualidad', 'P', '', '0');
INSERT INTO `curso` VALUES (3, 9, 'Inasistencia', 'Inas', '', '0');
INSERT INTO `curso` VALUES (4, 9, 'Valoracion De Conducta', 'VC', '', '0');
INSERT INTO `curso` VALUES (5, 5, 'Oratoria', 'Ora', '', '0');
INSERT INTO `curso` VALUES (6, 5, 'Danzas', 'D', '', '0');
INSERT INTO `curso` VALUES (7, 5, 'Computacion', 'C', '', '0');
INSERT INTO `curso` VALUES (8, 1, 'Comunicacion Integral', 'CI', '', '1');
INSERT INTO `curso` VALUES (9, 2, 'Logico Matematico', 'LM', '', '1');
INSERT INTO `curso` VALUES (10, 3, 'Personal Social', 'PS', '', '0');
INSERT INTO `curso` VALUES (11, 4, 'Ciencia Y Ambiente', 'CA', '', '0');
INSERT INTO `curso` VALUES (12, 6, 'Religion', 'Relg', '', '0');
INSERT INTO `curso` VALUES (13, 7, 'Educacion Artistica', 'EA', '', '0');
INSERT INTO `curso` VALUES (14, 8, 'Educacion Fisica', 'EF', '', '0');
INSERT INTO `curso` VALUES (15, 10, 'Ingles', 'Ing', '', '0');
INSERT INTO `curso` VALUES (16, 1, 'Razonamiento Verbal', 'RV', '', '0');
INSERT INTO `curso` VALUES (17, 1, 'Comprension Lectoral', 'CL', '', '0');
INSERT INTO `curso` VALUES (18, 1, 'Ortografia', 'O', '', '0');
INSERT INTO `curso` VALUES (19, 1, 'Caligrafia', 'Cal', '', '0');
INSERT INTO `curso` VALUES (20, 1, 'Vocabulario', 'Voc', '', '0');
INSERT INTO `curso` VALUES (21, 2, 'Razonamiento Matematico', 'RM', '', '0');
INSERT INTO `curso` VALUES (22, 3, 'Civismo', 'Civ', '', '0');
INSERT INTO `curso` VALUES (23, 11, 'Cultura General', 'CG', '', '0');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `departamento`
-- 

CREATE TABLE `departamento` (
  `iddepartamento` int(11) NOT NULL auto_increment,
  `idpais` int(11) NOT NULL,
  `departamento` varchar(30) collate utf8_spanish2_ci default NULL,
  PRIMARY KEY  (`iddepartamento`),
  KEY `departamento_FKIndex1` (`idpais`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=25 ;

-- 
-- Volcar la base de datos para la tabla `departamento`
-- 

INSERT INTO `departamento` VALUES (1, 1, 'Amazonas');
INSERT INTO `departamento` VALUES (2, 1, 'Ancash');
INSERT INTO `departamento` VALUES (3, 1, 'Apurimac');
INSERT INTO `departamento` VALUES (4, 1, 'Arequipa');
INSERT INTO `departamento` VALUES (5, 1, 'Ayacucho');
INSERT INTO `departamento` VALUES (6, 1, 'Cajamarca');
INSERT INTO `departamento` VALUES (7, 1, 'Cusco');
INSERT INTO `departamento` VALUES (8, 1, 'Huancavelica');
INSERT INTO `departamento` VALUES (9, 1, 'Huanuco');
INSERT INTO `departamento` VALUES (10, 1, 'Ica');
INSERT INTO `departamento` VALUES (11, 1, 'Junin');
INSERT INTO `departamento` VALUES (12, 1, 'La Libertad');
INSERT INTO `departamento` VALUES (13, 1, 'Lambayeque');
INSERT INTO `departamento` VALUES (14, 1, 'Lima');
INSERT INTO `departamento` VALUES (15, 1, 'Loreto');
INSERT INTO `departamento` VALUES (16, 1, 'Madre de Dios');
INSERT INTO `departamento` VALUES (17, 1, 'Moquegua');
INSERT INTO `departamento` VALUES (18, 1, 'Pasco');
INSERT INTO `departamento` VALUES (19, 1, 'Piura');
INSERT INTO `departamento` VALUES (20, 1, 'Puno');
INSERT INTO `departamento` VALUES (21, 1, 'San Martin');
INSERT INTO `departamento` VALUES (22, 1, 'Tacna');
INSERT INTO `departamento` VALUES (23, 1, 'Tumbes');
INSERT INTO `departamento` VALUES (24, 1, 'Ucayali');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `descuento`
-- 

CREATE TABLE `descuento` (
  `iddescuento` int(11) NOT NULL auto_increment,
  `idproceso` int(11) NOT NULL,
  `idmotivo` int(11) NOT NULL,
  `monto` int(11) NOT NULL,
  `fecreg` date NOT NULL,
  `fecini` date NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY  (`iddescuento`,`idproceso`),
  KEY `descuento_FKIndex1` (`idproceso`),
  KEY `descuento_FKIndex2` (`idmotivo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=5 ;

-- 
-- Volcar la base de datos para la tabla `descuento`
-- 

INSERT INTO `descuento` VALUES (1, 1, 2, 6, '2010-07-14', '2010-04-04', 1);
INSERT INTO `descuento` VALUES (2, 44, 3, 8, '2010-07-14', '2010-04-04', 1);
INSERT INTO `descuento` VALUES (3, 15, 2, 6, '2010-07-14', '2010-04-04', 1);
INSERT INTO `descuento` VALUES (4, 51, 2, 6, '2010-07-15', '2010-06-04', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `dia`
-- 

CREATE TABLE `dia` (
  `iddia` int(11) NOT NULL auto_increment,
  `dia` varchar(30) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`iddia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `dia`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `distrito`
-- 

CREATE TABLE `distrito` (
  `iddistrito` int(11) NOT NULL auto_increment,
  `idprovincia` int(11) NOT NULL,
  `distrito` varchar(30) collate utf8_spanish2_ci default NULL,
  PRIMARY KEY  (`iddistrito`),
  KEY `distrito_FKIndex1` (`idprovincia`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1012 ;

-- 
-- Volcar la base de datos para la tabla `distrito`
-- 

INSERT INTO `distrito` VALUES (1, 1, 'Piura');
INSERT INTO `distrito` VALUES (2, 1, 'Castilla');
INSERT INTO `distrito` VALUES (3, 1, 'Catacaos');
INSERT INTO `distrito` VALUES (4, 1, 'Cura Mori');
INSERT INTO `distrito` VALUES (5, 1, 'El Tallan');
INSERT INTO `distrito` VALUES (6, 1, 'La arena');
INSERT INTO `distrito` VALUES (7, 1, 'La union');
INSERT INTO `distrito` VALUES (8, 1, 'Las Lomas');
INSERT INTO `distrito` VALUES (9, 1, 'Tambo Grande');
INSERT INTO `distrito` VALUES (10, 2, 'Ayabaca');
INSERT INTO `distrito` VALUES (11, 2, 'Frias');
INSERT INTO `distrito` VALUES (12, 2, 'Jilili');
INSERT INTO `distrito` VALUES (13, 2, 'Lagunas');
INSERT INTO `distrito` VALUES (14, 2, 'Montero');
INSERT INTO `distrito` VALUES (15, 2, 'Pacaipampa');
INSERT INTO `distrito` VALUES (16, 2, 'Paimas');
INSERT INTO `distrito` VALUES (17, 2, 'Sapillica');
INSERT INTO `distrito` VALUES (18, 2, 'Sicchez');
INSERT INTO `distrito` VALUES (19, 2, 'Suyo');
INSERT INTO `distrito` VALUES (20, 3, 'Huancabamba');
INSERT INTO `distrito` VALUES (21, 3, 'Canchaque');
INSERT INTO `distrito` VALUES (22, 3, 'El carmen de la frontera');
INSERT INTO `distrito` VALUES (23, 3, 'Huarmaca');
INSERT INTO `distrito` VALUES (24, 3, 'Lalaquiz');
INSERT INTO `distrito` VALUES (25, 3, 'San miguel de el faique');
INSERT INTO `distrito` VALUES (26, 3, 'Sondor');
INSERT INTO `distrito` VALUES (27, 3, 'Sondorillo');
INSERT INTO `distrito` VALUES (28, 5, 'Paita');
INSERT INTO `distrito` VALUES (29, 5, 'Amotape');
INSERT INTO `distrito` VALUES (30, 5, 'Arenal');
INSERT INTO `distrito` VALUES (31, 5, 'Colan');
INSERT INTO `distrito` VALUES (32, 5, 'La huaca');
INSERT INTO `distrito` VALUES (33, 5, 'Tamarindo');
INSERT INTO `distrito` VALUES (34, 5, 'Vichayal');
INSERT INTO `distrito` VALUES (35, 4, 'Chulucanas');
INSERT INTO `distrito` VALUES (36, 4, 'Buenos aires');
INSERT INTO `distrito` VALUES (37, 4, 'Chalaco');
INSERT INTO `distrito` VALUES (38, 4, 'La matanza');
INSERT INTO `distrito` VALUES (39, 4, 'Morropon');
INSERT INTO `distrito` VALUES (40, 4, 'Salitral');
INSERT INTO `distrito` VALUES (41, 4, 'San juan de bigote');
INSERT INTO `distrito` VALUES (42, 4, 'Santa catalina de mossa');
INSERT INTO `distrito` VALUES (43, 4, 'Santo domingo');
INSERT INTO `distrito` VALUES (44, 4, 'Yamango');
INSERT INTO `distrito` VALUES (45, 8, 'Sechura');
INSERT INTO `distrito` VALUES (46, 8, 'Bellavista la union');
INSERT INTO `distrito` VALUES (47, 8, 'Bernal');
INSERT INTO `distrito` VALUES (48, 8, 'Cristo nos valga');
INSERT INTO `distrito` VALUES (49, 8, 'Rinconada llicuar');
INSERT INTO `distrito` VALUES (50, 8, 'Vice');
INSERT INTO `distrito` VALUES (51, 6, 'Sullana');
INSERT INTO `distrito` VALUES (52, 6, 'Bellavista');
INSERT INTO `distrito` VALUES (53, 6, 'Ignacio escudero');
INSERT INTO `distrito` VALUES (54, 6, 'Lancones');
INSERT INTO `distrito` VALUES (55, 6, 'Marcavelica');
INSERT INTO `distrito` VALUES (56, 6, 'Miguel checa');
INSERT INTO `distrito` VALUES (57, 6, 'Querecotillo');
INSERT INTO `distrito` VALUES (58, 6, 'Salitral');
INSERT INTO `distrito` VALUES (59, 7, 'Pari?as');
INSERT INTO `distrito` VALUES (60, 7, 'El alto');
INSERT INTO `distrito` VALUES (61, 7, 'La brea');
INSERT INTO `distrito` VALUES (62, 7, 'Lobitos');
INSERT INTO `distrito` VALUES (63, 7, 'Los organos');
INSERT INTO `distrito` VALUES (64, 7, 'Mancora');
INSERT INTO `distrito` VALUES (65, 9, 'Chachapoyas');
INSERT INTO `distrito` VALUES (66, 9, 'Asuncion');
INSERT INTO `distrito` VALUES (67, 9, 'Balsas');
INSERT INTO `distrito` VALUES (68, 9, 'Cheto');
INSERT INTO `distrito` VALUES (69, 9, 'Chiquilin');
INSERT INTO `distrito` VALUES (70, 9, 'Chuquibamba');
INSERT INTO `distrito` VALUES (71, 9, 'Granada');
INSERT INTO `distrito` VALUES (72, 9, 'Huancas');
INSERT INTO `distrito` VALUES (73, 9, 'La jalca');
INSERT INTO `distrito` VALUES (74, 9, 'Leimebamba');
INSERT INTO `distrito` VALUES (75, 9, 'Levanto');
INSERT INTO `distrito` VALUES (76, 9, 'Magdalena');
INSERT INTO `distrito` VALUES (77, 9, 'Mariscal castilla');
INSERT INTO `distrito` VALUES (78, 9, 'Molinopampa');
INSERT INTO `distrito` VALUES (79, 9, 'Montevideo');
INSERT INTO `distrito` VALUES (80, 9, 'Olleros');
INSERT INTO `distrito` VALUES (81, 9, 'Quinjalca');
INSERT INTO `distrito` VALUES (82, 9, 'San Francisco de daguas');
INSERT INTO `distrito` VALUES (83, 9, 'San isidro de maino');
INSERT INTO `distrito` VALUES (84, 9, 'Soloco');
INSERT INTO `distrito` VALUES (85, 9, 'Sonche');
INSERT INTO `distrito` VALUES (86, 10, 'La peca');
INSERT INTO `distrito` VALUES (87, 10, 'Aramango');
INSERT INTO `distrito` VALUES (88, 10, 'Copallin');
INSERT INTO `distrito` VALUES (89, 10, 'El parco');
INSERT INTO `distrito` VALUES (90, 10, 'Imaza');
INSERT INTO `distrito` VALUES (91, 11, 'Jumbilla');
INSERT INTO `distrito` VALUES (92, 11, 'Chisquilla');
INSERT INTO `distrito` VALUES (93, 11, 'Churuja');
INSERT INTO `distrito` VALUES (94, 11, 'Corosha');
INSERT INTO `distrito` VALUES (95, 11, 'Cuispes');
INSERT INTO `distrito` VALUES (96, 11, 'Florida');
INSERT INTO `distrito` VALUES (97, 11, 'Jazan');
INSERT INTO `distrito` VALUES (98, 11, 'Recta');
INSERT INTO `distrito` VALUES (99, 11, 'San carlos');
INSERT INTO `distrito` VALUES (100, 11, 'Shipasbamba');
INSERT INTO `distrito` VALUES (101, 11, 'Valera');
INSERT INTO `distrito` VALUES (102, 11, 'Yambrasbamba');
INSERT INTO `distrito` VALUES (103, 12, 'Nieva');
INSERT INTO `distrito` VALUES (104, 12, 'El cenepa');
INSERT INTO `distrito` VALUES (105, 12, 'Rio santiago');
INSERT INTO `distrito` VALUES (106, 13, 'Lamud');
INSERT INTO `distrito` VALUES (107, 13, 'Camporredondo');
INSERT INTO `distrito` VALUES (108, 13, 'Cocabamba');
INSERT INTO `distrito` VALUES (109, 13, 'Colcamar');
INSERT INTO `distrito` VALUES (110, 13, 'Conilla');
INSERT INTO `distrito` VALUES (111, 13, 'Inguilpata');
INSERT INTO `distrito` VALUES (112, 13, 'Longuita');
INSERT INTO `distrito` VALUES (113, 13, 'Lonya chico');
INSERT INTO `distrito` VALUES (114, 13, 'Luya');
INSERT INTO `distrito` VALUES (115, 13, 'Luya viejo');
INSERT INTO `distrito` VALUES (116, 13, 'Maria');
INSERT INTO `distrito` VALUES (117, 13, 'Ocalli');
INSERT INTO `distrito` VALUES (118, 13, 'Ocumal');
INSERT INTO `distrito` VALUES (119, 13, 'Pisuquia');
INSERT INTO `distrito` VALUES (120, 13, 'Providencia');
INSERT INTO `distrito` VALUES (121, 13, 'San cristobal');
INSERT INTO `distrito` VALUES (122, 13, 'San francisco del yeso');
INSERT INTO `distrito` VALUES (123, 13, 'San jeronimo');
INSERT INTO `distrito` VALUES (124, 13, 'San juan de lopecancha');
INSERT INTO `distrito` VALUES (125, 13, 'Santa catalina');
INSERT INTO `distrito` VALUES (126, 13, 'Santo tomas');
INSERT INTO `distrito` VALUES (127, 13, 'Tingo');
INSERT INTO `distrito` VALUES (128, 13, 'Trita');
INSERT INTO `distrito` VALUES (129, 14, 'San nicolas');
INSERT INTO `distrito` VALUES (130, 14, 'Chirimoto');
INSERT INTO `distrito` VALUES (131, 14, 'Cochamal');
INSERT INTO `distrito` VALUES (132, 14, 'Huanbo');
INSERT INTO `distrito` VALUES (133, 14, 'Limbamba');
INSERT INTO `distrito` VALUES (134, 14, 'Longar');
INSERT INTO `distrito` VALUES (135, 14, 'Mariscal benavides');
INSERT INTO `distrito` VALUES (136, 14, 'Milpuc');
INSERT INTO `distrito` VALUES (137, 14, 'Omia');
INSERT INTO `distrito` VALUES (138, 14, 'Santa rosa');
INSERT INTO `distrito` VALUES (139, 14, 'Totora');
INSERT INTO `distrito` VALUES (140, 14, 'Vista alegre');
INSERT INTO `distrito` VALUES (141, 16, 'Bagua grande');
INSERT INTO `distrito` VALUES (142, 16, 'Cajaruro');
INSERT INTO `distrito` VALUES (143, 16, 'Cumba');
INSERT INTO `distrito` VALUES (144, 16, 'El milagro');
INSERT INTO `distrito` VALUES (145, 16, 'Jamalca');
INSERT INTO `distrito` VALUES (146, 16, 'Lonya grande');
INSERT INTO `distrito` VALUES (147, 16, 'Yamon');
INSERT INTO `distrito` VALUES (148, 17, 'Huaraz');
INSERT INTO `distrito` VALUES (149, 17, 'Cochabamba');
INSERT INTO `distrito` VALUES (150, 17, 'Colcabamba');
INSERT INTO `distrito` VALUES (151, 17, 'Huanchay');
INSERT INTO `distrito` VALUES (152, 17, 'Jangas');
INSERT INTO `distrito` VALUES (153, 17, 'La Libertad');
INSERT INTO `distrito` VALUES (154, 17, 'Olleros');
INSERT INTO `distrito` VALUES (155, 17, 'Pampas');
INSERT INTO `distrito` VALUES (156, 17, 'Pariacoto');
INSERT INTO `distrito` VALUES (157, 17, 'Pira');
INSERT INTO `distrito` VALUES (158, 17, 'Tarica');
INSERT INTO `distrito` VALUES (159, 17, 'Independencia');
INSERT INTO `distrito` VALUES (160, 36, 'Aija');
INSERT INTO `distrito` VALUES (161, 36, 'Coris');
INSERT INTO `distrito` VALUES (162, 36, 'Huacllan');
INSERT INTO `distrito` VALUES (163, 36, 'La Merced');
INSERT INTO `distrito` VALUES (164, 36, 'Seccha');
INSERT INTO `distrito` VALUES (165, 18, 'Llamellin');
INSERT INTO `distrito` VALUES (166, 18, 'Aczo');
INSERT INTO `distrito` VALUES (167, 18, 'Chaccho');
INSERT INTO `distrito` VALUES (168, 18, 'Chingas');
INSERT INTO `distrito` VALUES (169, 18, 'Mirgas');
INSERT INTO `distrito` VALUES (170, 18, 'San Juan De Rontoy');
INSERT INTO `distrito` VALUES (171, 19, 'Chacas');
INSERT INTO `distrito` VALUES (172, 19, 'Acochaca');
INSERT INTO `distrito` VALUES (173, 20, 'Chiquian');
INSERT INTO `distrito` VALUES (174, 20, 'Abelardo Pardo Lezameta');
INSERT INTO `distrito` VALUES (175, 20, 'Antonio Raymondi');
INSERT INTO `distrito` VALUES (176, 20, 'Aquia');
INSERT INTO `distrito` VALUES (177, 20, 'Cajacay');
INSERT INTO `distrito` VALUES (178, 20, 'Canis');
INSERT INTO `distrito` VALUES (179, 20, 'Colquioc');
INSERT INTO `distrito` VALUES (180, 20, 'Huallanca');
INSERT INTO `distrito` VALUES (181, 20, 'Huayllacayan');
INSERT INTO `distrito` VALUES (182, 20, 'La Primavera');
INSERT INTO `distrito` VALUES (183, 20, 'Mangas');
INSERT INTO `distrito` VALUES (184, 20, 'Pacllon');
INSERT INTO `distrito` VALUES (185, 20, 'S Mgel De Corpanqui');
INSERT INTO `distrito` VALUES (186, 20, 'Ticllos');
INSERT INTO `distrito` VALUES (187, 21, 'Carhuaz');
INSERT INTO `distrito` VALUES (188, 21, 'Acopampa');
INSERT INTO `distrito` VALUES (189, 21, 'Amashca');
INSERT INTO `distrito` VALUES (190, 21, 'Anta');
INSERT INTO `distrito` VALUES (191, 21, 'Ataquero');
INSERT INTO `distrito` VALUES (192, 21, 'Marcara');
INSERT INTO `distrito` VALUES (193, 21, 'Parihuanca');
INSERT INTO `distrito` VALUES (194, 21, 'San Miguel De Aco');
INSERT INTO `distrito` VALUES (195, 21, 'Shilla');
INSERT INTO `distrito` VALUES (196, 21, 'Tinco');
INSERT INTO `distrito` VALUES (197, 21, 'Yungar');
INSERT INTO `distrito` VALUES (198, 22, 'San Luis');
INSERT INTO `distrito` VALUES (199, 22, 'San Nicolas');
INSERT INTO `distrito` VALUES (200, 22, 'Yauya');
INSERT INTO `distrito` VALUES (201, 23, 'Casma');
INSERT INTO `distrito` VALUES (202, 23, 'Buena Vista Ata');
INSERT INTO `distrito` VALUES (203, 23, 'Commandante Noel');
INSERT INTO `distrito` VALUES (204, 23, 'Yautan');
INSERT INTO `distrito` VALUES (205, 24, 'Corongo');
INSERT INTO `distrito` VALUES (206, 24, 'Aco');
INSERT INTO `distrito` VALUES (207, 24, 'Bambas');
INSERT INTO `distrito` VALUES (208, 24, 'Cusca');
INSERT INTO `distrito` VALUES (209, 24, 'La Pampa');
INSERT INTO `distrito` VALUES (210, 24, 'Yanac');
INSERT INTO `distrito` VALUES (211, 24, 'Yupan');
INSERT INTO `distrito` VALUES (212, 25, 'Huari');
INSERT INTO `distrito` VALUES (213, 25, 'Anra');
INSERT INTO `distrito` VALUES (214, 25, 'Cajay');
INSERT INTO `distrito` VALUES (215, 25, 'Chavin De Huantar');
INSERT INTO `distrito` VALUES (216, 25, 'Huacachi');
INSERT INTO `distrito` VALUES (217, 25, 'Huacchis');
INSERT INTO `distrito` VALUES (218, 25, 'Huantar');
INSERT INTO `distrito` VALUES (219, 25, 'Masin');
INSERT INTO `distrito` VALUES (220, 25, 'Paucas');
INSERT INTO `distrito` VALUES (221, 25, 'Ponto');
INSERT INTO `distrito` VALUES (222, 25, 'Rahuapampa');
INSERT INTO `distrito` VALUES (223, 25, 'Rapayan');
INSERT INTO `distrito` VALUES (224, 25, 'San Marcos');
INSERT INTO `distrito` VALUES (225, 25, 'San Pedro De Chana');
INSERT INTO `distrito` VALUES (226, 25, 'Uco');
INSERT INTO `distrito` VALUES (227, 27, 'Caraz');
INSERT INTO `distrito` VALUES (228, 27, 'Huallanca');
INSERT INTO `distrito` VALUES (229, 27, 'Huata');
INSERT INTO `distrito` VALUES (230, 27, 'Huaylas');
INSERT INTO `distrito` VALUES (231, 27, 'Mato');
INSERT INTO `distrito` VALUES (232, 27, 'Pamparomas');
INSERT INTO `distrito` VALUES (233, 27, 'Pueblo Libre');
INSERT INTO `distrito` VALUES (234, 27, 'Santa Cruz');
INSERT INTO `distrito` VALUES (235, 27, 'Santo Toribio');
INSERT INTO `distrito` VALUES (236, 27, 'Yuracmarca');
INSERT INTO `distrito` VALUES (237, 26, 'Huarmey');
INSERT INTO `distrito` VALUES (238, 26, 'Cochapeti');
INSERT INTO `distrito` VALUES (239, 26, 'Culebras');
INSERT INTO `distrito` VALUES (240, 26, 'Huayan');
INSERT INTO `distrito` VALUES (241, 26, 'Malvas');
INSERT INTO `distrito` VALUES (242, 28, 'Piscobamba');
INSERT INTO `distrito` VALUES (243, 28, 'Casca');
INSERT INTO `distrito` VALUES (244, 28, 'Eleazar Guzman Barron');
INSERT INTO `distrito` VALUES (245, 28, 'Fidel Olivas Escudero');
INSERT INTO `distrito` VALUES (246, 28, 'Llama');
INSERT INTO `distrito` VALUES (247, 28, 'Llumpa');
INSERT INTO `distrito` VALUES (248, 28, 'Lucma');
INSERT INTO `distrito` VALUES (249, 28, 'Musga');
INSERT INTO `distrito` VALUES (250, 29, 'Ocros');
INSERT INTO `distrito` VALUES (251, 29, 'Acas');
INSERT INTO `distrito` VALUES (252, 29, 'Cajamarquilla');
INSERT INTO `distrito` VALUES (253, 29, 'Carhuapampa');
INSERT INTO `distrito` VALUES (254, 29, 'Cochas');
INSERT INTO `distrito` VALUES (255, 29, 'Congas');
INSERT INTO `distrito` VALUES (256, 29, 'Llipa');
INSERT INTO `distrito` VALUES (257, 29, 'San Cristobal De Rajan');
INSERT INTO `distrito` VALUES (258, 29, 'San Pedro');
INSERT INTO `distrito` VALUES (259, 29, 'Santiago De Chilcas');
INSERT INTO `distrito` VALUES (260, 30, 'Cabana');
INSERT INTO `distrito` VALUES (261, 30, 'Bolognesi');
INSERT INTO `distrito` VALUES (262, 30, 'Conchucos');
INSERT INTO `distrito` VALUES (263, 30, 'Huacaschuque');
INSERT INTO `distrito` VALUES (264, 30, 'Huandoval');
INSERT INTO `distrito` VALUES (265, 30, 'Lacabamba');
INSERT INTO `distrito` VALUES (266, 30, 'Llapo');
INSERT INTO `distrito` VALUES (267, 30, 'Pallasca');
INSERT INTO `distrito` VALUES (268, 30, 'Pampas');
INSERT INTO `distrito` VALUES (269, 30, 'Santa Rosa');
INSERT INTO `distrito` VALUES (270, 30, 'Tauca');
INSERT INTO `distrito` VALUES (271, 31, 'Pomabamba');
INSERT INTO `distrito` VALUES (272, 31, 'Huayllan');
INSERT INTO `distrito` VALUES (273, 31, 'Parobamba');
INSERT INTO `distrito` VALUES (274, 31, 'Quinuabamba');
INSERT INTO `distrito` VALUES (275, 32, 'Recuay');
INSERT INTO `distrito` VALUES (276, 32, 'Catac');
INSERT INTO `distrito` VALUES (277, 32, 'Cotaparaco');
INSERT INTO `distrito` VALUES (278, 32, 'Huayllapampa');
INSERT INTO `distrito` VALUES (279, 32, 'Llacllin');
INSERT INTO `distrito` VALUES (280, 32, 'Marca');
INSERT INTO `distrito` VALUES (281, 32, 'Pampas Chico');
INSERT INTO `distrito` VALUES (282, 32, 'Pararin');
INSERT INTO `distrito` VALUES (283, 32, 'Tapacocha');
INSERT INTO `distrito` VALUES (284, 32, 'Ticapampa');
INSERT INTO `distrito` VALUES (285, 33, 'Chimbote');
INSERT INTO `distrito` VALUES (286, 33, 'Caceres Del Peru');
INSERT INTO `distrito` VALUES (287, 33, 'Coishco');
INSERT INTO `distrito` VALUES (288, 33, 'Macate');
INSERT INTO `distrito` VALUES (289, 33, 'Moro');
INSERT INTO `distrito` VALUES (290, 33, 'Nepe?a');
INSERT INTO `distrito` VALUES (291, 33, 'Samanco');
INSERT INTO `distrito` VALUES (292, 33, 'Santa');
INSERT INTO `distrito` VALUES (293, 33, 'Nuevo Chimbote');
INSERT INTO `distrito` VALUES (294, 34, 'Sihuas');
INSERT INTO `distrito` VALUES (295, 34, 'Acobamba');
INSERT INTO `distrito` VALUES (296, 34, 'Alfonso Ugarte');
INSERT INTO `distrito` VALUES (297, 34, 'Cashapampa');
INSERT INTO `distrito` VALUES (298, 34, 'Chingalpo');
INSERT INTO `distrito` VALUES (299, 34, 'Huayllabamba');
INSERT INTO `distrito` VALUES (300, 34, 'Quiches');
INSERT INTO `distrito` VALUES (301, 34, 'Ragash');
INSERT INTO `distrito` VALUES (302, 34, 'San Juan');
INSERT INTO `distrito` VALUES (303, 34, 'Sicsibamba');
INSERT INTO `distrito` VALUES (304, 35, 'Yungay');
INSERT INTO `distrito` VALUES (305, 35, 'Cascapara');
INSERT INTO `distrito` VALUES (306, 35, 'Mancos');
INSERT INTO `distrito` VALUES (307, 35, 'Matacoto');
INSERT INTO `distrito` VALUES (308, 35, 'Quillo');
INSERT INTO `distrito` VALUES (309, 35, 'Ranrahirca');
INSERT INTO `distrito` VALUES (310, 35, 'Shupluy');
INSERT INTO `distrito` VALUES (311, 35, 'Yanama');
INSERT INTO `distrito` VALUES (312, 37, 'Abancay');
INSERT INTO `distrito` VALUES (313, 37, 'Chacoche');
INSERT INTO `distrito` VALUES (314, 37, 'Circa');
INSERT INTO `distrito` VALUES (315, 37, 'Curahuasi');
INSERT INTO `distrito` VALUES (316, 37, 'Huanipaca');
INSERT INTO `distrito` VALUES (317, 37, 'Lambrama');
INSERT INTO `distrito` VALUES (318, 37, 'Pachirhua');
INSERT INTO `distrito` VALUES (319, 37, 'San Pedro De Cachora');
INSERT INTO `distrito` VALUES (320, 37, 'Tamburco');
INSERT INTO `distrito` VALUES (321, 39, 'Antabamba');
INSERT INTO `distrito` VALUES (322, 39, 'El Oro');
INSERT INTO `distrito` VALUES (323, 39, 'Huaquirca');
INSERT INTO `distrito` VALUES (324, 39, 'Juan Espinoza Medrano');
INSERT INTO `distrito` VALUES (325, 39, 'Oropesa');
INSERT INTO `distrito` VALUES (326, 39, 'Pachaconas');
INSERT INTO `distrito` VALUES (327, 39, 'Sabaino');
INSERT INTO `distrito` VALUES (328, 40, 'Chalhuanca');
INSERT INTO `distrito` VALUES (329, 40, 'Capaya');
INSERT INTO `distrito` VALUES (330, 40, 'Caraybamba');
INSERT INTO `distrito` VALUES (331, 40, 'Chapimarca');
INSERT INTO `distrito` VALUES (332, 40, 'Cotaruse');
INSERT INTO `distrito` VALUES (333, 40, 'Huayllo');
INSERT INTO `distrito` VALUES (334, 40, 'Justo Apu Sahuaraura');
INSERT INTO `distrito` VALUES (335, 40, 'Luche');
INSERT INTO `distrito` VALUES (336, 40, 'Pocohuanca');
INSERT INTO `distrito` VALUES (337, 40, 'San Juan De Chac?a');
INSERT INTO `distrito` VALUES (338, 40, 'Sa?ayca');
INSERT INTO `distrito` VALUES (339, 40, 'Soraya');
INSERT INTO `distrito` VALUES (340, 40, 'Tapairihua');
INSERT INTO `distrito` VALUES (341, 40, 'Tintay');
INSERT INTO `distrito` VALUES (342, 40, 'Toraya');
INSERT INTO `distrito` VALUES (343, 40, 'Yanaca');
INSERT INTO `distrito` VALUES (344, 42, 'Tambobamba');
INSERT INTO `distrito` VALUES (345, 42, 'Cotabambas');
INSERT INTO `distrito` VALUES (346, 42, 'Coyllurqui');
INSERT INTO `distrito` VALUES (347, 42, 'Haquira');
INSERT INTO `distrito` VALUES (348, 42, 'Mara');
INSERT INTO `distrito` VALUES (349, 42, 'Challhuahuacho');
INSERT INTO `distrito` VALUES (350, 43, 'Chuquibambilla');
INSERT INTO `distrito` VALUES (351, 43, 'Curpahuasi');
INSERT INTO `distrito` VALUES (352, 43, 'Gamarra');
INSERT INTO `distrito` VALUES (353, 43, 'Huayllati');
INSERT INTO `distrito` VALUES (354, 43, 'Mamara');
INSERT INTO `distrito` VALUES (355, 43, 'Micaela Bastidas');
INSERT INTO `distrito` VALUES (356, 43, 'Pataypampa');
INSERT INTO `distrito` VALUES (357, 43, 'Progreso');
INSERT INTO `distrito` VALUES (358, 43, 'San Antonio');
INSERT INTO `distrito` VALUES (359, 43, 'Santa Rosa');
INSERT INTO `distrito` VALUES (360, 43, 'Turpay');
INSERT INTO `distrito` VALUES (361, 43, 'Vilcabamba');
INSERT INTO `distrito` VALUES (362, 43, 'Virundo');
INSERT INTO `distrito` VALUES (363, 43, 'Curasco');
INSERT INTO `distrito` VALUES (364, 41, 'Chincheros');
INSERT INTO `distrito` VALUES (365, 41, 'Anco-huallo');
INSERT INTO `distrito` VALUES (366, 41, 'Cocharcas');
INSERT INTO `distrito` VALUES (367, 41, 'Huaccana');
INSERT INTO `distrito` VALUES (368, 41, 'Ocobamba');
INSERT INTO `distrito` VALUES (369, 41, 'Ongoy');
INSERT INTO `distrito` VALUES (370, 41, 'Uranmarca');
INSERT INTO `distrito` VALUES (371, 41, 'Ranracancha');
INSERT INTO `distrito` VALUES (372, 38, 'Andahuaylas');
INSERT INTO `distrito` VALUES (373, 38, 'Andarapa');
INSERT INTO `distrito` VALUES (374, 38, 'Chiara');
INSERT INTO `distrito` VALUES (375, 38, 'Huancarama');
INSERT INTO `distrito` VALUES (376, 38, 'Huayana');
INSERT INTO `distrito` VALUES (377, 38, 'Kishuara');
INSERT INTO `distrito` VALUES (378, 38, 'Pacobamba');
INSERT INTO `distrito` VALUES (379, 38, 'Pacucha');
INSERT INTO `distrito` VALUES (380, 38, 'Pampachiri');
INSERT INTO `distrito` VALUES (381, 38, 'Pomacocha');
INSERT INTO `distrito` VALUES (382, 38, 'San Antonio De Cachi');
INSERT INTO `distrito` VALUES (383, 38, 'San Jeronimo');
INSERT INTO `distrito` VALUES (384, 38, 'San Miguel De Chaccrampa');
INSERT INTO `distrito` VALUES (385, 38, 'Santa Maria De Chicmo');
INSERT INTO `distrito` VALUES (386, 38, 'Talavera');
INSERT INTO `distrito` VALUES (387, 38, 'Tumay Huaraca');
INSERT INTO `distrito` VALUES (388, 38, 'Turpo');
INSERT INTO `distrito` VALUES (389, 38, 'Kaquiabamba');
INSERT INTO `distrito` VALUES (390, 44, 'Arequipa');
INSERT INTO `distrito` VALUES (391, 44, 'Alto Selva Alegre');
INSERT INTO `distrito` VALUES (392, 44, 'Cayma');
INSERT INTO `distrito` VALUES (393, 44, 'Cerro Colorado');
INSERT INTO `distrito` VALUES (394, 44, 'Characato');
INSERT INTO `distrito` VALUES (395, 44, 'Chiguata');
INSERT INTO `distrito` VALUES (396, 44, 'Jacobo Hunter');
INSERT INTO `distrito` VALUES (397, 44, 'La Joya');
INSERT INTO `distrito` VALUES (398, 44, 'Mariano Melgar');
INSERT INTO `distrito` VALUES (399, 44, 'Miraflores');
INSERT INTO `distrito` VALUES (400, 44, 'Mollebaya');
INSERT INTO `distrito` VALUES (401, 44, 'Paucarpata');
INSERT INTO `distrito` VALUES (402, 44, 'Pocsi');
INSERT INTO `distrito` VALUES (403, 44, 'Polobaya');
INSERT INTO `distrito` VALUES (404, 44, 'Queque?a');
INSERT INTO `distrito` VALUES (405, 44, 'Sabandia');
INSERT INTO `distrito` VALUES (406, 44, 'Sachaca');
INSERT INTO `distrito` VALUES (407, 44, 'San Juan De Siguas');
INSERT INTO `distrito` VALUES (408, 44, 'San Juan De Turacani');
INSERT INTO `distrito` VALUES (409, 44, 'Santa Isabel De Siguas');
INSERT INTO `distrito` VALUES (410, 44, 'Santa Rita De Siguas');
INSERT INTO `distrito` VALUES (411, 44, 'Socobaya');
INSERT INTO `distrito` VALUES (412, 44, 'Tiabaya');
INSERT INTO `distrito` VALUES (413, 44, 'Uchumayo');
INSERT INTO `distrito` VALUES (414, 44, 'Victor 1');
INSERT INTO `distrito` VALUES (415, 44, 'Yanahuara');
INSERT INTO `distrito` VALUES (416, 44, 'Yarabamba');
INSERT INTO `distrito` VALUES (417, 44, 'Yura');
INSERT INTO `distrito` VALUES (418, 44, 'Jose Luis Bustamante Y Rivero');
INSERT INTO `distrito` VALUES (419, 45, 'Camana');
INSERT INTO `distrito` VALUES (420, 45, 'Jose Maria Quinper');
INSERT INTO `distrito` VALUES (421, 45, 'Mariano Nicolas Valcarcel');
INSERT INTO `distrito` VALUES (422, 45, 'Mariscal Caceres');
INSERT INTO `distrito` VALUES (423, 45, 'Nicolas De Pierola');
INSERT INTO `distrito` VALUES (424, 45, 'Oco?a');
INSERT INTO `distrito` VALUES (425, 45, 'Quilca');
INSERT INTO `distrito` VALUES (426, 45, 'Samuel Pastor');
INSERT INTO `distrito` VALUES (427, 46, 'Caraveli');
INSERT INTO `distrito` VALUES (428, 46, 'Acari');
INSERT INTO `distrito` VALUES (429, 46, 'Atico');
INSERT INTO `distrito` VALUES (430, 46, 'Atiquipa');
INSERT INTO `distrito` VALUES (431, 46, 'Bella Union');
INSERT INTO `distrito` VALUES (432, 46, 'Cahuacho');
INSERT INTO `distrito` VALUES (433, 46, 'Chala');
INSERT INTO `distrito` VALUES (434, 46, 'Chaparra');
INSERT INTO `distrito` VALUES (435, 46, 'Huanuhuanu');
INSERT INTO `distrito` VALUES (436, 46, 'Jaqui');
INSERT INTO `distrito` VALUES (437, 46, 'Lomas');
INSERT INTO `distrito` VALUES (438, 46, 'Quicacha');
INSERT INTO `distrito` VALUES (439, 46, 'Yauca');
INSERT INTO `distrito` VALUES (440, 47, 'Aplao');
INSERT INTO `distrito` VALUES (441, 47, 'Andagua');
INSERT INTO `distrito` VALUES (442, 47, 'Ayo');
INSERT INTO `distrito` VALUES (443, 47, 'Chachas');
INSERT INTO `distrito` VALUES (444, 47, 'Chilcaymarca');
INSERT INTO `distrito` VALUES (445, 47, 'Choco');
INSERT INTO `distrito` VALUES (446, 47, 'Huancarqui');
INSERT INTO `distrito` VALUES (447, 47, 'Machaguay');
INSERT INTO `distrito` VALUES (448, 47, 'Orcopampa');
INSERT INTO `distrito` VALUES (449, 47, 'Pampacolca');
INSERT INTO `distrito` VALUES (450, 47, 'Tipan');
INSERT INTO `distrito` VALUES (451, 47, 'U?on');
INSERT INTO `distrito` VALUES (452, 47, 'Uraca');
INSERT INTO `distrito` VALUES (453, 47, 'Viraco');
INSERT INTO `distrito` VALUES (454, 48, 'Chivay');
INSERT INTO `distrito` VALUES (455, 48, 'Achoma');
INSERT INTO `distrito` VALUES (456, 48, 'Cabanaconde');
INSERT INTO `distrito` VALUES (457, 48, 'Callalli');
INSERT INTO `distrito` VALUES (458, 48, 'Caylloma');
INSERT INTO `distrito` VALUES (459, 48, 'Coporaque');
INSERT INTO `distrito` VALUES (460, 48, 'Huambo');
INSERT INTO `distrito` VALUES (461, 48, 'Huanca');
INSERT INTO `distrito` VALUES (462, 48, 'Ichipampa');
INSERT INTO `distrito` VALUES (463, 48, 'Lari');
INSERT INTO `distrito` VALUES (464, 48, 'Lluta');
INSERT INTO `distrito` VALUES (465, 48, 'Maca');
INSERT INTO `distrito` VALUES (466, 48, 'Madrigal');
INSERT INTO `distrito` VALUES (467, 48, 'San Antonio De Chuca 2');
INSERT INTO `distrito` VALUES (468, 48, 'Sibayo');
INSERT INTO `distrito` VALUES (469, 48, 'Tapay');
INSERT INTO `distrito` VALUES (470, 48, 'Tisco');
INSERT INTO `distrito` VALUES (471, 48, 'Tuti');
INSERT INTO `distrito` VALUES (472, 48, 'Yanque');
INSERT INTO `distrito` VALUES (473, 49, 'Chiquibamba');
INSERT INTO `distrito` VALUES (474, 49, 'Ay');
INSERT INTO `distrito` VALUES (475, 49, 'Cayarani');
INSERT INTO `distrito` VALUES (476, 49, 'Chichas');
INSERT INTO `distrito` VALUES (477, 49, 'Iray');
INSERT INTO `distrito` VALUES (478, 49, 'Rio Grande');
INSERT INTO `distrito` VALUES (479, 49, 'Salamanca');
INSERT INTO `distrito` VALUES (480, 49, 'Yanaquigua');
INSERT INTO `distrito` VALUES (481, 50, 'Mollendo');
INSERT INTO `distrito` VALUES (482, 50, 'Cocachacra');
INSERT INTO `distrito` VALUES (483, 50, 'Dean Valdivia');
INSERT INTO `distrito` VALUES (484, 50, 'Islay');
INSERT INTO `distrito` VALUES (485, 50, 'Mejia');
INSERT INTO `distrito` VALUES (486, 50, 'Punta De Bombon');
INSERT INTO `distrito` VALUES (487, 51, 'Cotahuasi');
INSERT INTO `distrito` VALUES (488, 51, 'Alca');
INSERT INTO `distrito` VALUES (489, 51, 'Charcana');
INSERT INTO `distrito` VALUES (490, 51, 'Aynacotas');
INSERT INTO `distrito` VALUES (491, 51, 'Pampamarca');
INSERT INTO `distrito` VALUES (492, 51, 'Uyca');
INSERT INTO `distrito` VALUES (493, 51, 'Quechualla');
INSERT INTO `distrito` VALUES (494, 51, 'Sayla');
INSERT INTO `distrito` VALUES (495, 51, 'Tauria');
INSERT INTO `distrito` VALUES (496, 51, 'Tomepampa');
INSERT INTO `distrito` VALUES (497, 51, 'Toro');
INSERT INTO `distrito` VALUES (498, 52, 'Ayacucho');
INSERT INTO `distrito` VALUES (499, 52, 'Acocro');
INSERT INTO `distrito` VALUES (500, 52, 'Acos Vinchos');
INSERT INTO `distrito` VALUES (501, 52, 'Carmen Alto');
INSERT INTO `distrito` VALUES (502, 52, 'Chiara');
INSERT INTO `distrito` VALUES (503, 52, 'Pacaycasa');
INSERT INTO `distrito` VALUES (504, 52, 'Quinua');
INSERT INTO `distrito` VALUES (505, 52, 'San Jose De Ticllas');
INSERT INTO `distrito` VALUES (507, 52, 'San Juan Bautista');
INSERT INTO `distrito` VALUES (508, 52, 'Santiago De Pischa');
INSERT INTO `distrito` VALUES (509, 52, 'Socos');
INSERT INTO `distrito` VALUES (510, 52, 'Tambillo');
INSERT INTO `distrito` VALUES (511, 52, 'Vinchos');
INSERT INTO `distrito` VALUES (512, 52, 'Jesus Nazareno');
INSERT INTO `distrito` VALUES (513, 53, 'Cangallo');
INSERT INTO `distrito` VALUES (514, 53, 'Chuschi');
INSERT INTO `distrito` VALUES (515, 53, 'Los Morochucos');
INSERT INTO `distrito` VALUES (516, 53, 'Maria Parado De Bellido');
INSERT INTO `distrito` VALUES (517, 53, 'Paras');
INSERT INTO `distrito` VALUES (518, 53, 'Totos');
INSERT INTO `distrito` VALUES (519, 54, 'Sancos');
INSERT INTO `distrito` VALUES (520, 54, 'Carapo');
INSERT INTO `distrito` VALUES (521, 54, 'Sacsamarca');
INSERT INTO `distrito` VALUES (522, 54, 'Santiago De Lucanamarca');
INSERT INTO `distrito` VALUES (523, 55, 'Huanta');
INSERT INTO `distrito` VALUES (524, 55, 'Hayahuanco');
INSERT INTO `distrito` VALUES (525, 55, 'Huamanguilla');
INSERT INTO `distrito` VALUES (526, 55, 'Iguain');
INSERT INTO `distrito` VALUES (527, 55, 'Luricocha');
INSERT INTO `distrito` VALUES (528, 55, 'Santillana');
INSERT INTO `distrito` VALUES (529, 55, 'Sivia');
INSERT INTO `distrito` VALUES (530, 56, 'San Miguel');
INSERT INTO `distrito` VALUES (531, 56, 'Anco');
INSERT INTO `distrito` VALUES (532, 56, 'Ayna');
INSERT INTO `distrito` VALUES (533, 56, 'Chilcas');
INSERT INTO `distrito` VALUES (534, 56, 'Chungui');
INSERT INTO `distrito` VALUES (535, 56, 'Luis Carranza');
INSERT INTO `distrito` VALUES (536, 56, 'Tambo');
INSERT INTO `distrito` VALUES (537, 56, 'Santa Rosa');
INSERT INTO `distrito` VALUES (538, 57, 'Puquio');
INSERT INTO `distrito` VALUES (539, 57, 'Aucara');
INSERT INTO `distrito` VALUES (540, 57, 'Cabana');
INSERT INTO `distrito` VALUES (541, 57, 'Carmen Salcedo');
INSERT INTO `distrito` VALUES (542, 57, 'Chavi?a');
INSERT INTO `distrito` VALUES (543, 57, 'Chipao');
INSERT INTO `distrito` VALUES (544, 57, 'Huac-huas');
INSERT INTO `distrito` VALUES (545, 57, 'Laramate');
INSERT INTO `distrito` VALUES (546, 57, 'Leoncio Prado');
INSERT INTO `distrito` VALUES (547, 57, 'Llauta');
INSERT INTO `distrito` VALUES (548, 57, 'Lucanas');
INSERT INTO `distrito` VALUES (549, 57, 'Oca?a');
INSERT INTO `distrito` VALUES (550, 57, 'Otoca');
INSERT INTO `distrito` VALUES (551, 57, 'Saisa');
INSERT INTO `distrito` VALUES (552, 57, 'San Cristobal');
INSERT INTO `distrito` VALUES (553, 57, 'San Juan');
INSERT INTO `distrito` VALUES (554, 57, 'San Pedro');
INSERT INTO `distrito` VALUES (555, 57, 'San Pedro De Palco');
INSERT INTO `distrito` VALUES (556, 57, 'Sancos');
INSERT INTO `distrito` VALUES (557, 57, 'Santa Ana De Huaycahuacho');
INSERT INTO `distrito` VALUES (558, 57, 'Santa Lucia');
INSERT INTO `distrito` VALUES (559, 58, 'Coracora');
INSERT INTO `distrito` VALUES (560, 58, 'Chumpi');
INSERT INTO `distrito` VALUES (561, 58, 'Coronel Casta?eda');
INSERT INTO `distrito` VALUES (562, 58, 'Pacapausa');
INSERT INTO `distrito` VALUES (563, 58, 'Pulio');
INSERT INTO `distrito` VALUES (564, 58, 'Puyusca');
INSERT INTO `distrito` VALUES (565, 58, 'San Francisco De Ravacayco');
INSERT INTO `distrito` VALUES (566, 58, 'Upahuacho');
INSERT INTO `distrito` VALUES (567, 59, 'Pausa');
INSERT INTO `distrito` VALUES (568, 59, 'Colta');
INSERT INTO `distrito` VALUES (569, 59, 'Corculla');
INSERT INTO `distrito` VALUES (570, 59, 'Lampa');
INSERT INTO `distrito` VALUES (571, 59, 'Marcabamba');
INSERT INTO `distrito` VALUES (572, 59, 'Oyolo');
INSERT INTO `distrito` VALUES (573, 59, 'Pararca');
INSERT INTO `distrito` VALUES (574, 59, 'San Javier Del Alpabamba');
INSERT INTO `distrito` VALUES (575, 59, 'San Jose De Ushua');
INSERT INTO `distrito` VALUES (576, 59, 'Sara Sara');
INSERT INTO `distrito` VALUES (577, 60, 'Querobamba');
INSERT INTO `distrito` VALUES (578, 60, 'Belen');
INSERT INTO `distrito` VALUES (579, 60, 'Chalcos');
INSERT INTO `distrito` VALUES (580, 60, 'Chilcayoc');
INSERT INTO `distrito` VALUES (581, 60, 'Huaca?a');
INSERT INTO `distrito` VALUES (582, 60, 'Morcolla');
INSERT INTO `distrito` VALUES (583, 60, 'Paico');
INSERT INTO `distrito` VALUES (584, 60, 'San Pedro De Larcay');
INSERT INTO `distrito` VALUES (585, 60, 'San Salvador De Quije');
INSERT INTO `distrito` VALUES (586, 60, 'Santiago De Paucaray');
INSERT INTO `distrito` VALUES (587, 60, 'Soras');
INSERT INTO `distrito` VALUES (588, 61, 'Huancapi');
INSERT INTO `distrito` VALUES (589, 61, 'Alcamenca');
INSERT INTO `distrito` VALUES (590, 61, 'Apongo');
INSERT INTO `distrito` VALUES (591, 61, 'Asquipata');
INSERT INTO `distrito` VALUES (592, 61, 'Canaria');
INSERT INTO `distrito` VALUES (593, 61, 'Cayara');
INSERT INTO `distrito` VALUES (594, 61, 'Colca');
INSERT INTO `distrito` VALUES (595, 61, 'Huamanquiquia');
INSERT INTO `distrito` VALUES (596, 61, 'Huancaraylla');
INSERT INTO `distrito` VALUES (597, 61, 'Huaya');
INSERT INTO `distrito` VALUES (598, 61, 'Sarhua');
INSERT INTO `distrito` VALUES (599, 61, 'Vilcanchos');
INSERT INTO `distrito` VALUES (600, 62, 'Vilcas Huaman');
INSERT INTO `distrito` VALUES (601, 62, 'Accomarca');
INSERT INTO `distrito` VALUES (602, 62, 'Carhuanca');
INSERT INTO `distrito` VALUES (603, 62, 'Concepcion');
INSERT INTO `distrito` VALUES (604, 62, 'Huambalpa');
INSERT INTO `distrito` VALUES (605, 62, 'Independencia');
INSERT INTO `distrito` VALUES (606, 62, 'Saurama');
INSERT INTO `distrito` VALUES (607, 62, 'Vischongo');
INSERT INTO `distrito` VALUES (608, 63, 'San Ignacio');
INSERT INTO `distrito` VALUES (609, 63, 'Chirinos');
INSERT INTO `distrito` VALUES (610, 63, 'Huarango');
INSERT INTO `distrito` VALUES (611, 63, 'La Coipa');
INSERT INTO `distrito` VALUES (612, 63, 'Namballe');
INSERT INTO `distrito` VALUES (613, 63, 'San Jose De Lourdes');
INSERT INTO `distrito` VALUES (614, 63, 'Tabaconas');
INSERT INTO `distrito` VALUES (615, 64, 'Jaen');
INSERT INTO `distrito` VALUES (616, 64, 'Bellavista');
INSERT INTO `distrito` VALUES (617, 64, 'Chontali');
INSERT INTO `distrito` VALUES (618, 64, 'Colasay');
INSERT INTO `distrito` VALUES (619, 64, 'Huabal');
INSERT INTO `distrito` VALUES (620, 64, 'Las Pirias');
INSERT INTO `distrito` VALUES (621, 64, 'Pomahuaca');
INSERT INTO `distrito` VALUES (622, 64, 'Pucara');
INSERT INTO `distrito` VALUES (623, 64, 'Sallique');
INSERT INTO `distrito` VALUES (624, 64, 'San Felipe');
INSERT INTO `distrito` VALUES (625, 64, 'San Jose Del Alto');
INSERT INTO `distrito` VALUES (626, 64, 'Santa Rosa');
INSERT INTO `distrito` VALUES (627, 65, 'Cutervo');
INSERT INTO `distrito` VALUES (628, 65, 'Callayuc');
INSERT INTO `distrito` VALUES (629, 65, 'Choros');
INSERT INTO `distrito` VALUES (630, 65, 'Cujillo');
INSERT INTO `distrito` VALUES (631, 65, 'La Ramada');
INSERT INTO `distrito` VALUES (632, 65, 'Pimpingos');
INSERT INTO `distrito` VALUES (633, 65, 'Querocotillo');
INSERT INTO `distrito` VALUES (634, 65, 'San Andres De Cutervo');
INSERT INTO `distrito` VALUES (635, 65, 'San Juan De Cutervo');
INSERT INTO `distrito` VALUES (636, 65, 'San Luis De Lucma');
INSERT INTO `distrito` VALUES (637, 65, 'Santa Cruz');
INSERT INTO `distrito` VALUES (638, 65, 'Santo Domingo De La Capilla');
INSERT INTO `distrito` VALUES (639, 65, 'Santo Tomas');
INSERT INTO `distrito` VALUES (640, 65, 'Socota');
INSERT INTO `distrito` VALUES (641, 65, 'Toribio Casanova');
INSERT INTO `distrito` VALUES (642, 66, 'Chota');
INSERT INTO `distrito` VALUES (643, 66, 'Anguia');
INSERT INTO `distrito` VALUES (644, 66, 'Chadin');
INSERT INTO `distrito` VALUES (645, 66, 'Chigurip');
INSERT INTO `distrito` VALUES (646, 66, 'Chimban');
INSERT INTO `distrito` VALUES (647, 66, 'Cochabamba');
INSERT INTO `distrito` VALUES (648, 66, 'Conchan');
INSERT INTO `distrito` VALUES (649, 66, 'Huambos');
INSERT INTO `distrito` VALUES (650, 66, 'Lajas');
INSERT INTO `distrito` VALUES (651, 66, 'Llama');
INSERT INTO `distrito` VALUES (652, 66, 'Miracosta');
INSERT INTO `distrito` VALUES (653, 66, 'Paccha');
INSERT INTO `distrito` VALUES (654, 66, 'Pion');
INSERT INTO `distrito` VALUES (655, 66, 'Querocoto');
INSERT INTO `distrito` VALUES (656, 66, 'San Juan De Licupis');
INSERT INTO `distrito` VALUES (657, 66, 'Tacabamba');
INSERT INTO `distrito` VALUES (658, 66, 'Tocmoche');
INSERT INTO `distrito` VALUES (659, 66, 'Choropampa');
INSERT INTO `distrito` VALUES (660, 66, 'Chalamarca');
INSERT INTO `distrito` VALUES (661, 67, 'Santa Cruz');
INSERT INTO `distrito` VALUES (662, 67, 'Andabamba');
INSERT INTO `distrito` VALUES (663, 67, 'Cataqche');
INSERT INTO `distrito` VALUES (664, 67, 'Chancayba?os');
INSERT INTO `distrito` VALUES (665, 67, 'La Esperanza');
INSERT INTO `distrito` VALUES (666, 67, 'Ninabamba');
INSERT INTO `distrito` VALUES (667, 67, 'Pulan');
INSERT INTO `distrito` VALUES (668, 67, 'Saucepampa');
INSERT INTO `distrito` VALUES (669, 67, 'Sexi');
INSERT INTO `distrito` VALUES (670, 67, 'Uticyacu');
INSERT INTO `distrito` VALUES (671, 67, 'Yauyucan');
INSERT INTO `distrito` VALUES (672, 68, 'Bambamarca');
INSERT INTO `distrito` VALUES (673, 68, 'Chugur');
INSERT INTO `distrito` VALUES (674, 68, 'Hualgayoc');
INSERT INTO `distrito` VALUES (675, 69, 'Celendin');
INSERT INTO `distrito` VALUES (676, 69, 'Chumuch');
INSERT INTO `distrito` VALUES (677, 69, 'Cortegana');
INSERT INTO `distrito` VALUES (678, 69, 'Huasmin');
INSERT INTO `distrito` VALUES (679, 69, 'Jorge Chavez');
INSERT INTO `distrito` VALUES (680, 69, 'Jose Galvez');
INSERT INTO `distrito` VALUES (681, 69, 'Miguel Iglesias');
INSERT INTO `distrito` VALUES (682, 69, 'Oxamarca');
INSERT INTO `distrito` VALUES (683, 69, 'Sorochuco');
INSERT INTO `distrito` VALUES (684, 69, 'Sucre');
INSERT INTO `distrito` VALUES (685, 69, 'Utco');
INSERT INTO `distrito` VALUES (686, 69, 'La Libertad De Pallan');
INSERT INTO `distrito` VALUES (687, 70, 'San Pablo');
INSERT INTO `distrito` VALUES (688, 70, 'San Bernardino');
INSERT INTO `distrito` VALUES (689, 70, 'San Luis');
INSERT INTO `distrito` VALUES (690, 70, 'Tmbaden');
INSERT INTO `distrito` VALUES (691, 71, 'San Miguel');
INSERT INTO `distrito` VALUES (692, 71, 'Bolivar');
INSERT INTO `distrito` VALUES (693, 71, 'Calquis');
INSERT INTO `distrito` VALUES (694, 71, 'Catilluc');
INSERT INTO `distrito` VALUES (695, 71, 'El Prado');
INSERT INTO `distrito` VALUES (696, 71, 'La Florida');
INSERT INTO `distrito` VALUES (697, 71, 'Llapa');
INSERT INTO `distrito` VALUES (698, 71, 'Nanchoc');
INSERT INTO `distrito` VALUES (699, 71, 'Niepos');
INSERT INTO `distrito` VALUES (700, 71, 'San Gregorio');
INSERT INTO `distrito` VALUES (701, 71, 'San Silvestre De Cochan');
INSERT INTO `distrito` VALUES (702, 71, 'Tongod');
INSERT INTO `distrito` VALUES (703, 71, 'Union Agua Blanca');
INSERT INTO `distrito` VALUES (704, 72, 'Contamuza');
INSERT INTO `distrito` VALUES (705, 72, 'Chilete');
INSERT INTO `distrito` VALUES (706, 72, 'Cupisnique');
INSERT INTO `distrito` VALUES (707, 72, 'Guzmango');
INSERT INTO `distrito` VALUES (708, 72, 'San Benito');
INSERT INTO `distrito` VALUES (709, 72, 'Santa Cruz De Toled');
INSERT INTO `distrito` VALUES (710, 72, 'Tantarica');
INSERT INTO `distrito` VALUES (711, 72, 'Yonan');
INSERT INTO `distrito` VALUES (712, 73, 'Cajamarca');
INSERT INTO `distrito` VALUES (713, 73, 'Asuncion');
INSERT INTO `distrito` VALUES (714, 73, 'Hetilla');
INSERT INTO `distrito` VALUES (715, 73, 'Cospan');
INSERT INTO `distrito` VALUES (716, 73, 'Enca?ada');
INSERT INTO `distrito` VALUES (717, 73, 'Jesus');
INSERT INTO `distrito` VALUES (718, 73, 'Llacanora');
INSERT INTO `distrito` VALUES (719, 73, 'Los Ba?os Del Inca');
INSERT INTO `distrito` VALUES (720, 73, 'Magdalena');
INSERT INTO `distrito` VALUES (721, 73, 'Matara');
INSERT INTO `distrito` VALUES (722, 73, 'Namora');
INSERT INTO `distrito` VALUES (723, 73, 'San Juan');
INSERT INTO `distrito` VALUES (724, 74, 'Cajabamba');
INSERT INTO `distrito` VALUES (725, 74, 'Cachachi');
INSERT INTO `distrito` VALUES (726, 74, 'Condebamba');
INSERT INTO `distrito` VALUES (727, 74, 'Sitacocha');
INSERT INTO `distrito` VALUES (728, 75, 'Pedro Galvez');
INSERT INTO `distrito` VALUES (729, 75, 'Eduardo Villanueva');
INSERT INTO `distrito` VALUES (730, 75, 'Gregorio Pita');
INSERT INTO `distrito` VALUES (731, 75, 'Ichocan');
INSERT INTO `distrito` VALUES (732, 75, 'Jose Manuel Quiroz');
INSERT INTO `distrito` VALUES (733, 75, 'Jose Sabogal');
INSERT INTO `distrito` VALUES (734, 75, 'Chancay');
INSERT INTO `distrito` VALUES (735, 76, 'Cusco');
INSERT INTO `distrito` VALUES (736, 76, 'Ccorca');
INSERT INTO `distrito` VALUES (737, 76, 'Poroy');
INSERT INTO `distrito` VALUES (738, 76, 'San Jeronimo');
INSERT INTO `distrito` VALUES (739, 76, 'San Sebastian');
INSERT INTO `distrito` VALUES (740, 76, 'Santiago');
INSERT INTO `distrito` VALUES (741, 76, 'Saylla');
INSERT INTO `distrito` VALUES (742, 76, 'Wanchaq');
INSERT INTO `distrito` VALUES (743, 77, 'Acomayo');
INSERT INTO `distrito` VALUES (744, 77, 'Acopia');
INSERT INTO `distrito` VALUES (745, 77, 'Acos');
INSERT INTO `distrito` VALUES (746, 77, 'Mosoc Llacta');
INSERT INTO `distrito` VALUES (747, 77, 'Pomacanchi');
INSERT INTO `distrito` VALUES (748, 77, 'Rondocan');
INSERT INTO `distrito` VALUES (749, 77, 'Sangarara');
INSERT INTO `distrito` VALUES (750, 78, 'Anta');
INSERT INTO `distrito` VALUES (751, 78, 'Ancahuasi');
INSERT INTO `distrito` VALUES (752, 78, 'Cachimayo');
INSERT INTO `distrito` VALUES (753, 78, 'Chinchaypujio');
INSERT INTO `distrito` VALUES (754, 78, 'Huarocondo');
INSERT INTO `distrito` VALUES (755, 78, 'Limatambo');
INSERT INTO `distrito` VALUES (756, 78, 'Mollepata');
INSERT INTO `distrito` VALUES (757, 78, 'Pucyura');
INSERT INTO `distrito` VALUES (758, 78, 'Zurite');
INSERT INTO `distrito` VALUES (759, 79, 'Calca');
INSERT INTO `distrito` VALUES (760, 79, 'Coya');
INSERT INTO `distrito` VALUES (761, 79, 'Lamay');
INSERT INTO `distrito` VALUES (762, 79, 'Lares');
INSERT INTO `distrito` VALUES (763, 79, 'Pisac');
INSERT INTO `distrito` VALUES (764, 79, 'San Salvador');
INSERT INTO `distrito` VALUES (765, 79, 'Taray');
INSERT INTO `distrito` VALUES (766, 79, 'Yanatile');
INSERT INTO `distrito` VALUES (767, 80, 'Yanaoca');
INSERT INTO `distrito` VALUES (768, 80, 'Checca');
INSERT INTO `distrito` VALUES (769, 80, 'Kunturkanki');
INSERT INTO `distrito` VALUES (770, 80, 'Langui');
INSERT INTO `distrito` VALUES (771, 80, 'Layo');
INSERT INTO `distrito` VALUES (772, 80, 'Pampamarca');
INSERT INTO `distrito` VALUES (773, 80, 'Quehue');
INSERT INTO `distrito` VALUES (774, 80, 'Tupac Amaru');
INSERT INTO `distrito` VALUES (775, 81, 'Sicuani');
INSERT INTO `distrito` VALUES (776, 81, 'Checacupe');
INSERT INTO `distrito` VALUES (777, 81, 'Combapata');
INSERT INTO `distrito` VALUES (778, 81, 'Marangani');
INSERT INTO `distrito` VALUES (779, 81, 'Pitumarca');
INSERT INTO `distrito` VALUES (780, 81, 'San Pablo');
INSERT INTO `distrito` VALUES (781, 81, 'San Pedro');
INSERT INTO `distrito` VALUES (782, 81, 'Tinta');
INSERT INTO `distrito` VALUES (783, 82, 'Santo Tomas');
INSERT INTO `distrito` VALUES (784, 82, 'Capacmarca');
INSERT INTO `distrito` VALUES (785, 82, 'Chamaca');
INSERT INTO `distrito` VALUES (786, 82, 'Colquemarca');
INSERT INTO `distrito` VALUES (787, 82, 'Livitaca');
INSERT INTO `distrito` VALUES (788, 82, 'Llusco');
INSERT INTO `distrito` VALUES (789, 82, 'Qui?ota');
INSERT INTO `distrito` VALUES (790, 82, 'Velille');
INSERT INTO `distrito` VALUES (791, 83, 'Espinar');
INSERT INTO `distrito` VALUES (792, 83, 'Condoroma');
INSERT INTO `distrito` VALUES (793, 83, 'Coporaque');
INSERT INTO `distrito` VALUES (794, 83, 'Ocoruro');
INSERT INTO `distrito` VALUES (795, 83, 'Pallpata');
INSERT INTO `distrito` VALUES (796, 83, 'Ichigua');
INSERT INTO `distrito` VALUES (797, 83, 'Suyckutambo');
INSERT INTO `distrito` VALUES (798, 83, 'Alto Pichigua');
INSERT INTO `distrito` VALUES (799, 84, 'Santa Ana');
INSERT INTO `distrito` VALUES (800, 84, 'Echarate');
INSERT INTO `distrito` VALUES (801, 84, 'Huayopata');
INSERT INTO `distrito` VALUES (802, 84, 'Maranura');
INSERT INTO `distrito` VALUES (803, 84, 'Ocobamba');
INSERT INTO `distrito` VALUES (804, 84, 'Quellouno');
INSERT INTO `distrito` VALUES (805, 84, 'Quimbiri');
INSERT INTO `distrito` VALUES (806, 84, 'Santa Teresa');
INSERT INTO `distrito` VALUES (807, 84, 'Vilcabamba');
INSERT INTO `distrito` VALUES (808, 84, 'Pichari');
INSERT INTO `distrito` VALUES (809, 85, 'Paruro');
INSERT INTO `distrito` VALUES (810, 85, 'Accha');
INSERT INTO `distrito` VALUES (811, 85, 'Ccapi');
INSERT INTO `distrito` VALUES (812, 85, 'Colcha');
INSERT INTO `distrito` VALUES (813, 85, 'Huanoquite');
INSERT INTO `distrito` VALUES (814, 85, 'Omacha');
INSERT INTO `distrito` VALUES (815, 85, 'Paccaritambo');
INSERT INTO `distrito` VALUES (816, 85, 'Pillpinto');
INSERT INTO `distrito` VALUES (817, 85, 'Yaurisque');
INSERT INTO `distrito` VALUES (818, 86, 'Paucartambo');
INSERT INTO `distrito` VALUES (819, 86, 'Caicay');
INSERT INTO `distrito` VALUES (820, 86, 'Challabamba');
INSERT INTO `distrito` VALUES (821, 86, 'Colquepata');
INSERT INTO `distrito` VALUES (822, 86, 'Huancarani');
INSERT INTO `distrito` VALUES (823, 86, 'Kos?opata');
INSERT INTO `distrito` VALUES (824, 87, 'Urcos');
INSERT INTO `distrito` VALUES (825, 87, 'Andahuaylillas');
INSERT INTO `distrito` VALUES (826, 87, 'Camanti');
INSERT INTO `distrito` VALUES (827, 87, 'Ccarhuayo');
INSERT INTO `distrito` VALUES (828, 87, 'Ccatca');
INSERT INTO `distrito` VALUES (829, 87, 'Cusipata');
INSERT INTO `distrito` VALUES (830, 87, 'Huaro');
INSERT INTO `distrito` VALUES (831, 87, 'Lucre');
INSERT INTO `distrito` VALUES (832, 87, 'Marcapata');
INSERT INTO `distrito` VALUES (833, 87, 'Ocongate');
INSERT INTO `distrito` VALUES (834, 87, 'Oropesa');
INSERT INTO `distrito` VALUES (835, 87, 'Quiquijana');
INSERT INTO `distrito` VALUES (836, 88, 'Urubamba');
INSERT INTO `distrito` VALUES (837, 88, 'Chinchero');
INSERT INTO `distrito` VALUES (838, 88, 'Huayllabamba');
INSERT INTO `distrito` VALUES (839, 88, 'Machipicchu');
INSERT INTO `distrito` VALUES (840, 88, 'Maras');
INSERT INTO `distrito` VALUES (841, 88, 'Ollantaytambo');
INSERT INTO `distrito` VALUES (842, 88, 'Yucay');
INSERT INTO `distrito` VALUES (843, 89, 'Huancavelica');
INSERT INTO `distrito` VALUES (844, 89, 'Acobambilla');
INSERT INTO `distrito` VALUES (845, 89, 'Acoria');
INSERT INTO `distrito` VALUES (846, 89, 'Conayca');
INSERT INTO `distrito` VALUES (847, 89, 'Cuenca');
INSERT INTO `distrito` VALUES (848, 89, 'Huanchocolpa');
INSERT INTO `distrito` VALUES (849, 89, 'Huayllahuara');
INSERT INTO `distrito` VALUES (850, 89, 'Izcuchaca');
INSERT INTO `distrito` VALUES (851, 89, 'Laria');
INSERT INTO `distrito` VALUES (852, 89, 'Manta');
INSERT INTO `distrito` VALUES (853, 89, 'Mariscal Caceres');
INSERT INTO `distrito` VALUES (854, 89, 'Moya');
INSERT INTO `distrito` VALUES (855, 89, 'Nuevo Occoro');
INSERT INTO `distrito` VALUES (856, 89, 'Palca');
INSERT INTO `distrito` VALUES (857, 89, 'Pilchaca');
INSERT INTO `distrito` VALUES (858, 89, 'Vilca');
INSERT INTO `distrito` VALUES (859, 89, 'Yauli');
INSERT INTO `distrito` VALUES (860, 89, 'Ascencion');
INSERT INTO `distrito` VALUES (861, 90, 'Acobamba');
INSERT INTO `distrito` VALUES (862, 90, 'Andabamba');
INSERT INTO `distrito` VALUES (863, 90, 'Anta');
INSERT INTO `distrito` VALUES (864, 90, 'Caja');
INSERT INTO `distrito` VALUES (865, 90, 'Marcas');
INSERT INTO `distrito` VALUES (866, 90, 'Paucara');
INSERT INTO `distrito` VALUES (867, 90, 'Pomacocha');
INSERT INTO `distrito` VALUES (868, 90, 'Rosario');
INSERT INTO `distrito` VALUES (869, 91, 'Lircay');
INSERT INTO `distrito` VALUES (870, 91, 'Anchonga');
INSERT INTO `distrito` VALUES (871, 91, 'Callanmarca');
INSERT INTO `distrito` VALUES (872, 91, 'Ccochaccasa');
INSERT INTO `distrito` VALUES (873, 91, 'Chincho');
INSERT INTO `distrito` VALUES (874, 91, 'Congalla');
INSERT INTO `distrito` VALUES (875, 91, 'Huanca-huanca');
INSERT INTO `distrito` VALUES (876, 91, 'Huayllay Grande');
INSERT INTO `distrito` VALUES (877, 91, 'Julcamarca');
INSERT INTO `distrito` VALUES (878, 91, 'San Antonio De Antaparco');
INSERT INTO `distrito` VALUES (879, 91, 'Santo Tomas De Pata');
INSERT INTO `distrito` VALUES (880, 91, 'Secclla');
INSERT INTO `distrito` VALUES (881, 92, 'Castrovirreyna');
INSERT INTO `distrito` VALUES (882, 92, 'Arma');
INSERT INTO `distrito` VALUES (883, 92, 'Aurahua');
INSERT INTO `distrito` VALUES (884, 92, 'Capillas');
INSERT INTO `distrito` VALUES (885, 92, 'Chupamarca');
INSERT INTO `distrito` VALUES (886, 92, 'Cocas');
INSERT INTO `distrito` VALUES (887, 92, 'Huachos');
INSERT INTO `distrito` VALUES (888, 92, 'Huamatambo');
INSERT INTO `distrito` VALUES (889, 92, 'Mollepampa');
INSERT INTO `distrito` VALUES (890, 92, 'San Juan');
INSERT INTO `distrito` VALUES (891, 92, 'Santa Ana');
INSERT INTO `distrito` VALUES (892, 92, 'Tantara');
INSERT INTO `distrito` VALUES (893, 92, 'Ticrapo');
INSERT INTO `distrito` VALUES (894, 93, 'Churcampa');
INSERT INTO `distrito` VALUES (895, 93, 'Anco');
INSERT INTO `distrito` VALUES (896, 93, 'Chinchihuasi');
INSERT INTO `distrito` VALUES (897, 93, 'El Carmen');
INSERT INTO `distrito` VALUES (898, 93, 'La Merced');
INSERT INTO `distrito` VALUES (899, 93, 'Lacroja');
INSERT INTO `distrito` VALUES (900, 93, 'Pachamarca');
INSERT INTO `distrito` VALUES (901, 93, 'Paucarbamba');
INSERT INTO `distrito` VALUES (902, 93, 'San Miguel De Mayocc');
INSERT INTO `distrito` VALUES (903, 93, 'San Pedro De Coris');
INSERT INTO `distrito` VALUES (904, 94, 'Huaytara');
INSERT INTO `distrito` VALUES (905, 94, 'Ayavi');
INSERT INTO `distrito` VALUES (906, 94, 'Cordova');
INSERT INTO `distrito` VALUES (907, 94, 'Huayacundo Arma');
INSERT INTO `distrito` VALUES (908, 94, 'Laramarca');
INSERT INTO `distrito` VALUES (909, 94, 'Ocoyo');
INSERT INTO `distrito` VALUES (910, 94, 'Pilpichaca');
INSERT INTO `distrito` VALUES (911, 94, 'Querco');
INSERT INTO `distrito` VALUES (912, 94, 'Quito-arma');
INSERT INTO `distrito` VALUES (913, 94, 'San Antonio De Cusicancha');
INSERT INTO `distrito` VALUES (914, 94, 'San Francisco De Sanyayaico');
INSERT INTO `distrito` VALUES (915, 94, 'San Isidro');
INSERT INTO `distrito` VALUES (916, 94, 'Santiago De Chocorvos');
INSERT INTO `distrito` VALUES (917, 94, 'Santiago De Quirahuara');
INSERT INTO `distrito` VALUES (918, 94, 'Santo Domingo De Capillas');
INSERT INTO `distrito` VALUES (919, 94, 'Tambo');
INSERT INTO `distrito` VALUES (920, 96, 'Pampas');
INSERT INTO `distrito` VALUES (921, 96, 'Acostambo');
INSERT INTO `distrito` VALUES (922, 96, 'Acraquia');
INSERT INTO `distrito` VALUES (923, 96, 'Ahuaycha');
INSERT INTO `distrito` VALUES (924, 96, 'Colcabamba');
INSERT INTO `distrito` VALUES (925, 96, 'Daniel Hernandez');
INSERT INTO `distrito` VALUES (926, 96, 'Huachocolpa');
INSERT INTO `distrito` VALUES (927, 96, 'Huando');
INSERT INTO `distrito` VALUES (928, 96, 'Huaribamba');
INSERT INTO `distrito` VALUES (929, 96, '?ahuimpuquio');
INSERT INTO `distrito` VALUES (930, 96, 'Pazos');
INSERT INTO `distrito` VALUES (931, 96, 'Quishuar');
INSERT INTO `distrito` VALUES (932, 96, 'Salcabamba');
INSERT INTO `distrito` VALUES (933, 96, 'Salcahuasi');
INSERT INTO `distrito` VALUES (934, 96, 'San Marcos De Rocchac');
INSERT INTO `distrito` VALUES (935, 96, 'Surcubamba');
INSERT INTO `distrito` VALUES (936, 96, 'Tintay Puncu');
INSERT INTO `distrito` VALUES (937, 97, 'Huanuco');
INSERT INTO `distrito` VALUES (938, 97, 'Amarilis');
INSERT INTO `distrito` VALUES (939, 97, 'Chinchao');
INSERT INTO `distrito` VALUES (940, 97, 'Churubamba');
INSERT INTO `distrito` VALUES (941, 97, 'Margos');
INSERT INTO `distrito` VALUES (942, 97, 'Quisqui');
INSERT INTO `distrito` VALUES (943, 97, 'San Francisco De Cayran');
INSERT INTO `distrito` VALUES (944, 97, 'San Pedro De Chaulan');
INSERT INTO `distrito` VALUES (945, 97, 'Santa Maria Del Valle');
INSERT INTO `distrito` VALUES (946, 97, 'Yarumayo');
INSERT INTO `distrito` VALUES (947, 97, 'Pillco Marca');
INSERT INTO `distrito` VALUES (948, 98, 'Ambo');
INSERT INTO `distrito` VALUES (949, 98, 'Cayna');
INSERT INTO `distrito` VALUES (950, 98, 'Colpas');
INSERT INTO `distrito` VALUES (951, 98, 'Conchamarca');
INSERT INTO `distrito` VALUES (952, 98, 'Huacar');
INSERT INTO `distrito` VALUES (953, 98, 'San Francisco');
INSERT INTO `distrito` VALUES (954, 98, 'San Rafael');
INSERT INTO `distrito` VALUES (955, 98, 'Tomay Kichwa');
INSERT INTO `distrito` VALUES (956, 99, 'La Union');
INSERT INTO `distrito` VALUES (957, 99, 'Chuquis');
INSERT INTO `distrito` VALUES (958, 99, 'Marias');
INSERT INTO `distrito` VALUES (959, 99, 'Pachas');
INSERT INTO `distrito` VALUES (960, 99, 'Quivilla');
INSERT INTO `distrito` VALUES (961, 99, 'Ripan');
INSERT INTO `distrito` VALUES (962, 99, 'Shunqui');
INSERT INTO `distrito` VALUES (963, 99, 'Sillapata');
INSERT INTO `distrito` VALUES (964, 99, 'Yanas');
INSERT INTO `distrito` VALUES (965, 100, 'Huacaybamba');
INSERT INTO `distrito` VALUES (966, 100, 'Canchabamba');
INSERT INTO `distrito` VALUES (967, 100, 'Cochabamba');
INSERT INTO `distrito` VALUES (968, 100, 'Pinra');
INSERT INTO `distrito` VALUES (969, 101, 'Llata');
INSERT INTO `distrito` VALUES (970, 101, 'Arancay');
INSERT INTO `distrito` VALUES (971, 101, 'Chavin De Pariarca');
INSERT INTO `distrito` VALUES (972, 101, 'Javas Grande');
INSERT INTO `distrito` VALUES (973, 101, 'Jircan');
INSERT INTO `distrito` VALUES (974, 101, 'Miraflores');
INSERT INTO `distrito` VALUES (975, 101, 'Monzon');
INSERT INTO `distrito` VALUES (976, 101, 'Punchao');
INSERT INTO `distrito` VALUES (977, 101, 'Pu?os');
INSERT INTO `distrito` VALUES (978, 101, 'Singa');
INSERT INTO `distrito` VALUES (979, 101, 'Tantamayo');
INSERT INTO `distrito` VALUES (980, 101, 'Rupa-rupa');
INSERT INTO `distrito` VALUES (981, 102, 'Daniel Alomia Robles');
INSERT INTO `distrito` VALUES (982, 102, 'Hermilio Valdizan');
INSERT INTO `distrito` VALUES (983, 102, 'Jose Crespo Y Castillo');
INSERT INTO `distrito` VALUES (984, 102, 'Luyando 1');
INSERT INTO `distrito` VALUES (985, 102, 'Mariano Damaso Beraun');
INSERT INTO `distrito` VALUES (986, 103, 'Huacrachuco');
INSERT INTO `distrito` VALUES (987, 103, 'Chilon');
INSERT INTO `distrito` VALUES (988, 103, 'San Buenaventura');
INSERT INTO `distrito` VALUES (989, 104, 'Panao');
INSERT INTO `distrito` VALUES (990, 104, 'Chaglla');
INSERT INTO `distrito` VALUES (991, 104, 'Molino');
INSERT INTO `distrito` VALUES (992, 104, 'Umari 2');
INSERT INTO `distrito` VALUES (993, 105, 'Puerto Inca');
INSERT INTO `distrito` VALUES (994, 105, 'Codo Del Pozuzo');
INSERT INTO `distrito` VALUES (995, 105, 'Honoria');
INSERT INTO `distrito` VALUES (996, 105, 'Tournavista');
INSERT INTO `distrito` VALUES (997, 105, 'Yuyapichis');
INSERT INTO `distrito` VALUES (998, 106, 'Jesus');
INSERT INTO `distrito` VALUES (999, 106, 'Ba?os');
INSERT INTO `distrito` VALUES (1000, 106, 'Jivia');
INSERT INTO `distrito` VALUES (1001, 106, 'Queropalca');
INSERT INTO `distrito` VALUES (1002, 106, 'Rondos');
INSERT INTO `distrito` VALUES (1003, 106, 'San Francisco De Asis');
INSERT INTO `distrito` VALUES (1004, 106, 'San Miguel De Cauri');
INSERT INTO `distrito` VALUES (1005, 107, 'Chavinillo');
INSERT INTO `distrito` VALUES (1006, 107, 'Cahuac');
INSERT INTO `distrito` VALUES (1007, 107, 'Chacabamba');
INSERT INTO `distrito` VALUES (1008, 107, 'Chupan');
INSERT INTO `distrito` VALUES (1009, 107, 'Jacas Chico');
INSERT INTO `distrito` VALUES (1010, 107, 'Obas');
INSERT INTO `distrito` VALUES (1011, 107, 'Pampamarca');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `documento`
-- 

CREATE TABLE `documento` (
  `iddocumento` int(11) NOT NULL auto_increment,
  `ndocumento` varchar(12) collate utf8_spanish2_ci NOT NULL,
  `idcuota` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `monto` float NOT NULL,
  `fecpago` date NOT NULL,
  `estado` char(1) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`iddocumento`),
  KEY `documento_FKIndex2` (`idusuario`),
  KEY `documento_FKIndex3` (`idcuota`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=294 ;

-- 
-- Volcar la base de datos para la tabla `documento`
-- 

INSERT INTO `documento` VALUES (1, '001-000101', 1, 1, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (2, '001-000102', 2, 1, 64.4, '2010-04-04', '1');
INSERT INTO `documento` VALUES (3, '001-000103', 3, 1, 64.4, '2010-05-04', '1');
INSERT INTO `documento` VALUES (4, '001-000104', 4, 1, 64.4, '2010-06-04', '1');
INSERT INTO `documento` VALUES (5, '001-000105', 5, 1, 64.4, '2010-07-04', '1');
INSERT INTO `documento` VALUES (6, '001-000106', 6, 1, 64.4, '2010-08-04', '1');
INSERT INTO `documento` VALUES (7, '001-000107', 7, 1, 64.4, '2010-09-04', '1');
INSERT INTO `documento` VALUES (8, '001-000108', 8, 1, 64.4, '2010-10-04', '1');
INSERT INTO `documento` VALUES (9, '001-000109', 9, 1, 64.4, '2010-11-04', '1');
INSERT INTO `documento` VALUES (10, '001-000110', 10, 1, 64.4, '2010-12-04', '1');
INSERT INTO `documento` VALUES (11, '001-000111', 411, 3, 30, '2011-02-20', '1');
INSERT INTO `documento` VALUES (12, '001-000112', 161, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (13, '001-000113', 162, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (14, '001-000114', 163, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (15, '001-000115', 164, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (16, '001-000116', 165, 4, 70, '2010-07-04', '1');
INSERT INTO `documento` VALUES (17, '001-000117', 166, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (18, '001-000118', 167, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (19, '001-000119', 168, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (20, '001-000120', 169, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (21, '001-000121', 170, 4, 70, '2010-12-04', '1');
INSERT INTO `documento` VALUES (22, '001-000122', 381, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (23, '001-000123', 382, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (24, '001-000124', 383, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (25, '001-000125', 384, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (26, '001-000126', 385, 4, 70, '2010-07-04', '1');
INSERT INTO `documento` VALUES (27, '001-000127', 386, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (28, '001-000128', 387, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (29, '001-000129', 388, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (30, '001-000130', 389, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (31, '001-000131', 390, 4, 70, '2010-12-04', '1');
INSERT INTO `documento` VALUES (32, '001-000132', 51, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (33, '001-000133', 52, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (34, '001-000134', 53, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (35, '001-000135', 54, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (36, '001-000136', 55, 4, 70, '2010-07-04', '1');
INSERT INTO `documento` VALUES (37, '001-000137', 56, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (38, '001-000138', 57, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (39, '001-000139', 58, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (40, '001-000140', 59, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (41, '001-000141', 60, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (42, '001-000142', 61, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (43, '001-000143', 62, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (44, '001-000144', 63, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (45, '001-000145', 64, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (46, '001-000146', 65, 4, 70, '2010-07-04', '1');
INSERT INTO `documento` VALUES (47, '001-000147', 66, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (48, '001-000148', 67, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (49, '001-000149', 68, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (50, '001-000150', 69, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (51, '001-000151', 70, 4, 70, '2010-12-04', '1');
INSERT INTO `documento` VALUES (52, '001-000152', 71, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (53, '001-000153', 72, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (54, '001-000154', 73, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (55, '001-000155', 74, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (56, '001-000156', 75, 4, 70, '2010-07-04', '1');
INSERT INTO `documento` VALUES (57, '001-000157', 76, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (58, '001-000158', 77, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (59, '001-000159', 78, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (60, '001-000160', 79, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (61, '001-000161', 80, 4, 70, '2010-12-04', '1');
INSERT INTO `documento` VALUES (62, '001-000162', 81, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (63, '001-000163', 82, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (64, '001-000164', 83, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (65, '001-000165', 84, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (66, '001-000166', 85, 4, 70, '2010-07-04', '1');
INSERT INTO `documento` VALUES (67, '001-000167', 86, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (68, '001-000168', 87, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (69, '001-000169', 88, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (70, '001-000170', 89, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (71, '001-000171', 90, 4, 70, '2010-12-04', '1');
INSERT INTO `documento` VALUES (72, '001-000172', 91, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (73, '001-000173', 92, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (74, '001-000174', 93, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (75, '001-000175', 94, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (76, '001-000176', 95, 4, 70, '2010-07-04', '1');
INSERT INTO `documento` VALUES (77, '001-000177', 96, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (78, '001-000178', 97, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (79, '001-000179', 98, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (80, '001-000180', 99, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (81, '001-000181', 100, 4, 70, '2010-12-04', '1');
INSERT INTO `documento` VALUES (82, '001-000182', 422, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (83, '001-000183', 423, 4, 61.6, '2010-04-04', '1');
INSERT INTO `documento` VALUES (84, '001-000184', 424, 4, 61.6, '2010-05-04', '1');
INSERT INTO `documento` VALUES (85, '001-000185', 425, 4, 61.6, '2010-06-04', '1');
INSERT INTO `documento` VALUES (86, '001-000186', 426, 4, 61.6, '2010-07-04', '1');
INSERT INTO `documento` VALUES (87, '001-000187', 427, 4, 61.6, '2010-08-04', '1');
INSERT INTO `documento` VALUES (88, '001-000188', 428, 4, 61.6, '2010-09-04', '1');
INSERT INTO `documento` VALUES (89, '001-000189', 429, 4, 61.6, '2010-10-04', '1');
INSERT INTO `documento` VALUES (90, '001-000190', 430, 4, 61.6, '2010-11-04', '1');
INSERT INTO `documento` VALUES (91, '001-000191', 431, 4, 61.6, '2010-12-04', '1');
INSERT INTO `documento` VALUES (92, '001-000192', 412, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (93, '001-000193', 413, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (94, '001-000194', 414, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (95, '001-000195', 415, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (96, '001-000196', 416, 4, 70, '2010-07-04', '1');
INSERT INTO `documento` VALUES (97, '001-000197', 417, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (98, '001-000198', 418, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (99, '001-000199', 419, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (100, '001-000200', 420, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (101, '001-000201', 421, 4, 70, '2010-12-04', '1');
INSERT INTO `documento` VALUES (102, '001-000202', 432, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (103, '001-000203', 433, 4, 50, '2010-04-04', '1');
INSERT INTO `documento` VALUES (104, '001-000204', 433, 4, 20, '2010-04-12', '1');
INSERT INTO `documento` VALUES (105, '001-000205', 434, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (106, '001-000206', 435, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (107, '001-000207', 436, 4, 70, '2010-07-04', '1');
INSERT INTO `documento` VALUES (108, '001-000208', 437, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (109, '001-000209', 438, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (110, '001-000210', 439, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (111, '001-000211', 440, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (112, '001-000212', 441, 4, 70, '2010-12-04', '1');
INSERT INTO `documento` VALUES (113, '001-000213', 442, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (114, '001-000214', 443, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (115, '001-000215', 444, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (116, '001-000216', 445, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (117, '001-000217', 446, 4, 70, '2010-07-04', '1');
INSERT INTO `documento` VALUES (118, '001-000218', 447, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (119, '001-000219', 448, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (120, '001-000220', 449, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (121, '001-000221', 450, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (122, '001-000222', 451, 4, 70, '2010-12-04', '1');
INSERT INTO `documento` VALUES (123, '001-000223', 452, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (124, '001-000224', 453, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (125, '001-000225', 454, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (126, '001-000226', 455, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (127, '001-000227', 456, 4, 70, '2010-07-04', '1');
INSERT INTO `documento` VALUES (128, '001-000228', 457, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (129, '001-000229', 458, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (130, '001-000230', 459, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (131, '001-000231', 460, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (132, '001-000232', 461, 4, 70, '2010-12-04', '1');
INSERT INTO `documento` VALUES (133, '001-000233', 101, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (134, '001-000234', 102, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (135, '001-000235', 103, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (136, '001-000236', 104, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (137, '001-000237', 105, 4, 70, '2010-07-04', '1');
INSERT INTO `documento` VALUES (138, '001-000238', 106, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (139, '001-000239', 107, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (140, '001-000240', 108, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (141, '001-000241', 109, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (142, '001-000242', 110, 4, 70, '2010-12-04', '1');
INSERT INTO `documento` VALUES (143, '001-000243', 111, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (144, '001-000244', 112, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (145, '001-000245', 113, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (146, '001-000246', 114, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (147, '001-000247', 115, 4, 70, '2010-07-04', '1');
INSERT INTO `documento` VALUES (148, '001-000248', 116, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (149, '001-000249', 117, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (150, '001-000250', 118, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (151, '001-000251', 119, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (152, '001-000252', 120, 4, 70, '2010-12-04', '1');
INSERT INTO `documento` VALUES (153, '001-000253', 121, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (154, '001-000254', 122, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (155, '001-000255', 123, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (156, '001-000256', 124, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (157, '001-000257', 125, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (158, '001-000258', 126, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (159, '001-000259', 127, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (160, '001-000260', 128, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (161, '001-000261', 129, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (162, '001-000262', 130, 4, 70, '2010-12-04', '1');
INSERT INTO `documento` VALUES (163, '001-000263', 131, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (164, '001-000264', 132, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (165, '001-000265', 133, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (166, '001-000266', 134, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (167, '001-000267', 135, 4, 70, '2010-07-04', '1');
INSERT INTO `documento` VALUES (168, '001-000268', 136, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (169, '001-000269', 137, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (170, '001-000270', 138, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (171, '001-000271', 139, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (172, '001-000272', 140, 4, 70, '2010-12-04', '1');
INSERT INTO `documento` VALUES (173, '001-000273', 141, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (174, '001-000274', 142, 4, 64.4, '2010-04-04', '1');
INSERT INTO `documento` VALUES (175, '001-000275', 143, 4, 64.4, '2010-05-04', '1');
INSERT INTO `documento` VALUES (176, '001-000276', 144, 4, 64.4, '2010-06-04', '1');
INSERT INTO `documento` VALUES (177, '001-000277', 145, 4, 64.4, '2010-07-04', '1');
INSERT INTO `documento` VALUES (178, '001-000278', 146, 4, 64.4, '2010-08-04', '1');
INSERT INTO `documento` VALUES (179, '001-000279', 147, 4, 64.4, '2010-09-04', '1');
INSERT INTO `documento` VALUES (180, '001-000280', 148, 4, 64.4, '2010-10-04', '1');
INSERT INTO `documento` VALUES (181, '001-000281', 149, 4, 64.4, '2010-11-04', '1');
INSERT INTO `documento` VALUES (182, '001-000282', 150, 4, 64.4, '2010-12-04', '1');
INSERT INTO `documento` VALUES (183, '001-000283', 462, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (184, '001-000284', 463, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (185, '001-000285', 464, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (186, '001-000286', 465, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (187, '001-000287', 466, 4, 70, '2010-07-04', '1');
INSERT INTO `documento` VALUES (188, '001-000288', 467, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (189, '001-000289', 468, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (190, '001-000290', 469, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (191, '001-000291', 470, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (192, '001-000292', 471, 4, 70, '2010-12-04', '1');
INSERT INTO `documento` VALUES (193, '001-000293', 472, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (194, '001-000294', 473, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (195, '001-000295', 474, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (196, '001-000296', 475, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (197, '001-000297', 476, 4, 70, '2010-07-04', '1');
INSERT INTO `documento` VALUES (198, '001-000298', 477, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (199, '001-000299', 478, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (200, '001-000300', 479, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (201, '001-000301', 480, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (202, '001-000302', 481, 4, 70, '2010-12-04', '1');
INSERT INTO `documento` VALUES (203, '001-000303', 482, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (204, '001-000304', 483, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (205, '001-000305', 484, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (206, '001-000306', 485, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (207, '001-000307', 486, 4, 40, '2010-07-04', '1');
INSERT INTO `documento` VALUES (208, '001-000308', 486, 4, 30, '2010-07-10', '1');
INSERT INTO `documento` VALUES (209, '001-000309', 487, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (210, '001-000310', 488, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (211, '001-000311', 489, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (212, '001-000312', 490, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (213, '001-000313', 491, 4, 70, '2010-12-04', '1');
INSERT INTO `documento` VALUES (214, '001-000314', 492, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (215, '001-000315', 493, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (216, '001-000316', 494, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (217, '001-000317', 495, 4, 64.4, '2010-06-04', '1');
INSERT INTO `documento` VALUES (218, '001-000318', 496, 4, 64.4, '2010-07-04', '1');
INSERT INTO `documento` VALUES (219, '001-000319', 497, 4, 64.4, '2010-08-04', '1');
INSERT INTO `documento` VALUES (220, '001-000320', 498, 4, 64.4, '2010-09-04', '1');
INSERT INTO `documento` VALUES (221, '001-000321', 499, 4, 64.4, '2010-10-04', '1');
INSERT INTO `documento` VALUES (222, '001-000322', 500, 4, 64.4, '2010-11-04', '1');
INSERT INTO `documento` VALUES (223, '001-000323', 501, 4, 64.4, '2010-12-04', '1');
INSERT INTO `documento` VALUES (224, '001-000324', 502, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (225, '001-000325', 503, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (226, '001-000326', 504, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (227, '001-000327', 505, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (228, '001-000328', 506, 4, 70, '2010-07-04', '1');
INSERT INTO `documento` VALUES (229, '001-000329', 507, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (230, '001-000330', 508, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (231, '001-000331', 509, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (232, '001-000332', 510, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (233, '001-000333', 511, 4, 70, '2010-12-04', '1');
INSERT INTO `documento` VALUES (234, '001-000334', 151, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (235, '001-000335', 152, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (236, '001-000336', 153, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (237, '001-000337', 154, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (238, '001-000338', 155, 4, 70, '2010-07-04', '1');
INSERT INTO `documento` VALUES (239, '001-000339', 156, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (240, '001-000340', 157, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (241, '001-000341', 158, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (242, '001-000342', 159, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (243, '001-000343', 160, 4, 70, '2010-12-04', '1');
INSERT INTO `documento` VALUES (244, '001-000344', 391, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (245, '001-000345', 392, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (246, '001-000346', 393, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (247, '001-000347', 394, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (248, '001-000348', 395, 4, 70, '2010-07-04', '1');
INSERT INTO `documento` VALUES (249, '001-000349', 396, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (250, '001-000350', 397, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (251, '001-000351', 398, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (252, '001-000352', 399, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (253, '001-000353', 400, 4, 70, '2010-12-04', '1');
INSERT INTO `documento` VALUES (254, '001-000354', 171, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (255, '001-000355', 172, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (256, '001-000356', 173, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (257, '001-000357', 174, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (258, '001-000358', 175, 4, 70, '2010-07-04', '1');
INSERT INTO `documento` VALUES (259, '001-000359', 176, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (260, '001-000360', 177, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (261, '001-000361', 178, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (262, '001-000362', 179, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (263, '001-000363', 180, 4, 70, '2010-12-04', '1');
INSERT INTO `documento` VALUES (264, '001-000364', 181, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (265, '001-000365', 182, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (266, '001-000366', 183, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (267, '001-000367', 184, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (268, '001-000368', 185, 4, 70, '2010-07-04', '1');
INSERT INTO `documento` VALUES (269, '001-000369', 186, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (270, '001-000370', 187, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (271, '001-000371', 188, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (272, '001-000372', 189, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (273, '001-000373', 190, 4, 70, '2010-12-04', '1');
INSERT INTO `documento` VALUES (274, '001-000374', 191, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (275, '001-000375', 192, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (276, '001-000376', 193, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (277, '001-000377', 194, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (278, '001-000378', 195, 4, 70, '2010-07-04', '1');
INSERT INTO `documento` VALUES (279, '001-000379', 196, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (280, '001-000380', 197, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (281, '001-000381', 198, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (282, '001-000382', 199, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (283, '001-000383', 200, 4, 70, '2010-12-04', '1');
INSERT INTO `documento` VALUES (284, '001-000384', 512, 4, 60, '2010-04-04', '1');
INSERT INTO `documento` VALUES (285, '001-000385', 513, 4, 70, '2010-04-04', '1');
INSERT INTO `documento` VALUES (286, '001-000386', 514, 4, 70, '2010-05-04', '1');
INSERT INTO `documento` VALUES (287, '001-000387', 515, 4, 70, '2010-06-04', '1');
INSERT INTO `documento` VALUES (288, '001-000388', 516, 4, 70, '2010-07-04', '1');
INSERT INTO `documento` VALUES (289, '001-000389', 517, 4, 70, '2010-08-04', '1');
INSERT INTO `documento` VALUES (290, '001-000390', 518, 4, 70, '2010-09-04', '1');
INSERT INTO `documento` VALUES (291, '001-000391', 519, 4, 70, '2010-10-04', '1');
INSERT INTO `documento` VALUES (292, '001-000392', 520, 4, 70, '2010-11-04', '1');
INSERT INTO `documento` VALUES (293, '001-000393', 521, 4, 70, '2010-12-04', '1');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `especializacion`
-- 

CREATE TABLE `especializacion` (
  `idespecializacion` int(11) NOT NULL auto_increment,
  `idaarea` int(11) NOT NULL,
  `idpersonal` int(11) NOT NULL,
  PRIMARY KEY  (`idespecializacion`),
  KEY `especializacion_FKIndex1` (`idpersonal`),
  KEY `especializacion_FKIndex2` (`idaarea`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=131 ;

-- 
-- Volcar la base de datos para la tabla `especializacion`
-- 

INSERT INTO `especializacion` VALUES (1, 1, 3);
INSERT INTO `especializacion` VALUES (2, 2, 3);
INSERT INTO `especializacion` VALUES (3, 3, 3);
INSERT INTO `especializacion` VALUES (4, 4, 3);
INSERT INTO `especializacion` VALUES (5, 5, 3);
INSERT INTO `especializacion` VALUES (6, 6, 3);
INSERT INTO `especializacion` VALUES (7, 7, 3);
INSERT INTO `especializacion` VALUES (8, 8, 3);
INSERT INTO `especializacion` VALUES (9, 9, 3);
INSERT INTO `especializacion` VALUES (10, 10, 3);
INSERT INTO `especializacion` VALUES (11, 11, 3);
INSERT INTO `especializacion` VALUES (12, 1, 12);
INSERT INTO `especializacion` VALUES (13, 2, 12);
INSERT INTO `especializacion` VALUES (14, 3, 12);
INSERT INTO `especializacion` VALUES (15, 4, 12);
INSERT INTO `especializacion` VALUES (16, 5, 12);
INSERT INTO `especializacion` VALUES (17, 6, 12);
INSERT INTO `especializacion` VALUES (18, 7, 12);
INSERT INTO `especializacion` VALUES (19, 8, 12);
INSERT INTO `especializacion` VALUES (20, 9, 12);
INSERT INTO `especializacion` VALUES (21, 10, 12);
INSERT INTO `especializacion` VALUES (22, 11, 12);
INSERT INTO `especializacion` VALUES (23, 1, 2);
INSERT INTO `especializacion` VALUES (24, 4, 2);
INSERT INTO `especializacion` VALUES (25, 6, 2);
INSERT INTO `especializacion` VALUES (26, 7, 2);
INSERT INTO `especializacion` VALUES (27, 8, 2);
INSERT INTO `especializacion` VALUES (28, 1, 10);
INSERT INTO `especializacion` VALUES (29, 2, 10);
INSERT INTO `especializacion` VALUES (30, 3, 10);
INSERT INTO `especializacion` VALUES (31, 4, 10);
INSERT INTO `especializacion` VALUES (32, 6, 10);
INSERT INTO `especializacion` VALUES (33, 7, 10);
INSERT INTO `especializacion` VALUES (34, 10, 10);
INSERT INTO `especializacion` VALUES (35, 1, 5);
INSERT INTO `especializacion` VALUES (36, 2, 5);
INSERT INTO `especializacion` VALUES (37, 3, 5);
INSERT INTO `especializacion` VALUES (38, 4, 5);
INSERT INTO `especializacion` VALUES (39, 5, 5);
INSERT INTO `especializacion` VALUES (40, 6, 5);
INSERT INTO `especializacion` VALUES (41, 7, 5);
INSERT INTO `especializacion` VALUES (42, 8, 5);
INSERT INTO `especializacion` VALUES (43, 11, 5);
INSERT INTO `especializacion` VALUES (44, 1, 11);
INSERT INTO `especializacion` VALUES (45, 2, 11);
INSERT INTO `especializacion` VALUES (46, 3, 11);
INSERT INTO `especializacion` VALUES (47, 4, 11);
INSERT INTO `especializacion` VALUES (48, 7, 11);
INSERT INTO `especializacion` VALUES (49, 8, 11);
INSERT INTO `especializacion` VALUES (50, 11, 11);
INSERT INTO `especializacion` VALUES (51, 5, 10);
INSERT INTO `especializacion` VALUES (52, 8, 10);
INSERT INTO `especializacion` VALUES (53, 9, 10);
INSERT INTO `especializacion` VALUES (54, 11, 10);
INSERT INTO `especializacion` VALUES (55, 2, 2);
INSERT INTO `especializacion` VALUES (56, 3, 2);
INSERT INTO `especializacion` VALUES (57, 5, 2);
INSERT INTO `especializacion` VALUES (58, 9, 2);
INSERT INTO `especializacion` VALUES (59, 10, 2);
INSERT INTO `especializacion` VALUES (60, 11, 2);
INSERT INTO `especializacion` VALUES (61, 5, 11);
INSERT INTO `especializacion` VALUES (62, 6, 11);
INSERT INTO `especializacion` VALUES (63, 9, 11);
INSERT INTO `especializacion` VALUES (64, 10, 11);
INSERT INTO `especializacion` VALUES (65, 1, 13);
INSERT INTO `especializacion` VALUES (66, 2, 13);
INSERT INTO `especializacion` VALUES (67, 3, 13);
INSERT INTO `especializacion` VALUES (68, 4, 13);
INSERT INTO `especializacion` VALUES (69, 5, 13);
INSERT INTO `especializacion` VALUES (70, 6, 13);
INSERT INTO `especializacion` VALUES (71, 7, 13);
INSERT INTO `especializacion` VALUES (72, 8, 13);
INSERT INTO `especializacion` VALUES (73, 9, 13);
INSERT INTO `especializacion` VALUES (74, 10, 13);
INSERT INTO `especializacion` VALUES (75, 11, 13);
INSERT INTO `especializacion` VALUES (76, 1, 4);
INSERT INTO `especializacion` VALUES (77, 2, 4);
INSERT INTO `especializacion` VALUES (78, 3, 4);
INSERT INTO `especializacion` VALUES (79, 4, 4);
INSERT INTO `especializacion` VALUES (80, 5, 4);
INSERT INTO `especializacion` VALUES (81, 6, 4);
INSERT INTO `especializacion` VALUES (82, 7, 4);
INSERT INTO `especializacion` VALUES (83, 8, 4);
INSERT INTO `especializacion` VALUES (84, 9, 4);
INSERT INTO `especializacion` VALUES (85, 10, 4);
INSERT INTO `especializacion` VALUES (86, 11, 4);
INSERT INTO `especializacion` VALUES (87, 1, 18);
INSERT INTO `especializacion` VALUES (88, 2, 18);
INSERT INTO `especializacion` VALUES (89, 3, 18);
INSERT INTO `especializacion` VALUES (90, 4, 18);
INSERT INTO `especializacion` VALUES (91, 5, 18);
INSERT INTO `especializacion` VALUES (92, 6, 18);
INSERT INTO `especializacion` VALUES (93, 7, 18);
INSERT INTO `especializacion` VALUES (94, 8, 18);
INSERT INTO `especializacion` VALUES (95, 9, 18);
INSERT INTO `especializacion` VALUES (96, 10, 18);
INSERT INTO `especializacion` VALUES (97, 11, 18);
INSERT INTO `especializacion` VALUES (98, 1, 14);
INSERT INTO `especializacion` VALUES (99, 2, 14);
INSERT INTO `especializacion` VALUES (100, 3, 14);
INSERT INTO `especializacion` VALUES (101, 4, 14);
INSERT INTO `especializacion` VALUES (102, 5, 14);
INSERT INTO `especializacion` VALUES (103, 6, 14);
INSERT INTO `especializacion` VALUES (104, 7, 14);
INSERT INTO `especializacion` VALUES (105, 8, 14);
INSERT INTO `especializacion` VALUES (106, 9, 14);
INSERT INTO `especializacion` VALUES (107, 10, 14);
INSERT INTO `especializacion` VALUES (108, 11, 14);
INSERT INTO `especializacion` VALUES (109, 1, 16);
INSERT INTO `especializacion` VALUES (110, 2, 16);
INSERT INTO `especializacion` VALUES (111, 3, 16);
INSERT INTO `especializacion` VALUES (112, 4, 16);
INSERT INTO `especializacion` VALUES (113, 5, 16);
INSERT INTO `especializacion` VALUES (114, 6, 16);
INSERT INTO `especializacion` VALUES (115, 7, 16);
INSERT INTO `especializacion` VALUES (116, 8, 16);
INSERT INTO `especializacion` VALUES (117, 9, 16);
INSERT INTO `especializacion` VALUES (118, 10, 16);
INSERT INTO `especializacion` VALUES (119, 11, 16);
INSERT INTO `especializacion` VALUES (120, 1, 15);
INSERT INTO `especializacion` VALUES (121, 2, 15);
INSERT INTO `especializacion` VALUES (122, 3, 15);
INSERT INTO `especializacion` VALUES (123, 4, 15);
INSERT INTO `especializacion` VALUES (124, 5, 15);
INSERT INTO `especializacion` VALUES (125, 6, 15);
INSERT INTO `especializacion` VALUES (126, 7, 15);
INSERT INTO `especializacion` VALUES (127, 8, 15);
INSERT INTO `especializacion` VALUES (128, 9, 15);
INSERT INTO `especializacion` VALUES (129, 10, 15);
INSERT INTO `especializacion` VALUES (130, 11, 15);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `grado`
-- 

CREATE TABLE `grado` (
  `idgrado` int(11) NOT NULL auto_increment,
  `idnivel` int(11) NOT NULL,
  `grado` varchar(30) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`idgrado`),
  KEY `grado_FKIndex1` (`idnivel`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=10 ;

-- 
-- Volcar la base de datos para la tabla `grado`
-- 

INSERT INTO `grado` VALUES (1, 1, '3 a&ntilde;os');
INSERT INTO `grado` VALUES (2, 1, '4 a&ntilde;os');
INSERT INTO `grado` VALUES (3, 1, '5 a&ntilde;os');
INSERT INTO `grado` VALUES (4, 2, '1');
INSERT INTO `grado` VALUES (5, 2, '2');
INSERT INTO `grado` VALUES (6, 2, '3');
INSERT INTO `grado` VALUES (7, 2, '4');
INSERT INTO `grado` VALUES (8, 2, '5');
INSERT INTO `grado` VALUES (9, 2, '6');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `grupo`
-- 

CREATE TABLE `grupo` (
  `idgrupo` int(11) NOT NULL auto_increment,
  `idseccion` int(11) default NULL,
  `capacidad` tinyint(3) unsigned NOT NULL,
  `matriculados` tinyint(3) unsigned NOT NULL default '0',
  `fecreg` date NOT NULL,
  `fecini` date NOT NULL,
  `fecfin` date NOT NULL,
  `matricula` double NOT NULL,
  `pension` double NOT NULL,
  `estado` char(1) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`idgrupo`),
  KEY `grupo_FKIndex3` (`idseccion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=21 ;

-- 
-- Volcar la base de datos para la tabla `grupo`
-- 

INSERT INTO `grupo` VALUES (1, 1, 12, 3, '2010-07-13', '2010-04-04', '2010-12-04', 60, 70, '1');
INSERT INTO `grupo` VALUES (2, 1, 5, 1, '2010-07-13', '2011-04-04', '2011-12-04', 30, 50, '0');
INSERT INTO `grupo` VALUES (3, 1, 12, 11, '2010-07-13', '2010-04-04', '2010-12-21', 60, 70, '1');
INSERT INTO `grupo` VALUES (4, 1, 12, 0, '2010-07-13', '2010-04-04', '2010-12-21', 60, 70, '1');
INSERT INTO `grupo` VALUES (5, 1, 12, 0, '2010-07-13', '2010-04-04', '2010-12-21', 60, 70, '1');
INSERT INTO `grupo` VALUES (6, 1, 12, 0, '2010-07-13', '2010-04-04', '2010-12-21', 60, 40, '1');
INSERT INTO `grupo` VALUES (7, 1, 12, 0, '2010-07-13', '2010-04-04', '2010-12-21', 60, 70, '1');
INSERT INTO `grupo` VALUES (8, 1, 12, 0, '2010-07-13', '2012-04-04', '2012-12-21', 60, 70, '1');
INSERT INTO `grupo` VALUES (9, 1, 12, 1, '2010-07-13', '2010-04-04', '2010-12-21', 60, 70, '1');
INSERT INTO `grupo` VALUES (10, 2, 12, 0, '2010-07-13', '2010-04-04', '2010-12-21', 60, 70, '1');
INSERT INTO `grupo` VALUES (11, 3, 12, 0, '2010-07-13', '2010-04-04', '2010-12-21', 60, 70, '1');
INSERT INTO `grupo` VALUES (12, 1, 10, 5, '2010-07-14', '2010-04-04', '2010-12-21', 60, 70, '0');
INSERT INTO `grupo` VALUES (13, 1, 10, 10, '2010-07-14', '2010-04-04', '2012-12-21', 60, 70, '1');
INSERT INTO `grupo` VALUES (14, 1, 10, 10, '2010-07-14', '2010-04-04', '2010-12-21', 60, 70, '1');
INSERT INTO `grupo` VALUES (15, 1, 10, 10, '2010-07-14', '2010-04-04', '2010-12-21', 60, 70, '1');
INSERT INTO `grupo` VALUES (16, 1, 10, 9, '2010-07-14', '2010-04-04', '2010-12-21', 60, 70, '1');
INSERT INTO `grupo` VALUES (17, 1, 10, 10, '2010-07-14', '2010-04-04', '2010-12-21', 60, 70, '1');
INSERT INTO `grupo` VALUES (18, 1, 10, 5, '2010-07-14', '2010-04-04', '2010-12-21', 60, 70, '1');
INSERT INTO `grupo` VALUES (19, 1, 10, 5, '2010-07-14', '2010-04-04', '2010-12-21', 60, 70, '1');
INSERT INTO `grupo` VALUES (20, NULL, 3, 1, '2010-07-14', '2011-01-20', '2011-02-20', 30, 50, '0');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `hora`
-- 

CREATE TABLE `hora` (
  `idhora` int(11) NOT NULL auto_increment,
  `inicio` varchar(5) collate utf8_spanish2_ci NOT NULL,
  `fin` varchar(5) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`idhora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `hora`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `horario`
-- 

CREATE TABLE `horario` (
  `idhorario` int(11) NOT NULL auto_increment,
  `idcarga` int(11) NOT NULL,
  `idgrupo` int(11) NOT NULL,
  PRIMARY KEY  (`idhorario`),
  KEY `horario_FKIndex1` (`idgrupo`),
  KEY `horario_FKIndex2` (`idcarga`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=150 ;

-- 
-- Volcar la base de datos para la tabla `horario`
-- 

INSERT INTO `horario` VALUES (1, 10, 12);
INSERT INTO `horario` VALUES (2, 11, 12);
INSERT INTO `horario` VALUES (3, 12, 12);
INSERT INTO `horario` VALUES (4, 13, 12);
INSERT INTO `horario` VALUES (5, 14, 12);
INSERT INTO `horario` VALUES (6, 15, 12);
INSERT INTO `horario` VALUES (7, 16, 12);
INSERT INTO `horario` VALUES (8, 17, 12);
INSERT INTO `horario` VALUES (9, 18, 12);
INSERT INTO `horario` VALUES (10, 19, 13);
INSERT INTO `horario` VALUES (11, 20, 13);
INSERT INTO `horario` VALUES (12, 21, 13);
INSERT INTO `horario` VALUES (13, 22, 13);
INSERT INTO `horario` VALUES (14, 23, 13);
INSERT INTO `horario` VALUES (15, 24, 13);
INSERT INTO `horario` VALUES (16, 25, 13);
INSERT INTO `horario` VALUES (17, 26, 13);
INSERT INTO `horario` VALUES (18, 27, 13);
INSERT INTO `horario` VALUES (19, 28, 14);
INSERT INTO `horario` VALUES (20, 29, 14);
INSERT INTO `horario` VALUES (21, 30, 14);
INSERT INTO `horario` VALUES (22, 31, 14);
INSERT INTO `horario` VALUES (23, 32, 14);
INSERT INTO `horario` VALUES (24, 33, 14);
INSERT INTO `horario` VALUES (25, 34, 14);
INSERT INTO `horario` VALUES (26, 35, 14);
INSERT INTO `horario` VALUES (27, 36, 14);
INSERT INTO `horario` VALUES (28, 37, 14);
INSERT INTO `horario` VALUES (29, 38, 14);
INSERT INTO `horario` VALUES (30, 39, 14);
INSERT INTO `horario` VALUES (31, 40, 14);
INSERT INTO `horario` VALUES (32, 41, 14);
INSERT INTO `horario` VALUES (33, 42, 14);
INSERT INTO `horario` VALUES (34, 43, 14);
INSERT INTO `horario` VALUES (35, 44, 14);
INSERT INTO `horario` VALUES (36, 45, 14);
INSERT INTO `horario` VALUES (37, 46, 14);
INSERT INTO `horario` VALUES (38, 47, 14);
INSERT INTO `horario` VALUES (39, 48, 14);
INSERT INTO `horario` VALUES (40, 49, 15);
INSERT INTO `horario` VALUES (41, 50, 15);
INSERT INTO `horario` VALUES (42, 51, 15);
INSERT INTO `horario` VALUES (43, 52, 15);
INSERT INTO `horario` VALUES (44, 53, 15);
INSERT INTO `horario` VALUES (45, 54, 15);
INSERT INTO `horario` VALUES (46, 55, 15);
INSERT INTO `horario` VALUES (47, 56, 15);
INSERT INTO `horario` VALUES (48, 57, 15);
INSERT INTO `horario` VALUES (49, 58, 15);
INSERT INTO `horario` VALUES (50, 59, 15);
INSERT INTO `horario` VALUES (51, 60, 15);
INSERT INTO `horario` VALUES (52, 61, 15);
INSERT INTO `horario` VALUES (53, 62, 15);
INSERT INTO `horario` VALUES (54, 63, 15);
INSERT INTO `horario` VALUES (55, 64, 15);
INSERT INTO `horario` VALUES (56, 65, 15);
INSERT INTO `horario` VALUES (57, 66, 15);
INSERT INTO `horario` VALUES (58, 67, 15);
INSERT INTO `horario` VALUES (59, 68, 15);
INSERT INTO `horario` VALUES (60, 69, 16);
INSERT INTO `horario` VALUES (61, 70, 16);
INSERT INTO `horario` VALUES (62, 71, 16);
INSERT INTO `horario` VALUES (63, 72, 16);
INSERT INTO `horario` VALUES (64, 73, 16);
INSERT INTO `horario` VALUES (65, 74, 16);
INSERT INTO `horario` VALUES (66, 75, 16);
INSERT INTO `horario` VALUES (67, 76, 16);
INSERT INTO `horario` VALUES (68, 77, 16);
INSERT INTO `horario` VALUES (69, 78, 16);
INSERT INTO `horario` VALUES (70, 79, 16);
INSERT INTO `horario` VALUES (71, 80, 16);
INSERT INTO `horario` VALUES (72, 81, 16);
INSERT INTO `horario` VALUES (73, 82, 16);
INSERT INTO `horario` VALUES (74, 83, 16);
INSERT INTO `horario` VALUES (75, 84, 16);
INSERT INTO `horario` VALUES (76, 85, 16);
INSERT INTO `horario` VALUES (77, 86, 16);
INSERT INTO `horario` VALUES (78, 87, 16);
INSERT INTO `horario` VALUES (79, 88, 16);
INSERT INTO `horario` VALUES (80, 89, 17);
INSERT INTO `horario` VALUES (81, 90, 17);
INSERT INTO `horario` VALUES (82, 91, 17);
INSERT INTO `horario` VALUES (83, 92, 17);
INSERT INTO `horario` VALUES (84, 93, 17);
INSERT INTO `horario` VALUES (85, 94, 17);
INSERT INTO `horario` VALUES (86, 95, 17);
INSERT INTO `horario` VALUES (87, 96, 17);
INSERT INTO `horario` VALUES (88, 97, 17);
INSERT INTO `horario` VALUES (89, 98, 17);
INSERT INTO `horario` VALUES (90, 99, 17);
INSERT INTO `horario` VALUES (91, 100, 17);
INSERT INTO `horario` VALUES (92, 101, 17);
INSERT INTO `horario` VALUES (93, 102, 17);
INSERT INTO `horario` VALUES (94, 103, 17);
INSERT INTO `horario` VALUES (95, 104, 17);
INSERT INTO `horario` VALUES (96, 105, 17);
INSERT INTO `horario` VALUES (97, 106, 17);
INSERT INTO `horario` VALUES (98, 107, 17);
INSERT INTO `horario` VALUES (99, 108, 17);
INSERT INTO `horario` VALUES (100, 109, 17);
INSERT INTO `horario` VALUES (101, 110, 17);
INSERT INTO `horario` VALUES (102, 111, 17);
INSERT INTO `horario` VALUES (103, 112, 18);
INSERT INTO `horario` VALUES (104, 113, 18);
INSERT INTO `horario` VALUES (105, 114, 18);
INSERT INTO `horario` VALUES (106, 115, 18);
INSERT INTO `horario` VALUES (107, 116, 18);
INSERT INTO `horario` VALUES (108, 117, 18);
INSERT INTO `horario` VALUES (109, 118, 18);
INSERT INTO `horario` VALUES (110, 119, 18);
INSERT INTO `horario` VALUES (111, 120, 18);
INSERT INTO `horario` VALUES (112, 121, 18);
INSERT INTO `horario` VALUES (113, 122, 18);
INSERT INTO `horario` VALUES (114, 123, 18);
INSERT INTO `horario` VALUES (115, 124, 18);
INSERT INTO `horario` VALUES (116, 125, 18);
INSERT INTO `horario` VALUES (117, 126, 18);
INSERT INTO `horario` VALUES (118, 127, 18);
INSERT INTO `horario` VALUES (119, 128, 18);
INSERT INTO `horario` VALUES (120, 129, 18);
INSERT INTO `horario` VALUES (121, 130, 18);
INSERT INTO `horario` VALUES (122, 131, 18);
INSERT INTO `horario` VALUES (123, 132, 18);
INSERT INTO `horario` VALUES (124, 133, 18);
INSERT INTO `horario` VALUES (125, 134, 18);
INSERT INTO `horario` VALUES (126, 135, 19);
INSERT INTO `horario` VALUES (127, 136, 19);
INSERT INTO `horario` VALUES (128, 137, 19);
INSERT INTO `horario` VALUES (129, 138, 19);
INSERT INTO `horario` VALUES (130, 139, 19);
INSERT INTO `horario` VALUES (131, 140, 19);
INSERT INTO `horario` VALUES (132, 141, 19);
INSERT INTO `horario` VALUES (133, 142, 19);
INSERT INTO `horario` VALUES (134, 143, 19);
INSERT INTO `horario` VALUES (135, 144, 19);
INSERT INTO `horario` VALUES (136, 145, 19);
INSERT INTO `horario` VALUES (137, 146, 19);
INSERT INTO `horario` VALUES (138, 147, 19);
INSERT INTO `horario` VALUES (139, 148, 19);
INSERT INTO `horario` VALUES (140, 149, 19);
INSERT INTO `horario` VALUES (141, 150, 19);
INSERT INTO `horario` VALUES (142, 151, 19);
INSERT INTO `horario` VALUES (143, 152, 19);
INSERT INTO `horario` VALUES (144, 153, 19);
INSERT INTO `horario` VALUES (145, 154, 19);
INSERT INTO `horario` VALUES (146, 155, 19);
INSERT INTO `horario` VALUES (147, 156, 19);
INSERT INTO `horario` VALUES (148, 157, 19);
INSERT INTO `horario` VALUES (149, 158, 20);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `motivo`
-- 

CREATE TABLE `motivo` (
  `idmotivo` int(11) NOT NULL auto_increment,
  `motivo` varchar(50) collate utf8_spanish2_ci NOT NULL,
  `porcentaje` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY  (`idmotivo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `motivo`
-- 

INSERT INTO `motivo` VALUES (1, 'Por tener hermanos matriculados', 10);
INSERT INTO `motivo` VALUES (2, 'Por solicitud ', 8);
INSERT INTO `motivo` VALUES (3, 'Por convenio con la policia ', 12);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nivel`
-- 

CREATE TABLE `nivel` (
  `idnivel` int(11) NOT NULL auto_increment,
  `nivel` varchar(30) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`idnivel`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `nivel`
-- 

INSERT INTO `nivel` VALUES (1, 'Inicial');
INSERT INTO `nivel` VALUES (2, 'Primaria');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `nota`
-- 

CREATE TABLE `nota` (
  `idnota` int(11) NOT NULL auto_increment,
  `ciber` int(11) default NULL,
  `idhorario` int(11) NOT NULL,
  `idproceso` int(11) NOT NULL,
  `nota1` char(2) collate utf8_spanish2_ci NOT NULL,
  `nota2` char(2) collate utf8_spanish2_ci NOT NULL,
  `nota3` char(2) collate utf8_spanish2_ci NOT NULL,
  `promedio` char(2) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`idnota`),
  KEY `nota_FKIndex1` (`idproceso`),
  KEY `nota_FKIndex2` (`idhorario`),
  KEY `nota_FKIndex3` (`ciber`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1187 ;

-- 
-- Volcar la base de datos para la tabla `nota`
-- 

INSERT INTO `nota` VALUES (1, NULL, 1, 1, '15', '20', '18', '18');
INSERT INTO `nota` VALUES (2, NULL, 2, 1, '13', '15', '18', '15');
INSERT INTO `nota` VALUES (3, NULL, 3, 1, '16', '17', '17', '17');
INSERT INTO `nota` VALUES (4, NULL, 4, 1, '15', '14', '18', '16');
INSERT INTO `nota` VALUES (5, NULL, 5, 1, '17', '18', '17', '17');
INSERT INTO `nota` VALUES (6, NULL, 6, 1, '16', '18', '14', '16');
INSERT INTO `nota` VALUES (7, NULL, 7, 1, '19', '14', '16', '16');
INSERT INTO `nota` VALUES (8, NULL, 8, 1, '15', '17', '16', '16');
INSERT INTO `nota` VALUES (9, 764, 9, 1, '12', '12', '12', '12');
INSERT INTO `nota` VALUES (10, NULL, 1, 2, '', '', '', '0');
INSERT INTO `nota` VALUES (11, NULL, 2, 2, '', '', '', '0');
INSERT INTO `nota` VALUES (12, NULL, 3, 2, '', '', '', '0');
INSERT INTO `nota` VALUES (13, NULL, 4, 2, '', '', '', '0');
INSERT INTO `nota` VALUES (14, NULL, 5, 2, '', '', '', '0');
INSERT INTO `nota` VALUES (15, NULL, 6, 2, '', '', '', '0');
INSERT INTO `nota` VALUES (16, NULL, 7, 2, '', '', '', '0');
INSERT INTO `nota` VALUES (17, NULL, 8, 2, '', '', '', '0');
INSERT INTO `nota` VALUES (18, NULL, 9, 2, '', '', '', '0');
INSERT INTO `nota` VALUES (19, NULL, 1, 3, '', '', '', '0');
INSERT INTO `nota` VALUES (20, NULL, 2, 3, '', '', '', '0');
INSERT INTO `nota` VALUES (21, NULL, 3, 3, '', '', '', '0');
INSERT INTO `nota` VALUES (22, NULL, 4, 3, '', '', '', '0');
INSERT INTO `nota` VALUES (23, NULL, 5, 3, '', '', '', '0');
INSERT INTO `nota` VALUES (24, NULL, 6, 3, '', '', '', '0');
INSERT INTO `nota` VALUES (25, NULL, 7, 3, '', '', '', '0');
INSERT INTO `nota` VALUES (26, NULL, 8, 3, '', '', '', '0');
INSERT INTO `nota` VALUES (27, NULL, 9, 3, '', '', '', '0');
INSERT INTO `nota` VALUES (28, NULL, 1, 4, '', '', '', '0');
INSERT INTO `nota` VALUES (29, NULL, 2, 4, '', '', '', '0');
INSERT INTO `nota` VALUES (30, NULL, 3, 4, '', '', '', '0');
INSERT INTO `nota` VALUES (31, NULL, 4, 4, '', '', '', '0');
INSERT INTO `nota` VALUES (32, NULL, 5, 4, '', '', '', '0');
INSERT INTO `nota` VALUES (33, NULL, 6, 4, '', '', '', '0');
INSERT INTO `nota` VALUES (34, NULL, 7, 4, '', '', '', '0');
INSERT INTO `nota` VALUES (35, NULL, 8, 4, '', '', '', '0');
INSERT INTO `nota` VALUES (36, NULL, 9, 4, '', '', '', '0');
INSERT INTO `nota` VALUES (37, NULL, 1, 5, '', '', '', '0');
INSERT INTO `nota` VALUES (38, NULL, 2, 5, '', '', '', '0');
INSERT INTO `nota` VALUES (39, NULL, 3, 5, '', '', '', '0');
INSERT INTO `nota` VALUES (40, NULL, 4, 5, '', '', '', '0');
INSERT INTO `nota` VALUES (41, NULL, 5, 5, '', '', '', '0');
INSERT INTO `nota` VALUES (42, NULL, 6, 5, '', '', '', '0');
INSERT INTO `nota` VALUES (43, NULL, 7, 5, '', '', '', '0');
INSERT INTO `nota` VALUES (44, NULL, 8, 5, '', '', '', '0');
INSERT INTO `nota` VALUES (45, NULL, 9, 5, '', '', '', '0');
INSERT INTO `nota` VALUES (46, NULL, 10, 6, '', '', '', '1');
INSERT INTO `nota` VALUES (47, NULL, 11, 6, '', '', '', '1');
INSERT INTO `nota` VALUES (48, NULL, 12, 6, '', '', '', '1');
INSERT INTO `nota` VALUES (49, NULL, 13, 6, '', '', '', '1');
INSERT INTO `nota` VALUES (50, NULL, 14, 6, '', '', '', '1');
INSERT INTO `nota` VALUES (51, NULL, 15, 6, '', '', '', '1');
INSERT INTO `nota` VALUES (52, NULL, 16, 6, '', '', '', '1');
INSERT INTO `nota` VALUES (53, NULL, 17, 6, '', '', '', '1');
INSERT INTO `nota` VALUES (54, NULL, 18, 6, '', '', '', '1');
INSERT INTO `nota` VALUES (55, NULL, 10, 7, '', '', '', '1');
INSERT INTO `nota` VALUES (56, NULL, 11, 7, '', '', '', '1');
INSERT INTO `nota` VALUES (57, NULL, 12, 7, '', '', '', '1');
INSERT INTO `nota` VALUES (58, NULL, 13, 7, '', '', '', '1');
INSERT INTO `nota` VALUES (59, NULL, 14, 7, '', '', '', '1');
INSERT INTO `nota` VALUES (60, NULL, 15, 7, '', '', '', '1');
INSERT INTO `nota` VALUES (61, NULL, 16, 7, '', '', '', '1');
INSERT INTO `nota` VALUES (62, NULL, 17, 7, '', '', '', '1');
INSERT INTO `nota` VALUES (63, NULL, 18, 7, '', '', '', '1');
INSERT INTO `nota` VALUES (64, NULL, 10, 8, '', '', '', '1');
INSERT INTO `nota` VALUES (65, NULL, 11, 8, '', '', '', '1');
INSERT INTO `nota` VALUES (66, NULL, 12, 8, '', '', '', '1');
INSERT INTO `nota` VALUES (67, NULL, 13, 8, '', '', '', '1');
INSERT INTO `nota` VALUES (68, NULL, 14, 8, '', '', '', '1');
INSERT INTO `nota` VALUES (69, NULL, 15, 8, '', '', '', '1');
INSERT INTO `nota` VALUES (70, NULL, 16, 8, '', '', '', '1');
INSERT INTO `nota` VALUES (71, NULL, 17, 8, '', '', '', '1');
INSERT INTO `nota` VALUES (72, NULL, 18, 8, '', '', '', '1');
INSERT INTO `nota` VALUES (73, NULL, 10, 9, '', '', '', '1');
INSERT INTO `nota` VALUES (74, NULL, 11, 9, '', '', '', '1');
INSERT INTO `nota` VALUES (75, NULL, 12, 9, '', '', '', '1');
INSERT INTO `nota` VALUES (76, NULL, 13, 9, '', '', '', '1');
INSERT INTO `nota` VALUES (77, NULL, 14, 9, '', '', '', '1');
INSERT INTO `nota` VALUES (78, NULL, 15, 9, '', '', '', '1');
INSERT INTO `nota` VALUES (79, NULL, 16, 9, '', '', '', '1');
INSERT INTO `nota` VALUES (80, NULL, 17, 9, '', '', '', '1');
INSERT INTO `nota` VALUES (81, NULL, 18, 9, '', '', '', '1');
INSERT INTO `nota` VALUES (82, NULL, 10, 10, '', '', '', '1');
INSERT INTO `nota` VALUES (83, NULL, 11, 10, '', '', '', '1');
INSERT INTO `nota` VALUES (84, NULL, 12, 10, '', '', '', '1');
INSERT INTO `nota` VALUES (85, NULL, 13, 10, '', '', '', '1');
INSERT INTO `nota` VALUES (86, NULL, 14, 10, '', '', '', '1');
INSERT INTO `nota` VALUES (87, NULL, 15, 10, '', '', '', '1');
INSERT INTO `nota` VALUES (88, NULL, 16, 10, '', '', '', '1');
INSERT INTO `nota` VALUES (89, NULL, 17, 10, '', '', '', '1');
INSERT INTO `nota` VALUES (90, NULL, 18, 10, '', '', '', '1');
INSERT INTO `nota` VALUES (91, NULL, 19, 11, '', '', '', '1');
INSERT INTO `nota` VALUES (92, NULL, 20, 11, '', '', '', '1');
INSERT INTO `nota` VALUES (93, NULL, 21, 11, '', '', '', '1');
INSERT INTO `nota` VALUES (94, NULL, 22, 11, '', '', '', '1');
INSERT INTO `nota` VALUES (95, NULL, 23, 11, '', '', '', '1');
INSERT INTO `nota` VALUES (96, NULL, 24, 11, '', '', '', '1');
INSERT INTO `nota` VALUES (97, NULL, 25, 11, '', '', '', '1');
INSERT INTO `nota` VALUES (98, NULL, 26, 11, '', '', '', '1');
INSERT INTO `nota` VALUES (99, NULL, 27, 11, '', '', '', '1');
INSERT INTO `nota` VALUES (100, NULL, 28, 11, '', '', '', '1');
INSERT INTO `nota` VALUES (101, NULL, 29, 11, '', '', '', '1');
INSERT INTO `nota` VALUES (102, NULL, 30, 11, '', '', '', '1');
INSERT INTO `nota` VALUES (103, NULL, 31, 11, '', '', '', '1');
INSERT INTO `nota` VALUES (104, NULL, 32, 11, '', '', '', '1');
INSERT INTO `nota` VALUES (105, NULL, 33, 11, '', '', '', '1');
INSERT INTO `nota` VALUES (106, NULL, 34, 11, '', '', '', '1');
INSERT INTO `nota` VALUES (107, NULL, 35, 11, '', '', '', '1');
INSERT INTO `nota` VALUES (108, NULL, 36, 11, '', '', '', '1');
INSERT INTO `nota` VALUES (109, NULL, 37, 11, '', '', '', '1');
INSERT INTO `nota` VALUES (110, NULL, 38, 11, '', '', '', '1');
INSERT INTO `nota` VALUES (111, NULL, 39, 11, '', '', '', '1');
INSERT INTO `nota` VALUES (112, NULL, 19, 12, '', '', '', '1');
INSERT INTO `nota` VALUES (113, NULL, 20, 12, '', '', '', '1');
INSERT INTO `nota` VALUES (114, NULL, 21, 12, '', '', '', '1');
INSERT INTO `nota` VALUES (115, NULL, 22, 12, '', '', '', '1');
INSERT INTO `nota` VALUES (116, NULL, 23, 12, '', '', '', '1');
INSERT INTO `nota` VALUES (117, NULL, 24, 12, '', '', '', '1');
INSERT INTO `nota` VALUES (118, NULL, 25, 12, '', '', '', '1');
INSERT INTO `nota` VALUES (119, NULL, 26, 12, '', '', '', '1');
INSERT INTO `nota` VALUES (120, NULL, 27, 12, '', '', '', '1');
INSERT INTO `nota` VALUES (121, NULL, 28, 12, '', '', '', '1');
INSERT INTO `nota` VALUES (122, NULL, 29, 12, '', '', '', '1');
INSERT INTO `nota` VALUES (123, NULL, 30, 12, '', '', '', '1');
INSERT INTO `nota` VALUES (124, NULL, 31, 12, '', '', '', '1');
INSERT INTO `nota` VALUES (125, NULL, 32, 12, '', '', '', '1');
INSERT INTO `nota` VALUES (126, NULL, 33, 12, '', '', '', '1');
INSERT INTO `nota` VALUES (127, NULL, 34, 12, '', '', '', '1');
INSERT INTO `nota` VALUES (128, NULL, 35, 12, '', '', '', '1');
INSERT INTO `nota` VALUES (129, NULL, 36, 12, '', '', '', '1');
INSERT INTO `nota` VALUES (130, NULL, 37, 12, '', '', '', '1');
INSERT INTO `nota` VALUES (131, NULL, 38, 12, '', '', '', '1');
INSERT INTO `nota` VALUES (132, NULL, 39, 12, '', '', '', '1');
INSERT INTO `nota` VALUES (133, NULL, 19, 13, '', '', '', '1');
INSERT INTO `nota` VALUES (134, NULL, 20, 13, '', '', '', '1');
INSERT INTO `nota` VALUES (135, NULL, 21, 13, '', '', '', '1');
INSERT INTO `nota` VALUES (136, NULL, 22, 13, '', '', '', '1');
INSERT INTO `nota` VALUES (137, NULL, 23, 13, '', '', '', '1');
INSERT INTO `nota` VALUES (138, NULL, 24, 13, '', '', '', '1');
INSERT INTO `nota` VALUES (139, NULL, 25, 13, '', '', '', '1');
INSERT INTO `nota` VALUES (140, NULL, 26, 13, '', '', '', '1');
INSERT INTO `nota` VALUES (141, NULL, 27, 13, '', '', '', '1');
INSERT INTO `nota` VALUES (142, NULL, 28, 13, '', '', '', '1');
INSERT INTO `nota` VALUES (143, NULL, 29, 13, '', '', '', '1');
INSERT INTO `nota` VALUES (144, NULL, 30, 13, '', '', '', '1');
INSERT INTO `nota` VALUES (145, NULL, 31, 13, '', '', '', '1');
INSERT INTO `nota` VALUES (146, NULL, 32, 13, '', '', '', '1');
INSERT INTO `nota` VALUES (147, NULL, 33, 13, '', '', '', '1');
INSERT INTO `nota` VALUES (148, NULL, 34, 13, '', '', '', '1');
INSERT INTO `nota` VALUES (149, NULL, 35, 13, '', '', '', '1');
INSERT INTO `nota` VALUES (150, NULL, 36, 13, '', '', '', '1');
INSERT INTO `nota` VALUES (151, NULL, 37, 13, '', '', '', '1');
INSERT INTO `nota` VALUES (152, NULL, 38, 13, '', '', '', '1');
INSERT INTO `nota` VALUES (153, NULL, 39, 13, '', '', '', '1');
INSERT INTO `nota` VALUES (154, NULL, 19, 14, '', '', '', '1');
INSERT INTO `nota` VALUES (155, NULL, 20, 14, '', '', '', '1');
INSERT INTO `nota` VALUES (156, NULL, 21, 14, '', '', '', '1');
INSERT INTO `nota` VALUES (157, NULL, 22, 14, '', '', '', '1');
INSERT INTO `nota` VALUES (158, NULL, 23, 14, '', '', '', '1');
INSERT INTO `nota` VALUES (159, NULL, 24, 14, '', '', '', '1');
INSERT INTO `nota` VALUES (160, NULL, 25, 14, '', '', '', '1');
INSERT INTO `nota` VALUES (161, NULL, 26, 14, '', '', '', '1');
INSERT INTO `nota` VALUES (162, NULL, 27, 14, '', '', '', '1');
INSERT INTO `nota` VALUES (163, NULL, 28, 14, '', '', '', '1');
INSERT INTO `nota` VALUES (164, NULL, 29, 14, '', '', '', '1');
INSERT INTO `nota` VALUES (165, NULL, 30, 14, '', '', '', '1');
INSERT INTO `nota` VALUES (166, NULL, 31, 14, '', '', '', '1');
INSERT INTO `nota` VALUES (167, NULL, 32, 14, '', '', '', '1');
INSERT INTO `nota` VALUES (168, NULL, 33, 14, '', '', '', '1');
INSERT INTO `nota` VALUES (169, NULL, 34, 14, '', '', '', '1');
INSERT INTO `nota` VALUES (170, NULL, 35, 14, '', '', '', '1');
INSERT INTO `nota` VALUES (171, NULL, 36, 14, '', '', '', '1');
INSERT INTO `nota` VALUES (172, NULL, 37, 14, '', '', '', '1');
INSERT INTO `nota` VALUES (173, NULL, 38, 14, '', '', '', '1');
INSERT INTO `nota` VALUES (174, NULL, 39, 14, '', '', '', '1');
INSERT INTO `nota` VALUES (175, NULL, 19, 15, '', '', '', '1');
INSERT INTO `nota` VALUES (176, NULL, 20, 15, '', '', '', '1');
INSERT INTO `nota` VALUES (177, NULL, 21, 15, '', '', '', '1');
INSERT INTO `nota` VALUES (178, NULL, 22, 15, '', '', '', '1');
INSERT INTO `nota` VALUES (179, NULL, 23, 15, '', '', '', '1');
INSERT INTO `nota` VALUES (180, NULL, 24, 15, '', '', '', '1');
INSERT INTO `nota` VALUES (181, NULL, 25, 15, '', '', '', '1');
INSERT INTO `nota` VALUES (182, NULL, 26, 15, '', '', '', '1');
INSERT INTO `nota` VALUES (183, NULL, 27, 15, '', '', '', '1');
INSERT INTO `nota` VALUES (184, NULL, 28, 15, '', '', '', '1');
INSERT INTO `nota` VALUES (185, NULL, 29, 15, '', '', '', '1');
INSERT INTO `nota` VALUES (186, NULL, 30, 15, '', '', '', '1');
INSERT INTO `nota` VALUES (187, NULL, 31, 15, '', '', '', '1');
INSERT INTO `nota` VALUES (188, NULL, 32, 15, '', '', '', '1');
INSERT INTO `nota` VALUES (189, NULL, 33, 15, '', '', '', '1');
INSERT INTO `nota` VALUES (190, NULL, 34, 15, '', '', '', '1');
INSERT INTO `nota` VALUES (191, NULL, 35, 15, '', '', '', '1');
INSERT INTO `nota` VALUES (192, NULL, 36, 15, '', '', '', '1');
INSERT INTO `nota` VALUES (193, NULL, 37, 15, '', '', '', '1');
INSERT INTO `nota` VALUES (194, NULL, 38, 15, '', '', '', '1');
INSERT INTO `nota` VALUES (195, NULL, 39, 15, '', '', '', '1');
INSERT INTO `nota` VALUES (196, NULL, 40, 16, '', '', '', '1');
INSERT INTO `nota` VALUES (197, NULL, 41, 16, '', '', '', '1');
INSERT INTO `nota` VALUES (198, NULL, 42, 16, '', '', '', '1');
INSERT INTO `nota` VALUES (199, NULL, 43, 16, '', '', '', '1');
INSERT INTO `nota` VALUES (200, NULL, 44, 16, '', '', '', '1');
INSERT INTO `nota` VALUES (201, NULL, 45, 16, '', '', '', '1');
INSERT INTO `nota` VALUES (202, NULL, 46, 16, '', '', '', '1');
INSERT INTO `nota` VALUES (203, NULL, 47, 16, '', '', '', '1');
INSERT INTO `nota` VALUES (204, NULL, 48, 16, '', '', '', '1');
INSERT INTO `nota` VALUES (205, NULL, 49, 16, '', '', '', '1');
INSERT INTO `nota` VALUES (206, NULL, 50, 16, '', '', '', '1');
INSERT INTO `nota` VALUES (207, NULL, 51, 16, '', '', '', '1');
INSERT INTO `nota` VALUES (208, NULL, 52, 16, '', '', '', '1');
INSERT INTO `nota` VALUES (209, NULL, 53, 16, '', '', '', '1');
INSERT INTO `nota` VALUES (210, NULL, 54, 16, '', '', '', '1');
INSERT INTO `nota` VALUES (211, NULL, 55, 16, '', '', '', '1');
INSERT INTO `nota` VALUES (212, NULL, 56, 16, '', '', '', '1');
INSERT INTO `nota` VALUES (213, NULL, 57, 16, '', '', '', '1');
INSERT INTO `nota` VALUES (214, NULL, 58, 16, '', '', '', '1');
INSERT INTO `nota` VALUES (215, NULL, 59, 16, '', '', '', '1');
INSERT INTO `nota` VALUES (216, NULL, 40, 17, '', '', '', '1');
INSERT INTO `nota` VALUES (217, NULL, 41, 17, '', '', '', '1');
INSERT INTO `nota` VALUES (218, NULL, 42, 17, '', '', '', '1');
INSERT INTO `nota` VALUES (219, NULL, 43, 17, '', '', '', '1');
INSERT INTO `nota` VALUES (220, NULL, 44, 17, '', '', '', '1');
INSERT INTO `nota` VALUES (221, NULL, 45, 17, '', '', '', '1');
INSERT INTO `nota` VALUES (222, NULL, 46, 17, '', '', '', '1');
INSERT INTO `nota` VALUES (223, NULL, 47, 17, '', '', '', '1');
INSERT INTO `nota` VALUES (224, NULL, 48, 17, '', '', '', '1');
INSERT INTO `nota` VALUES (225, NULL, 49, 17, '', '', '', '1');
INSERT INTO `nota` VALUES (226, NULL, 50, 17, '', '', '', '1');
INSERT INTO `nota` VALUES (227, NULL, 51, 17, '', '', '', '1');
INSERT INTO `nota` VALUES (228, NULL, 52, 17, '', '', '', '1');
INSERT INTO `nota` VALUES (229, NULL, 53, 17, '', '', '', '1');
INSERT INTO `nota` VALUES (230, NULL, 54, 17, '', '', '', '1');
INSERT INTO `nota` VALUES (231, NULL, 55, 17, '', '', '', '1');
INSERT INTO `nota` VALUES (232, NULL, 56, 17, '', '', '', '1');
INSERT INTO `nota` VALUES (233, NULL, 57, 17, '', '', '', '1');
INSERT INTO `nota` VALUES (234, NULL, 58, 17, '', '', '', '1');
INSERT INTO `nota` VALUES (235, NULL, 59, 17, '', '', '', '1');
INSERT INTO `nota` VALUES (236, NULL, 40, 18, '', '', '', '1');
INSERT INTO `nota` VALUES (237, NULL, 41, 18, '', '', '', '1');
INSERT INTO `nota` VALUES (238, NULL, 42, 18, '', '', '', '1');
INSERT INTO `nota` VALUES (239, NULL, 43, 18, '', '', '', '1');
INSERT INTO `nota` VALUES (240, NULL, 44, 18, '', '', '', '1');
INSERT INTO `nota` VALUES (241, NULL, 45, 18, '', '', '', '1');
INSERT INTO `nota` VALUES (242, NULL, 46, 18, '', '', '', '1');
INSERT INTO `nota` VALUES (243, NULL, 47, 18, '', '', '', '1');
INSERT INTO `nota` VALUES (244, NULL, 48, 18, '', '', '', '1');
INSERT INTO `nota` VALUES (245, NULL, 49, 18, '', '', '', '1');
INSERT INTO `nota` VALUES (246, NULL, 50, 18, '', '', '', '1');
INSERT INTO `nota` VALUES (247, NULL, 51, 18, '', '', '', '1');
INSERT INTO `nota` VALUES (248, NULL, 52, 18, '', '', '', '1');
INSERT INTO `nota` VALUES (249, NULL, 53, 18, '', '', '', '1');
INSERT INTO `nota` VALUES (250, NULL, 54, 18, '', '', '', '1');
INSERT INTO `nota` VALUES (251, NULL, 55, 18, '', '', '', '1');
INSERT INTO `nota` VALUES (252, NULL, 56, 18, '', '', '', '1');
INSERT INTO `nota` VALUES (253, NULL, 57, 18, '', '', '', '1');
INSERT INTO `nota` VALUES (254, NULL, 58, 18, '', '', '', '1');
INSERT INTO `nota` VALUES (255, NULL, 59, 18, '', '', '', '1');
INSERT INTO `nota` VALUES (256, NULL, 40, 19, '', '', '', '1');
INSERT INTO `nota` VALUES (257, NULL, 41, 19, '', '', '', '1');
INSERT INTO `nota` VALUES (258, NULL, 42, 19, '', '', '', '1');
INSERT INTO `nota` VALUES (259, NULL, 43, 19, '', '', '', '1');
INSERT INTO `nota` VALUES (260, NULL, 44, 19, '', '', '', '1');
INSERT INTO `nota` VALUES (261, NULL, 45, 19, '', '', '', '1');
INSERT INTO `nota` VALUES (262, NULL, 46, 19, '', '', '', '1');
INSERT INTO `nota` VALUES (263, NULL, 47, 19, '', '', '', '1');
INSERT INTO `nota` VALUES (264, NULL, 48, 19, '', '', '', '1');
INSERT INTO `nota` VALUES (265, NULL, 49, 19, '', '', '', '1');
INSERT INTO `nota` VALUES (266, NULL, 50, 19, '', '', '', '1');
INSERT INTO `nota` VALUES (267, NULL, 51, 19, '', '', '', '1');
INSERT INTO `nota` VALUES (268, NULL, 52, 19, '', '', '', '1');
INSERT INTO `nota` VALUES (269, NULL, 53, 19, '', '', '', '1');
INSERT INTO `nota` VALUES (270, NULL, 54, 19, '', '', '', '1');
INSERT INTO `nota` VALUES (271, NULL, 55, 19, '', '', '', '1');
INSERT INTO `nota` VALUES (272, NULL, 56, 19, '', '', '', '1');
INSERT INTO `nota` VALUES (273, NULL, 57, 19, '', '', '', '1');
INSERT INTO `nota` VALUES (274, NULL, 58, 19, '', '', '', '1');
INSERT INTO `nota` VALUES (275, NULL, 59, 19, '', '', '', '1');
INSERT INTO `nota` VALUES (276, NULL, 40, 20, '', '', '', '1');
INSERT INTO `nota` VALUES (277, NULL, 41, 20, '', '', '', '1');
INSERT INTO `nota` VALUES (278, NULL, 42, 20, '', '', '', '1');
INSERT INTO `nota` VALUES (279, NULL, 43, 20, '', '', '', '1');
INSERT INTO `nota` VALUES (280, NULL, 44, 20, '', '', '', '1');
INSERT INTO `nota` VALUES (281, NULL, 45, 20, '', '', '', '1');
INSERT INTO `nota` VALUES (282, NULL, 46, 20, '', '', '', '1');
INSERT INTO `nota` VALUES (283, NULL, 47, 20, '', '', '', '1');
INSERT INTO `nota` VALUES (284, NULL, 48, 20, '', '', '', '1');
INSERT INTO `nota` VALUES (285, NULL, 49, 20, '', '', '', '1');
INSERT INTO `nota` VALUES (286, NULL, 50, 20, '', '', '', '1');
INSERT INTO `nota` VALUES (287, NULL, 51, 20, '', '', '', '1');
INSERT INTO `nota` VALUES (288, NULL, 52, 20, '', '', '', '1');
INSERT INTO `nota` VALUES (289, NULL, 53, 20, '', '', '', '1');
INSERT INTO `nota` VALUES (290, NULL, 54, 20, '', '', '', '1');
INSERT INTO `nota` VALUES (291, NULL, 55, 20, '', '', '', '1');
INSERT INTO `nota` VALUES (292, NULL, 56, 20, '', '', '', '1');
INSERT INTO `nota` VALUES (293, NULL, 57, 20, '', '', '', '1');
INSERT INTO `nota` VALUES (294, NULL, 58, 20, '', '', '', '1');
INSERT INTO `nota` VALUES (295, NULL, 59, 20, '', '', '', '1');
INSERT INTO `nota` VALUES (296, NULL, 60, 21, '', '', '', '1');
INSERT INTO `nota` VALUES (297, NULL, 61, 21, '', '', '', '1');
INSERT INTO `nota` VALUES (298, NULL, 62, 21, '', '', '', '1');
INSERT INTO `nota` VALUES (299, NULL, 63, 21, '', '', '', '1');
INSERT INTO `nota` VALUES (300, NULL, 64, 21, '', '', '', '1');
INSERT INTO `nota` VALUES (301, NULL, 65, 21, '', '', '', '1');
INSERT INTO `nota` VALUES (302, NULL, 66, 21, '', '', '', '1');
INSERT INTO `nota` VALUES (303, NULL, 67, 21, '', '', '', '1');
INSERT INTO `nota` VALUES (304, NULL, 68, 21, '', '', '', '1');
INSERT INTO `nota` VALUES (305, NULL, 69, 21, '', '', '', '1');
INSERT INTO `nota` VALUES (306, NULL, 70, 21, '', '', '', '1');
INSERT INTO `nota` VALUES (307, NULL, 71, 21, '', '', '', '1');
INSERT INTO `nota` VALUES (308, NULL, 72, 21, '', '', '', '1');
INSERT INTO `nota` VALUES (309, NULL, 73, 21, '', '', '', '1');
INSERT INTO `nota` VALUES (310, NULL, 74, 21, '', '', '', '1');
INSERT INTO `nota` VALUES (311, NULL, 75, 21, '', '', '', '1');
INSERT INTO `nota` VALUES (312, NULL, 76, 21, '', '', '', '1');
INSERT INTO `nota` VALUES (313, NULL, 77, 21, '', '', '', '1');
INSERT INTO `nota` VALUES (314, NULL, 78, 21, '', '', '', '1');
INSERT INTO `nota` VALUES (315, NULL, 79, 21, '', '', '', '1');
INSERT INTO `nota` VALUES (316, NULL, 60, 22, '', '', '', '1');
INSERT INTO `nota` VALUES (317, NULL, 61, 22, '', '', '', '1');
INSERT INTO `nota` VALUES (318, NULL, 62, 22, '', '', '', '1');
INSERT INTO `nota` VALUES (319, NULL, 63, 22, '', '', '', '1');
INSERT INTO `nota` VALUES (320, NULL, 64, 22, '', '', '', '1');
INSERT INTO `nota` VALUES (321, NULL, 65, 22, '', '', '', '1');
INSERT INTO `nota` VALUES (322, NULL, 66, 22, '', '', '', '1');
INSERT INTO `nota` VALUES (323, NULL, 67, 22, '', '', '', '1');
INSERT INTO `nota` VALUES (324, NULL, 68, 22, '', '', '', '1');
INSERT INTO `nota` VALUES (325, NULL, 69, 22, '', '', '', '1');
INSERT INTO `nota` VALUES (326, NULL, 70, 22, '', '', '', '1');
INSERT INTO `nota` VALUES (327, NULL, 71, 22, '', '', '', '1');
INSERT INTO `nota` VALUES (328, NULL, 72, 22, '', '', '', '1');
INSERT INTO `nota` VALUES (329, NULL, 73, 22, '', '', '', '1');
INSERT INTO `nota` VALUES (330, NULL, 74, 22, '', '', '', '1');
INSERT INTO `nota` VALUES (331, NULL, 75, 22, '', '', '', '1');
INSERT INTO `nota` VALUES (332, NULL, 76, 22, '', '', '', '1');
INSERT INTO `nota` VALUES (333, NULL, 77, 22, '', '', '', '1');
INSERT INTO `nota` VALUES (334, NULL, 78, 22, '', '', '', '1');
INSERT INTO `nota` VALUES (335, NULL, 79, 22, '', '', '', '1');
INSERT INTO `nota` VALUES (336, NULL, 60, 23, '', '', '', '1');
INSERT INTO `nota` VALUES (337, NULL, 61, 23, '', '', '', '1');
INSERT INTO `nota` VALUES (338, NULL, 62, 23, '', '', '', '1');
INSERT INTO `nota` VALUES (339, NULL, 63, 23, '', '', '', '1');
INSERT INTO `nota` VALUES (340, NULL, 64, 23, '', '', '', '1');
INSERT INTO `nota` VALUES (341, NULL, 65, 23, '', '', '', '1');
INSERT INTO `nota` VALUES (342, NULL, 66, 23, '', '', '', '1');
INSERT INTO `nota` VALUES (343, NULL, 67, 23, '', '', '', '1');
INSERT INTO `nota` VALUES (344, NULL, 68, 23, '', '', '', '1');
INSERT INTO `nota` VALUES (345, NULL, 69, 23, '', '', '', '1');
INSERT INTO `nota` VALUES (346, NULL, 70, 23, '', '', '', '1');
INSERT INTO `nota` VALUES (347, NULL, 71, 23, '', '', '', '1');
INSERT INTO `nota` VALUES (348, NULL, 72, 23, '', '', '', '1');
INSERT INTO `nota` VALUES (349, NULL, 73, 23, '', '', '', '1');
INSERT INTO `nota` VALUES (350, NULL, 74, 23, '', '', '', '1');
INSERT INTO `nota` VALUES (351, NULL, 75, 23, '', '', '', '1');
INSERT INTO `nota` VALUES (352, NULL, 76, 23, '', '', '', '1');
INSERT INTO `nota` VALUES (353, NULL, 77, 23, '', '', '', '1');
INSERT INTO `nota` VALUES (354, NULL, 78, 23, '', '', '', '1');
INSERT INTO `nota` VALUES (355, NULL, 79, 23, '', '', '', '1');
INSERT INTO `nota` VALUES (356, NULL, 60, 24, '', '', '', '1');
INSERT INTO `nota` VALUES (357, NULL, 61, 24, '', '', '', '1');
INSERT INTO `nota` VALUES (358, NULL, 62, 24, '', '', '', '1');
INSERT INTO `nota` VALUES (359, NULL, 63, 24, '', '', '', '1');
INSERT INTO `nota` VALUES (360, NULL, 64, 24, '', '', '', '1');
INSERT INTO `nota` VALUES (361, NULL, 65, 24, '', '', '', '1');
INSERT INTO `nota` VALUES (362, NULL, 66, 24, '', '', '', '1');
INSERT INTO `nota` VALUES (363, NULL, 67, 24, '', '', '', '1');
INSERT INTO `nota` VALUES (364, NULL, 68, 24, '', '', '', '1');
INSERT INTO `nota` VALUES (365, NULL, 69, 24, '', '', '', '1');
INSERT INTO `nota` VALUES (366, NULL, 70, 24, '', '', '', '1');
INSERT INTO `nota` VALUES (367, NULL, 71, 24, '', '', '', '1');
INSERT INTO `nota` VALUES (368, NULL, 72, 24, '', '', '', '1');
INSERT INTO `nota` VALUES (369, NULL, 73, 24, '', '', '', '1');
INSERT INTO `nota` VALUES (370, NULL, 74, 24, '', '', '', '1');
INSERT INTO `nota` VALUES (371, NULL, 75, 24, '', '', '', '1');
INSERT INTO `nota` VALUES (372, NULL, 76, 24, '', '', '', '1');
INSERT INTO `nota` VALUES (373, NULL, 77, 24, '', '', '', '1');
INSERT INTO `nota` VALUES (374, NULL, 78, 24, '', '', '', '1');
INSERT INTO `nota` VALUES (375, NULL, 79, 24, '', '', '', '1');
INSERT INTO `nota` VALUES (376, NULL, 60, 25, '', '', '', '1');
INSERT INTO `nota` VALUES (377, NULL, 61, 25, '', '', '', '1');
INSERT INTO `nota` VALUES (378, NULL, 62, 25, '', '', '', '1');
INSERT INTO `nota` VALUES (379, NULL, 63, 25, '', '', '', '1');
INSERT INTO `nota` VALUES (380, NULL, 64, 25, '', '', '', '1');
INSERT INTO `nota` VALUES (381, NULL, 65, 25, '', '', '', '1');
INSERT INTO `nota` VALUES (382, NULL, 66, 25, '', '', '', '1');
INSERT INTO `nota` VALUES (383, NULL, 67, 25, '', '', '', '1');
INSERT INTO `nota` VALUES (384, NULL, 68, 25, '', '', '', '1');
INSERT INTO `nota` VALUES (385, NULL, 69, 25, '', '', '', '1');
INSERT INTO `nota` VALUES (386, NULL, 70, 25, '', '', '', '1');
INSERT INTO `nota` VALUES (387, NULL, 71, 25, '', '', '', '1');
INSERT INTO `nota` VALUES (388, NULL, 72, 25, '', '', '', '1');
INSERT INTO `nota` VALUES (389, NULL, 73, 25, '', '', '', '1');
INSERT INTO `nota` VALUES (390, NULL, 74, 25, '', '', '', '1');
INSERT INTO `nota` VALUES (391, NULL, 75, 25, '', '', '', '1');
INSERT INTO `nota` VALUES (392, NULL, 76, 25, '', '', '', '1');
INSERT INTO `nota` VALUES (393, NULL, 77, 25, '', '', '', '1');
INSERT INTO `nota` VALUES (394, NULL, 78, 25, '', '', '', '1');
INSERT INTO `nota` VALUES (395, NULL, 79, 25, '', '', '', '1');
INSERT INTO `nota` VALUES (396, NULL, 80, 26, '', '', '', '1');
INSERT INTO `nota` VALUES (397, NULL, 81, 26, '', '', '', '1');
INSERT INTO `nota` VALUES (398, NULL, 82, 26, '', '', '', '1');
INSERT INTO `nota` VALUES (399, NULL, 83, 26, '', '', '', '1');
INSERT INTO `nota` VALUES (400, NULL, 84, 26, '', '', '', '1');
INSERT INTO `nota` VALUES (401, NULL, 85, 26, '', '', '', '1');
INSERT INTO `nota` VALUES (402, NULL, 86, 26, '', '', '', '1');
INSERT INTO `nota` VALUES (403, NULL, 87, 26, '', '', '', '1');
INSERT INTO `nota` VALUES (404, NULL, 88, 26, '', '', '', '1');
INSERT INTO `nota` VALUES (405, NULL, 89, 26, '', '', '', '1');
INSERT INTO `nota` VALUES (406, NULL, 90, 26, '', '', '', '1');
INSERT INTO `nota` VALUES (407, NULL, 91, 26, '', '', '', '1');
INSERT INTO `nota` VALUES (408, NULL, 92, 26, '', '', '', '1');
INSERT INTO `nota` VALUES (409, NULL, 93, 26, '', '', '', '1');
INSERT INTO `nota` VALUES (410, NULL, 94, 26, '', '', '', '1');
INSERT INTO `nota` VALUES (411, NULL, 95, 26, '', '', '', '1');
INSERT INTO `nota` VALUES (412, NULL, 96, 26, '', '', '', '1');
INSERT INTO `nota` VALUES (413, NULL, 97, 26, '', '', '', '1');
INSERT INTO `nota` VALUES (414, NULL, 98, 26, '', '', '', '1');
INSERT INTO `nota` VALUES (415, NULL, 99, 26, '', '', '', '1');
INSERT INTO `nota` VALUES (416, NULL, 100, 26, '', '', '', '1');
INSERT INTO `nota` VALUES (417, NULL, 101, 26, '', '', '', '1');
INSERT INTO `nota` VALUES (418, NULL, 102, 26, '', '', '', '1');
INSERT INTO `nota` VALUES (419, NULL, 80, 27, '', '', '', '1');
INSERT INTO `nota` VALUES (420, NULL, 81, 27, '', '', '', '1');
INSERT INTO `nota` VALUES (421, NULL, 82, 27, '', '', '', '1');
INSERT INTO `nota` VALUES (422, NULL, 83, 27, '', '', '', '1');
INSERT INTO `nota` VALUES (423, NULL, 84, 27, '', '', '', '1');
INSERT INTO `nota` VALUES (424, NULL, 85, 27, '', '', '', '1');
INSERT INTO `nota` VALUES (425, NULL, 86, 27, '', '', '', '1');
INSERT INTO `nota` VALUES (426, NULL, 87, 27, '', '', '', '1');
INSERT INTO `nota` VALUES (427, NULL, 88, 27, '', '', '', '1');
INSERT INTO `nota` VALUES (428, NULL, 89, 27, '', '', '', '1');
INSERT INTO `nota` VALUES (429, NULL, 90, 27, '', '', '', '1');
INSERT INTO `nota` VALUES (430, NULL, 91, 27, '', '', '', '1');
INSERT INTO `nota` VALUES (431, NULL, 92, 27, '', '', '', '1');
INSERT INTO `nota` VALUES (432, NULL, 93, 27, '', '', '', '1');
INSERT INTO `nota` VALUES (433, NULL, 94, 27, '', '', '', '1');
INSERT INTO `nota` VALUES (434, NULL, 95, 27, '', '', '', '1');
INSERT INTO `nota` VALUES (435, NULL, 96, 27, '', '', '', '1');
INSERT INTO `nota` VALUES (436, NULL, 97, 27, '', '', '', '1');
INSERT INTO `nota` VALUES (437, NULL, 98, 27, '', '', '', '1');
INSERT INTO `nota` VALUES (438, NULL, 99, 27, '', '', '', '1');
INSERT INTO `nota` VALUES (439, NULL, 100, 27, '', '', '', '1');
INSERT INTO `nota` VALUES (440, NULL, 101, 27, '', '', '', '1');
INSERT INTO `nota` VALUES (441, NULL, 102, 27, '', '', '', '1');
INSERT INTO `nota` VALUES (442, NULL, 80, 28, '', '', '', '1');
INSERT INTO `nota` VALUES (443, NULL, 81, 28, '', '', '', '1');
INSERT INTO `nota` VALUES (444, NULL, 82, 28, '', '', '', '1');
INSERT INTO `nota` VALUES (445, NULL, 83, 28, '', '', '', '1');
INSERT INTO `nota` VALUES (446, NULL, 84, 28, '', '', '', '1');
INSERT INTO `nota` VALUES (447, NULL, 85, 28, '', '', '', '1');
INSERT INTO `nota` VALUES (448, NULL, 86, 28, '', '', '', '1');
INSERT INTO `nota` VALUES (449, NULL, 87, 28, '', '', '', '1');
INSERT INTO `nota` VALUES (450, NULL, 88, 28, '', '', '', '1');
INSERT INTO `nota` VALUES (451, NULL, 89, 28, '', '', '', '1');
INSERT INTO `nota` VALUES (452, NULL, 90, 28, '', '', '', '1');
INSERT INTO `nota` VALUES (453, NULL, 91, 28, '', '', '', '1');
INSERT INTO `nota` VALUES (454, NULL, 92, 28, '', '', '', '1');
INSERT INTO `nota` VALUES (455, NULL, 93, 28, '', '', '', '1');
INSERT INTO `nota` VALUES (456, NULL, 94, 28, '', '', '', '1');
INSERT INTO `nota` VALUES (457, NULL, 95, 28, '', '', '', '1');
INSERT INTO `nota` VALUES (458, NULL, 96, 28, '', '', '', '1');
INSERT INTO `nota` VALUES (459, NULL, 97, 28, '', '', '', '1');
INSERT INTO `nota` VALUES (460, NULL, 98, 28, '', '', '', '1');
INSERT INTO `nota` VALUES (461, NULL, 99, 28, '', '', '', '1');
INSERT INTO `nota` VALUES (462, NULL, 100, 28, '', '', '', '1');
INSERT INTO `nota` VALUES (463, NULL, 101, 28, '', '', '', '1');
INSERT INTO `nota` VALUES (464, NULL, 102, 28, '', '', '', '1');
INSERT INTO `nota` VALUES (465, NULL, 80, 29, '', '', '', '1');
INSERT INTO `nota` VALUES (466, NULL, 81, 29, '', '', '', '1');
INSERT INTO `nota` VALUES (467, NULL, 82, 29, '', '', '', '1');
INSERT INTO `nota` VALUES (468, NULL, 83, 29, '', '', '', '1');
INSERT INTO `nota` VALUES (469, NULL, 84, 29, '', '', '', '1');
INSERT INTO `nota` VALUES (470, NULL, 85, 29, '', '', '', '1');
INSERT INTO `nota` VALUES (471, NULL, 86, 29, '', '', '', '1');
INSERT INTO `nota` VALUES (472, NULL, 87, 29, '', '', '', '1');
INSERT INTO `nota` VALUES (473, NULL, 88, 29, '', '', '', '1');
INSERT INTO `nota` VALUES (474, NULL, 89, 29, '', '', '', '1');
INSERT INTO `nota` VALUES (475, NULL, 90, 29, '', '', '', '1');
INSERT INTO `nota` VALUES (476, NULL, 91, 29, '', '', '', '1');
INSERT INTO `nota` VALUES (477, NULL, 92, 29, '', '', '', '1');
INSERT INTO `nota` VALUES (478, NULL, 93, 29, '', '', '', '1');
INSERT INTO `nota` VALUES (479, NULL, 94, 29, '', '', '', '1');
INSERT INTO `nota` VALUES (480, NULL, 95, 29, '', '', '', '1');
INSERT INTO `nota` VALUES (481, NULL, 96, 29, '', '', '', '1');
INSERT INTO `nota` VALUES (482, NULL, 97, 29, '', '', '', '1');
INSERT INTO `nota` VALUES (483, NULL, 98, 29, '', '', '', '1');
INSERT INTO `nota` VALUES (484, NULL, 99, 29, '', '', '', '1');
INSERT INTO `nota` VALUES (485, NULL, 100, 29, '', '', '', '1');
INSERT INTO `nota` VALUES (486, NULL, 101, 29, '', '', '', '1');
INSERT INTO `nota` VALUES (487, NULL, 102, 29, '', '', '', '1');
INSERT INTO `nota` VALUES (488, NULL, 80, 30, '', '', '', '1');
INSERT INTO `nota` VALUES (489, NULL, 81, 30, '', '', '', '1');
INSERT INTO `nota` VALUES (490, NULL, 82, 30, '', '', '', '1');
INSERT INTO `nota` VALUES (491, NULL, 83, 30, '', '', '', '1');
INSERT INTO `nota` VALUES (492, NULL, 84, 30, '', '', '', '1');
INSERT INTO `nota` VALUES (493, NULL, 85, 30, '', '', '', '1');
INSERT INTO `nota` VALUES (494, NULL, 86, 30, '', '', '', '1');
INSERT INTO `nota` VALUES (495, NULL, 87, 30, '', '', '', '1');
INSERT INTO `nota` VALUES (496, NULL, 88, 30, '', '', '', '1');
INSERT INTO `nota` VALUES (497, NULL, 89, 30, '', '', '', '1');
INSERT INTO `nota` VALUES (498, NULL, 90, 30, '', '', '', '1');
INSERT INTO `nota` VALUES (499, NULL, 91, 30, '', '', '', '1');
INSERT INTO `nota` VALUES (500, NULL, 92, 30, '', '', '', '1');
INSERT INTO `nota` VALUES (501, NULL, 93, 30, '', '', '', '1');
INSERT INTO `nota` VALUES (502, NULL, 94, 30, '', '', '', '1');
INSERT INTO `nota` VALUES (503, NULL, 95, 30, '', '', '', '1');
INSERT INTO `nota` VALUES (504, NULL, 96, 30, '', '', '', '1');
INSERT INTO `nota` VALUES (505, NULL, 97, 30, '', '', '', '1');
INSERT INTO `nota` VALUES (506, NULL, 98, 30, '', '', '', '1');
INSERT INTO `nota` VALUES (507, NULL, 99, 30, '', '', '', '1');
INSERT INTO `nota` VALUES (508, NULL, 100, 30, '', '', '', '1');
INSERT INTO `nota` VALUES (509, NULL, 101, 30, '', '', '', '1');
INSERT INTO `nota` VALUES (510, NULL, 102, 30, '', '', '', '1');
INSERT INTO `nota` VALUES (511, NULL, 80, 31, '', '', '', '1');
INSERT INTO `nota` VALUES (512, NULL, 81, 31, '', '', '', '1');
INSERT INTO `nota` VALUES (513, NULL, 82, 31, '', '', '', '1');
INSERT INTO `nota` VALUES (514, NULL, 83, 31, '', '', '', '1');
INSERT INTO `nota` VALUES (515, NULL, 84, 31, '', '', '', '1');
INSERT INTO `nota` VALUES (516, NULL, 85, 31, '', '', '', '1');
INSERT INTO `nota` VALUES (517, NULL, 86, 31, '', '', '', '1');
INSERT INTO `nota` VALUES (518, NULL, 87, 31, '', '', '', '1');
INSERT INTO `nota` VALUES (519, NULL, 88, 31, '', '', '', '1');
INSERT INTO `nota` VALUES (520, NULL, 89, 31, '', '', '', '1');
INSERT INTO `nota` VALUES (521, NULL, 90, 31, '', '', '', '1');
INSERT INTO `nota` VALUES (522, NULL, 91, 31, '', '', '', '1');
INSERT INTO `nota` VALUES (523, NULL, 92, 31, '', '', '', '1');
INSERT INTO `nota` VALUES (524, NULL, 93, 31, '', '', '', '1');
INSERT INTO `nota` VALUES (525, NULL, 94, 31, '', '', '', '1');
INSERT INTO `nota` VALUES (526, NULL, 95, 31, '', '', '', '1');
INSERT INTO `nota` VALUES (527, NULL, 96, 31, '', '', '', '1');
INSERT INTO `nota` VALUES (528, NULL, 97, 31, '', '', '', '1');
INSERT INTO `nota` VALUES (529, NULL, 98, 31, '', '', '', '1');
INSERT INTO `nota` VALUES (530, NULL, 99, 31, '', '', '', '1');
INSERT INTO `nota` VALUES (531, NULL, 100, 31, '', '', '', '1');
INSERT INTO `nota` VALUES (532, NULL, 101, 31, '', '', '', '1');
INSERT INTO `nota` VALUES (533, NULL, 102, 31, '', '', '', '1');
INSERT INTO `nota` VALUES (534, NULL, 103, 32, '', '', '', '1');
INSERT INTO `nota` VALUES (535, NULL, 104, 32, '', '', '', '1');
INSERT INTO `nota` VALUES (536, NULL, 105, 32, '', '', '', '1');
INSERT INTO `nota` VALUES (537, NULL, 106, 32, '', '', '', '1');
INSERT INTO `nota` VALUES (538, NULL, 107, 32, '', '', '', '1');
INSERT INTO `nota` VALUES (539, NULL, 108, 32, '', '', '', '1');
INSERT INTO `nota` VALUES (540, NULL, 109, 32, '', '', '', '1');
INSERT INTO `nota` VALUES (541, NULL, 110, 32, '', '', '', '1');
INSERT INTO `nota` VALUES (542, NULL, 111, 32, '', '', '', '1');
INSERT INTO `nota` VALUES (543, NULL, 112, 32, '', '', '', '1');
INSERT INTO `nota` VALUES (544, NULL, 113, 32, '', '', '', '1');
INSERT INTO `nota` VALUES (545, NULL, 114, 32, '', '', '', '1');
INSERT INTO `nota` VALUES (546, NULL, 115, 32, '', '', '', '1');
INSERT INTO `nota` VALUES (547, NULL, 116, 32, '', '', '', '1');
INSERT INTO `nota` VALUES (548, NULL, 117, 32, '', '', '', '1');
INSERT INTO `nota` VALUES (549, NULL, 118, 32, '', '', '', '1');
INSERT INTO `nota` VALUES (550, NULL, 119, 32, '', '', '', '1');
INSERT INTO `nota` VALUES (551, NULL, 120, 32, '', '', '', '1');
INSERT INTO `nota` VALUES (552, NULL, 121, 32, '', '', '', '1');
INSERT INTO `nota` VALUES (553, NULL, 122, 32, '', '', '', '1');
INSERT INTO `nota` VALUES (554, NULL, 123, 32, '', '', '', '1');
INSERT INTO `nota` VALUES (555, NULL, 124, 32, '', '', '', '1');
INSERT INTO `nota` VALUES (556, NULL, 125, 32, '', '', '', '1');
INSERT INTO `nota` VALUES (557, NULL, 103, 33, '', '', '', '1');
INSERT INTO `nota` VALUES (558, NULL, 104, 33, '', '', '', '1');
INSERT INTO `nota` VALUES (559, NULL, 105, 33, '', '', '', '1');
INSERT INTO `nota` VALUES (560, NULL, 106, 33, '', '', '', '1');
INSERT INTO `nota` VALUES (561, NULL, 107, 33, '', '', '', '1');
INSERT INTO `nota` VALUES (562, NULL, 108, 33, '', '', '', '1');
INSERT INTO `nota` VALUES (563, NULL, 109, 33, '', '', '', '1');
INSERT INTO `nota` VALUES (564, NULL, 110, 33, '', '', '', '1');
INSERT INTO `nota` VALUES (565, NULL, 111, 33, '', '', '', '1');
INSERT INTO `nota` VALUES (566, NULL, 112, 33, '', '', '', '1');
INSERT INTO `nota` VALUES (567, NULL, 113, 33, '', '', '', '1');
INSERT INTO `nota` VALUES (568, NULL, 114, 33, '', '', '', '1');
INSERT INTO `nota` VALUES (569, NULL, 115, 33, '', '', '', '1');
INSERT INTO `nota` VALUES (570, NULL, 116, 33, '', '', '', '1');
INSERT INTO `nota` VALUES (571, NULL, 117, 33, '', '', '', '1');
INSERT INTO `nota` VALUES (572, NULL, 118, 33, '', '', '', '1');
INSERT INTO `nota` VALUES (573, NULL, 119, 33, '', '', '', '1');
INSERT INTO `nota` VALUES (574, NULL, 120, 33, '', '', '', '1');
INSERT INTO `nota` VALUES (575, NULL, 121, 33, '', '', '', '1');
INSERT INTO `nota` VALUES (576, NULL, 122, 33, '', '', '', '1');
INSERT INTO `nota` VALUES (577, NULL, 123, 33, '', '', '', '1');
INSERT INTO `nota` VALUES (578, NULL, 124, 33, '', '', '', '1');
INSERT INTO `nota` VALUES (579, NULL, 125, 33, '', '', '', '1');
INSERT INTO `nota` VALUES (580, NULL, 103, 34, '', '', '', '1');
INSERT INTO `nota` VALUES (581, NULL, 104, 34, '', '', '', '1');
INSERT INTO `nota` VALUES (582, NULL, 105, 34, '', '', '', '1');
INSERT INTO `nota` VALUES (583, NULL, 106, 34, '', '', '', '1');
INSERT INTO `nota` VALUES (584, NULL, 107, 34, '', '', '', '1');
INSERT INTO `nota` VALUES (585, NULL, 108, 34, '', '', '', '1');
INSERT INTO `nota` VALUES (586, NULL, 109, 34, '', '', '', '1');
INSERT INTO `nota` VALUES (587, NULL, 110, 34, '', '', '', '1');
INSERT INTO `nota` VALUES (588, NULL, 111, 34, '', '', '', '1');
INSERT INTO `nota` VALUES (589, NULL, 112, 34, '', '', '', '1');
INSERT INTO `nota` VALUES (590, NULL, 113, 34, '', '', '', '1');
INSERT INTO `nota` VALUES (591, NULL, 114, 34, '', '', '', '1');
INSERT INTO `nota` VALUES (592, NULL, 115, 34, '', '', '', '1');
INSERT INTO `nota` VALUES (593, NULL, 116, 34, '', '', '', '1');
INSERT INTO `nota` VALUES (594, NULL, 117, 34, '', '', '', '1');
INSERT INTO `nota` VALUES (595, NULL, 118, 34, '', '', '', '1');
INSERT INTO `nota` VALUES (596, NULL, 119, 34, '', '', '', '1');
INSERT INTO `nota` VALUES (597, NULL, 120, 34, '', '', '', '1');
INSERT INTO `nota` VALUES (598, NULL, 121, 34, '', '', '', '1');
INSERT INTO `nota` VALUES (599, NULL, 122, 34, '', '', '', '1');
INSERT INTO `nota` VALUES (600, NULL, 123, 34, '', '', '', '1');
INSERT INTO `nota` VALUES (601, NULL, 124, 34, '', '', '', '1');
INSERT INTO `nota` VALUES (602, NULL, 125, 34, '', '', '', '1');
INSERT INTO `nota` VALUES (603, NULL, 103, 35, '', '', '', '1');
INSERT INTO `nota` VALUES (604, NULL, 104, 35, '', '', '', '1');
INSERT INTO `nota` VALUES (605, NULL, 105, 35, '', '', '', '1');
INSERT INTO `nota` VALUES (606, NULL, 106, 35, '', '', '', '1');
INSERT INTO `nota` VALUES (607, NULL, 107, 35, '', '', '', '1');
INSERT INTO `nota` VALUES (608, NULL, 108, 35, '', '', '', '1');
INSERT INTO `nota` VALUES (609, NULL, 109, 35, '', '', '', '1');
INSERT INTO `nota` VALUES (610, NULL, 110, 35, '', '', '', '1');
INSERT INTO `nota` VALUES (611, NULL, 111, 35, '', '', '', '1');
INSERT INTO `nota` VALUES (612, NULL, 112, 35, '', '', '', '1');
INSERT INTO `nota` VALUES (613, NULL, 113, 35, '', '', '', '1');
INSERT INTO `nota` VALUES (614, NULL, 114, 35, '', '', '', '1');
INSERT INTO `nota` VALUES (615, NULL, 115, 35, '', '', '', '1');
INSERT INTO `nota` VALUES (616, NULL, 116, 35, '', '', '', '1');
INSERT INTO `nota` VALUES (617, NULL, 117, 35, '', '', '', '1');
INSERT INTO `nota` VALUES (618, NULL, 118, 35, '', '', '', '1');
INSERT INTO `nota` VALUES (619, NULL, 119, 35, '', '', '', '1');
INSERT INTO `nota` VALUES (620, NULL, 120, 35, '', '', '', '1');
INSERT INTO `nota` VALUES (621, NULL, 121, 35, '', '', '', '1');
INSERT INTO `nota` VALUES (622, NULL, 122, 35, '', '', '', '1');
INSERT INTO `nota` VALUES (623, NULL, 123, 35, '', '', '', '1');
INSERT INTO `nota` VALUES (624, NULL, 124, 35, '', '', '', '1');
INSERT INTO `nota` VALUES (625, NULL, 125, 35, '', '', '', '1');
INSERT INTO `nota` VALUES (626, NULL, 103, 36, '', '', '', '1');
INSERT INTO `nota` VALUES (627, NULL, 104, 36, '', '', '', '1');
INSERT INTO `nota` VALUES (628, NULL, 105, 36, '', '', '', '1');
INSERT INTO `nota` VALUES (629, NULL, 106, 36, '', '', '', '1');
INSERT INTO `nota` VALUES (630, NULL, 107, 36, '', '', '', '1');
INSERT INTO `nota` VALUES (631, NULL, 108, 36, '', '', '', '1');
INSERT INTO `nota` VALUES (632, NULL, 109, 36, '', '', '', '1');
INSERT INTO `nota` VALUES (633, NULL, 110, 36, '', '', '', '1');
INSERT INTO `nota` VALUES (634, NULL, 111, 36, '', '', '', '1');
INSERT INTO `nota` VALUES (635, NULL, 112, 36, '', '', '', '1');
INSERT INTO `nota` VALUES (636, NULL, 113, 36, '', '', '', '1');
INSERT INTO `nota` VALUES (637, NULL, 114, 36, '', '', '', '1');
INSERT INTO `nota` VALUES (638, NULL, 115, 36, '', '', '', '1');
INSERT INTO `nota` VALUES (639, NULL, 116, 36, '', '', '', '1');
INSERT INTO `nota` VALUES (640, NULL, 117, 36, '', '', '', '1');
INSERT INTO `nota` VALUES (641, NULL, 118, 36, '', '', '', '1');
INSERT INTO `nota` VALUES (642, NULL, 119, 36, '', '', '', '1');
INSERT INTO `nota` VALUES (643, NULL, 120, 36, '', '', '', '1');
INSERT INTO `nota` VALUES (644, NULL, 121, 36, '', '', '', '1');
INSERT INTO `nota` VALUES (645, NULL, 122, 36, '', '', '', '1');
INSERT INTO `nota` VALUES (646, NULL, 123, 36, '', '', '', '1');
INSERT INTO `nota` VALUES (647, NULL, 124, 36, '', '', '', '1');
INSERT INTO `nota` VALUES (648, NULL, 125, 36, '', '', '', '1');
INSERT INTO `nota` VALUES (649, NULL, 126, 37, '', '', '', '1');
INSERT INTO `nota` VALUES (650, NULL, 127, 37, '', '', '', '1');
INSERT INTO `nota` VALUES (651, NULL, 128, 37, '', '', '', '1');
INSERT INTO `nota` VALUES (652, NULL, 129, 37, '', '', '', '1');
INSERT INTO `nota` VALUES (653, NULL, 130, 37, '', '', '', '1');
INSERT INTO `nota` VALUES (654, NULL, 131, 37, '', '', '', '1');
INSERT INTO `nota` VALUES (655, NULL, 132, 37, '', '', '', '1');
INSERT INTO `nota` VALUES (656, NULL, 133, 37, '', '', '', '1');
INSERT INTO `nota` VALUES (657, NULL, 134, 37, '', '', '', '1');
INSERT INTO `nota` VALUES (658, NULL, 135, 37, '', '', '', '1');
INSERT INTO `nota` VALUES (659, NULL, 136, 37, '', '', '', '1');
INSERT INTO `nota` VALUES (660, NULL, 137, 37, '', '', '', '1');
INSERT INTO `nota` VALUES (661, NULL, 138, 37, '', '', '', '1');
INSERT INTO `nota` VALUES (662, NULL, 139, 37, '', '', '', '1');
INSERT INTO `nota` VALUES (663, NULL, 140, 37, '', '', '', '1');
INSERT INTO `nota` VALUES (664, NULL, 141, 37, '', '', '', '1');
INSERT INTO `nota` VALUES (665, NULL, 142, 37, '', '', '', '1');
INSERT INTO `nota` VALUES (666, NULL, 143, 37, '', '', '', '1');
INSERT INTO `nota` VALUES (667, NULL, 144, 37, '', '', '', '1');
INSERT INTO `nota` VALUES (668, NULL, 145, 37, '', '', '', '1');
INSERT INTO `nota` VALUES (669, NULL, 146, 37, '', '', '', '1');
INSERT INTO `nota` VALUES (670, NULL, 147, 37, '', '', '', '1');
INSERT INTO `nota` VALUES (671, NULL, 148, 37, '', '', '', '1');
INSERT INTO `nota` VALUES (672, NULL, 126, 38, '', '', '', '1');
INSERT INTO `nota` VALUES (673, NULL, 127, 38, '', '', '', '1');
INSERT INTO `nota` VALUES (674, NULL, 128, 38, '', '', '', '1');
INSERT INTO `nota` VALUES (675, NULL, 129, 38, '', '', '', '1');
INSERT INTO `nota` VALUES (676, NULL, 130, 38, '', '', '', '1');
INSERT INTO `nota` VALUES (677, NULL, 131, 38, '', '', '', '1');
INSERT INTO `nota` VALUES (678, NULL, 132, 38, '', '', '', '1');
INSERT INTO `nota` VALUES (679, NULL, 133, 38, '', '', '', '1');
INSERT INTO `nota` VALUES (680, NULL, 134, 38, '', '', '', '1');
INSERT INTO `nota` VALUES (681, NULL, 135, 38, '', '', '', '1');
INSERT INTO `nota` VALUES (682, NULL, 136, 38, '', '', '', '1');
INSERT INTO `nota` VALUES (683, NULL, 137, 38, '', '', '', '1');
INSERT INTO `nota` VALUES (684, NULL, 138, 38, '', '', '', '1');
INSERT INTO `nota` VALUES (685, NULL, 139, 38, '', '', '', '1');
INSERT INTO `nota` VALUES (686, NULL, 140, 38, '', '', '', '1');
INSERT INTO `nota` VALUES (687, NULL, 141, 38, '', '', '', '1');
INSERT INTO `nota` VALUES (688, NULL, 142, 38, '', '', '', '1');
INSERT INTO `nota` VALUES (689, NULL, 143, 38, '', '', '', '1');
INSERT INTO `nota` VALUES (690, NULL, 144, 38, '', '', '', '1');
INSERT INTO `nota` VALUES (691, NULL, 145, 38, '', '', '', '1');
INSERT INTO `nota` VALUES (692, NULL, 146, 38, '', '', '', '1');
INSERT INTO `nota` VALUES (693, NULL, 147, 38, '', '', '', '1');
INSERT INTO `nota` VALUES (694, NULL, 148, 38, '', '', '', '1');
INSERT INTO `nota` VALUES (695, NULL, 126, 39, '', '', '', '1');
INSERT INTO `nota` VALUES (696, NULL, 127, 39, '', '', '', '1');
INSERT INTO `nota` VALUES (697, NULL, 128, 39, '', '', '', '1');
INSERT INTO `nota` VALUES (698, NULL, 129, 39, '', '', '', '1');
INSERT INTO `nota` VALUES (699, NULL, 130, 39, '', '', '', '1');
INSERT INTO `nota` VALUES (700, NULL, 131, 39, '', '', '', '1');
INSERT INTO `nota` VALUES (701, NULL, 132, 39, '', '', '', '1');
INSERT INTO `nota` VALUES (702, NULL, 133, 39, '', '', '', '1');
INSERT INTO `nota` VALUES (703, NULL, 134, 39, '', '', '', '1');
INSERT INTO `nota` VALUES (704, NULL, 135, 39, '', '', '', '1');
INSERT INTO `nota` VALUES (705, NULL, 136, 39, '', '', '', '1');
INSERT INTO `nota` VALUES (706, NULL, 137, 39, '', '', '', '1');
INSERT INTO `nota` VALUES (707, NULL, 138, 39, '', '', '', '1');
INSERT INTO `nota` VALUES (708, NULL, 139, 39, '', '', '', '1');
INSERT INTO `nota` VALUES (709, NULL, 140, 39, '', '', '', '1');
INSERT INTO `nota` VALUES (710, NULL, 141, 39, '', '', '', '1');
INSERT INTO `nota` VALUES (711, NULL, 142, 39, '', '', '', '1');
INSERT INTO `nota` VALUES (712, NULL, 143, 39, '', '', '', '1');
INSERT INTO `nota` VALUES (713, NULL, 144, 39, '', '', '', '1');
INSERT INTO `nota` VALUES (714, NULL, 145, 39, '', '', '', '1');
INSERT INTO `nota` VALUES (715, NULL, 146, 39, '', '', '', '1');
INSERT INTO `nota` VALUES (716, NULL, 147, 39, '', '', '', '1');
INSERT INTO `nota` VALUES (717, NULL, 148, 39, '', '', '', '1');
INSERT INTO `nota` VALUES (718, NULL, 126, 40, '', '', '', '1');
INSERT INTO `nota` VALUES (719, NULL, 127, 40, '', '', '', '1');
INSERT INTO `nota` VALUES (720, NULL, 128, 40, '', '', '', '1');
INSERT INTO `nota` VALUES (721, NULL, 129, 40, '', '', '', '1');
INSERT INTO `nota` VALUES (722, NULL, 130, 40, '', '', '', '1');
INSERT INTO `nota` VALUES (723, NULL, 131, 40, '', '', '', '1');
INSERT INTO `nota` VALUES (724, NULL, 132, 40, '', '', '', '1');
INSERT INTO `nota` VALUES (725, NULL, 133, 40, '', '', '', '1');
INSERT INTO `nota` VALUES (726, NULL, 134, 40, '', '', '', '1');
INSERT INTO `nota` VALUES (727, NULL, 135, 40, '', '', '', '1');
INSERT INTO `nota` VALUES (728, NULL, 136, 40, '', '', '', '1');
INSERT INTO `nota` VALUES (729, NULL, 137, 40, '', '', '', '1');
INSERT INTO `nota` VALUES (730, NULL, 138, 40, '', '', '', '1');
INSERT INTO `nota` VALUES (731, NULL, 139, 40, '', '', '', '1');
INSERT INTO `nota` VALUES (732, NULL, 140, 40, '', '', '', '1');
INSERT INTO `nota` VALUES (733, NULL, 141, 40, '', '', '', '1');
INSERT INTO `nota` VALUES (734, NULL, 142, 40, '', '', '', '1');
INSERT INTO `nota` VALUES (735, NULL, 143, 40, '', '', '', '1');
INSERT INTO `nota` VALUES (736, NULL, 144, 40, '', '', '', '1');
INSERT INTO `nota` VALUES (737, NULL, 145, 40, '', '', '', '1');
INSERT INTO `nota` VALUES (738, NULL, 146, 40, '', '', '', '1');
INSERT INTO `nota` VALUES (739, NULL, 147, 40, '', '', '', '1');
INSERT INTO `nota` VALUES (740, NULL, 148, 40, '', '', '', '1');
INSERT INTO `nota` VALUES (741, NULL, 126, 41, '', '', '', '1');
INSERT INTO `nota` VALUES (742, NULL, 127, 41, '', '', '', '1');
INSERT INTO `nota` VALUES (743, NULL, 128, 41, '', '', '', '1');
INSERT INTO `nota` VALUES (744, NULL, 129, 41, '', '', '', '1');
INSERT INTO `nota` VALUES (745, NULL, 130, 41, '', '', '', '1');
INSERT INTO `nota` VALUES (746, NULL, 131, 41, '', '', '', '1');
INSERT INTO `nota` VALUES (747, NULL, 132, 41, '', '', '', '1');
INSERT INTO `nota` VALUES (748, NULL, 133, 41, '', '', '', '1');
INSERT INTO `nota` VALUES (749, NULL, 134, 41, '', '', '', '1');
INSERT INTO `nota` VALUES (750, NULL, 135, 41, '', '', '', '1');
INSERT INTO `nota` VALUES (751, NULL, 136, 41, '', '', '', '1');
INSERT INTO `nota` VALUES (752, NULL, 137, 41, '', '', '', '1');
INSERT INTO `nota` VALUES (753, NULL, 138, 41, '', '', '', '1');
INSERT INTO `nota` VALUES (754, NULL, 139, 41, '', '', '', '1');
INSERT INTO `nota` VALUES (755, NULL, 140, 41, '', '', '', '1');
INSERT INTO `nota` VALUES (756, NULL, 141, 41, '', '', '', '1');
INSERT INTO `nota` VALUES (757, NULL, 142, 41, '', '', '', '1');
INSERT INTO `nota` VALUES (758, NULL, 143, 41, '', '', '', '1');
INSERT INTO `nota` VALUES (759, NULL, 144, 41, '', '', '', '1');
INSERT INTO `nota` VALUES (760, NULL, 145, 41, '', '', '', '1');
INSERT INTO `nota` VALUES (761, NULL, 146, 41, '', '', '', '1');
INSERT INTO `nota` VALUES (762, NULL, 147, 41, '', '', '', '1');
INSERT INTO `nota` VALUES (763, NULL, 148, 41, '', '', '', '1');
INSERT INTO `nota` VALUES (764, NULL, 149, 42, '14', '14', '14', '14');
INSERT INTO `nota` VALUES (765, NULL, 10, 43, '', '', '', '1');
INSERT INTO `nota` VALUES (766, NULL, 11, 43, '', '', '', '1');
INSERT INTO `nota` VALUES (767, NULL, 12, 43, '', '', '', '1');
INSERT INTO `nota` VALUES (768, NULL, 13, 43, '', '', '', '1');
INSERT INTO `nota` VALUES (769, NULL, 14, 43, '', '', '', '1');
INSERT INTO `nota` VALUES (770, NULL, 15, 43, '', '', '', '1');
INSERT INTO `nota` VALUES (771, NULL, 16, 43, '', '', '', '1');
INSERT INTO `nota` VALUES (772, NULL, 17, 43, '', '', '', '1');
INSERT INTO `nota` VALUES (773, NULL, 18, 43, '', '', '', '1');
INSERT INTO `nota` VALUES (774, NULL, 10, 44, '', '', '', '1');
INSERT INTO `nota` VALUES (775, NULL, 11, 44, '', '', '', '1');
INSERT INTO `nota` VALUES (776, NULL, 12, 44, '', '', '', '1');
INSERT INTO `nota` VALUES (777, NULL, 13, 44, '', '', '', '1');
INSERT INTO `nota` VALUES (778, NULL, 14, 44, '', '', '', '1');
INSERT INTO `nota` VALUES (779, NULL, 15, 44, '', '', '', '1');
INSERT INTO `nota` VALUES (780, NULL, 16, 44, '', '', '', '1');
INSERT INTO `nota` VALUES (781, NULL, 17, 44, '', '', '', '1');
INSERT INTO `nota` VALUES (782, NULL, 18, 44, '', '', '', '1');
INSERT INTO `nota` VALUES (783, NULL, 10, 45, '', '', '', '1');
INSERT INTO `nota` VALUES (784, NULL, 11, 45, '', '', '', '1');
INSERT INTO `nota` VALUES (785, NULL, 12, 45, '', '', '', '1');
INSERT INTO `nota` VALUES (786, NULL, 13, 45, '', '', '', '1');
INSERT INTO `nota` VALUES (787, NULL, 14, 45, '', '', '', '1');
INSERT INTO `nota` VALUES (788, NULL, 15, 45, '', '', '', '1');
INSERT INTO `nota` VALUES (789, NULL, 16, 45, '', '', '', '1');
INSERT INTO `nota` VALUES (790, NULL, 17, 45, '', '', '', '1');
INSERT INTO `nota` VALUES (791, NULL, 18, 45, '', '', '', '1');
INSERT INTO `nota` VALUES (792, NULL, 10, 46, '', '', '', '1');
INSERT INTO `nota` VALUES (793, NULL, 11, 46, '', '', '', '1');
INSERT INTO `nota` VALUES (794, NULL, 12, 46, '', '', '', '1');
INSERT INTO `nota` VALUES (795, NULL, 13, 46, '', '', '', '1');
INSERT INTO `nota` VALUES (796, NULL, 14, 46, '', '', '', '1');
INSERT INTO `nota` VALUES (797, NULL, 15, 46, '', '', '', '1');
INSERT INTO `nota` VALUES (798, NULL, 16, 46, '', '', '', '1');
INSERT INTO `nota` VALUES (799, NULL, 17, 46, '', '', '', '1');
INSERT INTO `nota` VALUES (800, NULL, 18, 46, '', '', '', '1');
INSERT INTO `nota` VALUES (801, NULL, 10, 47, '', '', '', '1');
INSERT INTO `nota` VALUES (802, NULL, 11, 47, '', '', '', '1');
INSERT INTO `nota` VALUES (803, NULL, 12, 47, '', '', '', '1');
INSERT INTO `nota` VALUES (804, NULL, 13, 47, '', '', '', '1');
INSERT INTO `nota` VALUES (805, NULL, 14, 47, '', '', '', '1');
INSERT INTO `nota` VALUES (806, NULL, 15, 47, '', '', '', '1');
INSERT INTO `nota` VALUES (807, NULL, 16, 47, '', '', '', '1');
INSERT INTO `nota` VALUES (808, NULL, 17, 47, '', '', '', '1');
INSERT INTO `nota` VALUES (809, NULL, 18, 47, '', '', '', '1');
INSERT INTO `nota` VALUES (810, NULL, 19, 48, '', '', '', '1');
INSERT INTO `nota` VALUES (811, NULL, 20, 48, '', '', '', '1');
INSERT INTO `nota` VALUES (812, NULL, 21, 48, '', '', '', '1');
INSERT INTO `nota` VALUES (813, NULL, 22, 48, '', '', '', '1');
INSERT INTO `nota` VALUES (814, NULL, 23, 48, '', '', '', '1');
INSERT INTO `nota` VALUES (815, NULL, 24, 48, '', '', '', '1');
INSERT INTO `nota` VALUES (816, NULL, 25, 48, '', '', '', '1');
INSERT INTO `nota` VALUES (817, NULL, 26, 48, '', '', '', '1');
INSERT INTO `nota` VALUES (818, NULL, 27, 48, '', '', '', '1');
INSERT INTO `nota` VALUES (819, NULL, 28, 48, '', '', '', '1');
INSERT INTO `nota` VALUES (820, NULL, 29, 48, '', '', '', '1');
INSERT INTO `nota` VALUES (821, NULL, 30, 48, '', '', '', '1');
INSERT INTO `nota` VALUES (822, NULL, 31, 48, '', '', '', '1');
INSERT INTO `nota` VALUES (823, NULL, 32, 48, '', '', '', '1');
INSERT INTO `nota` VALUES (824, NULL, 33, 48, '', '', '', '1');
INSERT INTO `nota` VALUES (825, NULL, 34, 48, '', '', '', '1');
INSERT INTO `nota` VALUES (826, NULL, 35, 48, '', '', '', '1');
INSERT INTO `nota` VALUES (827, NULL, 36, 48, '', '', '', '1');
INSERT INTO `nota` VALUES (828, NULL, 37, 48, '', '', '', '1');
INSERT INTO `nota` VALUES (829, NULL, 38, 48, '', '', '', '1');
INSERT INTO `nota` VALUES (830, NULL, 39, 48, '', '', '', '1');
INSERT INTO `nota` VALUES (831, NULL, 19, 49, '', '', '', '1');
INSERT INTO `nota` VALUES (832, NULL, 20, 49, '', '', '', '1');
INSERT INTO `nota` VALUES (833, NULL, 21, 49, '', '', '', '1');
INSERT INTO `nota` VALUES (834, NULL, 22, 49, '', '', '', '1');
INSERT INTO `nota` VALUES (835, NULL, 23, 49, '', '', '', '1');
INSERT INTO `nota` VALUES (836, NULL, 24, 49, '', '', '', '1');
INSERT INTO `nota` VALUES (837, NULL, 25, 49, '', '', '', '1');
INSERT INTO `nota` VALUES (838, NULL, 26, 49, '', '', '', '1');
INSERT INTO `nota` VALUES (839, NULL, 27, 49, '', '', '', '1');
INSERT INTO `nota` VALUES (840, NULL, 28, 49, '', '', '', '1');
INSERT INTO `nota` VALUES (841, NULL, 29, 49, '', '', '', '1');
INSERT INTO `nota` VALUES (842, NULL, 30, 49, '', '', '', '1');
INSERT INTO `nota` VALUES (843, NULL, 31, 49, '', '', '', '1');
INSERT INTO `nota` VALUES (844, NULL, 32, 49, '', '', '', '1');
INSERT INTO `nota` VALUES (845, NULL, 33, 49, '', '', '', '1');
INSERT INTO `nota` VALUES (846, NULL, 34, 49, '', '', '', '1');
INSERT INTO `nota` VALUES (847, NULL, 35, 49, '', '', '', '1');
INSERT INTO `nota` VALUES (848, NULL, 36, 49, '', '', '', '1');
INSERT INTO `nota` VALUES (849, NULL, 37, 49, '', '', '', '1');
INSERT INTO `nota` VALUES (850, NULL, 38, 49, '', '', '', '1');
INSERT INTO `nota` VALUES (851, NULL, 39, 49, '', '', '', '1');
INSERT INTO `nota` VALUES (852, NULL, 19, 50, '', '', '', '1');
INSERT INTO `nota` VALUES (853, NULL, 20, 50, '', '', '', '1');
INSERT INTO `nota` VALUES (854, NULL, 21, 50, '', '', '', '1');
INSERT INTO `nota` VALUES (855, NULL, 22, 50, '', '', '', '1');
INSERT INTO `nota` VALUES (856, NULL, 23, 50, '', '', '', '1');
INSERT INTO `nota` VALUES (857, NULL, 24, 50, '', '', '', '1');
INSERT INTO `nota` VALUES (858, NULL, 25, 50, '', '', '', '1');
INSERT INTO `nota` VALUES (859, NULL, 26, 50, '', '', '', '1');
INSERT INTO `nota` VALUES (860, NULL, 27, 50, '', '', '', '1');
INSERT INTO `nota` VALUES (861, NULL, 28, 50, '', '', '', '1');
INSERT INTO `nota` VALUES (862, NULL, 29, 50, '', '', '', '1');
INSERT INTO `nota` VALUES (863, NULL, 30, 50, '', '', '', '1');
INSERT INTO `nota` VALUES (864, NULL, 31, 50, '', '', '', '1');
INSERT INTO `nota` VALUES (865, NULL, 32, 50, '', '', '', '1');
INSERT INTO `nota` VALUES (866, NULL, 33, 50, '', '', '', '1');
INSERT INTO `nota` VALUES (867, NULL, 34, 50, '', '', '', '1');
INSERT INTO `nota` VALUES (868, NULL, 35, 50, '', '', '', '1');
INSERT INTO `nota` VALUES (869, NULL, 36, 50, '', '', '', '1');
INSERT INTO `nota` VALUES (870, NULL, 37, 50, '', '', '', '1');
INSERT INTO `nota` VALUES (871, NULL, 38, 50, '', '', '', '1');
INSERT INTO `nota` VALUES (872, NULL, 39, 50, '', '', '', '1');
INSERT INTO `nota` VALUES (873, NULL, 19, 51, '', '', '', '1');
INSERT INTO `nota` VALUES (874, NULL, 20, 51, '', '', '', '1');
INSERT INTO `nota` VALUES (875, NULL, 21, 51, '', '', '', '1');
INSERT INTO `nota` VALUES (876, NULL, 22, 51, '', '', '', '1');
INSERT INTO `nota` VALUES (877, NULL, 23, 51, '', '', '', '1');
INSERT INTO `nota` VALUES (878, NULL, 24, 51, '', '', '', '1');
INSERT INTO `nota` VALUES (879, NULL, 25, 51, '', '', '', '1');
INSERT INTO `nota` VALUES (880, NULL, 26, 51, '', '', '', '1');
INSERT INTO `nota` VALUES (881, NULL, 27, 51, '', '', '', '1');
INSERT INTO `nota` VALUES (882, NULL, 28, 51, '', '', '', '1');
INSERT INTO `nota` VALUES (883, NULL, 29, 51, '', '', '', '1');
INSERT INTO `nota` VALUES (884, NULL, 30, 51, '', '', '', '1');
INSERT INTO `nota` VALUES (885, NULL, 31, 51, '', '', '', '1');
INSERT INTO `nota` VALUES (886, NULL, 32, 51, '', '', '', '1');
INSERT INTO `nota` VALUES (887, NULL, 33, 51, '', '', '', '1');
INSERT INTO `nota` VALUES (888, NULL, 34, 51, '', '', '', '1');
INSERT INTO `nota` VALUES (889, NULL, 35, 51, '', '', '', '1');
INSERT INTO `nota` VALUES (890, NULL, 36, 51, '', '', '', '1');
INSERT INTO `nota` VALUES (891, NULL, 37, 51, '', '', '', '1');
INSERT INTO `nota` VALUES (892, NULL, 38, 51, '', '', '', '1');
INSERT INTO `nota` VALUES (893, NULL, 39, 51, '', '', '', '1');
INSERT INTO `nota` VALUES (894, NULL, 19, 52, '', '', '', '1');
INSERT INTO `nota` VALUES (895, NULL, 20, 52, '', '', '', '1');
INSERT INTO `nota` VALUES (896, NULL, 21, 52, '', '', '', '1');
INSERT INTO `nota` VALUES (897, NULL, 22, 52, '', '', '', '1');
INSERT INTO `nota` VALUES (898, NULL, 23, 52, '', '', '', '1');
INSERT INTO `nota` VALUES (899, NULL, 24, 52, '', '', '', '1');
INSERT INTO `nota` VALUES (900, NULL, 25, 52, '', '', '', '1');
INSERT INTO `nota` VALUES (901, NULL, 26, 52, '', '', '', '1');
INSERT INTO `nota` VALUES (902, NULL, 27, 52, '', '', '', '1');
INSERT INTO `nota` VALUES (903, NULL, 28, 52, '', '', '', '1');
INSERT INTO `nota` VALUES (904, NULL, 29, 52, '', '', '', '1');
INSERT INTO `nota` VALUES (905, NULL, 30, 52, '', '', '', '1');
INSERT INTO `nota` VALUES (906, NULL, 31, 52, '', '', '', '1');
INSERT INTO `nota` VALUES (907, NULL, 32, 52, '', '', '', '1');
INSERT INTO `nota` VALUES (908, NULL, 33, 52, '', '', '', '1');
INSERT INTO `nota` VALUES (909, NULL, 34, 52, '', '', '', '1');
INSERT INTO `nota` VALUES (910, NULL, 35, 52, '', '', '', '1');
INSERT INTO `nota` VALUES (911, NULL, 36, 52, '', '', '', '1');
INSERT INTO `nota` VALUES (912, NULL, 37, 52, '', '', '', '1');
INSERT INTO `nota` VALUES (913, NULL, 38, 52, '', '', '', '1');
INSERT INTO `nota` VALUES (914, NULL, 39, 52, '', '', '', '1');
INSERT INTO `nota` VALUES (915, NULL, 40, 53, '', '', '', '1');
INSERT INTO `nota` VALUES (916, NULL, 41, 53, '', '', '', '1');
INSERT INTO `nota` VALUES (917, NULL, 42, 53, '', '', '', '1');
INSERT INTO `nota` VALUES (918, NULL, 43, 53, '', '', '', '1');
INSERT INTO `nota` VALUES (919, NULL, 44, 53, '', '', '', '1');
INSERT INTO `nota` VALUES (920, NULL, 45, 53, '', '', '', '1');
INSERT INTO `nota` VALUES (921, NULL, 46, 53, '', '', '', '1');
INSERT INTO `nota` VALUES (922, NULL, 47, 53, '', '', '', '1');
INSERT INTO `nota` VALUES (923, NULL, 48, 53, '', '', '', '1');
INSERT INTO `nota` VALUES (924, NULL, 49, 53, '', '', '', '1');
INSERT INTO `nota` VALUES (925, NULL, 50, 53, '', '', '', '1');
INSERT INTO `nota` VALUES (926, NULL, 51, 53, '', '', '', '1');
INSERT INTO `nota` VALUES (927, NULL, 52, 53, '', '', '', '1');
INSERT INTO `nota` VALUES (928, NULL, 53, 53, '', '', '', '1');
INSERT INTO `nota` VALUES (929, NULL, 54, 53, '', '', '', '1');
INSERT INTO `nota` VALUES (930, NULL, 55, 53, '', '', '', '1');
INSERT INTO `nota` VALUES (931, NULL, 56, 53, '', '', '', '1');
INSERT INTO `nota` VALUES (932, NULL, 57, 53, '', '', '', '1');
INSERT INTO `nota` VALUES (933, NULL, 58, 53, '', '', '', '1');
INSERT INTO `nota` VALUES (934, NULL, 59, 53, '', '', '', '1');
INSERT INTO `nota` VALUES (935, NULL, 40, 54, '', '', '', '1');
INSERT INTO `nota` VALUES (936, NULL, 41, 54, '', '', '', '1');
INSERT INTO `nota` VALUES (937, NULL, 42, 54, '', '', '', '1');
INSERT INTO `nota` VALUES (938, NULL, 43, 54, '', '', '', '1');
INSERT INTO `nota` VALUES (939, NULL, 44, 54, '', '', '', '1');
INSERT INTO `nota` VALUES (940, NULL, 45, 54, '', '', '', '1');
INSERT INTO `nota` VALUES (941, NULL, 46, 54, '', '', '', '1');
INSERT INTO `nota` VALUES (942, NULL, 47, 54, '', '', '', '1');
INSERT INTO `nota` VALUES (943, NULL, 48, 54, '', '', '', '1');
INSERT INTO `nota` VALUES (944, NULL, 49, 54, '', '', '', '1');
INSERT INTO `nota` VALUES (945, NULL, 50, 54, '', '', '', '1');
INSERT INTO `nota` VALUES (946, NULL, 51, 54, '', '', '', '1');
INSERT INTO `nota` VALUES (947, NULL, 52, 54, '', '', '', '1');
INSERT INTO `nota` VALUES (948, NULL, 53, 54, '', '', '', '1');
INSERT INTO `nota` VALUES (949, NULL, 54, 54, '', '', '', '1');
INSERT INTO `nota` VALUES (950, NULL, 55, 54, '', '', '', '1');
INSERT INTO `nota` VALUES (951, NULL, 56, 54, '', '', '', '1');
INSERT INTO `nota` VALUES (952, NULL, 57, 54, '', '', '', '1');
INSERT INTO `nota` VALUES (953, NULL, 58, 54, '', '', '', '1');
INSERT INTO `nota` VALUES (954, NULL, 59, 54, '', '', '', '1');
INSERT INTO `nota` VALUES (955, NULL, 40, 55, '', '', '', '1');
INSERT INTO `nota` VALUES (956, NULL, 41, 55, '', '', '', '1');
INSERT INTO `nota` VALUES (957, NULL, 42, 55, '', '', '', '1');
INSERT INTO `nota` VALUES (958, NULL, 43, 55, '', '', '', '1');
INSERT INTO `nota` VALUES (959, NULL, 44, 55, '', '', '', '1');
INSERT INTO `nota` VALUES (960, NULL, 45, 55, '', '', '', '1');
INSERT INTO `nota` VALUES (961, NULL, 46, 55, '', '', '', '1');
INSERT INTO `nota` VALUES (962, NULL, 47, 55, '', '', '', '1');
INSERT INTO `nota` VALUES (963, NULL, 48, 55, '', '', '', '1');
INSERT INTO `nota` VALUES (964, NULL, 49, 55, '', '', '', '1');
INSERT INTO `nota` VALUES (965, NULL, 50, 55, '', '', '', '1');
INSERT INTO `nota` VALUES (966, NULL, 51, 55, '', '', '', '1');
INSERT INTO `nota` VALUES (967, NULL, 52, 55, '', '', '', '1');
INSERT INTO `nota` VALUES (968, NULL, 53, 55, '', '', '', '1');
INSERT INTO `nota` VALUES (969, NULL, 54, 55, '', '', '', '1');
INSERT INTO `nota` VALUES (970, NULL, 55, 55, '', '', '', '1');
INSERT INTO `nota` VALUES (971, NULL, 56, 55, '', '', '', '1');
INSERT INTO `nota` VALUES (972, NULL, 57, 55, '', '', '', '1');
INSERT INTO `nota` VALUES (973, NULL, 58, 55, '', '', '', '1');
INSERT INTO `nota` VALUES (974, NULL, 59, 55, '', '', '', '1');
INSERT INTO `nota` VALUES (975, NULL, 40, 56, '', '', '', '1');
INSERT INTO `nota` VALUES (976, NULL, 41, 56, '', '', '', '1');
INSERT INTO `nota` VALUES (977, NULL, 42, 56, '', '', '', '1');
INSERT INTO `nota` VALUES (978, NULL, 43, 56, '', '', '', '1');
INSERT INTO `nota` VALUES (979, NULL, 44, 56, '', '', '', '1');
INSERT INTO `nota` VALUES (980, NULL, 45, 56, '', '', '', '1');
INSERT INTO `nota` VALUES (981, NULL, 46, 56, '', '', '', '1');
INSERT INTO `nota` VALUES (982, NULL, 47, 56, '', '', '', '1');
INSERT INTO `nota` VALUES (983, NULL, 48, 56, '', '', '', '1');
INSERT INTO `nota` VALUES (984, NULL, 49, 56, '', '', '', '1');
INSERT INTO `nota` VALUES (985, NULL, 50, 56, '', '', '', '1');
INSERT INTO `nota` VALUES (986, NULL, 51, 56, '', '', '', '1');
INSERT INTO `nota` VALUES (987, NULL, 52, 56, '', '', '', '1');
INSERT INTO `nota` VALUES (988, NULL, 53, 56, '', '', '', '1');
INSERT INTO `nota` VALUES (989, NULL, 54, 56, '', '', '', '1');
INSERT INTO `nota` VALUES (990, NULL, 55, 56, '', '', '', '1');
INSERT INTO `nota` VALUES (991, NULL, 56, 56, '', '', '', '1');
INSERT INTO `nota` VALUES (992, NULL, 57, 56, '', '', '', '1');
INSERT INTO `nota` VALUES (993, NULL, 58, 56, '', '', '', '1');
INSERT INTO `nota` VALUES (994, NULL, 59, 56, '', '', '', '1');
INSERT INTO `nota` VALUES (995, NULL, 40, 57, '', '', '', '1');
INSERT INTO `nota` VALUES (996, NULL, 41, 57, '', '', '', '1');
INSERT INTO `nota` VALUES (997, NULL, 42, 57, '', '', '', '1');
INSERT INTO `nota` VALUES (998, NULL, 43, 57, '', '', '', '1');
INSERT INTO `nota` VALUES (999, NULL, 44, 57, '', '', '', '1');
INSERT INTO `nota` VALUES (1000, NULL, 45, 57, '', '', '', '1');
INSERT INTO `nota` VALUES (1001, NULL, 46, 57, '', '', '', '1');
INSERT INTO `nota` VALUES (1002, NULL, 47, 57, '', '', '', '1');
INSERT INTO `nota` VALUES (1003, NULL, 48, 57, '', '', '', '1');
INSERT INTO `nota` VALUES (1004, NULL, 49, 57, '', '', '', '1');
INSERT INTO `nota` VALUES (1005, NULL, 50, 57, '', '', '', '1');
INSERT INTO `nota` VALUES (1006, NULL, 51, 57, '', '', '', '1');
INSERT INTO `nota` VALUES (1007, NULL, 52, 57, '', '', '', '1');
INSERT INTO `nota` VALUES (1008, NULL, 53, 57, '', '', '', '1');
INSERT INTO `nota` VALUES (1009, NULL, 54, 57, '', '', '', '1');
INSERT INTO `nota` VALUES (1010, NULL, 55, 57, '', '', '', '1');
INSERT INTO `nota` VALUES (1011, NULL, 56, 57, '', '', '', '1');
INSERT INTO `nota` VALUES (1012, NULL, 57, 57, '', '', '', '1');
INSERT INTO `nota` VALUES (1013, NULL, 58, 57, '', '', '', '1');
INSERT INTO `nota` VALUES (1014, NULL, 59, 57, '', '', '', '1');
INSERT INTO `nota` VALUES (1015, NULL, 60, 58, '', '', '', '1');
INSERT INTO `nota` VALUES (1016, NULL, 61, 58, '', '', '', '1');
INSERT INTO `nota` VALUES (1017, NULL, 62, 58, '', '', '', '1');
INSERT INTO `nota` VALUES (1018, NULL, 63, 58, '', '', '', '1');
INSERT INTO `nota` VALUES (1019, NULL, 64, 58, '', '', '', '1');
INSERT INTO `nota` VALUES (1020, NULL, 65, 58, '', '', '', '1');
INSERT INTO `nota` VALUES (1021, NULL, 66, 58, '', '', '', '1');
INSERT INTO `nota` VALUES (1022, NULL, 67, 58, '', '', '', '1');
INSERT INTO `nota` VALUES (1023, NULL, 68, 58, '', '', '', '1');
INSERT INTO `nota` VALUES (1024, NULL, 69, 58, '', '', '', '1');
INSERT INTO `nota` VALUES (1025, NULL, 70, 58, '', '', '', '1');
INSERT INTO `nota` VALUES (1026, NULL, 71, 58, '', '', '', '1');
INSERT INTO `nota` VALUES (1027, NULL, 72, 58, '', '', '', '1');
INSERT INTO `nota` VALUES (1028, NULL, 73, 58, '', '', '', '1');
INSERT INTO `nota` VALUES (1029, NULL, 74, 58, '', '', '', '1');
INSERT INTO `nota` VALUES (1030, NULL, 75, 58, '', '', '', '1');
INSERT INTO `nota` VALUES (1031, NULL, 76, 58, '', '', '', '1');
INSERT INTO `nota` VALUES (1032, NULL, 77, 58, '', '', '', '1');
INSERT INTO `nota` VALUES (1033, NULL, 78, 58, '', '', '', '1');
INSERT INTO `nota` VALUES (1034, NULL, 79, 58, '', '', '', '1');
INSERT INTO `nota` VALUES (1035, NULL, 60, 59, '', '', '', '1');
INSERT INTO `nota` VALUES (1036, NULL, 61, 59, '', '', '', '1');
INSERT INTO `nota` VALUES (1037, NULL, 62, 59, '', '', '', '1');
INSERT INTO `nota` VALUES (1038, NULL, 63, 59, '', '', '', '1');
INSERT INTO `nota` VALUES (1039, NULL, 64, 59, '', '', '', '1');
INSERT INTO `nota` VALUES (1040, NULL, 65, 59, '', '', '', '1');
INSERT INTO `nota` VALUES (1041, NULL, 66, 59, '', '', '', '1');
INSERT INTO `nota` VALUES (1042, NULL, 67, 59, '', '', '', '1');
INSERT INTO `nota` VALUES (1043, NULL, 68, 59, '', '', '', '1');
INSERT INTO `nota` VALUES (1044, NULL, 69, 59, '', '', '', '1');
INSERT INTO `nota` VALUES (1045, NULL, 70, 59, '', '', '', '1');
INSERT INTO `nota` VALUES (1046, NULL, 71, 59, '', '', '', '1');
INSERT INTO `nota` VALUES (1047, NULL, 72, 59, '', '', '', '1');
INSERT INTO `nota` VALUES (1048, NULL, 73, 59, '', '', '', '1');
INSERT INTO `nota` VALUES (1049, NULL, 74, 59, '', '', '', '1');
INSERT INTO `nota` VALUES (1050, NULL, 75, 59, '', '', '', '1');
INSERT INTO `nota` VALUES (1051, NULL, 76, 59, '', '', '', '1');
INSERT INTO `nota` VALUES (1052, NULL, 77, 59, '', '', '', '1');
INSERT INTO `nota` VALUES (1053, NULL, 78, 59, '', '', '', '1');
INSERT INTO `nota` VALUES (1054, NULL, 79, 59, '', '', '', '1');
INSERT INTO `nota` VALUES (1055, NULL, 60, 60, '', '', '', '1');
INSERT INTO `nota` VALUES (1056, NULL, 61, 60, '', '', '', '1');
INSERT INTO `nota` VALUES (1057, NULL, 62, 60, '', '', '', '1');
INSERT INTO `nota` VALUES (1058, NULL, 63, 60, '', '', '', '1');
INSERT INTO `nota` VALUES (1059, NULL, 64, 60, '', '', '', '1');
INSERT INTO `nota` VALUES (1060, NULL, 65, 60, '', '', '', '1');
INSERT INTO `nota` VALUES (1061, NULL, 66, 60, '', '', '', '1');
INSERT INTO `nota` VALUES (1062, NULL, 67, 60, '', '', '', '1');
INSERT INTO `nota` VALUES (1063, NULL, 68, 60, '', '', '', '1');
INSERT INTO `nota` VALUES (1064, NULL, 69, 60, '', '', '', '1');
INSERT INTO `nota` VALUES (1065, NULL, 70, 60, '', '', '', '1');
INSERT INTO `nota` VALUES (1066, NULL, 71, 60, '', '', '', '1');
INSERT INTO `nota` VALUES (1067, NULL, 72, 60, '', '', '', '1');
INSERT INTO `nota` VALUES (1068, NULL, 73, 60, '', '', '', '1');
INSERT INTO `nota` VALUES (1069, NULL, 74, 60, '', '', '', '1');
INSERT INTO `nota` VALUES (1070, NULL, 75, 60, '', '', '', '1');
INSERT INTO `nota` VALUES (1071, NULL, 76, 60, '', '', '', '1');
INSERT INTO `nota` VALUES (1072, NULL, 77, 60, '', '', '', '1');
INSERT INTO `nota` VALUES (1073, NULL, 78, 60, '', '', '', '1');
INSERT INTO `nota` VALUES (1074, NULL, 79, 60, '', '', '', '1');
INSERT INTO `nota` VALUES (1075, NULL, 60, 61, '', '', '', '1');
INSERT INTO `nota` VALUES (1076, NULL, 61, 61, '', '', '', '1');
INSERT INTO `nota` VALUES (1077, NULL, 62, 61, '', '', '', '1');
INSERT INTO `nota` VALUES (1078, NULL, 63, 61, '', '', '', '1');
INSERT INTO `nota` VALUES (1079, NULL, 64, 61, '', '', '', '1');
INSERT INTO `nota` VALUES (1080, NULL, 65, 61, '', '', '', '1');
INSERT INTO `nota` VALUES (1081, NULL, 66, 61, '', '', '', '1');
INSERT INTO `nota` VALUES (1082, NULL, 67, 61, '', '', '', '1');
INSERT INTO `nota` VALUES (1083, NULL, 68, 61, '', '', '', '1');
INSERT INTO `nota` VALUES (1084, NULL, 69, 61, '', '', '', '1');
INSERT INTO `nota` VALUES (1085, NULL, 70, 61, '', '', '', '1');
INSERT INTO `nota` VALUES (1086, NULL, 71, 61, '', '', '', '1');
INSERT INTO `nota` VALUES (1087, NULL, 72, 61, '', '', '', '1');
INSERT INTO `nota` VALUES (1088, NULL, 73, 61, '', '', '', '1');
INSERT INTO `nota` VALUES (1089, NULL, 74, 61, '', '', '', '1');
INSERT INTO `nota` VALUES (1090, NULL, 75, 61, '', '', '', '1');
INSERT INTO `nota` VALUES (1091, NULL, 76, 61, '', '', '', '1');
INSERT INTO `nota` VALUES (1092, NULL, 77, 61, '', '', '', '1');
INSERT INTO `nota` VALUES (1093, NULL, 78, 61, '', '', '', '1');
INSERT INTO `nota` VALUES (1094, NULL, 79, 61, '', '', '', '1');
INSERT INTO `nota` VALUES (1095, NULL, 80, 62, '', '', '', '1');
INSERT INTO `nota` VALUES (1096, NULL, 81, 62, '', '', '', '1');
INSERT INTO `nota` VALUES (1097, NULL, 82, 62, '', '', '', '1');
INSERT INTO `nota` VALUES (1098, NULL, 83, 62, '', '', '', '1');
INSERT INTO `nota` VALUES (1099, NULL, 84, 62, '', '', '', '1');
INSERT INTO `nota` VALUES (1100, NULL, 85, 62, '', '', '', '1');
INSERT INTO `nota` VALUES (1101, NULL, 86, 62, '', '', '', '1');
INSERT INTO `nota` VALUES (1102, NULL, 87, 62, '', '', '', '1');
INSERT INTO `nota` VALUES (1103, NULL, 88, 62, '', '', '', '1');
INSERT INTO `nota` VALUES (1104, NULL, 89, 62, '', '', '', '1');
INSERT INTO `nota` VALUES (1105, NULL, 90, 62, '', '', '', '1');
INSERT INTO `nota` VALUES (1106, NULL, 91, 62, '', '', '', '1');
INSERT INTO `nota` VALUES (1107, NULL, 92, 62, '', '', '', '1');
INSERT INTO `nota` VALUES (1108, NULL, 93, 62, '', '', '', '1');
INSERT INTO `nota` VALUES (1109, NULL, 94, 62, '', '', '', '1');
INSERT INTO `nota` VALUES (1110, NULL, 95, 62, '', '', '', '1');
INSERT INTO `nota` VALUES (1111, NULL, 96, 62, '', '', '', '1');
INSERT INTO `nota` VALUES (1112, NULL, 97, 62, '', '', '', '1');
INSERT INTO `nota` VALUES (1113, NULL, 98, 62, '', '', '', '1');
INSERT INTO `nota` VALUES (1114, NULL, 99, 62, '', '', '', '1');
INSERT INTO `nota` VALUES (1115, NULL, 100, 62, '', '', '', '1');
INSERT INTO `nota` VALUES (1116, NULL, 101, 62, '', '', '', '1');
INSERT INTO `nota` VALUES (1117, NULL, 102, 62, '', '', '', '1');
INSERT INTO `nota` VALUES (1118, NULL, 80, 63, '', '', '', '1');
INSERT INTO `nota` VALUES (1119, NULL, 81, 63, '', '', '', '1');
INSERT INTO `nota` VALUES (1120, NULL, 82, 63, '', '', '', '1');
INSERT INTO `nota` VALUES (1121, NULL, 83, 63, '', '', '', '1');
INSERT INTO `nota` VALUES (1122, NULL, 84, 63, '', '', '', '1');
INSERT INTO `nota` VALUES (1123, NULL, 85, 63, '', '', '', '1');
INSERT INTO `nota` VALUES (1124, NULL, 86, 63, '', '', '', '1');
INSERT INTO `nota` VALUES (1125, NULL, 87, 63, '', '', '', '1');
INSERT INTO `nota` VALUES (1126, NULL, 88, 63, '', '', '', '1');
INSERT INTO `nota` VALUES (1127, NULL, 89, 63, '', '', '', '1');
INSERT INTO `nota` VALUES (1128, NULL, 90, 63, '', '', '', '1');
INSERT INTO `nota` VALUES (1129, NULL, 91, 63, '', '', '', '1');
INSERT INTO `nota` VALUES (1130, NULL, 92, 63, '', '', '', '1');
INSERT INTO `nota` VALUES (1131, NULL, 93, 63, '', '', '', '1');
INSERT INTO `nota` VALUES (1132, NULL, 94, 63, '', '', '', '1');
INSERT INTO `nota` VALUES (1133, NULL, 95, 63, '', '', '', '1');
INSERT INTO `nota` VALUES (1134, NULL, 96, 63, '', '', '', '1');
INSERT INTO `nota` VALUES (1135, NULL, 97, 63, '', '', '', '1');
INSERT INTO `nota` VALUES (1136, NULL, 98, 63, '', '', '', '1');
INSERT INTO `nota` VALUES (1137, NULL, 99, 63, '', '', '', '1');
INSERT INTO `nota` VALUES (1138, NULL, 100, 63, '', '', '', '1');
INSERT INTO `nota` VALUES (1139, NULL, 101, 63, '', '', '', '1');
INSERT INTO `nota` VALUES (1140, NULL, 102, 63, '', '', '', '1');
INSERT INTO `nota` VALUES (1141, NULL, 80, 64, '', '', '', '1');
INSERT INTO `nota` VALUES (1142, NULL, 81, 64, '', '', '', '1');
INSERT INTO `nota` VALUES (1143, NULL, 82, 64, '', '', '', '1');
INSERT INTO `nota` VALUES (1144, NULL, 83, 64, '', '', '', '1');
INSERT INTO `nota` VALUES (1145, NULL, 84, 64, '', '', '', '1');
INSERT INTO `nota` VALUES (1146, NULL, 85, 64, '', '', '', '1');
INSERT INTO `nota` VALUES (1147, NULL, 86, 64, '', '', '', '1');
INSERT INTO `nota` VALUES (1148, NULL, 87, 64, '', '', '', '1');
INSERT INTO `nota` VALUES (1149, NULL, 88, 64, '', '', '', '1');
INSERT INTO `nota` VALUES (1150, NULL, 89, 64, '', '', '', '1');
INSERT INTO `nota` VALUES (1151, NULL, 90, 64, '', '', '', '1');
INSERT INTO `nota` VALUES (1152, NULL, 91, 64, '', '', '', '1');
INSERT INTO `nota` VALUES (1153, NULL, 92, 64, '', '', '', '1');
INSERT INTO `nota` VALUES (1154, NULL, 93, 64, '', '', '', '1');
INSERT INTO `nota` VALUES (1155, NULL, 94, 64, '', '', '', '1');
INSERT INTO `nota` VALUES (1156, NULL, 95, 64, '', '', '', '1');
INSERT INTO `nota` VALUES (1157, NULL, 96, 64, '', '', '', '1');
INSERT INTO `nota` VALUES (1158, NULL, 97, 64, '', '', '', '1');
INSERT INTO `nota` VALUES (1159, NULL, 98, 64, '', '', '', '1');
INSERT INTO `nota` VALUES (1160, NULL, 99, 64, '', '', '', '1');
INSERT INTO `nota` VALUES (1161, NULL, 100, 64, '', '', '', '1');
INSERT INTO `nota` VALUES (1162, NULL, 101, 64, '', '', '', '1');
INSERT INTO `nota` VALUES (1163, NULL, 102, 64, '', '', '', '1');
INSERT INTO `nota` VALUES (1164, NULL, 80, 65, '', '', '', '1');
INSERT INTO `nota` VALUES (1165, NULL, 81, 65, '', '', '', '1');
INSERT INTO `nota` VALUES (1166, NULL, 82, 65, '', '', '', '1');
INSERT INTO `nota` VALUES (1167, NULL, 83, 65, '', '', '', '1');
INSERT INTO `nota` VALUES (1168, NULL, 84, 65, '', '', '', '1');
INSERT INTO `nota` VALUES (1169, NULL, 85, 65, '', '', '', '1');
INSERT INTO `nota` VALUES (1170, NULL, 86, 65, '', '', '', '1');
INSERT INTO `nota` VALUES (1171, NULL, 87, 65, '', '', '', '1');
INSERT INTO `nota` VALUES (1172, NULL, 88, 65, '', '', '', '1');
INSERT INTO `nota` VALUES (1173, NULL, 89, 65, '', '', '', '1');
INSERT INTO `nota` VALUES (1174, NULL, 90, 65, '', '', '', '1');
INSERT INTO `nota` VALUES (1175, NULL, 91, 65, '', '', '', '1');
INSERT INTO `nota` VALUES (1176, NULL, 92, 65, '', '', '', '1');
INSERT INTO `nota` VALUES (1177, NULL, 93, 65, '', '', '', '1');
INSERT INTO `nota` VALUES (1178, NULL, 94, 65, '', '', '', '1');
INSERT INTO `nota` VALUES (1179, NULL, 95, 65, '', '', '', '1');
INSERT INTO `nota` VALUES (1180, NULL, 96, 65, '', '', '', '1');
INSERT INTO `nota` VALUES (1181, NULL, 97, 65, '', '', '', '1');
INSERT INTO `nota` VALUES (1182, NULL, 98, 65, '', '', '', '1');
INSERT INTO `nota` VALUES (1183, NULL, 99, 65, '', '', '', '1');
INSERT INTO `nota` VALUES (1184, NULL, 100, 65, '', '', '', '1');
INSERT INTO `nota` VALUES (1185, NULL, 101, 65, '', '', '', '1');
INSERT INTO `nota` VALUES (1186, NULL, 102, 65, '', '', '', '1');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `padre`
-- 

CREATE TABLE `padre` (
  `idpadre` int(11) NOT NULL auto_increment,
  `apellidos` varchar(30) collate utf8_spanish2_ci NOT NULL,
  `nombres` varchar(30) collate utf8_spanish2_ci NOT NULL,
  `direccion` text collate utf8_spanish2_ci NOT NULL,
  `telefono` varchar(15) collate utf8_spanish2_ci default NULL,
  `celular` varchar(15) collate utf8_spanish2_ci default NULL,
  `ocupacion` text collate utf8_spanish2_ci NOT NULL,
  `fecnac` date NOT NULL,
  `fecreg` date NOT NULL,
  `sexo` char(1) collate utf8_spanish2_ci NOT NULL,
  `estciv` char(1) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`idpadre`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=172 ;

-- 
-- Volcar la base de datos para la tabla `padre`
-- 

INSERT INTO `padre` VALUES (1, 'Adrianzen Flores', 'Henry David', 'Talara 789', '(73)-258966', '', 'Profesor', '1988-01-21', '2010-06-23', '1', 'c');
INSERT INTO `padre` VALUES (2, 'Agapito Custodio', 'Cesar Manuel', 'Qui?ones 788', '(73)-267900', '', 'Chofer', '1971-11-01', '2010-06-23', '1', 's');
INSERT INTO `padre` VALUES (3, 'Guerro Lopez', ' Judith Areli', 'Santa rosa ', '(73)-489952', '', 'Ama de casa', '1987-12-12', '2010-06-23', '0', 'd');
INSERT INTO `padre` VALUES (4, 'Llauca Bances ', 'Boris Adriano', 'Lobitos 789', '(73)-456899', '', 'Admimistrador', '1987-10-17', '2010-06-23', '1', 'c');
INSERT INTO `padre` VALUES (5, 'Marco Elera', 'Franchesca Damaris', 'Leticia 789', '(73)-480250', '', 'Contadora', '1898-12-14', '2010-06-23', '0', 's');
INSERT INTO `padre` VALUES (6, 'Mazabel Quijandria', 'Guillermo Andree', 'San martin 741', '(73)-265547', '', 'Ing. civil', '1988-12-20', '2010-06-23', '1', 'c');
INSERT INTO `padre` VALUES (7, 'Tapia Diaz', 'Jhonatan Edinson', 'Los pinos 5233', '(73)-220001', '', 'Alba?il', '1974-12-11', '2010-06-23', '1', 'c');
INSERT INTO `padre` VALUES (8, 'Suclupe Siesquen', 'Jose William', 'Av raul peres', '(73)-290955', '', 'Cheft', '1477-12-15', '2010-06-23', '1', 's');
INSERT INTO `padre` VALUES (9, 'Rojas Lozano ', 'Melissa', 'Nicaragua 7667', '(73)-290778', '', 'Ama de casa', '1952-02-14', '2010-06-23', '0', 'c');
INSERT INTO `padre` VALUES (10, 'Gimenes Artis', 'Patricia ', 'Alelies 7855', '(73)-472699', '', 'Abogada', '1984-12-12', '2010-06-23', '0', 'd');
INSERT INTO `padre` VALUES (11, 'Ramos  Aponte ', 'Luiza', 'Micaela bastidas 478', '', '', 'secretaria', '1987-12-12', '2010-06-23', '0', 's');
INSERT INTO `padre` VALUES (12, 'Salazar Coronel ', 'Lucia', 'Av san marcos 788', '', '', 'psicologa', '1980-12-25', '2010-06-23', '0', 's');
INSERT INTO `padre` VALUES (13, 'Olivos Reyna', 'Carmen', 'Los jardines 78989', '', '', 'dentista', '1988-04-04', '2010-06-23', '0', 's');
INSERT INTO `padre` VALUES (14, 'Pe', 'Julio Cesar', 'Av ramon castillo 788', '', '', 'doctora', '1974-11-14', '2010-06-23', '1', 'c');
INSERT INTO `padre` VALUES (15, 'Santamaria Santisteban ', 'Glen', 'San luis 789', '', '', 'ama de casa', '1985-12-12', '2010-06-23', '0', 'd');
INSERT INTO `padre` VALUES (16, 'Vigo Torres', 'Juan Ricardo', 'Mariscales 741', '', '', 'mecanico', '1963-10-10', '2010-06-23', '1', 's');
INSERT INTO `padre` VALUES (17, 'Yafac Reque ', 'Jaime Alonso', 'Buenavista 162', '', '', 'doctor', '1987-11-11', '2010-06-23', '1', 's');
INSERT INTO `padre` VALUES (18, 'Tarrillo  Villar', 'Araceli', 'Miraflores s/n', '', '', 'ama de casa', '1984-05-11', '2010-06-23', '0', 's');
INSERT INTO `padre` VALUES (19, 'Barrantes Llontop', 'Sandy', 'Nuevo mancora 477', '', '', 'Profesor', '1980-12-12', '2010-06-23', '0', 'd');
INSERT INTO `padre` VALUES (20, 'Mego Ruiz ', 'Karina Araceli', 'Los pinos 785', '', '', 'ing  mecanico', '1981-10-10', '2010-06-23', '0', 'd');
INSERT INTO `padre` VALUES (21, 'Sialer Paico', 'Cesar Antonio', 'Pedro ruiz 123', '', '', 'chofer', '1987-01-12', '2010-06-23', '1', 's');
INSERT INTO `padre` VALUES (22, 'Reyes Peralta', 'Maria Del Pilar', 'Francisco ugaz 852', '', '', 'ama de casa', '1964-03-03', '2010-06-23', '0', 'c');
INSERT INTO `padre` VALUES (23, 'More Chavez', 'Jorge Daniel', 'Salaverry 454', '', '', 'padre de familia', '1986-10-10', '2010-06-23', '1', 's');
INSERT INTO `padre` VALUES (24, 'Vilca Ramos', 'Juan Perci', 'Av salaverry 100', '', '', 'docente', '1987-10-10', '2010-06-23', '1', 'c');
INSERT INTO `padre` VALUES (25, 'Barrantes Suarez', 'Flor Esdras', 'Av luis gonsales', '', '', 'Ama de casa', '1941-10-11', '2010-06-23', '0', 's');
INSERT INTO `padre` VALUES (26, 'Sialer Callao', 'Daniel Cesar', 'Legui 788', '', '', 'mecanico', '1987-10-10', '2010-06-23', '1', 'c');
INSERT INTO `padre` VALUES (27, 'Alvarez Paredes', 'Susan Iris', 'Junin 551', '(44)-504463', '978803181', 'ama de casa', '1975-02-22', '2010-06-23', '0', 'c');
INSERT INTO `padre` VALUES (28, 'Alvarado Mendieta', 'Susana', 'Balta 6324', '(74)-226354', '', 'enfermera', '1970-05-12', '2010-06-23', '0', 's');
INSERT INTO `padre` VALUES (29, 'Baldera Fanante', 'Wilder Jonathan', 'Eliguias aguirre 123', '(44)-641245', '', 'chofer', '1977-06-14', '2010-06-23', '1', 'd');
INSERT INTO `padre` VALUES (30, 'Baldera Tunga', 'Elvis Daniel', 'Juan pablo 1545', '(74)-256348', '', 'obrero', '1974-06-11', '2010-06-23', '1', 'c');
INSERT INTO `padre` VALUES (31, 'Bances Acosta', 'Dalila Elizabeth', 'Jr. primavera', '(44)-454888', '', 'ama de casa', '1969-11-30', '2010-06-23', '0', 'c');
INSERT INTO `padre` VALUES (32, 'Bances Atencio', 'Franklyn Zoriano', 'Av. balta 650', '(74)-365626', '', 'dise?adora', '1965-06-25', '2010-06-23', '1', 'c');
INSERT INTO `padre` VALUES (33, 'Bances Rosado', 'Jorge Luis Elmer', 'Ca. la mar 167-santa victoria', '(74)-356645', '', 'doctor', '1964-05-13', '2010-06-23', '1', 's');
INSERT INTO `padre` VALUES (34, 'Bravo Chacon', 'Katherine', 'Ca. brasil 145', '(74)-268989', '', 'ama de casa', '1963-06-11', '2010-06-23', '0', 'c');
INSERT INTO `padre` VALUES (35, 'Burga Ipanaque', 'Eric Segundo', 'Jr. manuel pardo', '(74)-236896', '', 'doctor', '1962-07-15', '2010-06-23', '1', 'c');
INSERT INTO `padre` VALUES (36, 'Burga Jimenez', 'Mirian Margot', 'Ca. uruguay 154', '(74)-256845', '', 'vendedora ', '1960-05-14', '2010-06-23', '0', 'c');
INSERT INTO `padre` VALUES (37, 'Calderon Gil', 'Elsa Estefani', 'Jr.prieto 452', '(74)-454544', '', 'spicologa', '1961-05-06', '2010-06-23', '0', 'c');
INSERT INTO `padre` VALUES (38, 'Calderon Ramirez', 'Sandra', 'Ca. roma 632', '', '', 'adminitrador', '1961-05-13', '2010-06-23', '0', 'c');
INSERT INTO `padre` VALUES (39, 'Carrero Cerro', 'Anjello Andre', 'Av.libertad 234-santa victoria', '', '', 'abogado', '1959-05-16', '2010-06-23', '1', 'd');
INSERT INTO `padre` VALUES (40, 'Chancafe Zarpan', 'Jonny Eduardo', 'Av.balta 650', '', '', 'psicologo', '1959-05-16', '2010-06-24', '1', 'c');
INSERT INTO `padre` VALUES (41, 'Chen Ni', 'Jose Luis', 'Av. balta 478', '', '', 'obrero', '1959-06-12', '2010-06-24', '1', 's');
INSERT INTO `padre` VALUES (42, 'Chumioque Lisboa', 'Nora Elva', 'Psje. los olivos 457', '', '', 'ingeniera', '1962-01-03', '2010-06-24', '0', 'c');
INSERT INTO `padre` VALUES (43, 'Corcuera Jimenez ', 'Neiber', 'Ca. san martin 1478', '(74)-654524', '', 'farmaceutico', '1967-04-09', '2010-06-24', '1', 'c');
INSERT INTO `padre` VALUES (44, 'Cruz Malca', 'Jhonathan Michael', 'Ca.argentina 145', '', '', 'profesora', '1961-12-15', '2010-06-24', '1', 'c');
INSERT INTO `padre` VALUES (45, 'Del Pilar Ino', 'Damian', 'Ca. las palmeras154', '', '', 'abogado', '1964-04-13', '2010-06-24', '1', 'c');
INSERT INTO `padre` VALUES (46, 'De La Cruz Montalvan', 'Alex Armando', 'Jr.tumac amaru 122', '', '', 'ingenieroq', '1961-07-14', '2010-06-24', '1', 'c');
INSERT INTO `padre` VALUES (47, 'Del Aguila Sheen', 'Enrique Jose', 'Ca. atahualpa 862', '', '', 'jardineo', '1961-10-12', '2010-06-24', '1', 'c');
INSERT INTO `padre` VALUES (48, 'Diaz Heredia', 'Angelica Hermila', 'Jr.brasil 128', '', '', 'ama de casa', '1961-06-10', '2010-06-24', '0', 'c');
INSERT INTO `padre` VALUES (49, 'Diaz Otarola', 'Joel Antonio', 'Ca. mijares 565', '', '', 'terapeuta', '1962-05-28', '2010-06-24', '1', 'c');
INSERT INTO `padre` VALUES (50, 'Fiestas Nieto', 'Max Raul', 'Ca. maria izaga 148', '', '', 'chofer ', '1974-05-12', '2010-06-24', '1', 'd');
INSERT INTO `padre` VALUES (51, 'Flores Silva ', 'Arcadio Jose', 'Av.balta 145', '(73)-548485', '', 'abogado', '1961-04-01', '2010-06-24', '1', 'c');
INSERT INTO `padre` VALUES (52, 'Galan Salazar', 'Pablo Cecilio', 'Ca.san juan1488', '(73)-445458', '', 'agricultor', '1962-03-13', '2010-06-24', '1', 's');
INSERT INTO `padre` VALUES (53, 'Gil Fiestas ', 'Yulissa Vanessa', 'Jr.union 698', '(73)-487444', '', 'ni?era', '1962-11-12', '2010-06-24', '0', 'c');
INSERT INTO `padre` VALUES (54, 'Gonzales Jimenez ', 'Duberli', 'Ca. san sebastian 454', '', '', 'chofer', '1958-01-01', '2010-06-24', '1', 'c');
INSERT INTO `padre` VALUES (55, 'Goicochea Burgos', 'Marlon', 'Ca. san pablo 444', '', '', 'pescador', '1966-12-12', '2010-06-24', '1', 'c');
INSERT INTO `padre` VALUES (56, 'Guzman Lopez', 'Maria Alejandra', 'A.union 777', '(73)-685689', '964785487', 'abogada', '1968-12-01', '2010-06-24', '0', 'c');
INSERT INTO `padre` VALUES (57, 'Herrera Perez', 'Cinthia Janina', 'Urb. los rosales 1245', '(73)-455487', '964857578', 'ingeniera civil', '1962-01-01', '2010-06-24', '0', 'd');
INSERT INTO `padre` VALUES (58, 'Ipanaque Flores', 'Hansen Richelmi', 'Urb.los pinos de la plata 147', '(73)-649848', '964875525', 'ingeniero', '1960-11-12', '2010-06-24', '1', 'c');
INSERT INTO `padre` VALUES (59, 'Jauregui Seclen', 'Mario Bruno', 'Urb. la primera 232', '(73)-545484', '965558777', 'profesor', '1958-03-03', '2010-06-24', '1', 'c');
INSERT INTO `padre` VALUES (60, 'Larreatigue Solorzano', 'Javier Andre', 'Ca. roma 114', '', '', 'obrero', '1950-05-05', '2010-06-24', '1', 'c');
INSERT INTO `padre` VALUES (61, 'Ayesta Gil', 'Alejandra', 'Av martin waiss 123', '(73)-585858', '', 'ing mecanico', '1980-12-12', '2010-06-24', '0', 's');
INSERT INTO `padre` VALUES (62, 'Cajusol Sanchez', 'Daina Elizabeth', 'Loreto 780', '(73)-598888', '', 'ama de casa', '1980-10-10', '2010-06-24', '0', 'c');
INSERT INTO `padre` VALUES (63, 'Campos Monteza', 'Leydy', 'Santa rosa 456', '(73)-596366', '', 'ama de casa', '1977-02-02', '2010-06-24', '0', 'd');
INSERT INTO `padre` VALUES (64, 'Perez Mejia', 'Domingo', 'Lobitos 234', '(73)-852222', '', 'costurera', '1970-05-03', '2010-06-24', '1', 'c');
INSERT INTO `padre` VALUES (65, 'Pisfil Galloso', 'Trinidad Enrique', 'Urb. 6 de febrero', '(73)-842596', '', 'abogada', '1988-07-07', '2010-06-24', '1', 'd');
INSERT INTO `padre` VALUES (66, 'Farro', 'Oswaldo', 'Juan olivera 100', '(73)-232323', '', 'ninguna', '1963-02-20', '2010-06-24', '1', 'd');
INSERT INTO `padre` VALUES (67, 'Chozo Acosta', 'Roberto', 'Santa elena 1477', '(74)-454545', '', 'mototaxista', '1989-10-10', '2010-06-24', '1', 'c');
INSERT INTO `padre` VALUES (68, 'Ramirez Zulueta', 'Maria Raquel', 'San luis 400', '(74)-589555', '', 'ama de casa', '1970-05-22', '2010-06-24', '0', 'd');
INSERT INTO `padre` VALUES (69, 'Solano Rioja ', 'Yarixs', 'Av tumbes 477', '(72)-588888', '', 'ama de casa', '1960-12-12', '2010-06-24', '0', 'd');
INSERT INTO `padre` VALUES (70, 'Rodas Adrianzen', 'Romina ', 'Av los alelies 456', '(73)-895429', '', 'secretaria', '1980-05-21', '2010-06-24', '0', 'd');
INSERT INTO `padre` VALUES (71, 'Angeles Velasquez ', 'Leonardo', 'Av san miguel 747', '', '', 'doctor', '1984-07-10', '2010-06-24', '1', 'd');
INSERT INTO `padre` VALUES (72, 'Capu', 'Walter ', 'Pedro ruiz mz c', '(73)-895555', '', 'ingeniero agricola', '1975-12-12', '2010-06-24', '1', 'd');
INSERT INTO `padre` VALUES (73, 'Baldera  Escobar', 'Nelida Del Pilar', 'Av san marcos 712', '', '', 'profesora', '1983-12-12', '2010-06-24', '0', 'd');
INSERT INTO `padre` VALUES (74, 'Cieza Perez', 'Dayana Mirella', 'Av grau 899', '', '', 'periodista', '1988-04-04', '2010-06-24', '0', 's');
INSERT INTO `padre` VALUES (75, 'Chavez Castro ', 'Alejandro', 'Av san francisco', '(73)-858041', '', 'policia', '1980-05-18', '2010-06-24', '1', 'o');
INSERT INTO `padre` VALUES (76, 'Aleman Ortiz', 'Luis Alberto', 'Barrio leticia', '(73)-489569', '969188838', 'pescador', '1984-01-13', '2010-06-24', '1', 's');
INSERT INTO `padre` VALUES (77, 'Bazan Diaz ', 'Paul', 'Salaverry 450', '(73)-894258', '', 'taxista', '1975-11-11', '2010-06-24', '1', 'o');
INSERT INTO `padre` VALUES (78, 'Chavez Chavez ', 'Angel Luis', 'Micaela bastidas', '', '', 'chofer', '1963-12-19', '2010-06-24', '1', 'd');
INSERT INTO `padre` VALUES (79, 'Castellanos Becerra', 'Alexander ', 'San lorenzo 890', '(73)-841211', '', 'doctor', '1987-12-12', '2010-06-24', '1', 's');
INSERT INTO `padre` VALUES (80, 'Loo Tavara', 'Jerson', 'Los jardines 740', '(72)-895455', '', 'arquitecto', '1969-12-12', '2010-06-24', '1', 'c');
INSERT INTO `padre` VALUES (81, 'Rico Chavez', 'Lidia', 'Tiahuanaco 1697', '', '', 'ama de casa', '1974-04-12', '2010-06-24', '0', 'c');
INSERT INTO `padre` VALUES (82, 'Lopez Sandoval', 'Berlinda', 'Ayacucho 1748', '', '', 'ama de casa', '1973-04-18', '2010-06-24', '0', 'o');
INSERT INTO `padre` VALUES (83, 'Alvaro Rodas ', 'Anali Maria', 'Los robles 124', '', '', 'secretaria', '1972-07-16', '2010-06-24', '0', 'c');
INSERT INTO `padre` VALUES (84, 'Barrantes Villoslada', 'Josefina ', 'Ca. lincol 569', '(73)-284577', '', 'ama de casa', '1971-07-19', '2010-06-24', '0', 'o');
INSERT INTO `padre` VALUES (85, 'Roberto Escobar', 'Gisela', 'Ca. san pedro 187', '', '', 'ama de casa', '1971-01-19', '2010-06-24', '0', 'd');
INSERT INTO `padre` VALUES (86, 'Delgado Diaz', 'Claudia', 'Huascar 120', '', '', 'secrteria', '1972-05-16', '2010-06-24', '0', 'd');
INSERT INTO `padre` VALUES (87, 'Quispe Fernandez', 'Ana Rocio', 'Ca. manuel pardo 1458', '(76)-488454', '', 'abogada', '1971-01-19', '2010-06-24', '0', 'o');
INSERT INTO `padre` VALUES (88, 'Lalangui Carrasco', 'Adela', 'Huascar125', '', '', 'mesera', '1972-06-18', '2010-06-24', '0', 'o');
INSERT INTO `padre` VALUES (89, 'Sandoval Caceres', 'Elita ', 'Huascar 109', '', '', 'secretaria', '1972-04-09', '2010-06-24', '0', 'd');
INSERT INTO `padre` VALUES (90, 'Neira Panduro', 'Jhina ', 'Heroes civiles 778', '', '', 'Doctora', '1970-05-08', '2010-06-24', '0', 'c');
INSERT INTO `padre` VALUES (91, 'Carrion Rojas', 'Flor Del Pilar', 'Arica 877', '', '', 'vendedora', '1970-04-14', '2010-06-24', '0', 'c');
INSERT INTO `padre` VALUES (92, 'Barrantes Aliaga', 'Nora', 'Amazonas 144', '', '', 'ama de casa', '1970-07-18', '2010-06-24', '0', 'c');
INSERT INTO `padre` VALUES (93, 'Chumacedo Ni', 'Marisela ', 'Amazonas 145', '(76)-245424', '', 'enfermera', '1970-02-11', '2010-06-24', '0', 'd');
INSERT INTO `padre` VALUES (94, 'Aguinaga Ayen', 'Mary Elizabeth', 'Amazonas 148', '(76)-212454', '', 'ama de casa', '1973-01-01', '2010-06-24', '0', 'c');
INSERT INTO `padre` VALUES (95, 'Alarcon Malaver', 'Carloman', 'Los algarobos 478', '', '', 'Ing de sistemas', '1980-07-07', '2010-06-25', '1', 'c');
INSERT INTO `padre` VALUES (96, 'Carrasco Ticliahuanca', 'Mercedes Gisela', 'Los claveles 700', '', '', 'Profesora', '1961-08-07', '2010-06-25', '0', 'c');
INSERT INTO `padre` VALUES (97, 'Cortez Romero', 'Brenda Maria', 'Manuel soani', '', '', 'Profesora', '1961-08-17', '2010-06-25', '0', 'd');
INSERT INTO `padre` VALUES (98, 'Diaz Montero ', 'Yerly Lisvani', 'Demetrio acosta 474', '', '', 'Ama de casa', '1961-08-07', '2010-06-25', '0', 'o');
INSERT INTO `padre` VALUES (99, 'Guevara Rodriguez ', 'Julia Nery', 'Romon castilla 785', '', '', 'Doctora', '1961-08-18', '2010-06-25', '0', 's');
INSERT INTO `padre` VALUES (100, 'Horna Perez', 'Rosa Maribel', 'Lora y lora 123', '', '', 'Dentist', '1961-08-19', '2010-06-25', '0', 's');
INSERT INTO `padre` VALUES (101, 'Huaman Reyes', 'Rosa Maribel', 'Grau 184', '(73)-525200', '', 'Enfermera', '1961-08-20', '2010-06-25', '0', 'd');
INSERT INTO `padre` VALUES (102, 'Huancas Quiroz', 'Diana Anali', 'Mariscal caceres 852', '', '', 'Contadora', '1961-09-17', '2010-06-25', '0', 'o');
INSERT INTO `padre` VALUES (103, 'Mateo Nazario ', 'Milagros', 'Santa rosa 478', '', '', 'Dentista', '1961-09-13', '2010-06-25', '0', 'd');
INSERT INTO `padre` VALUES (104, 'Nazario Nazario ', 'Ketherine ', 'San miguel 769', '', '', 'Ama de casa', '1961-09-11', '2010-06-25', '0', 'o');
INSERT INTO `padre` VALUES (105, 'Paredes Ignacio', 'Diana Di Lorena', 'Santa victoria 428', '', '', 'Enfermera', '1961-09-17', '2010-06-25', '0', 'c');
INSERT INTO `padre` VALUES (106, 'Quesquen Carrillo', 'Joysi', 'Suton 758', '', '', 'Abogada', '1959-05-10', '2010-06-25', '0', 'c');
INSERT INTO `padre` VALUES (107, 'Quesquen Chozo ', 'Carmen  Loydi', 'La marina 1745', '', '', 'Ama de casa', '1987-05-11', '2010-06-25', '0', 'c');
INSERT INTO `padre` VALUES (108, 'Sanchez Sanchez ', 'Katherin Yanely', 'Nuevo mancora s/n', '', '', 'Abogada', '1961-12-12', '2010-06-25', '0', 'c');
INSERT INTO `padre` VALUES (109, 'Sanchez Perez ', 'Maria Consuelo', 'Alfonso ugarte 478', '', '', 'Doctora ', '1980-12-12', '2010-06-25', '0', 'o');
INSERT INTO `padre` VALUES (110, 'Santacruz Mateo ', 'Gabriela', 'Residencial el carmen 450', '', '', 'Administradora', '1987-07-07', '2010-06-25', '0', 's');
INSERT INTO `padre` VALUES (111, 'Santiesteban Bances ', 'Deysi Roxana ', 'San juan de asis 769', '(73)-263305', '', 'Ama de casa', '1983-09-30', '2010-06-25', '0', 'c');
INSERT INTO `padre` VALUES (112, 'Alamo Garcia ', 'Marcia ', 'Francisco ugaz 117', '', '', 'Ama de casa', '1987-08-18', '2010-06-25', '0', 'o');
INSERT INTO `padre` VALUES (113, 'Plasencia Rodas', 'Juan Guillermo', 'Av. Mama Ocllo 758', '(74)-265547', '9785625', 'Fuerza area del Peru', '1965-09-11', '2010-06-25', '1', 'c');
INSERT INTO `padre` VALUES (114, 'Granados Vasquez', 'Juan Luis', 'Mariscal caseres ', '', '', 'Ing de sistemas', '1965-12-17', '2010-06-25', '1', 'c');
INSERT INTO `padre` VALUES (115, 'Heredia Cercado ', 'Jose Alnibal', 'Talara 400', '', '', 'Ing mecanico', '1940-10-10', '2010-06-25', '1', 'c');
INSERT INTO `padre` VALUES (116, 'Hernandez Callirgos', 'Jhony Isai', 'Roma 896', '', '', 'Chofer', '1945-11-12', '2010-06-25', '1', 'd');
INSERT INTO `padre` VALUES (117, 'Jauregui  Seclen ', 'Mario Franco', 'Av grau 700', '', '', 'Ing agricola', '1986-12-23', '2010-06-25', '1', 'c');
INSERT INTO `padre` VALUES (118, 'Llenque Muro ', 'Juan Bernaldo', 'Ca. lobitos 567', '', '', 'Tecnico en computacion', '1973-12-28', '2010-06-25', '1', 'd');
INSERT INTO `padre` VALUES (119, 'Lozano Olano', 'Victor Enrique', 'Martin waiss 120', '', '', 'Chofer', '1970-12-17', '2010-06-25', '1', 'c');
INSERT INTO `padre` VALUES (120, 'Lozano Victoriano ', 'Luis Eduardo', 'Santa rosa 744', '', '', 'Chofer', '1978-04-24', '2010-06-25', '1', 'd');
INSERT INTO `padre` VALUES (121, 'Malca Hernandez ', 'Omar Strip', 'Jardines de la paz 800', '', '', 'Doctor', '1970-12-29', '2010-06-25', '1', 'c');
INSERT INTO `padre` VALUES (122, 'Marinez Bonilla', 'Daniel', 'Micael bastidas 566', '', '', 'Doctor', '1987-12-28', '2010-06-25', '1', 'c');
INSERT INTO `padre` VALUES (123, 'Mundaca Guerra', 'Gimi Paolo', 'Micael bastidas 800', '', '', 'Chofer', '1951-10-23', '2010-06-25', '1', 'd');
INSERT INTO `padre` VALUES (124, 'Oca', 'Leonardo', 'Micaela bastidas 858', '', '', 'Cantante', '1975-08-24', '2010-06-25', '1', 'o');
INSERT INTO `padre` VALUES (125, 'Ojeda Laboriano', 'Carlos Ivan', 'Nuevo mancora 7841', '', '968755888', 'Ing. indutrial', '1981-01-01', '2010-06-25', '1', 'o');
INSERT INTO `padre` VALUES (126, 'Perez Carrasco ', 'Omar Luis', 'Ca. tumbes 569', '(73)-589666', '', 'Ing agronomo', '1987-12-12', '2010-06-25', '1', 'c');
INSERT INTO `padre` VALUES (127, 'Perez Mazabel', 'Cristhian ', 'Barrio leticia', '', '', 'Taxista', '1964-02-02', '2010-06-25', '1', 'o');
INSERT INTO `padre` VALUES (128, 'Quiroz Diaz', 'Javier ', 'La victoria 854', '', '', 'Taxista', '1964-11-29', '2010-06-25', '1', 'd');
INSERT INTO `padre` VALUES (129, 'Rubio Cruzado ', 'Wilmer', 'Ca. argentina 456', '', '', 'Taxista', '1985-09-19', '2010-06-25', '1', 'd');
INSERT INTO `padre` VALUES (130, 'Coronel Salazar', 'Dante', 'Perdro ruiz 434', '', '', 'Estadistico', '1970-12-12', '2010-06-25', '1', 'd');
INSERT INTO `padre` VALUES (131, 'Garcia Sandoval', 'Marisol', 'Demetrio acosta 147', '(74)-859632', '', 'Ama de casa', '1979-12-31', '2010-06-25', '0', 'c');
INSERT INTO `padre` VALUES (132, 'Sandoval Guitierres', 'Pilar Soledad', 'San martin 780', '', '', 'Ama de casa', '1975-07-14', '2010-06-25', '0', 's');
INSERT INTO `padre` VALUES (133, 'Carrion Santa Cruz', 'Mario Eugenio', 'Los incas 118', '(76)-145487', '', 'Abogado', '1974-08-22', '2010-06-25', '1', 'c');
INSERT INTO `padre` VALUES (134, 'Barrantes Ojeda', 'Ramon Elias', 'Arica 5658', '(76)-125544', '', 'Licenciado', '1969-09-12', '2010-06-25', '1', 'c');
INSERT INTO `padre` VALUES (135, 'Ku Escobar', 'Fredy', 'Amazonas 156', '', '', 'Chofer', '1969-05-13', '2010-06-25', '1', 'c');
INSERT INTO `padre` VALUES (136, 'Lalangui  Montalvez', 'Robert', 'Los robles 129', '(76)-154889', '', 'Abogado', '1961-08-28', '2010-06-25', '1', 'c');
INSERT INTO `padre` VALUES (137, 'Quispe Hernandez', 'Manuel Antonio', 'Balta 448', '(76)-478978', '', 'Profesor', '1955-06-23', '2010-06-25', '1', 'd');
INSERT INTO `padre` VALUES (138, 'Paucar Caceda', 'Damian ', 'Roma 888', '', '', 'Jardinero', '1971-08-26', '2010-06-25', '1', 'c');
INSERT INTO `padre` VALUES (139, 'Rodas Puluche', 'Juan Jose', 'Los pinos', '(76)-157878', '', 'Ingeniero civil', '1968-09-23', '2010-06-25', '1', 'c');
INSERT INTO `padre` VALUES (140, 'Carrion Delgado', 'Pablo Jose', 'Arica 5611', '(76)-256887', '', 'Vendedor', '1967-09-18', '2010-06-25', '1', 'o');
INSERT INTO `padre` VALUES (141, 'Santiesteban Plaza', 'Santiago', 'Arica 589', '(76)-258887', '', 'Dentista', '1970-09-14', '2010-06-25', '1', 'o');
INSERT INTO `padre` VALUES (142, 'Tejada Paulet', 'Antonieta', 'Luis gonzales 178', '(76)-154899', '', 'Vendedora', '1974-09-13', '2010-06-25', '0', 'c');
INSERT INTO `padre` VALUES (143, 'Gonzales Prada', 'Dina', 'Balta 487', '(76)-254779', '', 'Enfermera', '1975-09-15', '2010-06-25', '0', 'o');
INSERT INTO `padre` VALUES (144, 'Tirado Timoteo', 'Norma', 'Ca. lincol 187', '', '', 'Ama de casa', '1972-08-26', '2010-06-25', '0', 'o');
INSERT INTO `padre` VALUES (145, 'Peralta Pulluche', 'Erika', 'Ca. manuel pardo 1444', '(76)-157873', '', 'Abogada', '1969-08-03', '2010-06-25', '0', 'c');
INSERT INTO `padre` VALUES (146, 'Vargas Namuchi', 'Anais', 'Ca. san pedro 189', '(76)-158997', '', 'Ama de casa', '1971-09-15', '2010-06-25', '0', 'o');
INSERT INTO `padre` VALUES (147, 'Gil Goicochea', 'Cinthia Doris', '9 de octubre 236', '(76)-259841', '', 'Secretaria', '1976-08-08', '2010-06-25', '0', 'c');
INSERT INTO `padre` VALUES (148, 'Gomez Martinez', 'Shirley Rosa', 'Av. Miguel Grau 125', '(76)-847854', '', 'Secretaria', '1977-08-15', '2010-06-25', '0', 'c');
INSERT INTO `padre` VALUES (149, 'Romero Murillo', 'Lucy Maribel', 'Jr. junin 145', '(76)-358887', '', 'Psicologa', '1973-08-08', '2010-06-25', '0', 'c');
INSERT INTO `padre` VALUES (150, 'Martinez Ramirez', 'Lila Viky', 'Av. Miguel Grau 128', '(76)-258985', '', 'Ama de casa', '1975-09-07', '2010-06-25', '0', 'o');
INSERT INTO `padre` VALUES (151, 'Julca Alarcon', 'Maria Josefina', 'Ca. piura #4090', '(72)-895612', '968421585', 'Ama de casa', '1980-09-10', '2010-06-27', '0', 'o');
INSERT INTO `padre` VALUES (152, 'Alzamora Rioja', 'Carlos', 'Av grau #100', '(73)-252878', '', 'Chofer', '1980-12-12', '2010-07-02', '1', 'd');
INSERT INTO `padre` VALUES (153, 'Arca Chunga', 'Juanita', 'Av grau 185', '', '', 'Ama de casa ', '1980-10-18', '2010-07-02', '0', 'o');
INSERT INTO `padre` VALUES (154, 'Julca Ruiz', 'Eduardo', 'Av ramon castilla #154', '(73)-895214', '', 'Ing. sistemas', '1974-12-18', '2010-07-02', '1', 'c');
INSERT INTO `padre` VALUES (155, 'Ruiz Nizama', 'Mirela', 'Av santa elena # 6778', '(73)-895624', '', 'Ama de casa', '1980-10-20', '2010-07-02', '0', 'o');
INSERT INTO `padre` VALUES (156, 'Vilchez Amaya', 'Oscar', 'Ca. santa rosa #1482', '(73)-589641', '', 'Enfermero', '1974-10-25', '2010-07-02', '1', 'c');
INSERT INTO `padre` VALUES (157, 'Santa Cruz', 'Salatiel', 'Urb. 6 defebrero MZ C', '', '96858588', 'Dentista', '1980-01-01', '2010-07-02', '1', 'c');
INSERT INTO `padre` VALUES (158, 'Pe', 'Paola', 'Calle buena vista # 1478', '', '', 'Doctor', '1975-12-28', '2010-07-02', '0', 'c');
INSERT INTO `padre` VALUES (159, 'Aguirre Soriano', 'Marisol', 'Av grau # 158', '', '', 'Ama de casa', '1975-12-30', '2010-07-02', '0', 'c');
INSERT INTO `padre` VALUES (160, 'Pe', 'Carloman', 'Alfonso ugarte', '', '', 'Ing electronico', '1970-09-12', '2010-07-03', '1', 'c');
INSERT INTO `padre` VALUES (161, 'Yopo Tavara', 'Margo', 'Ca. lobitos ', '', '', 'Ama de casa', '1975-10-15', '2010-07-03', '0', 'c');
INSERT INTO `padre` VALUES (162, 'Santiago Santos', 'Marcos', 'Romas 890', '(76)-235648', '973265689', 'Chofer', '1970-08-26', '2010-07-07', '1', 'c');
INSERT INTO `padre` VALUES (163, 'Perez Chamuco', 'Luz Mar', 'Roma 684', '(76)-269254', '975522154', 'Ama de casa', '1971-09-04', '2010-07-07', '0', 'c');
INSERT INTO `padre` VALUES (164, 'Zarate Samora ', 'Jorge', 'Av grau 889', '', '', 'Carpintero', '1977-12-10', '2010-07-07', '1', 'c');
INSERT INTO `padre` VALUES (165, 'Mari', 'Micaela', 'Lobitos 345', '', '', 'Ama de casa', '1988-10-18', '2010-07-07', '0', 'c');
INSERT INTO `padre` VALUES (166, 'Zapata Qui', 'Luis', 'Los alpes 1744', '', '', 'Desempleado', '1970-02-02', '2010-07-07', '1', 'c');
INSERT INTO `padre` VALUES (167, 'Amaya Soto', 'Juanita', 'Ca. talara 1000', '', '', 'Ama de casa', '1970-10-18', '2010-07-07', '0', 'c');
INSERT INTO `padre` VALUES (168, 'Quiroz Gamarra', 'Elmer', 'Progreso 1889', '(96)-256344', '', 'Chofer', '1969-08-12', '2010-07-08', '1', 'c');
INSERT INTO `padre` VALUES (169, 'Suarez Ramirez', 'Lidea', 'Progreso 1889', '(96)-225488', '', 'Ama de casa', '1971-07-18', '2010-07-08', '0', 'c');
INSERT INTO `padre` VALUES (170, 'Lozano Rodas ', 'Juan', 'Roma650', '(73)-448785', '', 'Policia', '1971-09-24', '2010-07-11', '1', 'c');
INSERT INTO `padre` VALUES (171, 'Rodas Suarez', 'Elizabeth', 'Roma650', '(73)-254687', '', 'Ama de casa', '1970-08-12', '2010-07-11', '0', 'c');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `pagina`
-- 

CREATE TABLE `pagina` (
  `idpagina` int(11) NOT NULL auto_increment,
  `referencia` int(11) default NULL,
  `idventana` int(11) NOT NULL,
  `descripcion` varchar(100) collate utf8_spanish2_ci NOT NULL,
  `titulo` varchar(30) collate utf8_spanish2_ci NOT NULL,
  `url` text collate utf8_spanish2_ci NOT NULL,
  `icono` varchar(30) collate utf8_spanish2_ci NOT NULL,
  `muestra` char(1) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`idpagina`),
  KEY `pagina_FKIndex1` (`idventana`),
  KEY `pagina_FKIndex2` (`referencia`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=51 ;

-- 
-- Volcar la base de datos para la tabla `pagina`
-- 

INSERT INTO `pagina` VALUES (1, NULL, 1, 'Listado de alumnos', 'Listado', 'lista_alumno.php', 'lista.png', '1');
INSERT INTO `pagina` VALUES (2, NULL, 1, 'Registro de nuevo alumno', 'Nuevo', 'nuevo_alumno.php', 'nuevo.png', '1');
INSERT INTO `pagina` VALUES (3, 1, 1, 'Actualizacion de datos del alumno', 'Actualizar', 'actualiza_alumno.php', 'actualiza.png', '0');
INSERT INTO `pagina` VALUES (4, 1, 1, 'Listado de matriculas del alumno', 'Matriculas', 'lista_matricula.php', 'historia.png', '0');
INSERT INTO `pagina` VALUES (5, 4, 1, 'Listado de pagos del alumno', 'Pagos', 'lista_pagos_alumno.php', 'dinero.png', '0');
INSERT INTO `pagina` VALUES (6, 4, 1, 'Listado de notas del alumno', 'Notas', 'lista_notas_alumno.php', 'nota.png', '0');
INSERT INTO `pagina` VALUES (7, 4, 1, 'Detalle de documentos de pago', 'Recibos', 'lista_documentos_pago.php', 'detalles.png', '0');
INSERT INTO `pagina` VALUES (8, NULL, 2, 'Listado de padres y/o apoderados', 'Listado', 'lista_padre.php', 'lista.png', '1');
INSERT INTO `pagina` VALUES (9, NULL, 2, 'Registro de padres y/o apoderados', 'Nuevo', 'nuevo_padre.php', 'nuevo.png', '1');
INSERT INTO `pagina` VALUES (10, 8, 2, 'Actualizacion de datos de padres', 'Actualizar', 'actualiza_padre.php', 'actualiza.png', '0');
INSERT INTO `pagina` VALUES (11, 8, 2, 'Relacion de alumnos por padre', 'Hijos', 'hijos_padre.php', 'hijos.png', '0');
INSERT INTO `pagina` VALUES (12, NULL, 3, 'Listado de curriculas', 'Curricula', 'lista_curricula.php', 'curricula.png', '1');
INSERT INTO `pagina` VALUES (13, NULL, 3, 'Nueva curricula', 'N Curricula', 'nueva_curricula.php', 'nuevo.png', '1');
INSERT INTO `pagina` VALUES (14, 12, 3, 'Actualiza curricula', 'Actualiza', 'actualiza_curricula.php', 'actualiza.png', '0');
INSERT INTO `pagina` VALUES (15, 12, 3, 'Cursos por curricula', 'Cursos', 'lista_cursos.php', 'libro1.png', '0');
INSERT INTO `pagina` VALUES (16, 12, 3, 'Grupos por curricula', 'Grupos', 'lista_grupo.php', 'seccion.png', '0');
INSERT INTO `pagina` VALUES (17, 12, 3, 'Nuevo grupo', 'Nuevo', 'nuevo_grupo.php', 'ngrupo.png', '0');
INSERT INTO `pagina` VALUES (18, 16, 3, 'Actualizar grupo', 'Actualizar', 'actualiza_grupo.php', 'actualiza.png', '0');
INSERT INTO `pagina` VALUES (19, 16, 3, 'Listado de alumnos', 'Listado', 'listado_alumnos_grupo.php', 'lista1.png', '0');
INSERT INTO `pagina` VALUES (20, 4, 1, 'Descuento para alumno', 'Descuentos', 'descuento_alumno.php', 'descuento.png', '0');
INSERT INTO `pagina` VALUES (21, 16, 3, 'Asignacion de docentes a cursos', 'Docentes', 'docentes_cursos.php', 'docente.png', '0');
INSERT INTO `pagina` VALUES (22, 16, 3, 'Asignacion de horarios a cursos', 'Horarios', 'horarios_cursos.php', 'horario.png', '0');
INSERT INTO `pagina` VALUES (23, NULL, 7, 'Relacion de usuarios', 'Accesos', 'usuarios_sistema.php', 'usuario.png', '1');
INSERT INTO `pagina` VALUES (24, 23, 7, 'Accesos al sistema', 'Usuarios', 'acceso_usuarios.php', 'acceso.png', '0');
INSERT INTO `pagina` VALUES (25, 24, 7, 'Gestion de usuarios', 'Gestion', 'gestion_usuarios.php', 'nodo.png', '0');
INSERT INTO `pagina` VALUES (26, 24, 7, 'Actualizacion clave de usuarios', 'Clave', 'clave_usuario.php', 'clave.png', '0');
INSERT INTO `pagina` VALUES (27, NULL, 7, 'Registro de nuevo usuario', 'Registro', 'nuevo_usuario.php', 'nuevousu.png', '1');
INSERT INTO `pagina` VALUES (28, NULL, 5, 'Registro de pago', 'Pagos', 'realiza_pago.php', 'pago.png', '1');
INSERT INTO `pagina` VALUES (29, NULL, 9, 'Listado de areas', 'Listado', 'lista_areas_mis.php', 'lista.png', '1');
INSERT INTO `pagina` VALUES (30, NULL, 9, 'Registro de nueva area', 'N Area', 'nuevo_areas_mis.php', 'libroadd.png', '1');
INSERT INTO `pagina` VALUES (31, 29, 9, 'Actualizacion datos de area', 'A Area', 'actualiza_areas_mis.php', 'libroact.png', '0');
INSERT INTO `pagina` VALUES (32, NULL, 8, 'Relacion de personal', 'Listado', 'lista_personal_mis.php', 'lista.png', '1');
INSERT INTO `pagina` VALUES (33, NULL, 8, 'Nuevo personal', 'N Personal', 'nuevo_personal_mis.php', 'personaladd.png', '1');
INSERT INTO `pagina` VALUES (34, 32, 8, 'Actualizacion de personal', 'A Personal', 'actualiza_personal_mis.php', 'actualiza.png', '0');
INSERT INTO `pagina` VALUES (35, NULL, 5, 'Proceso de Matricula', 'Inscripcion', 'realiza_matricula.php', 'matricula1.png', '1');
INSERT INTO `pagina` VALUES (36, 4, 1, 'Anular proceso academico', 'Anular', '', 'cancelar.png', '0');
INSERT INTO `pagina` VALUES (37, 6, 1, 'Remplaza nota desaprobada', 'Cur Verano', 'listado_curso_recuperatorio.php', 'busca1.png', '0');
INSERT INTO `pagina` VALUES (38, 28, 5, 'Anular documento de pago', 'Anular', '', 'cancelar.png', '0');
INSERT INTO `pagina` VALUES (39, 16, 3, 'Listado de reportes', 'Reportes', 'reportes_grupo.php', 'impresora.png', '0');
INSERT INTO `pagina` VALUES (40, 16, 3, 'Finalizar proceso', 'Finalizar', '', 'final.png', '0');
INSERT INTO `pagina` VALUES (41, 28, 5, 'Imprime documento pago', 'Imprime', '', 'impresora.png', '0');
INSERT INTO `pagina` VALUES (42, 32, 8, 'Especializacion de docente', 'Especializ.', 'docente_especializacion.php', 'folser.png', '0');
INSERT INTO `pagina` VALUES (43, 29, 9, 'Listado de cursos', 'Cursos', 'lista_cursos_mis.php', 'libro2.png', '0');
INSERT INTO `pagina` VALUES (44, 29, 9, 'Nuevo curso', 'N Curso', 'nuevo_curso_mis.php', 'bookadd.png', '0');
INSERT INTO `pagina` VALUES (45, 43, 9, 'Actualizar curso', 'A Curso', 'actualiza_curso_mis.php', 'libro3.png', '0');
INSERT INTO `pagina` VALUES (46, 42, 8, 'Asignar especialidad', 'N Especiali', 'asignar_especiallidad.php', 'vacio.png', '0');
INSERT INTO `pagina` VALUES (47, 42, 8, 'Eliminar especialidad', 'Eliminar', '', 'borrar.png', '0');
INSERT INTO `pagina` VALUES (48, NULL, 6, 'Montos de caja', 'Detalles', 'caja_chica.php', 'report.png', '1');
INSERT INTO `pagina` VALUES (49, 1, 1, 'Listado de notas generales', 'R Notas', 'lista_notas_generales.php', 'lnotas.png', '0');
INSERT INTO `pagina` VALUES (50, NULL, 6, 'Busqueda Documentos', 'Document', 'listado_documento.php', 'factura.png', '1');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `pais`
-- 

CREATE TABLE `pais` (
  `idpais` int(11) NOT NULL auto_increment,
  `pais` varchar(30) collate utf8_spanish2_ci default NULL,
  PRIMARY KEY  (`idpais`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `pais`
-- 

INSERT INTO `pais` VALUES (1, 'Peru');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `parentesco`
-- 

CREATE TABLE `parentesco` (
  `idparentesco` int(11) NOT NULL auto_increment,
  `idpadre` int(11) NOT NULL,
  `idalumno` int(11) NOT NULL,
  `fecreg` date NOT NULL,
  `padre` char(1) collate utf8_spanish2_ci NOT NULL,
  `apoderado` tinyint(1) NOT NULL,
  PRIMARY KEY  (`idparentesco`),
  KEY `parentesco_FKIndex1` (`idalumno`),
  KEY `parentesco_FKIndex2` (`idpadre`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=185 ;

-- 
-- Volcar la base de datos para la tabla `parentesco`
-- 

INSERT INTO `parentesco` VALUES (1, 1, 1, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (2, 94, 1, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (3, 2, 2, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (4, 112, 2, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (5, 95, 3, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (6, 28, 3, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (7, 76, 4, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (8, 27, 4, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (9, 71, 5, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (10, 83, 5, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (11, 29, 6, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (12, 61, 6, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (13, 30, 7, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (14, 73, 7, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (15, 32, 8, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (16, 31, 8, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (17, 33, 9, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (18, 92, 9, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (19, 134, 10, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (20, 19, 10, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (21, 77, 11, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (22, 84, 11, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (23, 77, 12, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (24, 25, 12, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (25, 35, 13, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (26, 34, 13, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (27, 72, 14, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (28, 36, 14, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (29, 39, 15, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (30, 62, 15, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (31, 140, 16, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (32, 37, 16, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (33, 133, 17, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (34, 38, 17, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (35, 79, 18, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (36, 63, 18, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (37, 40, 19, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (38, 96, 19, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (39, 75, 20, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (40, 91, 20, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (41, 78, 21, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (42, 93, 21, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (43, 41, 22, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (44, 42, 22, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (45, 67, 23, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (46, 74, 23, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (47, 43, 24, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (48, 97, 24, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (49, 130, 25, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (50, 86, 25, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (51, 44, 26, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (52, 48, 26, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (53, 46, 27, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (54, 98, 27, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (55, 47, 28, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (56, 131, 28, '2010-06-25', '1', 0);
INSERT INTO `parentesco` VALUES (57, 45, 29, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (58, 53, 29, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (59, 49, 30, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (60, 147, 30, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (61, 66, 31, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (62, 10, 31, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (63, 50, 32, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (64, 148, 32, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (65, 52, 33, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (66, 143, 33, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (67, 55, 34, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (68, 3, 34, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (69, 54, 35, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (70, 99, 35, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (71, 114, 36, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (72, 56, 36, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (73, 115, 37, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (74, 57, 37, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (75, 116, 38, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (76, 100, 38, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (77, 58, 39, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (78, 101, 39, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (79, 117, 40, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (80, 102, 40, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (81, 59, 41, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (82, 88, 41, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (83, 135, 42, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (84, 82, 42, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (85, 136, 43, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (86, 5, 43, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (87, 60, 44, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (88, 150, 44, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (89, 4, 45, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (90, 103, 45, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (91, 118, 46, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (92, 20, 46, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (93, 80, 47, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (94, 104, 47, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (95, 119, 48, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (96, 90, 48, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (97, 120, 49, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (98, 13, 49, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (99, 121, 50, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (100, 105, 50, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (101, 122, 51, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (102, 145, 51, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (103, 6, 52, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (104, 106, 52, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (105, 23, 53, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (106, 107, 53, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (107, 123, 54, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (108, 87, 54, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (109, 124, 55, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (110, 68, 55, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (111, 125, 56, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (112, 11, 56, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (113, 138, 57, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (114, 22, 57, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (115, 14, 58, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (116, 81, 58, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (117, 126, 59, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (118, 85, 59, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (119, 127, 60, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (120, 149, 60, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (121, 64, 61, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (122, 70, 61, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (123, 65, 62, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (124, 12, 62, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (125, 113, 63, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (126, 109, 63, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (127, 128, 64, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (128, 108, 64, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (129, 137, 65, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (130, 89, 65, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (131, 139, 66, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (132, 9, 66, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (133, 129, 67, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (134, 132, 67, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (135, 141, 68, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (136, 110, 68, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (137, 26, 69, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (138, 15, 69, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (139, 21, 70, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (140, 111, 70, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (141, 8, 71, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (142, 69, 71, '2010-06-26', '1', 0);
INSERT INTO `parentesco` VALUES (143, 51, 72, '2010-06-27', '1', 0);
INSERT INTO `parentesco` VALUES (144, 18, 72, '2010-06-27', '1', 0);
INSERT INTO `parentesco` VALUES (145, 7, 73, '2010-06-27', '1', 0);
INSERT INTO `parentesco` VALUES (146, 142, 73, '2010-06-27', '1', 0);
INSERT INTO `parentesco` VALUES (147, 16, 74, '2010-06-27', '1', 0);
INSERT INTO `parentesco` VALUES (148, 144, 74, '2010-06-27', '1', 0);
INSERT INTO `parentesco` VALUES (149, 24, 75, '2010-06-27', '1', 0);
INSERT INTO `parentesco` VALUES (150, 146, 75, '2010-06-27', '1', 0);
INSERT INTO `parentesco` VALUES (151, 17, 76, '2010-06-27', '1', 0);
INSERT INTO `parentesco` VALUES (152, 151, 76, '2010-06-27', '1', 0);
INSERT INTO `parentesco` VALUES (153, 152, 77, '2010-07-02', '1', 0);
INSERT INTO `parentesco` VALUES (154, 153, 77, '2010-07-02', '1', 0);
INSERT INTO `parentesco` VALUES (155, 154, 78, '2010-07-02', '1', 0);
INSERT INTO `parentesco` VALUES (156, 155, 78, '2010-07-02', '1', 0);
INSERT INTO `parentesco` VALUES (157, 157, 79, '2010-07-02', '1', 0);
INSERT INTO `parentesco` VALUES (158, 159, 79, '2010-07-02', '1', 0);
INSERT INTO `parentesco` VALUES (159, 156, 80, '2010-07-02', '1', 0);
INSERT INTO `parentesco` VALUES (160, 158, 80, '2010-07-02', '1', 0);
INSERT INTO `parentesco` VALUES (161, 160, 81, '2010-07-03', '1', 0);
INSERT INTO `parentesco` VALUES (162, 161, 81, '2010-07-03', '1', 0);
INSERT INTO `parentesco` VALUES (163, 162, 82, '2010-07-07', '1', 0);
INSERT INTO `parentesco` VALUES (164, 163, 82, '2010-07-07', '1', 0);
INSERT INTO `parentesco` VALUES (165, 162, 83, '2010-07-07', '1', 0);
INSERT INTO `parentesco` VALUES (166, 163, 83, '2010-07-07', '1', 0);
INSERT INTO `parentesco` VALUES (167, 166, 84, '2010-07-07', '1', 0);
INSERT INTO `parentesco` VALUES (168, 167, 84, '2010-07-07', '1', 0);
INSERT INTO `parentesco` VALUES (169, 164, 85, '2010-07-07', '1', 0);
INSERT INTO `parentesco` VALUES (170, 165, 85, '2010-07-07', '1', 0);
INSERT INTO `parentesco` VALUES (171, 76, 86, '2010-07-07', '1', 0);
INSERT INTO `parentesco` VALUES (172, 61, 86, '2010-07-07', '1', 0);
INSERT INTO `parentesco` VALUES (173, 136, 87, '2010-07-07', '1', 0);
INSERT INTO `parentesco` VALUES (174, 82, 87, '2010-07-07', '1', 0);
INSERT INTO `parentesco` VALUES (175, 26, 88, '2010-07-07', '1', 0);
INSERT INTO `parentesco` VALUES (176, 144, 88, '2010-07-07', '1', 0);
INSERT INTO `parentesco` VALUES (177, 168, 89, '2010-07-08', '1', 0);
INSERT INTO `parentesco` VALUES (178, 169, 89, '2010-07-08', '1', 0);
INSERT INTO `parentesco` VALUES (179, 168, 90, '2010-07-08', '1', 0);
INSERT INTO `parentesco` VALUES (180, 169, 90, '2010-07-08', '1', 0);
INSERT INTO `parentesco` VALUES (181, 170, 91, '2010-07-11', '1', 0);
INSERT INTO `parentesco` VALUES (182, 171, 91, '2010-07-11', '1', 0);
INSERT INTO `parentesco` VALUES (183, 117, 92, '2010-07-13', '1', 0);
INSERT INTO `parentesco` VALUES (184, 151, 92, '2010-07-13', '1', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `permiso`
-- 

CREATE TABLE `permiso` (
  `idpermiso` int(11) NOT NULL auto_increment,
  `permiso` varchar(30) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`idpermiso`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `permiso`
-- 

INSERT INTO `permiso` VALUES (1, 'Ejecucion');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `personal`
-- 

CREATE TABLE `personal` (
  `idpersonal` int(11) NOT NULL auto_increment,
  `dni` varchar(8) collate utf8_spanish2_ci NOT NULL,
  `apellidos` varchar(30) collate utf8_spanish2_ci NOT NULL,
  `nombres` varchar(30) collate utf8_spanish2_ci NOT NULL,
  `direccion` text collate utf8_spanish2_ci NOT NULL,
  `telefono` varchar(15) collate utf8_spanish2_ci default NULL,
  `fecnac` date NOT NULL,
  `fecreg` date NOT NULL,
  `estciv` char(1) collate utf8_spanish2_ci NOT NULL,
  `sexo` char(1) collate utf8_spanish2_ci NOT NULL,
  `foto` varchar(11) collate utf8_spanish2_ci default NULL,
  PRIMARY KEY  (`idpersonal`),
  UNIQUE KEY `personal_index1772` (`dni`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=21 ;

-- 
-- Volcar la base de datos para la tabla `personal`
-- 

INSERT INTO `personal` VALUES (1, '42752412', 'Arismendiz Amaya', 'Reveca', 'Lambayeque', '9768730458', '1986-04-21', '2010-06-23', 's', '0', '');
INSERT INTO `personal` VALUES (2, '44785963', 'Julca Amaya', 'Daniela Ruth', 'Micaela Bastidas S/N', '073254178', '1989-04-21', '2010-06-23', 'c', '0', '');
INSERT INTO `personal` VALUES (3, '27895422', 'Duque Amaya', 'Ruth', 'Martin Waiss S/N', '073661026', '1972-01-31', '2010-06-23', 'c', '0', '');
INSERT INTO `personal` VALUES (4, '14523698', 'Sandoval Alarcon', 'Cecilia', 'Lobitos 124', '072895253', '1984-01-01', '2010-06-23', 'c', '0', '');
INSERT INTO `personal` VALUES (5, '45897455', 'Ojeda Chinchay', 'Floresmildo', 'Av Grau  220', '073589612', '1988-01-01', '2010-06-23', 's', '1', '');
INSERT INTO `personal` VALUES (6, '58962001', 'Chapilliquen Ipanaque', 'Grecia', 'Martin Waiss 250', '', '1988-04-04', '2010-06-23', 's', '0', '');
INSERT INTO `personal` VALUES (7, '14785258', 'Ruiz Rumiche', 'Mirtha', 'Martin Waiss 260', '', '1971-01-01', '2010-06-23', 'd', '0', '');
INSERT INTO `personal` VALUES (8, '47895556', 'Rodas Suarez', 'Noelia Aneli', 'roma 147', '074228574', '1988-05-18', '2010-06-23', 's', '0', '');
INSERT INTO `personal` VALUES (9, '43745387', 'Saavedra Rioja', 'Carlos Manuel', 'Nicolas de Ayllon 454', '979240201', '1986-08-01', '2010-06-23', 's', '1', '');
INSERT INTO `personal` VALUES (10, '45258546', 'Marchan Romero ', 'Dennis', 'junin 568', '968345443', '1971-08-26', '2010-06-25', 'c', '0', '');
INSERT INTO `personal` VALUES (11, '23599878', 'Ortis Cordova', 'Paola', 'ca. manuel pardo 1432', '076154884', '1973-08-06', '2010-06-25', 'c', '0', '');
INSERT INTO `personal` VALUES (12, '22355488', 'Garcia Guitierrez ', 'Fabiola', 'los pinos 145', '076988441', '1973-09-08', '2010-06-25', 'c', '0', '');
INSERT INTO `personal` VALUES (13, '23488954', 'Romero Cordova', 'Rosmeri', 'los robles 185', '076154848', '1975-08-07', '2010-06-25', 'c', '0', '');
INSERT INTO `personal` VALUES (14, '24548787', 'Urtado Chumacedo', 'Willian', 'los incas 264', '076148687', '1976-08-08', '2010-06-25', 's', '1', '');
INSERT INTO `personal` VALUES (15, '23548787', 'Zapata Romero', 'Felix', 'los pinos 187', '076687877', '1965-05-07', '2010-06-25', 'c', '1', '');
INSERT INTO `personal` VALUES (16, '32698874', 'Yaipen Reque', 'Isaac Adrian', 'los incas 236', '076328741', '1958-03-06', '2010-06-25', 'c', '1', '');
INSERT INTO `personal` VALUES (17, '23659898', 'Wong Vivar', 'Luz Maria', 'amazonas 236', '076299569', '1954-09-08', '2010-06-25', 'd', '0', '');
INSERT INTO `personal` VALUES (18, '12364885', 'Terrones Puelles', 'Ada Maria', 'los rosales 451', '076236844', '1972-08-07', '2010-06-25', 'd', '0', '');
INSERT INTO `personal` VALUES (19, '45359879', 'Diaz Hernandez', 'Lucecita', '9 de octubre 569', '076248745', '1988-05-22', '2010-06-25', 's', '0', '');
INSERT INTO `personal` VALUES (20, '43697845', 'Mondragon Burgos ', 'Candy', 'roma 698', '076259469', '1987-04-04', '2010-06-25', 's', '0', '');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `proceso`
-- 

CREATE TABLE `proceso` (
  `idproceso` int(11) NOT NULL auto_increment,
  `idtipo` int(11) NOT NULL,
  `idalumno` int(11) NOT NULL,
  `apoderado` int(11) default NULL,
  `fecreg` date NOT NULL,
  `estado` char(1) collate utf8_spanish2_ci NOT NULL,
  `promovido` char(1) collate utf8_spanish2_ci default '0',
  `merito` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`idproceso`),
  KEY `proceso_FKIndex1` (`idalumno`),
  KEY `proceso_FKIndex2` (`idtipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=66 ;

-- 
-- Volcar la base de datos para la tabla `proceso`
-- 

INSERT INTO `proceso` VALUES (1, 1, 10, 134, '2010-07-14', '0', '1', 1);
INSERT INTO `proceso` VALUES (2, 1, 11, 84, '2010-07-14', '0', '0', 4);
INSERT INTO `proceso` VALUES (3, 1, 12, 77, '2010-07-14', '0', '0', 5);
INSERT INTO `proceso` VALUES (4, 1, 13, 35, '2010-07-14', '0', '0', 2);
INSERT INTO `proceso` VALUES (5, 1, 14, 72, '2010-07-14', '0', '0', 3);
INSERT INTO `proceso` VALUES (6, 1, 24, 43, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (7, 1, 25, 130, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (8, 1, 26, 44, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (9, 1, 21, 78, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (10, 1, 22, 41, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (11, 1, 31, 66, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (12, 1, 32, 50, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (13, 1, 33, 143, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (14, 1, 34, 3, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (15, 1, 35, 99, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (16, 1, 41, 59, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (17, 1, 86, 61, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (18, 1, 42, 82, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (19, 1, 43, 5, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (20, 1, 44, 150, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (21, 1, 51, 145, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (22, 1, 53, 107, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (23, 1, 54, 87, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (24, 1, 55, 68, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (25, 1, 56, 125, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (26, 1, 61, 64, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (27, 1, 62, 65, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (28, 1, 63, 113, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (29, 1, 64, 128, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (30, 1, 65, 137, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (31, 1, 66, 9, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (32, 1, 71, 69, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (33, 1, 73, 142, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (34, 1, 74, 144, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (35, 1, 75, 146, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (36, 1, 76, 151, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (37, 1, 79, 157, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (38, 1, 80, 158, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (39, 1, 77, 153, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (40, 1, 78, 155, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (41, 1, 81, 161, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (42, 2, 10, NULL, '2010-07-14', '0', '1', 1);
INSERT INTO `proceso` VALUES (43, 1, 27, 98, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (44, 1, 23, 74, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (45, 1, 28, 131, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (46, 1, 29, 53, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (47, 1, 30, 147, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (48, 1, 36, 56, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (49, 1, 37, 57, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (50, 1, 38, 100, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (51, 1, 39, 1, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (52, 1, 40, 102, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (53, 1, 47, 104, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (54, 1, 48, 90, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (55, 1, 49, 13, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (56, 1, 45, 103, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (57, 1, 46, 20, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (58, 1, 57, 22, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (59, 1, 58, 81, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (60, 1, 59, 85, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (61, 1, 60, 94, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (62, 1, 68, 110, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (63, 1, 69, 15, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (64, 1, 67, 132, '2010-07-14', '1', '0', 0);
INSERT INTO `proceso` VALUES (65, 1, 70, 111, '2010-07-14', '1', '0', 0);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `programa`
-- 

CREATE TABLE `programa` (
  `idprograma` int(11) NOT NULL auto_increment,
  `idhorario` int(11) NOT NULL,
  `iddia` int(11) NOT NULL,
  `idhora` int(11) NOT NULL,
  PRIMARY KEY  (`idprograma`),
  KEY `programa_FKIndex1` (`idhora`),
  KEY `programa_FKIndex2` (`iddia`),
  KEY `programa_FKIndex3` (`idhorario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `programa`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `provincia`
-- 

CREATE TABLE `provincia` (
  `idprovincia` int(11) NOT NULL auto_increment,
  `iddepartamento` int(11) NOT NULL,
  `provincia` varchar(30) collate utf8_spanish2_ci default NULL,
  PRIMARY KEY  (`idprovincia`),
  KEY `provincia_FKIndex1` (`iddepartamento`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=108 ;

-- 
-- Volcar la base de datos para la tabla `provincia`
-- 

INSERT INTO `provincia` VALUES (1, 19, 'Piura');
INSERT INTO `provincia` VALUES (2, 19, 'Ayabaca');
INSERT INTO `provincia` VALUES (3, 19, 'Huancabamba');
INSERT INTO `provincia` VALUES (4, 19, 'Morropon');
INSERT INTO `provincia` VALUES (5, 19, 'Paita');
INSERT INTO `provincia` VALUES (6, 19, 'Sullana');
INSERT INTO `provincia` VALUES (7, 19, 'Talara');
INSERT INTO `provincia` VALUES (8, 19, 'Sechura');
INSERT INTO `provincia` VALUES (9, 1, 'Chachapoyas');
INSERT INTO `provincia` VALUES (10, 1, 'Bagua');
INSERT INTO `provincia` VALUES (11, 1, 'Bongara');
INSERT INTO `provincia` VALUES (12, 1, 'Condorcanqui');
INSERT INTO `provincia` VALUES (13, 1, 'Luya');
INSERT INTO `provincia` VALUES (14, 1, 'Rodriguez de mendoza');
INSERT INTO `provincia` VALUES (16, 1, 'Utcubamba');
INSERT INTO `provincia` VALUES (17, 2, 'Huaraz');
INSERT INTO `provincia` VALUES (18, 2, 'Antonio raymondi');
INSERT INTO `provincia` VALUES (19, 2, 'Asuncion');
INSERT INTO `provincia` VALUES (20, 2, 'Bolognesi');
INSERT INTO `provincia` VALUES (21, 2, 'Carhuaz');
INSERT INTO `provincia` VALUES (22, 2, 'Carlos Fitzcarrald');
INSERT INTO `provincia` VALUES (23, 2, 'Casma');
INSERT INTO `provincia` VALUES (24, 2, 'Corongo');
INSERT INTO `provincia` VALUES (25, 2, 'Huari');
INSERT INTO `provincia` VALUES (26, 2, 'Huarmey');
INSERT INTO `provincia` VALUES (27, 2, 'Huaylas');
INSERT INTO `provincia` VALUES (28, 2, 'Mariscal Luzariaga');
INSERT INTO `provincia` VALUES (29, 2, 'Ocros');
INSERT INTO `provincia` VALUES (30, 2, 'Pallasca');
INSERT INTO `provincia` VALUES (31, 2, 'Pomabamba');
INSERT INTO `provincia` VALUES (32, 2, 'Recuay');
INSERT INTO `provincia` VALUES (33, 2, 'Santa');
INSERT INTO `provincia` VALUES (34, 2, 'Sihuas');
INSERT INTO `provincia` VALUES (35, 2, 'Yungay');
INSERT INTO `provincia` VALUES (36, 2, 'Aija');
INSERT INTO `provincia` VALUES (37, 3, 'Abancay');
INSERT INTO `provincia` VALUES (38, 3, 'Andahuaylas');
INSERT INTO `provincia` VALUES (39, 3, 'Antabamba');
INSERT INTO `provincia` VALUES (40, 3, 'Aymaraes');
INSERT INTO `provincia` VALUES (41, 3, 'Chincheros');
INSERT INTO `provincia` VALUES (42, 3, 'Cotabambas');
INSERT INTO `provincia` VALUES (43, 3, 'Grau');
INSERT INTO `provincia` VALUES (44, 4, 'Arequipa');
INSERT INTO `provincia` VALUES (45, 4, 'Camana');
INSERT INTO `provincia` VALUES (46, 4, 'Caraveli');
INSERT INTO `provincia` VALUES (47, 4, 'Castilla');
INSERT INTO `provincia` VALUES (48, 4, 'Caylloma');
INSERT INTO `provincia` VALUES (49, 4, 'Condesuyos');
INSERT INTO `provincia` VALUES (50, 4, 'Islay');
INSERT INTO `provincia` VALUES (51, 4, 'La union');
INSERT INTO `provincia` VALUES (52, 5, 'Huamanga');
INSERT INTO `provincia` VALUES (53, 5, 'cangallo');
INSERT INTO `provincia` VALUES (54, 5, 'Huanca sancos');
INSERT INTO `provincia` VALUES (55, 5, 'Huanta');
INSERT INTO `provincia` VALUES (56, 5, 'La mar');
INSERT INTO `provincia` VALUES (57, 5, 'Lucanas');
INSERT INTO `provincia` VALUES (58, 5, 'Parinacochas');
INSERT INTO `provincia` VALUES (59, 5, 'Paucar del sara');
INSERT INTO `provincia` VALUES (60, 5, 'Sucre');
INSERT INTO `provincia` VALUES (61, 5, 'Victor fajardo');
INSERT INTO `provincia` VALUES (62, 5, 'Vilcas huaman');
INSERT INTO `provincia` VALUES (63, 6, 'San ignacio');
INSERT INTO `provincia` VALUES (64, 6, 'Jaen');
INSERT INTO `provincia` VALUES (65, 6, 'Cutervo');
INSERT INTO `provincia` VALUES (66, 6, 'Chota');
INSERT INTO `provincia` VALUES (67, 6, 'Santa cruz');
INSERT INTO `provincia` VALUES (68, 6, 'Hualgayoc');
INSERT INTO `provincia` VALUES (69, 6, 'Celendin');
INSERT INTO `provincia` VALUES (70, 6, 'San pablo');
INSERT INTO `provincia` VALUES (71, 6, 'San miguel');
INSERT INTO `provincia` VALUES (72, 6, 'Contumaza');
INSERT INTO `provincia` VALUES (73, 6, 'Cajamarca');
INSERT INTO `provincia` VALUES (74, 6, 'Cajabamba');
INSERT INTO `provincia` VALUES (75, 6, 'San Marcos');
INSERT INTO `provincia` VALUES (76, 7, 'cusco');
INSERT INTO `provincia` VALUES (77, 7, 'acomayo');
INSERT INTO `provincia` VALUES (78, 7, 'anta');
INSERT INTO `provincia` VALUES (79, 7, 'calca');
INSERT INTO `provincia` VALUES (80, 7, 'Canas');
INSERT INTO `provincia` VALUES (81, 7, 'Canchis');
INSERT INTO `provincia` VALUES (82, 7, 'Chumbivilcas');
INSERT INTO `provincia` VALUES (83, 7, 'Espinar');
INSERT INTO `provincia` VALUES (84, 7, 'La convencion');
INSERT INTO `provincia` VALUES (85, 7, 'Paruro');
INSERT INTO `provincia` VALUES (86, 7, 'Paucartambo');
INSERT INTO `provincia` VALUES (87, 7, 'Quispicanchi');
INSERT INTO `provincia` VALUES (88, 7, 'Urubamba');
INSERT INTO `provincia` VALUES (89, 8, 'Huancavelica');
INSERT INTO `provincia` VALUES (90, 8, 'Acobamba');
INSERT INTO `provincia` VALUES (91, 8, 'Angaraes');
INSERT INTO `provincia` VALUES (92, 8, 'Castrovirreyna');
INSERT INTO `provincia` VALUES (93, 8, 'Churcampa');
INSERT INTO `provincia` VALUES (94, 8, 'Huaytara');
INSERT INTO `provincia` VALUES (96, 8, 'Tayacaja');
INSERT INTO `provincia` VALUES (97, 9, 'Huanuco');
INSERT INTO `provincia` VALUES (98, 9, 'Ambo');
INSERT INTO `provincia` VALUES (99, 9, 'Dos de mayo');
INSERT INTO `provincia` VALUES (100, 9, 'Huacaybamba');
INSERT INTO `provincia` VALUES (101, 9, 'Huamalies');
INSERT INTO `provincia` VALUES (102, 9, 'Leoncio prado');
INSERT INTO `provincia` VALUES (103, 9, 'Mara?on');
INSERT INTO `provincia` VALUES (104, 9, 'Pachitea');
INSERT INTO `provincia` VALUES (105, 9, 'Puerto inca');
INSERT INTO `provincia` VALUES (106, 9, 'Lauricocha');
INSERT INTO `provincia` VALUES (107, 9, 'Yarowilca');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `seccion`
-- 

CREATE TABLE `seccion` (
  `idseccion` int(11) NOT NULL auto_increment,
  `seccion` char(1) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`idseccion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=5 ;

-- 
-- Volcar la base de datos para la tabla `seccion`
-- 

INSERT INTO `seccion` VALUES (1, 'A');
INSERT INTO `seccion` VALUES (2, 'B');
INSERT INTO `seccion` VALUES (3, 'C');
INSERT INTO `seccion` VALUES (4, 'D');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `sistema`
-- 

CREATE TABLE `sistema` (
  `idsistema` int(11) NOT NULL auto_increment,
  `sistema` varchar(30) collate utf8_spanish2_ci NOT NULL,
  `abrev` varchar(30) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`idsistema`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `sistema`
-- 

INSERT INTO `sistema` VALUES (1, 'Sistema Academico', 'SICA');
INSERT INTO `sistema` VALUES (2, 'Sistema Economico', 'SIEC');
INSERT INTO `sistema` VALUES (3, 'Sistema Central', 'SIAC');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tipo`
-- 

CREATE TABLE `tipo` (
  `idtipo` int(11) NOT NULL auto_increment,
  `tipo` varchar(30) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`idtipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=4 ;

-- 
-- Volcar la base de datos para la tabla `tipo`
-- 

INSERT INTO `tipo` VALUES (1, 'Docente');
INSERT INTO `tipo` VALUES (2, 'Personal');
INSERT INTO `tipo` VALUES (3, 'Auxiliar');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tipo_personal`
-- 

CREATE TABLE `tipo_personal` (
  `idcarga` int(11) NOT NULL auto_increment,
  `idtipo` int(11) NOT NULL,
  `idpersonal` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY  (`idcarga`),
  KEY `tipo_personal_FKIndex1` (`idtipo`),
  KEY `tipo_personal_FKIndex2` (`idpersonal`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=22 ;

-- 
-- Volcar la base de datos para la tabla `tipo_personal`
-- 

INSERT INTO `tipo_personal` VALUES (1, 1, 1, 1);
INSERT INTO `tipo_personal` VALUES (2, 1, 2, 1);
INSERT INTO `tipo_personal` VALUES (3, 1, 3, 1);
INSERT INTO `tipo_personal` VALUES (4, 1, 4, 1);
INSERT INTO `tipo_personal` VALUES (5, 1, 5, 1);
INSERT INTO `tipo_personal` VALUES (6, 3, 6, 1);
INSERT INTO `tipo_personal` VALUES (7, 3, 7, 1);
INSERT INTO `tipo_personal` VALUES (8, 2, 8, 1);
INSERT INTO `tipo_personal` VALUES (9, 2, 9, 1);
INSERT INTO `tipo_personal` VALUES (10, 1, 10, 1);
INSERT INTO `tipo_personal` VALUES (11, 1, 11, 1);
INSERT INTO `tipo_personal` VALUES (12, 1, 12, 1);
INSERT INTO `tipo_personal` VALUES (13, 1, 13, 1);
INSERT INTO `tipo_personal` VALUES (14, 1, 14, 1);
INSERT INTO `tipo_personal` VALUES (15, 1, 15, 1);
INSERT INTO `tipo_personal` VALUES (16, 1, 16, 1);
INSERT INTO `tipo_personal` VALUES (17, 1, 17, 0);
INSERT INTO `tipo_personal` VALUES (18, 1, 18, 1);
INSERT INTO `tipo_personal` VALUES (19, 3, 17, 1);
INSERT INTO `tipo_personal` VALUES (20, 3, 19, 1);
INSERT INTO `tipo_personal` VALUES (21, 3, 20, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tipo_proceso`
-- 

CREATE TABLE `tipo_proceso` (
  `idtipo` int(11) NOT NULL auto_increment,
  `tipo` varchar(40) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`idtipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `tipo_proceso`
-- 

INSERT INTO `tipo_proceso` VALUES (1, 'Proceso escolar');
INSERT INTO `tipo_proceso` VALUES (2, 'Recuperacion escolar');

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `usuario`
-- 

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL auto_increment,
  `idcargo` int(11) NOT NULL,
  `idpersonal` int(11) NOT NULL,
  `usuario` varchar(30) collate utf8_spanish2_ci NOT NULL,
  `fecreg` date NOT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY  (`idusuario`),
  KEY `usuario_FKIndex1` (`idpersonal`),
  KEY `usuario_FKIndex2` (`idcargo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=9 ;

-- 
-- Volcar la base de datos para la tabla `usuario`
-- 

INSERT INTO `usuario` VALUES (1, 1, 1, 'reveca', '2010-06-23', 0);
INSERT INTO `usuario` VALUES (2, 2, 9, 'carlos', '2010-06-23', 0);
INSERT INTO `usuario` VALUES (3, 1, 8, 'noe', '2010-06-23', 0);
INSERT INTO `usuario` VALUES (4, 1, 3, 'ruth', '2010-06-25', 1);
INSERT INTO `usuario` VALUES (5, 2, 6, 'grecia', '2010-07-13', 1);
INSERT INTO `usuario` VALUES (6, 1, 9, 'saavedra', '2010-07-14', 1);
INSERT INTO `usuario` VALUES (7, 2, 1, 'reve', '2010-07-15', 1);
INSERT INTO `usuario` VALUES (8, 2, 8, 'noelia', '2010-07-15', 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `ventana`
-- 

CREATE TABLE `ventana` (
  `idventana` int(11) NOT NULL auto_increment,
  `idsistema` int(11) NOT NULL,
  `titulo` varchar(30) collate utf8_spanish2_ci NOT NULL,
  `icono` varchar(30) collate utf8_spanish2_ci NOT NULL,
  PRIMARY KEY  (`idventana`),
  KEY `ventana_FKIndex1` (`idsistema`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=10 ;

-- 
-- Volcar la base de datos para la tabla `ventana`
-- 

INSERT INTO `ventana` VALUES (1, 1, 'Alumnos', 'alumnos.png');
INSERT INTO `ventana` VALUES (2, 1, 'Padres', 'padre.png');
INSERT INTO `ventana` VALUES (3, 1, 'Academico', 'hoja.png');
INSERT INTO `ventana` VALUES (5, 2, 'Inscripciones', 'dinero1.png');
INSERT INTO `ventana` VALUES (6, 2, 'Ingresos', 'cobro.png');
INSERT INTO `ventana` VALUES (7, 3, 'Seguridad', 'seguridad.gif');
INSERT INTO `ventana` VALUES (8, 3, 'Personal', 'personal.png');
INSERT INTO `ventana` VALUES (9, 3, 'Areas', 'cursos.png');

-- 
-- Filtros para las tablas descargadas (dump)
-- 

-- 
-- Filtros para la tabla `acceso`
-- 
ALTER TABLE `acceso`
  ADD CONSTRAINT `acceso_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `acceso_ibfk_2` FOREIGN KEY (`idpagina`) REFERENCES `pagina` (`idpagina`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `alumno`
-- 
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`iddistrito`) REFERENCES `distrito` (`iddistrito`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `carga_curricula`
-- 
ALTER TABLE `carga_curricula`
  ADD CONSTRAINT `carga_curricula_ibfk_1` FOREIGN KEY (`idcurricula`) REFERENCES `curricula` (`idcurricula`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `carga_curricula_ibfk_2` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `carga_docente`
-- 
ALTER TABLE `carga_docente`
  ADD CONSTRAINT `carga_docente_ibfk_1` FOREIGN KEY (`idhorario`) REFERENCES `horario` (`idhorario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `carga_docente_ibfk_2` FOREIGN KEY (`idpersonal`) REFERENCES `personal` (`idpersonal`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `clave`
-- 
ALTER TABLE `clave`
  ADD CONSTRAINT `clave_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `control`
-- 
ALTER TABLE `control`
  ADD CONSTRAINT `control_ibfk_1` FOREIGN KEY (`idacceso`) REFERENCES `acceso` (`idacceso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `control_ibfk_2` FOREIGN KEY (`idpermiso`) REFERENCES `permiso` (`idpermiso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `cuota`
-- 
ALTER TABLE `cuota`
  ADD CONSTRAINT `cuota_ibfk_1` FOREIGN KEY (`idproceso`) REFERENCES `proceso` (`idproceso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `curricula`
-- 
ALTER TABLE `curricula`
  ADD CONSTRAINT `curricula_ibfk_1` FOREIGN KEY (`idgrado`) REFERENCES `grado` (`idgrado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `curso`
-- 
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`idaarea`) REFERENCES `aarea` (`idaarea`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `departamento`
-- 
ALTER TABLE `departamento`
  ADD CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`idpais`) REFERENCES `pais` (`idpais`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `descuento`
-- 
ALTER TABLE `descuento`
  ADD CONSTRAINT `descuento_ibfk_1` FOREIGN KEY (`idproceso`) REFERENCES `proceso` (`idproceso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `descuento_ibfk_2` FOREIGN KEY (`idmotivo`) REFERENCES `motivo` (`idmotivo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `distrito`
-- 
ALTER TABLE `distrito`
  ADD CONSTRAINT `distrito_ibfk_1` FOREIGN KEY (`idprovincia`) REFERENCES `provincia` (`idprovincia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `documento`
-- 
ALTER TABLE `documento`
  ADD CONSTRAINT `documento_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `documento_ibfk_2` FOREIGN KEY (`idcuota`) REFERENCES `cuota` (`idcuota`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `especializacion`
-- 
ALTER TABLE `especializacion`
  ADD CONSTRAINT `especializacion_ibfk_1` FOREIGN KEY (`idpersonal`) REFERENCES `personal` (`idpersonal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `especializacion_ibfk_2` FOREIGN KEY (`idaarea`) REFERENCES `aarea` (`idaarea`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `grado`
-- 
ALTER TABLE `grado`
  ADD CONSTRAINT `grado_ibfk_1` FOREIGN KEY (`idnivel`) REFERENCES `nivel` (`idnivel`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `grupo`
-- 
ALTER TABLE `grupo`
  ADD CONSTRAINT `grupo_ibfk_1` FOREIGN KEY (`idseccion`) REFERENCES `seccion` (`idseccion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `horario`
-- 
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`idgrupo`) REFERENCES `grupo` (`idgrupo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `horario_ibfk_2` FOREIGN KEY (`idcarga`) REFERENCES `carga_curricula` (`idcarga`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `nota`
-- 
ALTER TABLE `nota`
  ADD CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`idproceso`) REFERENCES `proceso` (`idproceso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nota_ibfk_2` FOREIGN KEY (`idhorario`) REFERENCES `horario` (`idhorario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nota_ibfk_3` FOREIGN KEY (`ciber`) REFERENCES `nota` (`idnota`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `pagina`
-- 
ALTER TABLE `pagina`
  ADD CONSTRAINT `pagina_ibfk_1` FOREIGN KEY (`idventana`) REFERENCES `ventana` (`idventana`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pagina_ibfk_2` FOREIGN KEY (`referencia`) REFERENCES `pagina` (`idpagina`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `parentesco`
-- 
ALTER TABLE `parentesco`
  ADD CONSTRAINT `parentesco_ibfk_1` FOREIGN KEY (`idalumno`) REFERENCES `alumno` (`idalumno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `parentesco_ibfk_2` FOREIGN KEY (`idpadre`) REFERENCES `padre` (`idpadre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `proceso`
-- 
ALTER TABLE `proceso`
  ADD CONSTRAINT `proceso_ibfk_1` FOREIGN KEY (`idalumno`) REFERENCES `alumno` (`idalumno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `proceso_ibfk_2` FOREIGN KEY (`idtipo`) REFERENCES `tipo_proceso` (`idtipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `programa`
-- 
ALTER TABLE `programa`
  ADD CONSTRAINT `programa_ibfk_1` FOREIGN KEY (`idhora`) REFERENCES `hora` (`idhora`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `programa_ibfk_2` FOREIGN KEY (`iddia`) REFERENCES `dia` (`iddia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `programa_ibfk_3` FOREIGN KEY (`idhorario`) REFERENCES `horario` (`idhorario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `provincia`
-- 
ALTER TABLE `provincia`
  ADD CONSTRAINT `provincia_ibfk_1` FOREIGN KEY (`iddepartamento`) REFERENCES `departamento` (`iddepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `tipo_personal`
-- 
ALTER TABLE `tipo_personal`
  ADD CONSTRAINT `tipo_personal_ibfk_1` FOREIGN KEY (`idtipo`) REFERENCES `tipo` (`idtipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tipo_personal_ibfk_2` FOREIGN KEY (`idpersonal`) REFERENCES `personal` (`idpersonal`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `usuario`
-- 
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idpersonal`) REFERENCES `personal` (`idpersonal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`idcargo`) REFERENCES `cargo` (`idcargo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- 
-- Filtros para la tabla `ventana`
-- 
ALTER TABLE `ventana`
  ADD CONSTRAINT `ventana_ibfk_1` FOREIGN KEY (`idsistema`) REFERENCES `sistema` (`idsistema`) ON DELETE NO ACTION ON UPDATE NO ACTION;
