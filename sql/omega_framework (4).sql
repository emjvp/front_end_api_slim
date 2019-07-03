-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 26-10-2018 a las 13:30:20
-- Versión del servidor: 5.7.22
-- Versión de PHP: 7.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `omega_framework`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido`
--

CREATE TABLE `contenido` (
  `contenido_id` int(255) NOT NULL,
  `contenido_estado` int(11) DEFAULT NULL,
  `contenido_seccion` int(11) DEFAULT NULL,
  `contenido_fecha` date DEFAULT NULL,
  `contenido_titulo` varchar(255) DEFAULT NULL,
  `contenido_subtitulo` varchar(255) DEFAULT NULL,
  `contenido_introduccion` text,
  `contenido_descripcion` text,
  `contenido_imagen` varchar(500) DEFAULT NULL,
  `contenido_fondo_color` varchar(255) DEFAULT NULL,
  `contenido_fondo_imagen` varchar(255) DEFAULT NULL,
  `contenido_enlace` varchar(500) DEFAULT NULL,
  `contenido_enlace_abrir` int(11) DEFAULT NULL,
  `contenido_enlace_vermas` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contenido`
--

INSERT INTO `contenido` (`contenido_id`, `contenido_estado`, `contenido_seccion`, `contenido_fecha`, `contenido_titulo`, `contenido_subtitulo`, `contenido_introduccion`, `contenido_descripcion`, `contenido_imagen`, `contenido_fondo_color`, `contenido_fondo_imagen`, `contenido_enlace`, `contenido_enlace_abrir`, `contenido_enlace_vermas`, `orden`) VALUES
(1, 1, 1, '2018-10-25', 'Bienvenido a nuestra pagina', '', '', '<h2 style=\"text-align: center;\">Bienvenido a nuestra pagina</h2>\r\n<p style=\"text-align: center;\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '', '', '', '', 0, '', 1),
(2, 1, 1, '2018-10-25', 'Bienvenido a nuestra pagina', '', '', '<h2 style=\"text-align: center;\"><span style=\"color: #ffffff;\">otro texto de bienvenida que va a salir en el home</span></h2>', '', '#FF0000', '', '', 0, '', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info_pagina`
--

CREATE TABLE `info_pagina` (
  `info_pagina_id` bigint(20) NOT NULL,
  `info_pagina_facebook` varchar(255) DEFAULT NULL,
  `info_pagina_instagram` varchar(255) DEFAULT NULL,
  `info_pagina_twitter` varchar(255) DEFAULT NULL,
  `info_pagina_pinterest` varchar(255) DEFAULT NULL,
  `info_pagina_youtube` varchar(255) DEFAULT NULL,
  `info_pagina_flickr` varchar(255) DEFAULT NULL,
  `info_pagina_linkedin` varchar(255) DEFAULT NULL,
  `info_pagina_google` varchar(255) DEFAULT NULL,
  `info_pagina_telefono` varchar(255) DEFAULT NULL,
  `info_pagina_whatsapp` varchar(255) DEFAULT NULL,
  `info_pagina_correos_contacto` varchar(255) DEFAULT NULL,
  `info_pagina_direccion_contacto` text,
  `info_pagina_informacion_contacto` text,
  `info_pagina_informacion_contacto_footer` text,
  `info_pagina_latitud` varchar(255) DEFAULT NULL,
  `info_pagina_longitud` varchar(255) DEFAULT NULL,
  `info_pagina_zoom` varchar(255) DEFAULT NULL,
  `info_pagina_descripcion` text,
  `info_pagina_tags` text,
  `info_pagina_robot` varchar(500) DEFAULT NULL,
  `info_pagina_sitemap` varchar(500) DEFAULT NULL,
  `info_pagina_scripts` text,
  `info_pagina_metricas` text,
  `orden` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `info_pagina`
--

INSERT INTO `info_pagina` (`info_pagina_id`, `info_pagina_facebook`, `info_pagina_instagram`, `info_pagina_twitter`, `info_pagina_pinterest`, `info_pagina_youtube`, `info_pagina_flickr`, `info_pagina_linkedin`, `info_pagina_google`, `info_pagina_telefono`, `info_pagina_whatsapp`, `info_pagina_correos_contacto`, `info_pagina_direccion_contacto`, `info_pagina_informacion_contacto`, `info_pagina_informacion_contacto_footer`, `info_pagina_latitud`, `info_pagina_longitud`, `info_pagina_zoom`, `info_pagina_descripcion`, `info_pagina_tags`, `info_pagina_robot`, `info_pagina_sitemap`, `info_pagina_scripts`, `info_pagina_metricas`, `orden`) VALUES
(1, 'https://www.facebook.com/OmegaSolucionesWeb/', 'https://www.instagram.com/omegawebsystems/?hl=es-la', '', '', '', '', '', '', '000000 000000 000000', '(+57) 350 708 7228', 'desarollo4@omegawebsystems.com', 'calle falsa 123', '', '', '4.66001', '-74.0607383', '18', 'esta es la descrupcion qye se pondra para el seo', 'zcxzcxzc', '', '', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-123186367-1\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-123186367-1\');\r\n</script>', 'cxzczx xzczxc . zxcxz', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE `log` (
  `log_id` int(11) NOT NULL,
  `log_usuario` varchar(50) DEFAULT NULL,
  `log_tipo` varchar(50) DEFAULT NULL,
  `log_fecha` datetime DEFAULT NULL,
  `log_log` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `log`
--

INSERT INTO `log` (`log_id`, `log_usuario`, `log_tipo`, `log_fecha`, `log_log`) VALUES
(1, 'admin', 'CREAR SECCION', '2018-10-24 15:07:08', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 1\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 0\n    [seccionpage_espacio] => 0\n    [seccionpage_fondo_color] => \n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 0\n    [seccionpage_fondo_animacion] => 0\n    [seccionpage_id] => 0\n)\n'),
(2, 'admin', 'CREAR SECCION', '2018-10-24 15:08:24', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 0\n    [seccionpage_contenido] => 0\n    [seccionpage_ancho] => 0\n    [seccionpage_espacio] => 0\n    [seccionpage_fondo_color] => \n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 0\n    [seccionpage_fondo_animacion] => 0\n    [seccionpage_id] => 0\n)\n'),
(3, 'admin', 'CREAR SECCION', '2018-10-24 15:08:32', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 1\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 0\n    [seccionpage_espacio] => 0\n    [seccionpage_fondo_color] => \n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 0\n    [seccionpage_fondo_animacion] => 0\n    [seccionpage_id] => 0\n)\n'),
(4, 'admin', 'CREAR SECCION', '2018-10-24 15:09:04', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 1\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 0\n    [seccionpage_espacio] => 0\n    [seccionpage_fondo_color] => \n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 0\n    [seccionpage_fondo_animacion] => 0\n    [seccionpage_id] => 0\n)\n'),
(5, 'admin', 'CREAR SECCION', '2018-10-24 15:10:07', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 1\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 0\n    [seccionpage_espacio] => 0\n    [seccionpage_fondo_color] => \n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 0\n    [seccionpage_fondo_animacion] => 0\n    [seccionpage_class] => .full\n    [seccionpage_id] => 1\n)\n'),
(6, 'admin', 'CREAR SECCION', '2018-10-24 15:10:56', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 1\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 0\n    [seccionpage_espacio] => 0\n    [seccionpage_fondo_color] => \n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 0\n    [seccionpage_fondo_animacion] => 0\n    [seccionpage_class] => .full\n    [seccionpage_id] => 1\n)\n'),
(7, 'admin', 'CREAR BANNER', '2018-10-24 15:13:36', 'Array\n(\n    [publicidad_seccion] => 1\n    [publicidad_nombre] => Banner 1\n    [publicidad_fecha] => 2018-10-24\n    [publicidad_imagen] => banner-01.jpg\n    [publicidad_video] => \n    [publicidad_color_fondo] => \n    [publicidad_posicion] => \n    [publicidad_descripcion] => \n    [publicidad_estado] => 0\n    [publicidad_click] => 0\n    [publicidad_enlace] => \n    [publicidad_tipo_enlace] => 0\n    [publicidad_texto_enlace] => \n    [publicidad_id] => 1\n)\n'),
(8, 'admin', 'EDITAR SECCION', '2018-10-24 15:52:44', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 1\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 0\n    [seccionpage_espacio] => 0\n    [seccionpage_fondo_color] => \n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 0\n    [seccionpage_fondo_animacion] => 0\n    [seccionpage_class] => .full\n    [seccionpage_id] => 1\n)\n'),
(9, 'admin', 'EDITAR SECCION', '2018-10-24 15:52:48', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 1\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 0\n    [seccionpage_espacio] => 0\n    [seccionpage_fondo_color] => \n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 0\n    [seccionpage_fondo_animacion] => 0\n    [seccionpage_class] => .full\n    [seccionpage_id] => 1\n)\n'),
(10, 'admin', 'CREAR SECCION', '2018-10-24 15:55:46', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 1\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 0\n    [seccionpage_espacio] => 0\n    [seccionpage_fondo_color] => \n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 0\n    [seccionpage_fondo_animacion] => 0\n    [seccionpage_class] => .full\n    [seccionpage_id] => 1\n)\n'),
(11, 'admin', 'EDITAR SECCION', '2018-10-24 15:56:16', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 1\n    [seccionpage_contenido] => 2\n    [seccionpage_ancho] => 0\n    [seccionpage_espacio] => 0\n    [seccionpage_fondo_color] => \n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 0\n    [seccionpage_fondo_animacion] => 0\n    [seccionpage_class] => .full\n    [seccionpage_id] => 1\n)\n'),
(12, 'admin', 'EDITAR SECCION', '2018-10-24 15:56:24', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 1\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 0\n    [seccionpage_espacio] => 0\n    [seccionpage_fondo_color] => \n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 0\n    [seccionpage_fondo_animacion] => 0\n    [seccionpage_class] => .full\n    [seccionpage_id] => 1\n)\n'),
(13, 'alos1212', 'EDITAR SECCION', '2018-10-24 17:04:45', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 1\n    [seccionpage_contenido] => 2\n    [seccionpage_ancho] => 0\n    [seccionpage_espacio] => 0\n    [seccionpage_fondo_color] => \n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 0\n    [seccionpage_fondo_animacion] => 0\n    [seccionpage_class] => .full\n    [seccionpage_id] => 1\n)\n'),
(14, 'alos1212', 'EDITAR SECCION', '2018-10-24 17:04:50', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 1\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 0\n    [seccionpage_espacio] => 0\n    [seccionpage_fondo_color] => \n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 0\n    [seccionpage_fondo_animacion] => 0\n    [seccionpage_class] => .full\n    [seccionpage_id] => 1\n)\n'),
(15, 'alos1212', 'BORRAR SECCION', '2018-10-24 17:13:28', 'Array\n(\n    [seccionpage_id] => 1\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 1\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 0\n    [seccionpage_espacio] => 0\n    [seccionpage_fondo_color] => \n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 0\n    [seccionpage_fondo_animacion] => 0\n    [seccionpage_class] => .full\n    [orden] => 1\n)\n'),
(16, 'alos1212', 'CREAR SECCION', '2018-10-24 17:13:36', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 1\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 0\n    [seccionpage_espacio] => 0\n    [seccionpage_fondo_color] => \n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 0\n    [seccionpage_fondo_animacion] => 0\n    [seccionpage_class] => .full\n    [seccionpage_id] => 2\n)\n'),
(17, '', 'CREAR SECCION', '2018-10-25 08:30:53', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 0\n    [seccionpage_ancho] => 0\n    [seccionpage_espacio] => 0\n    [seccionpage_fondo_color] => \n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 0\n    [seccionpage_fondo_animacion] => 0\n    [seccionpage_class] => \n    [seccionpage_id] => 3\n)\n'),
(18, 'adminomega', 'LOGIN', '2018-10-25 08:40:04', ''),
(19, 'adminomega', 'BORRAR SECCION', '2018-10-25 08:46:03', 'Array\n(\n    [seccionpage_id] => 3\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 0\n    [seccionpage_ancho] => 0\n    [seccionpage_espacio] => 0\n    [seccionpage_fondo_color] => \n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 0\n    [seccionpage_fondo_animacion] => 0\n    [seccionpage_class] => \n    [orden] => 3\n)\n'),
(20, 'adminomega', 'BORRAR SECCION', '2018-10-25 08:46:07', 'Array\n(\n    [seccionpage_id] => 2\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 1\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 0\n    [seccionpage_espacio] => 0\n    [seccionpage_fondo_color] => \n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 0\n    [seccionpage_fondo_animacion] => 0\n    [seccionpage_class] => .full\n    [orden] => 2\n)\n'),
(21, 'adminomega', 'CREAR SECCION', '2018-10-25 08:46:31', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 1\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 0\n    [seccionpage_espacio] => 0\n    [seccionpage_fondo_color] => \n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 0\n    [seccionpage_fondo_animacion] => 0\n    [seccionpage_class] => .full\n    [seccionpage_id] => 4\n)\n'),
(22, 'adminomega', 'CREAR SECCION', '2018-10-25 08:48:11', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 0\n    [seccionpage_espacio] => 0\n    [seccionpage_fondo_color] => \n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 0\n    [seccionpage_fondo_animacion] => 0\n    [seccionpage_class] => \n    [seccionpage_id] => 5\n)\n'),
(23, 'adminomega', 'EDITAR SECCION', '2018-10-25 09:28:01', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 1\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_class] => \n    [seccionpage_id] => 5\n)\n'),
(24, 'adminomega', 'CREAR CONTENIDO', '2018-10-25 09:46:23', 'Array\n(\n    [contenido_estado] => 1\n    [contenido_seccion] => 1\n    [contenido_fecha] => 2018-10-25\n    [contenido_titulo] => Bienvenido a nuestra pagina\n    [contenido_subtitulo] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => <h2 style=\"text-align: center;\">Bienvenido a nuestra pagina</h2>\r\n<p style=\"text-align: center;\">Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n    [contenido_imagen] => \n    [contenido_fondo_color] => \n    [contenido_fondo_imagen] => \n    [contenido_enlace] => \n    [contenido_enlace_abrir] => 0\n    [contenido_enlace_vermas] => \n    [contenido_id] => 1\n)\n'),
(25, 'adminomega', 'EDITAR SECCION', '2018-10-25 10:22:04', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 2\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 1\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_class] => \n    [seccionpage_id] => 5\n)\n'),
(26, 'adminomega', 'EDITAR SECCION', '2018-10-25 10:22:10', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 1\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_class] => \n    [seccionpage_id] => 5\n)\n'),
(27, 'adminomega', 'CREAR CONTENIDO', '2018-10-25 10:28:52', 'Array\n(\n    [contenido_estado] => 0\n    [contenido_seccion] => 1\n    [contenido_fecha] => 2018-10-25\n    [contenido_titulo] => Bienvenido a nuestra pagina\n    [contenido_subtitulo] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => <h2 style=\"text-align: center;\"><span style=\"color: #ffffff;\">otro texto de bienvenida que va a salir en el home</span></h2>\n    [contenido_imagen] => \n    [contenido_fondo_color] => #FF0000\n    [contenido_fondo_imagen] => \n    [contenido_enlace] => \n    [contenido_enlace_abrir] => 0\n    [contenido_enlace_vermas] => \n    [contenido_id] => 2\n)\n'),
(28, 'adminomega', 'EDITAR CONTENIDO', '2018-10-25 10:28:59', 'Array\n(\n    [contenido_estado] => 1\n    [contenido_seccion] => 1\n    [contenido_fecha] => 2018-10-25\n    [contenido_titulo] => Bienvenido a nuestra pagina\n    [contenido_subtitulo] => \n    [contenido_introduccion] => \n    [contenido_descripcion] => <h2 style=\"text-align: center;\"><span style=\"color: #ffffff;\">otro texto de bienvenida que va a salir en el home</span></h2>\n    [contenido_imagen] => \n    [contenido_fondo_color] => #FF0000\n    [contenido_fondo_imagen] => \n    [contenido_enlace] => \n    [contenido_enlace_abrir] => 0\n    [contenido_enlace_vermas] => \n    [contenido_id] => 2\n)\n'),
(29, 'adminomega', 'EDITAR SECCION', '2018-10-25 10:29:40', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 1\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_class] => .padding-content\n    [seccionpage_id] => 5\n)\n'),
(30, 'adminomega', 'EDITAR SECCION', '2018-10-25 10:30:33', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 1\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_class] => padding-content\n    [seccionpage_id] => 5\n)\n'),
(31, 'adminomega', 'EDITAR SECCION', '2018-10-25 10:32:21', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner-tienda.jpg\n    [seccionpage_fondo_estilo] => 1\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_class] => padding-content\n    [seccionpage_id] => 5\n)\n'),
(32, 'adminomega', 'EDITAR SECCION', '2018-10-25 10:50:25', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner-tienda.jpg\n    [seccionpage_fondo_estilo] => 7\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_class] => padding-content\n    [seccionpage_id] => 5\n)\n'),
(33, 'adminomega', 'EDITAR SECCION', '2018-10-25 10:50:37', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner-tienda.jpg\n    [seccionpage_fondo_estilo] => 8\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_class] => padding-content\n    [seccionpage_id] => 5\n)\n'),
(34, 'adminomega', 'EDITAR SECCION', '2018-10-25 10:54:43', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner-tienda.jpg\n    [seccionpage_fondo_estilo] => 8\n    [seccionpage_fondo_animacion] => 5\n    [seccionpage_class] => padding-content\n    [seccionpage_id] => 5\n)\n'),
(35, 'adminomega', 'EDITAR SECCION', '2018-10-25 10:55:52', 'Array\n(\n    [seccionpage_id] => \n)\n'),
(36, 'adminomega', 'EDITAR SECCION', '2018-10-25 10:55:57', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner-tienda.jpg\n    [seccionpage_fondo_estilo] => 8\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_class] => padding-content\n    [seccionpage_id] => 5\n)\n'),
(37, 'adminomega', 'EDITAR SECCION', '2018-10-25 10:56:11', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner-tienda.jpg\n    [seccionpage_fondo_estilo] => 8\n    [seccionpage_fondo_animacion] => 3\n    [seccionpage_class] => padding-content\n    [seccionpage_id] => 5\n)\n'),
(38, 'adminomega', 'EDITAR SECCION', '2018-10-25 10:56:19', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner-tienda.jpg\n    [seccionpage_fondo_estilo] => 8\n    [seccionpage_fondo_animacion] => 1\n    [seccionpage_class] => padding-content\n    [seccionpage_id] => 5\n)\n'),
(39, 'adminomega', 'EDITAR SECCION', '2018-10-25 10:56:37', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner-tienda.jpg\n    [seccionpage_fondo_estilo] => 8\n    [seccionpage_fondo_animacion] => 2\n    [seccionpage_class] => padding-content\n    [seccionpage_id] => 5\n)\n'),
(40, 'adminomega', 'EDITAR SECCION', '2018-10-25 10:57:50', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner2.jpg\n    [seccionpage_fondo_estilo] => 8\n    [seccionpage_fondo_animacion] => 5\n    [seccionpage_class] => padding-content\n    [seccionpage_id] => 5\n)\n'),
(41, 'adminomega', 'EDITAR SECCION', '2018-10-25 10:57:55', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner2.jpg\n    [seccionpage_fondo_estilo] => 8\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_class] => padding-content\n    [seccionpage_id] => 5\n)\n'),
(42, 'adminomega', 'EDITAR SECCION', '2018-10-25 11:12:21', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner2.jpg\n    [seccionpage_fondo_estilo] => 8\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_disenio] => 1\n    [seccionpage_class] => padding-content\n    [seccionpage_id] => 5\n)\n'),
(43, 'adminomega', 'EDITAR SECCION', '2018-10-25 11:12:27', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner2.jpg\n    [seccionpage_fondo_estilo] => 8\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_disenio] => 2\n    [seccionpage_class] => padding-content\n    [seccionpage_id] => 5\n)\n'),
(44, 'adminomega', 'EDITAR SECCION', '2018-10-25 11:12:32', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner2.jpg\n    [seccionpage_fondo_estilo] => 8\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_disenio] => 3\n    [seccionpage_class] => padding-content\n    [seccionpage_id] => 5\n)\n'),
(45, 'adminomega', 'EDITAR SECCION', '2018-10-25 11:13:28', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner2.jpg\n    [seccionpage_fondo_estilo] => 8\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_disenio] => 1\n    [seccionpage_class] => padding-content\n    [seccionpage_id] => 5\n)\n'),
(46, 'adminomega', 'EDITAR SECCION', '2018-10-25 11:13:32', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner2.jpg\n    [seccionpage_fondo_estilo] => 8\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_disenio] => 3\n    [seccionpage_class] => padding-content\n    [seccionpage_id] => 5\n)\n'),
(47, 'adminomega', 'EDITAR SECCION', '2018-10-25 11:13:37', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner2.jpg\n    [seccionpage_fondo_estilo] => 8\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_disenio] => 4\n    [seccionpage_class] => padding-content\n    [seccionpage_id] => 5\n)\n'),
(48, 'adminomega', 'EDITAR SECCION', '2018-10-25 11:16:19', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner2.jpg\n    [seccionpage_fondo_estilo] => 8\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_disenio] => 4\n    [seccionpage_cantidad] => 1\n    [seccionpage_class] => padding-content\n    [seccionpage_id] => 5\n)\n'),
(49, 'adminomega', 'EDITAR SECCION', '2018-10-25 11:16:26', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner2.jpg\n    [seccionpage_fondo_estilo] => 8\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_disenio] => 4\n    [seccionpage_cantidad] => 2\n    [seccionpage_class] => padding-content\n    [seccionpage_id] => 5\n)\n'),
(50, 'adminomega', 'EDITAR SECCION', '2018-10-25 11:16:32', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner2.jpg\n    [seccionpage_fondo_estilo] => 8\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_disenio] => 4\n    [seccionpage_cantidad] => 0\n    [seccionpage_class] => padding-content\n    [seccionpage_id] => 5\n)\n'),
(51, 'adminomega', 'EDITAR SECCION', '2018-10-25 11:16:36', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner2.jpg\n    [seccionpage_fondo_estilo] => 8\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_disenio] => 4\n    [seccionpage_cantidad] => 1\n    [seccionpage_class] => padding-content\n    [seccionpage_id] => 5\n)\n'),
(52, 'adminomega', 'EDITAR SECCION', '2018-10-25 11:18:07', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner2.jpg\n    [seccionpage_fondo_estilo] => 8\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_disenio] => 1\n    [seccionpage_cantidad] => 2\n    [seccionpage_class] => padding-content\n    [seccionpage_id] => 5\n)\n'),
(53, 'adminomega', 'EDITAR SECCION', '2018-10-25 11:18:14', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner2.jpg\n    [seccionpage_fondo_estilo] => 8\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_disenio] => 1\n    [seccionpage_cantidad] => 1\n    [seccionpage_class] => padding-content\n    [seccionpage_id] => 5\n)\n'),
(54, 'adminomega', 'EDITAR SECCION', '2018-10-25 11:21:00', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner2.jpg\n    [seccionpage_fondo_estilo] => 8\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_disenio] => 1\n    [seccionpage_cantidad] => 1\n    [seccionpage_class] => padding-content\n    [seccionpage_ordenar] => orden DESC\n    [seccionpage_id] => 5\n)\n'),
(55, 'adminomega', 'EDITAR SECCION', '2018-10-25 11:21:06', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner2.jpg\n    [seccionpage_fondo_estilo] => 8\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_disenio] => 1\n    [seccionpage_cantidad] => 2\n    [seccionpage_class] => padding-content\n    [seccionpage_ordenar] => orden DESC\n    [seccionpage_id] => 5\n)\n'),
(56, 'adminomega', 'EDITAR SECCION', '2018-10-25 11:21:59', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 2\n    [seccionpage_contenido] => 1\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => banner2.jpg\n    [seccionpage_fondo_estilo] => 8\n    [seccionpage_fondo_animacion] => 6\n    [seccionpage_disenio] => 1\n    [seccionpage_cantidad] => 2\n    [seccionpage_class] => padding-content\n    [seccionpage_ordenar] => orden ASC\n    [seccionpage_id] => 5\n)\n'),
(57, 'adminomega', 'CREAR SECCION', '2018-10-25 11:34:38', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 3\n    [seccionpage_contenido] => 0\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #CCCCCC\n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 1\n    [seccionpage_fondo_animacion] => 1\n    [seccionpage_disenio] => 0\n    [seccionpage_cantidad] => 0\n    [seccionpage_class] => padding-content\n    [seccionpage_ordenar] => \n    [seccionpage_id] => 6\n)\n'),
(58, 'adminomega', 'CREAR SECCION', '2018-10-25 12:07:42', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 3\n    [seccionpage_contenido] => 0\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #FF00DD\n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 0\n    [seccionpage_fondo_animacion] => 0\n    [seccionpage_disenio] => 0\n    [seccionpage_cantidad] => 0\n    [seccionpage_class] => \n    [seccionpage_ordenar] => \n    [seccionpage_id] => 7\n)\n'),
(59, 'adminomega', 'BORRAR SECCION', '2018-10-25 12:07:59', 'Array\n(\n    [seccionpage_id] => 7\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 3\n    [seccionpage_contenido] => 0\n    [seccionpage_ancho] => 1\n    [seccionpage_espacio] => 1\n    [seccionpage_fondo_color] => #FF00DD\n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 0\n    [seccionpage_fondo_animacion] => 0\n    [seccionpage_class] => \n    [seccionpage_disenio] => 0\n    [seccionpage_cantidad] => 0\n    [seccionpage_ordenar] => \n    [orden] => 7\n)\n'),
(60, 'adminomega', 'CREAR SECCION', '2018-10-25 14:31:22', 'Array\n(\n    [seccionpage_seccion] => 1\n    [seccionpage_tipo] => 4\n    [seccionpage_contenido] => 3\n    [seccionpage_ancho] => 0\n    [seccionpage_espacio] => 0\n    [seccionpage_fondo_color] => \n    [seccionpage_fondo_imagen] => \n    [seccionpage_fondo_estilo] => 0\n    [seccionpage_fondo_animacion] => 0\n    [seccionpage_disenio] => 0\n    [seccionpage_cantidad] => 6\n    [seccionpage_class] => \n    [seccionpage_ordenar] => orden ASC\n    [seccionpage_tipo_contenido] => 1\n    [seccionpage_columna] => col-sm-8\n    [seccionpage_columnas_contenido] => 3\n    [seccionpage_rutaenlace] => \n    [seccionpage_codigo] => \n    [seccionpage_id] => 8\n)\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicidad`
--

CREATE TABLE `publicidad` (
  `publicidad_id` int(11) NOT NULL,
  `publicidad_seccion` int(255) DEFAULT NULL,
  `publicidad_nombre` varchar(500) DEFAULT NULL,
  `publicidad_fecha` date DEFAULT NULL,
  `publicidad_imagen` varchar(500) DEFAULT NULL,
  `publicidad_color_fondo` varchar(255) DEFAULT NULL,
  `publicidad_video` text,
  `publicidad_posicion` varchar(255) DEFAULT NULL,
  `publicidad_descripcion` text,
  `publicidad_estado` int(11) DEFAULT NULL,
  `publicidad_click` int(255) DEFAULT NULL,
  `publicidad_enlace` varchar(500) DEFAULT NULL,
  `publicidad_tipo_enlace` int(11) DEFAULT NULL,
  `publicidad_texto_enlace` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `publicidad`
--

INSERT INTO `publicidad` (`publicidad_id`, `publicidad_seccion`, `publicidad_nombre`, `publicidad_fecha`, `publicidad_imagen`, `publicidad_color_fondo`, `publicidad_video`, `publicidad_posicion`, `publicidad_descripcion`, `publicidad_estado`, `publicidad_click`, `publicidad_enlace`, `publicidad_tipo_enlace`, `publicidad_texto_enlace`, `orden`) VALUES
(1, 1, 'Banner 1', '2018-10-24', 'banner-01.jpg', '', '', '', '', 0, 0, '', 0, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccionpage`
--

CREATE TABLE `seccionpage` (
  `seccionpage_id` int(255) NOT NULL,
  `seccionpage_seccion` int(255) NOT NULL,
  `seccionpage_tipo` int(11) DEFAULT NULL,
  `seccionpage_contenido` int(255) DEFAULT NULL,
  `seccionpage_ancho` int(11) DEFAULT NULL,
  `seccionpage_espacio` int(11) DEFAULT NULL,
  `seccionpage_fondo_color` varchar(255) DEFAULT NULL,
  `seccionpage_fondo_imagen` varchar(255) DEFAULT NULL,
  `seccionpage_fondo_estilo` int(11) DEFAULT NULL,
  `seccionpage_fondo_animacion` int(11) DEFAULT NULL,
  `seccionpage_class` text,
  `seccionpage_disenio` int(11) DEFAULT NULL,
  `seccionpage_cantidad` int(11) DEFAULT NULL,
  `seccionpage_ordenar` varchar(255) DEFAULT NULL,
  `seccionpage_tipo_contenido` int(11) DEFAULT NULL,
  `seccionpage_columna` varchar(255) DEFAULT NULL,
  `seccionpage_columnas_contenido` int(11) DEFAULT NULL,
  `seccionpage_rutaenlace` varchar(500) DEFAULT NULL,
  `seccionpage_codigo` text,
  `orden` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seccionpage`
--

INSERT INTO `seccionpage` (`seccionpage_id`, `seccionpage_seccion`, `seccionpage_tipo`, `seccionpage_contenido`, `seccionpage_ancho`, `seccionpage_espacio`, `seccionpage_fondo_color`, `seccionpage_fondo_imagen`, `seccionpage_fondo_estilo`, `seccionpage_fondo_animacion`, `seccionpage_class`, `seccionpage_disenio`, `seccionpage_cantidad`, `seccionpage_ordenar`, `seccionpage_tipo_contenido`, `seccionpage_columna`, `seccionpage_columnas_contenido`, `seccionpage_rutaenlace`, `seccionpage_codigo`, `orden`) VALUES
(4, 1, 1, 1, 0, 0, '', '', 0, 0, '.full', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4),
(5, 1, 2, 1, 1, 1, '#CCCCCC', 'banner2.jpg', 8, 6, 'padding-content', 1, 2, 'orden ASC', NULL, NULL, NULL, NULL, NULL, 5),
(6, 1, 3, 0, 1, 1, '#CCCCCC', '', 1, 1, 'padding-content', 0, 0, '', NULL, NULL, NULL, NULL, NULL, 6),
(8, 1, 4, 3, 0, 0, '', '', 0, 0, '', 0, 6, 'orden ASC', 1, 'col-sm-8', 3, '', '', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL,
  `user_date` date DEFAULT NULL,
  `user_names` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_level` int(11) DEFAULT NULL,
  `user_state` int(11) DEFAULT NULL,
  `user_user` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_delete` int(11) DEFAULT NULL,
  `user_current_user` bigint(20) DEFAULT NULL,
  `user_code` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`user_id`, `user_date`, `user_names`, `user_email`, `user_level`, `user_state`, `user_user`, `user_password`, `user_delete`, `user_current_user`, `user_code`) VALUES
(1, '2018-07-17', 'Administrador', 'gerencia@omegawebsystems.com', 1, 1, 'adminomega', '$2y$10$VeJHNcqUyreZxgoDzdfzc./.iBnzrBnqlYD47RaCW7IT0FHGvF3yG', 1, 1, '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contenido`
--
ALTER TABLE `contenido`
  ADD PRIMARY KEY (`contenido_id`);

--
-- Indices de la tabla `info_pagina`
--
ALTER TABLE `info_pagina`
  ADD PRIMARY KEY (`info_pagina_id`);

--
-- Indices de la tabla `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indices de la tabla `publicidad`
--
ALTER TABLE `publicidad`
  ADD PRIMARY KEY (`publicidad_id`);

--
-- Indices de la tabla `seccionpage`
--
ALTER TABLE `seccionpage`
  ADD PRIMARY KEY (`seccionpage_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contenido`
--
ALTER TABLE `contenido`
  MODIFY `contenido_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `info_pagina`
--
ALTER TABLE `info_pagina`
  MODIFY `info_pagina_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `log`
--
ALTER TABLE `log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `publicidad`
--
ALTER TABLE `publicidad`
  MODIFY `publicidad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `seccionpage`
--
ALTER TABLE `seccionpage`
  MODIFY `seccionpage_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
