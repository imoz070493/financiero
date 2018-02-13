-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 18-07-2015 a las 08:06:50
-- Versión del servidor: 5.5.16
-- Versión de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `dbencuesta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE IF NOT EXISTS `carrera` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`ID`, `NOMBRE`) VALUES
(2, 'ing sistemas'),
(3, 'ing civil'),
(4, 'ing de minas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta`
--

CREATE TABLE IF NOT EXISTS `encuesta` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVIDAD_LABORAL` varchar(70) NOT NULL,
  `GRADO_FORMACION` varchar(40) NOT NULL,
  `METODO_DOCENTE` varchar(10) NOT NULL,
  `ACTIVIDAD_ACADEMICA` varchar(10) NOT NULL,
  `GRADO_TRABAJO` varchar(10) NOT NULL,
  `JUSTIFICACION` varchar(200) NOT NULL,
  `CORREO_ELECTRONICO` varchar(50) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  `FECHA_ENCUESTA` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `encuesta`
--

INSERT INTO `encuesta` (`ID`, `ACTIVIDAD_LABORAL`, `GRADO_FORMACION`, `METODO_DOCENTE`, `ACTIVIDAD_ACADEMICA`, `GRADO_TRABAJO`, `JUSTIFICACION`, `CORREO_ELECTRONICO`, `ID_USUARIO`, `FECHA_ENCUESTA`) VALUES
(1, 'Actividad profesional especifica', 'Suficiente', 'SI', 'NO', 'SI', 'dfdfs', 'epis.2010@hfshf.com', 1, '2015-07-17'),
(2, 'Desocupado', 'Insuficiente', 'NS/NC', 'NS/NC', 'NO', 'xq', 'epis.2016', 3, '2015-07-17'),
(3, 'Actividad academica', 'Medianamente Suficiente', 'NO', 'NO', 'SI', 'es una vageria', 'juana@gmail.com', 2, '2015-07-17'),
(4, 'Actividad profesional especifica', 'Suficiente', 'SI', 'SI', 'SI', 'xq vageaba', 'juana@gmail.com', 10, '2015-07-17'),
(9, 'Actividad gerencial', 'Medianamente Suficiente', 'NO', 'NS/NC', 'NO', 'ggggggggggggggg', 'raul@com.pe', 10, '2015-07-17'),
(10, 'Actividad academica', 'Medianamente Suficiente', 'NS/NC', 'NO', 'NO', 'fdfffffffffff', 'juana@gmail.com', 10, '2015-07-17'),
(11, '0', '0', '0', '0', '0', '0', '0', 1, '0000-00-00'),
(12, '0', '0', '0', '0', '0', 'AAA', '', 1, '2015-07-17'),
(13, 'Actividad academica', 'Medianamente Suficiente', 'NO', 'NO', 'NO', 'dddddddd', 'julio@hotmal.com', 1, '2015-07-17'),
(14, 'Actividad academica', 'Medianamente Suficiente', 'NO', 'NO', 'NO', 'eeeeeeeeeeee', 'ewew@kkdf.com', 1, '2015-07-17'),
(15, 'Actividad gerencial', 'Medianamente Suficiente', 'NO', 'NO', 'NO', 'aaaaaaaaaa', 'epis.210@h.com', 1, '2015-07-17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_sistema`
--

CREATE TABLE IF NOT EXISTS `menu_sistema` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(50) NOT NULL,
  `IMAGEN` varchar(50) NOT NULL DEFAULT 'imagenes/not_found.png',
  `URL` varchar(50) DEFAULT NULL,
  `ORDENAMIENTO` int(11) NOT NULL DEFAULT '0',
  `ESTATUS` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `menu_sistema`
--

INSERT INTO `menu_sistema` (`ID`, `DESCRIPCION`, `IMAGEN`, `URL`, `ORDENAMIENTO`, `ESTATUS`) VALUES
(1, 'Inicio', 'imagenes/Customer.png', '#', 1, 0),
(2, 'Agregar Usuarios', 'imagenes/Proveedores.png', '/usuarios/nuevo', 3, 0),
(3, 'Listar Usuarios', 'imagenes/Product.png', '/usuarios', 2, 0),
(4, 'Llenar Encuesta', 'imagenes/not_found.png', '/usuarios/encuesta', 4, 0),
(5, 'Agregar Carrera', 'imagenes/not_found.png', '/carrera/nuevo', 5, 0),
(6, 'Listado Carrera', 'imagenes/not_found.png', '/carrera/listadoCarrera', 6, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisosmenu`
--

CREATE TABLE IF NOT EXISTS `permisosmenu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_USUARIO` int(11) NOT NULL,
  `ID_MENU` int(11) NOT NULL,
  `ESTATUS` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `permisosmenu`
--

INSERT INTO `permisosmenu` (`ID`, `ID_USUARIO`, `ID_MENU`, `ESTATUS`) VALUES
(1, 1, 1, 0),
(2, 1, 3, 0),
(3, 1, 2, 0),
(4, 1, 4, 0),
(5, 1, 5, 0),
(6, 1, 6, 0),
(7, 3, 1, 0),
(8, 3, 3, 0),
(9, 3, 2, 0),
(10, 3, 4, 0),
(11, 3, 5, 0),
(12, 3, 6, 0),
(13, 2, 1, 0),
(14, 2, 4, 0),
(15, 10, 4, 0),
(16, 11, 1, 0),
(17, 11, 4, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDOS` varchar(100) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `FECHA_REGISTRO` varchar(20) NOT NULL,
  `ESTATUS` int(11) NOT NULL DEFAULT '0',
  `TIPO` varchar(20) NOT NULL DEFAULT 'Invitado',
  `PASSWORD` varchar(50) DEFAULT '123',
  `ID_CARRERA` int(11) NOT NULL,
  `SEXO` int(11) NOT NULL,
  `FECHA_EGRESO` date NOT NULL,
  `TELEFONO` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `NOMBRE`, `APELLIDOS`, `EMAIL`, `FECHA_REGISTRO`, `ESTATUS`, `TIPO`, `PASSWORD`, `ID_CARRERA`, `SEXO`, `FECHA_EGRESO`, `TELEFONO`) VALUES
(1, 'Juan', 'Perez', 'elcapo@programando.com', '2014-07-30 14:39:06', 0, 'Administrador', '81dc9bdb52d04dc20036dbd8313ed055', 4, 0, '2015-07-16', 0),
(2, 'Maria', 'Cortes Crisanto', 'crisant_89@hotmail.com', '2014-07-30 14:39:06', 0, 'Invitado', '263bce650e68ab4e23f28263760b9fa5', 2, 1, '2015-07-15', 0),
(3, 'julio', 'huaman huaman', 'epis.2010.i@gmail.com', '2015-07-12 15:36:59', 0, 'Administrador', 'c027636003b468821081e281758e35ff', 3, 0, '2015-07-01', 0),
(4, 'Irving Michael', 'Ortega Zarabia', 'irving@gmail.com', '2015-07-13 19:46:27', 0, 'Administrador', 'c4ca4238a0b923820dcc509a6f75849b', 0, 0, '0000-00-00', 0),
(10, 'Juana', 'Vargas Pariona', 'juana@gmail.com', '2015-07-17 11:41:24', 0, 'Invitado', '9b4aaf9b8bbe6677bd119c356433a318', 4, 1, '2015-07-02', 983804065);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
