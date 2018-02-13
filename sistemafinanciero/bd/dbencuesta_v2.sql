-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 17-07-2015 a las 06:39:34
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`id`, `nombre`) VALUES
(2, 'ing sistemas'),
(3, 'ing civil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuesta`
--

CREATE TABLE IF NOT EXISTS `encuesta` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACTIVIDAD_LABORAL` varchar(70) NOT NULL,
  `GRADO_FORMACION` varchar(10) NOT NULL,
  `METODO_DOCENTE` varchar(10) NOT NULL,
  `ACTIVIDAD_ACADEMICA` varchar(10) NOT NULL,
  `GRADO_TRABAJO` varchar(10) NOT NULL,
  `JUSTIFICACION` varchar(200) NOT NULL,
  `CORREO_ELECTRONICO` varchar(50) NOT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `permisosmenu`
--

INSERT INTO `permisosmenu` (`ID`, `ID_USUARIO`, `ID_MENU`, `ESTATUS`) VALUES
(1, 1, 1, 0),
(2, 1, 3, 0),
(3, 1, 2, 0),
(4, 1, 4, 0),
(5, 1, 5, 0),
(6, 1, 6, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `NOMBRE`, `APELLIDOS`, `EMAIL`, `FECHA_REGISTRO`, `ESTATUS`, `TIPO`, `PASSWORD`, `ID_CARRERA`, `SEXO`, `FECHA_EGRESO`, `TELEFONO`) VALUES
(1, 'Juan', 'Perez', 'elcapo@programando.com', '2014-07-30 14:39:06', 0, 'Administrador', '81dc9bdb52d04dc20036dbd8313ed055', 0, 0, '0000-00-00', 0),
(2, 'Maria', 'Cortes Crisanto', 'crisant_89@hotmail.com', '2014-07-30 14:39:06', 0, 'Invitado', '263bce650e68ab4e23f28263760b9fa5', 0, 0, '0000-00-00', 0),
(3, 'julio', 'huaman huaman', 'epis.2010.i@gmail.com', '2015-07-12 15:36:59', 0, 'Invitado', '71ca8fe7a8efbba72b076efecf24aa60', 0, 0, '0000-00-00', 0),
(4, 'Irving Michael', 'Ortega Zarabia', 'irving@gmail.com', '2015-07-13 19:46:27', 0, 'Administrador', 'c4ca4238a0b923820dcc509a6f75849b', 0, 0, '0000-00-00', 0),
(5, 'nfjsdnfjk', 'nfjksnfsj', 'njfndsjkfsd@nfjhdsbfs.com', '2015-07-14 10:15:08', 0, 'Invitado', '123', 0, 0, '0000-00-00', 0),
(6, 'julio', 'huaman', 'julio@gmail.com', '2015-07-16 23:11:56', 0, 'Administrador', '123', 3, 1, '2015-07-08', 1234567),
(7, 'ew', 'qq', 'we@f.com', '2015-07-16 23:19:22', 0, 'Invitado', '123', 3, 1, '2015-07-07', 0),
(8, 'juliol', '565', '65@f.vo', '2015-07-16 23:19:55', 0, 'Administrador', '123', 2, 0, '2015-07-01', 123456789),
(9, 'juana', 'quispe', 'juana@gmail.com', '2015-07-16 23:34:06', 1, 'Invitado', '123', 3, 1, '2015-07-16', 4567890);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
