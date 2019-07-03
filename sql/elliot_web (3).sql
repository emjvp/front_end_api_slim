-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-02-2019 a las 23:12:57
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `elliot_web`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `automata`
--

CREATE TABLE `automata` (
  `automata_id` int(11) NOT NULL,
  `automata_nombre` varchar(255) DEFAULT NULL,
  `automata_tipo` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `automata`
--

INSERT INTO `automata` (`automata_id`, `automata_nombre`, `automata_tipo`, `orden`) VALUES
(1, 'Recolector1', '1', 1),
(2, 'Constructor1', '2', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido`
--

CREATE TABLE `contenido` (
  `contenido_id` int(255) NOT NULL,
  `contenido_seccion` int(255) DEFAULT NULL,
  `contenido_tipo` int(255) DEFAULT NULL,
  `contenido_padre` int(255) DEFAULT NULL,
  `contenido_columna_alineacion` int(11) DEFAULT NULL,
  `contenido_columna` varchar(255) DEFAULT NULL,
  `contenido_columna_espacios` int(11) DEFAULT NULL,
  `contenido_disenio` int(11) DEFAULT NULL,
  `contenido_borde` int(11) DEFAULT NULL,
  `contenido_estado` int(11) DEFAULT NULL,
  `contenido_fecha` date DEFAULT NULL,
  `contenido_titulo` varchar(500) DEFAULT NULL,
  `contenido_titulo_ver` int(11) DEFAULT NULL,
  `contenido_imagen` varchar(500) DEFAULT NULL,
  `contenido_fondo_imagen` varchar(50) DEFAULT NULL,
  `contenido_fondo_imagen_tipo` int(11) DEFAULT NULL,
  `contenido_fondo_color` varchar(100) DEFAULT NULL,
  `contenido_introduccion` text,
  `contenido_descripcion` text,
  `contenido_enlace` varchar(500) DEFAULT NULL,
  `contenido_enlace_abrir` int(11) DEFAULT NULL,
  `contenido_vermas` varchar(100) DEFAULT NULL,
  `orden` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenidos`
--

CREATE TABLE `contenidos` (
  `contenidos_id` int(11) NOT NULL,
  `contenidos_fecha` date DEFAULT NULL,
  `contenidos_imagen` varchar(255) DEFAULT NULL,
  `contenidos_seccion` varchar(255) DEFAULT NULL,
  `contenidos_estado` varchar(255) DEFAULT NULL,
  `contenidos_titulo` varchar(255) DEFAULT NULL,
  `contenidos_subtitulo` varchar(255) DEFAULT NULL,
  `contenidos_introduccion` text,
  `contenidos_descripcion` text,
  `contenidos_enlace` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contenidos`
--

INSERT INTO `contenidos` (`contenidos_id`, `contenidos_fecha`, `contenidos_imagen`, `contenidos_seccion`, `contenidos_estado`, `contenidos_titulo`, `contenidos_subtitulo`, `contenidos_introduccion`, `contenidos_descripcion`, `contenidos_enlace`, `orden`) VALUES
(1, '2019-02-08', '', '1', '', 'Bienvenidos a mi Proyecto', '', '<p>Est&aacute; es una peque&ntilde;a demostracion sobre el patron de arquitectura de software MVC, con un peque&ntilde;o sitio web.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>', '', 1),
(2, '2019-02-08', '', '2', '', 'Humanos', 'Subtitulo', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>', '', 2),
(3, '2019-02-08', '', '3', '', 'Aut&oacute;matas', 'Subtitulo', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>', '', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `humano`
--

CREATE TABLE `humano` (
  `humano_id` int(11) NOT NULL,
  `humano_nombre` varchar(255) DEFAULT NULL,
  `humano_descipcion` text,
  `humano_faccion` varchar(255) DEFAULT NULL,
  `humano_trabajo` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `humano`
--

INSERT INTO `humano` (`humano_id`, `humano_nombre`, `humano_descipcion`, `humano_faccion`, `humano_trabajo`, `orden`) VALUES
(1, 'Pedro', '<div id=\"lipsum\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum turpis vitae leo bibendum efficitur. Integer imperdiet justo sed dapibus bibendum. Suspendisse a diam in ex pellentesque auctor. Mauris ac turpis gravida, tincidunt augue in, mollis ligula. Vivamus ac est a orci molestie mollis. Nam auctor luctus quam non maximus. Suspendisse potenti. Nullam bibendum orci sit amet tellus sodales, sit amet tincidunt nisi vehicula. Nullam vitae nunc mauris. Proin eu nisi urna. Nam posuere non eros id consequat. Proin sed massa orci. Praesent hendrerit maximus ante, in vulputate tellus tempus ac. Nulla id ligula sit amet elit iaculis malesuada.</p>\r\n</div>', '1', '1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `humano_faccion`
--

CREATE TABLE `humano_faccion` (
  `humano_faccion_id` int(11) NOT NULL,
  `humano_faccion_nombre` varchar(255) DEFAULT NULL,
  `humano_faccion_introduccion` text,
  `humano_faccion_descipcion` text,
  `humano_faccion_imagen` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `humano_faccion`
--

INSERT INTO `humano_faccion` (`humano_faccion_id`, `humano_faccion_nombre`, `humano_faccion_introduccion`, `humano_faccion_descipcion`, `humano_faccion_imagen`, `orden`) VALUES
(1, 'Constructores', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>', '14310561-3d-pequeno-personaje-humano-el-x3-constructores-con-las-herramientas-de-edicion-de-la-serie-color-de-perso.jpg', 1),
(2, 'Recolectores de Energ&iacute;a', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>', '', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `humano_trabajo`
--

CREATE TABLE `humano_trabajo` (
  `humano_trabajo_id` int(11) NOT NULL,
  `humano_trabajo_nombre` varchar(255) DEFAULT NULL,
  `humano_trabajo_introduccion` text,
  `humano_trabajo_descripccion` text,
  `humano_trabajo_imagen` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `humano_trabajo`
--

INSERT INTO `humano_trabajo` (`humano_trabajo_id`, `humano_trabajo_nombre`, `humano_trabajo_introduccion`, `humano_trabajo_descripccion`, `humano_trabajo_imagen`, `orden`) VALUES
(1, 'Quitar maleza', '', '', '', 1);

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
(1, 'admin', 'CREAR CONTENIDO', '2019-02-07 23:01:11', 'Array\n(\n    [contenido_estado] => 0\n    [contenido_seccion] => 1\n    [contenido_fecha] => 2019-02-07\n    [contenido_titulo] => Bienvenidos a mi proyecto\n    [contenido_subtitulo] => \n    [contenido_introduccion] => <p>Hola</p>\n    [contenido_descripcion] => <p>hola</p>\n    [contenido_imagen] => \n    [contenido_fondo_color] => \n    [contenido_fondo_imagen] => \n    [contenido_enlace] => \n    [contenido_enlace_abrir] => 0\n    [contenido_enlace_vermas] => \n    [contenido_id] => 0\n)\n'),
(2, 'admin', 'CREAR CONTENIDO', '2019-02-07 23:09:59', 'Array\n(\n    [contenido_estado] => 0\n    [contenido_seccion] => 1\n    [contenido_fecha] => 2019-02-07\n    [contenido_titulo] => Bienvenidos a mi proyecto\n    [contenido_subtitulo] => \n    [contenido_introduccion] => <p>Hola</p>\n    [contenido_descripcion] => <p>hola</p>\n    [contenido_imagen] => \n    [contenido_fondo_color] => \n    [contenido_fondo_imagen] => \n    [contenido_enlace] => \n    [contenido_enlace_abrir] => 0\n    [contenido_enlace_vermas] => \n    [contenido_id] => 0\n)\n'),
(3, 'admin', 'CREAR CONTENIDOS', '2019-02-08 09:48:59', 'Array\n(\n    [contenidos_fecha] => 2019-02-08\n    [contenidos_imagen] => \n    [contenidos_seccion] => \n    [contenidos_estado] => \n    [contenidos_titulo] => \n    [contenidos_subtitulo] => \n    [contenidos_introduccion] => \n    [contenidos_descripcion] => \n    [contenidos_enlace] => \n    [contenidos_id] => 1\n)\n'),
(4, 'admin', 'EDITAR CONTENIDOS', '2019-02-08 09:52:31', 'Array\n(\n    [contenidos_fecha] => 2019-02-08\n    [contenidos_imagen] => \n    [contenidos_seccion] => 1\n    [contenidos_estado] => \n    [contenidos_titulo] => \n    [contenidos_subtitulo] => \n    [contenidos_introduccion] => \n    [contenidos_descripcion] => \n    [contenidos_enlace] => \n    [contenidos_id] => 1\n)\n'),
(5, 'admin', 'EDITAR CONTENIDOS', '2019-02-08 10:29:25', 'Array\n(\n    [contenidos_fecha] => 2019-02-08\n    [contenidos_imagen] => \n    [contenidos_seccion] => 1\n    [contenidos_estado] => \n    [contenidos_titulo] => Bienvenidos a mi Proyecto\n    [contenidos_subtitulo] => \n    [contenidos_introduccion] => <p>Est&aacute; es una peque&ntilde;a demostracion sobre el patron de arquitectura de software MVC</p>\n    [contenidos_descripcion] => \n    [contenidos_enlace] => \n    [contenidos_id] => 1\n)\n'),
(6, 'admin', 'EDITAR CONTENIDOS', '2019-02-08 10:29:53', 'Array\n(\n    [contenidos_fecha] => 2019-02-08\n    [contenidos_imagen] => \n    [contenidos_seccion] => 1\n    [contenidos_estado] => \n    [contenidos_titulo] => Bienvenidos a mi Proyecto\n    [contenidos_subtitulo] => \n    [contenidos_introduccion] => <p>Est&aacute; es una peque&ntilde;a demostracion sobre el patron de arquitectura de software MVC, con un peque&ntilde;o sitio web</p>\n    [contenidos_descripcion] => \n    [contenidos_enlace] => \n    [contenidos_id] => 1\n)\n'),
(7, 'admin', 'EDITAR CONTENIDOS', '2019-02-08 10:36:00', 'Array\n(\n    [contenidos_fecha] => 2019-02-08\n    [contenidos_imagen] => \n    [contenidos_seccion] => 1\n    [contenidos_estado] => \n    [contenidos_titulo] => Bienvenidos a mi Proyecto\n    [contenidos_subtitulo] => \n    [contenidos_introduccion] => <p>Est&aacute; es una peque&ntilde;a demostracion sobre el patron de arquitectura de software MVC, con un peque&ntilde;o sitio web</p>\n    [contenidos_descripcion] => <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>\n    [contenidos_enlace] => \n    [contenidos_id] => 1\n)\n'),
(8, 'admin', 'EDITAR CONTENIDOS', '2019-02-08 10:58:20', 'Array\n(\n    [contenidos_fecha] => 2019-02-08\n    [contenidos_imagen] => \n    [contenidos_seccion] => 1\n    [contenidos_estado] => \n    [contenidos_titulo] => Bienvenidos a mi Proyecto\n    [contenidos_subtitulo] => Subtitulo\n    [contenidos_introduccion] => <p>Est&aacute; es una peque&ntilde;a demostracion sobre el patron de arquitectura de software MVC, con un peque&ntilde;o sitio web</p>\n    [contenidos_descripcion] => <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>\n    [contenidos_enlace] => \n    [contenidos_id] => 1\n)\n'),
(9, 'admin', 'EDITAR CONTENIDOS', '2019-02-08 12:56:21', 'Array\n(\n    [contenidos_fecha] => 2019-02-08\n    [contenidos_imagen] => \n    [contenidos_seccion] => 1\n    [contenidos_estado] => \n    [contenidos_titulo] => Bienvenidos a mi Proyecto\n    [contenidos_subtitulo] => \n    [contenidos_introduccion] => <p>Est&aacute; es una peque&ntilde;a demostracion sobre el patron de arquitectura de software MVC, con un peque&ntilde;o sitio web</p>\n    [contenidos_descripcion] => <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>\n    [contenidos_enlace] => \n    [contenidos_id] => 1\n)\n'),
(10, 'admin', 'CREAR CONTENIDOS', '2019-02-08 12:57:58', 'Array\n(\n    [contenidos_fecha] => 2019-02-08\n    [contenidos_imagen] => \n    [contenidos_seccion] => 2\n    [contenidos_estado] => \n    [contenidos_titulo] => Humanos\n    [contenidos_subtitulo] => Subtitulo\n    [contenidos_introduccion] => <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>\n    [contenidos_descripcion] => <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>\n    [contenidos_enlace] => \n    [contenidos_id] => 2\n)\n'),
(11, 'admin', 'EDITAR CONTENIDOS', '2019-02-08 13:09:11', 'Array\n(\n    [contenidos_fecha] => 2019-02-08\n    [contenidos_imagen] => \n    [contenidos_seccion] => 2\n    [contenidos_estado] => \n    [contenidos_titulo] => Humanos\n    [contenidos_subtitulo] => Subtitulo\n    [contenidos_introduccion] => <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>\n    [contenidos_descripcion] => <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>\n    [contenidos_enlace] => \n    [contenidos_id] => 2\n)\n'),
(12, 'admin', 'EDITAR CONTENIDOS', '2019-02-08 13:09:50', 'Array\n(\n    [contenidos_fecha] => 2019-02-08\n    [contenidos_imagen] => \n    [contenidos_seccion] => 1\n    [contenidos_estado] => \n    [contenidos_titulo] => Bienvenidos a mi Proyecto\n    [contenidos_subtitulo] => \n    [contenidos_introduccion] => <p>Est&aacute; es una peque&ntilde;a demostracion sobre el patron de arquitectura de software MVC, con un peque&ntilde;o sitio web.</p>\n    [contenidos_descripcion] => <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>\n    [contenidos_enlace] => \n    [contenidos_id] => 1\n)\n'),
(13, 'admin', 'EDITAR CONTENIDOS', '2019-02-08 13:21:37', 'Array\n(\n    [contenidos_fecha] => 2019-02-08\n    [contenidos_imagen] => \n    [contenidos_seccion] => 2\n    [contenidos_estado] => \n    [contenidos_titulo] => Humanos\n    [contenidos_subtitulo] => Subtitulo\n    [contenidos_introduccion] => <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>\n    [contenidos_descripcion] => <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>\n    [contenidos_enlace] => \n    [contenidos_id] => 2\n)\n'),
(14, 'admin', 'CREAR HUMANO FACCION', '2019-02-08 14:59:26', 'Array\n(\n    [humano_faccion_nombre] => Constructores\n    [humano_faccion_introduccion] => <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>\n    [humano_faccion_descipcion] => <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>\n    [humano_faccion_imagen] => 14310561-3d-pequeno-personaje-humano-el-x3-constructores-con-las-herramientas-de-edicion-de-la-serie-color-de-perso.jpg\n    [humano_faccion_id] => 1\n)\n'),
(15, 'admin', 'CREAR HUMANO FACCION', '2019-02-08 15:06:00', 'Array\n(\n    [humano_faccion_nombre] => Recolectores de Energ&iacute;a\n    [humano_faccion_introduccion] => <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>\n    [humano_faccion_descipcion] => <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>\n    [humano_faccion_imagen] => \n    [humano_faccion_id] => 2\n)\n'),
(16, 'admin', 'EDITAR HUMANO FACCION', '2019-02-08 16:47:25', 'Array\n(\n    [humano_faccion_nombre] => Recolectores de Energ&iacute;a\n    [humano_faccion_introduccion] => <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>\n    [humano_faccion_descipcion] => <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>\n    [humano_faccion_imagen] => \n    [humano_faccion_id] => 2\n)\n'),
(17, 'admin', 'CREAR HUMANO TRABAJO', '2019-02-08 16:58:19', 'Array\n(\n    [humano_trabajo_nombre] => Quitar maleza\n    [humano_trabajo_introduccion] => \n    [humano_trabajo_descripccion] => \n    [humano_trabajo_imagen] => \n    [humano_trabajo_id] => 1\n)\n'),
(18, 'admin', 'CREAR HUMANO', '2019-02-08 16:59:10', 'Array\n(\n    [humano_nombre] => Pedro\n    [humano_faccion] => 1\n    [humano_trabajo] => 1\n    [humano_id] => 1\n)\n'),
(19, 'admin', 'EDITAR HUMANO', '2019-02-08 17:02:29', 'Array\n(\n    [humano_nombre] => Pedro\n    [humano_faccion] => 1\n    [humano_trabajo] => 1\n    [humano_id] => 1\n)\n'),
(20, 'admin', 'LOGOUT', '2019-02-08 17:19:31', ''),
(21, 'admin', 'LOGIN', '2019-02-08 17:20:38', ''),
(22, 'admin', 'CREAR TIPO AUT&OACUTE;MATA', '2019-02-08 17:31:21', 'Array\n(\n    [tipo_automata_nombre] => Recolectores\n    [tipo_automata_introduccion] => \n    [tipo_automata_descripcion] => \n    [tipo_automata_imagen] => \n    [tipo_automata_id] => 1\n)\n'),
(23, 'admin', 'CREAR TIPO AUT&OACUTE;MATA', '2019-02-08 17:31:41', 'Array\n(\n    [tipo_automata_nombre] => Constructores\n    [tipo_automata_introduccion] => \n    [tipo_automata_descripcion] => \n    [tipo_automata_imagen] => \n    [tipo_automata_id] => 2\n)\n'),
(24, 'admin', 'CREAR AUTOMATA', '2019-02-08 17:32:04', 'Array\n(\n    [automata_nombre] => A1\n    [automata_tipo] => 1\n    [automata_id] => 1\n)\n'),
(25, 'admin', 'EDITAR AUTOMATA', '2019-02-08 17:32:22', 'Array\n(\n    [automata_nombre] => Recolector1\n    [automata_tipo] => 1\n    [automata_id] => 1\n)\n'),
(26, 'admin', 'CREAR AUTOMATA', '2019-02-08 17:32:45', 'Array\n(\n    [automata_nombre] => Constructor1\n    [automata_tipo] => 2\n    [automata_id] => 2\n)\n'),
(27, 'admin', 'CREAR CONTENIDOS', '2019-02-08 17:38:36', 'Array\n(\n    [contenidos_fecha] => 2019-02-08\n    [contenidos_imagen] => \n    [contenidos_seccion] => 3\n    [contenidos_estado] => \n    [contenidos_titulo] => Aut&oacute;matas\n    [contenidos_subtitulo] => Subtitulo\n    [contenidos_introduccion] => <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>\n    [contenidos_descripcion] => <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut congue odio nec mi pretium egestas. Sed sit amet arcu diam. Vestibulum quam ante, luctus ac lacinia eu, sollicitudin et libero. In hac habitasse platea dictumst. Morbi cursus aliquam nibh, in tincidunt ex vestibulum quis. Ut eget ante justo. Proin laoreet nisl pharetra diam rutrum pulvinar. Mauris at metus eu neque laoreet pharetra. Fusce fringilla nunc odio, vel molestie nibh commodo sed. Sed semper eget ex id dapibus.</p>\n    [contenidos_enlace] => \n    [contenidos_id] => 3\n)\n'),
(28, 'admin', 'EDITAR HUMANO', '2019-02-14 15:45:56', 'Array\n(\n    [humano_nombre] => Pedro\n    [humano_descipcion] => <div id=\"lipsum\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum turpis vitae leo bibendum efficitur. Integer imperdiet justo sed dapibus bibendum. Suspendisse a diam in ex pellentesque auctor. Mauris ac turpis gravida, tincidunt augue in, mollis ligula. Vivamus ac est a orci molestie mollis. Nam auctor luctus quam non maximus. Suspendisse potenti. Nullam bibendum orci sit amet tellus sodales, sit amet tincidunt nisi vehicula. Nullam vitae nunc mauris. Proin eu nisi urna. Nam posuere non eros id consequat. Proin sed massa orci. Praesent hendrerit maximus ante, in vulputate tellus tempus ac. Nulla id ligula sit amet elit iaculis malesuada.</p>\r\n</div>\n    [humano_faccion] => 1\n    [humano_trabajo] => 1\n    [humano_id] => 1\n)\n'),
(29, 'admin', 'EDITAR HUMANO', '2019-02-14 16:04:44', 'Array\n(\n    [humano_nombre] => Pedro\n    [humano_descipcion] => <div id=\"lipsum\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vestibulum turpis vitae leo bibendum efficitur. Integer imperdiet justo sed dapibus bibendum. Suspendisse a diam in ex pellentesque auctor. Mauris ac turpis gravida, tincidunt augue in, mollis ligula. Vivamus ac est a orci molestie mollis. Nam auctor luctus quam non maximus. Suspendisse potenti. Nullam bibendum orci sit amet tellus sodales, sit amet tincidunt nisi vehicula. Nullam vitae nunc mauris. Proin eu nisi urna. Nam posuere non eros id consequat. Proin sed massa orci. Praesent hendrerit maximus ante, in vulputate tellus tempus ac. Nulla id ligula sit amet elit iaculis malesuada.</p>\r\n</div>\n    [humano_faccion] => 1\n    [humano_trabajo] => 1\n    [humano_id] => 1\n)\n'),
(30, 'admin', 'EDITAR TIPO AUT&OACUTE;MATA', '2019-02-14 17:03:32', 'Array\n(\n    [tipo_automata_nombre] => Recolectores\n    [tipo_automata_introduccion] => <div id=\"lipsum\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel est nisi. Nunc dapibus dui ligula, quis aliquet ante fermentum at. Maecenas cursus suscipit interdum. Nullam et elit lobortis, condimentum mi vel, fringilla orci. Pellentesque id vehicula nisl. In molestie arcu eget elit accumsan hendrerit. Donec vehicula leo at semper consectetur.</p>\r\n</div>\n    [tipo_automata_descripcion] => <div id=\"lipsum\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel est nisi. Nunc dapibus dui ligula, quis aliquet ante fermentum at. Maecenas cursus suscipit interdum. Nullam et elit lobortis, condimentum mi vel, fringilla orci. Pellentesque id vehicula nisl. In molestie arcu eget elit accumsan hendrerit. Donec vehicula leo at semper consectetur.</p>\r\n</div>\n    [tipo_automata_imagen] => \n    [tipo_automata_id] => 1\n)\n'),
(31, 'admin', 'EDITAR AUTOMATA', '2019-02-14 17:09:04', 'Array\n(\n    [automata_nombre] => Recolector1\n    [automata_tipo] => 1\n    [automata_id] => 1\n)\n');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_automata`
--

CREATE TABLE `tipo_automata` (
  `tipo_automata_id` int(11) NOT NULL,
  `tipo_automata_nombre` varchar(255) DEFAULT NULL,
  `tipo_automata_introduccion` text,
  `tipo_automata_descripcion` text,
  `tipo_automata_imagen` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_automata`
--

INSERT INTO `tipo_automata` (`tipo_automata_id`, `tipo_automata_nombre`, `tipo_automata_introduccion`, `tipo_automata_descripcion`, `tipo_automata_imagen`, `orden`) VALUES
(1, 'Recolectores', '<div id=\"lipsum\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel est nisi. Nunc dapibus dui ligula, quis aliquet ante fermentum at. Maecenas cursus suscipit interdum. Nullam et elit lobortis, condimentum mi vel, fringilla orci. Pellentesque id vehicula nisl. In molestie arcu eget elit accumsan hendrerit. Donec vehicula leo at semper consectetur.</p>\r\n</div>', '<div id=\"lipsum\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel est nisi. Nunc dapibus dui ligula, quis aliquet ante fermentum at. Maecenas cursus suscipit interdum. Nullam et elit lobortis, condimentum mi vel, fringilla orci. Pellentesque id vehicula nisl. In molestie arcu eget elit accumsan hendrerit. Donec vehicula leo at semper consectetur.</p>\r\n</div>', '', 1),
(2, 'Constructores', '', '', '', 2);

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
(1, '2018-07-17', 'Administrador', 'gerencia@omegawebsystems.com', 1, 1, 'admin', '$2y$10$VeJHNcqUyreZxgoDzdfzc./.iBnzrBnqlYD47RaCW7IT0FHGvF3yG', 1, 1, '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `automata`
--
ALTER TABLE `automata`
  ADD PRIMARY KEY (`automata_id`);

--
-- Indices de la tabla `contenido`
--
ALTER TABLE `contenido`
  ADD PRIMARY KEY (`contenido_id`);

--
-- Indices de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  ADD PRIMARY KEY (`contenidos_id`);

--
-- Indices de la tabla `humano`
--
ALTER TABLE `humano`
  ADD PRIMARY KEY (`humano_id`);

--
-- Indices de la tabla `humano_faccion`
--
ALTER TABLE `humano_faccion`
  ADD PRIMARY KEY (`humano_faccion_id`);

--
-- Indices de la tabla `humano_trabajo`
--
ALTER TABLE `humano_trabajo`
  ADD PRIMARY KEY (`humano_trabajo_id`);

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
-- Indices de la tabla `tipo_automata`
--
ALTER TABLE `tipo_automata`
  ADD PRIMARY KEY (`tipo_automata_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `automata`
--
ALTER TABLE `automata`
  MODIFY `automata_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `contenido`
--
ALTER TABLE `contenido`
  MODIFY `contenido_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contenidos`
--
ALTER TABLE `contenidos`
  MODIFY `contenidos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `humano`
--
ALTER TABLE `humano`
  MODIFY `humano_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `humano_faccion`
--
ALTER TABLE `humano_faccion`
  MODIFY `humano_faccion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `humano_trabajo`
--
ALTER TABLE `humano_trabajo`
  MODIFY `humano_trabajo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `info_pagina`
--
ALTER TABLE `info_pagina`
  MODIFY `info_pagina_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `log`
--
ALTER TABLE `log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `publicidad`
--
ALTER TABLE `publicidad`
  MODIFY `publicidad_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_automata`
--
ALTER TABLE `tipo_automata`
  MODIFY `tipo_automata_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
