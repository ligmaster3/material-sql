-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Versión del servidor: 5.1.54
-- Versión de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de datos: `formacion`
--

-- --------------------------------------------------------

--
-- Estructura de la tabla `formador`
--

DROP TABLE IF EXISTS `formador`;
CREATE TABLE IF NOT EXISTS `formador` (
  `Id_formador` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(20) NOT NULL,
  `Apellidos` varchar(20) NOT NULL,
  `Id_sala` int(11) NOT NULL,
  PRIMARY KEY (`Id_formador`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenido de la tabla `formador`
--

INSERT INTO `formador` (`Id_formador`, `Nombre`, `Apellidos`, `Id_sala`) VALUES
(1, 'Morales HonHon', 'Estefanía', 1),
(2, 'García Arripe', 'Pablo', 2),
(3, 'Mártin Cruz', 'Emilio', 3),
(4, 'Gonzalez Sánchez', 'María', 4);

-- --------------------------------------------------------

--
-- Estructura de la tabla `nacionalidad`
--

DROP TABLE IF EXISTS `nacionalidad`;
CREATE TABLE IF NOT EXISTS `nacionalidad` (
  `Id_nacionalidad` int(11) NOT NULL AUTO_INCREMENT,
  `Etiqueta` varchar(25) NOT NULL,
  PRIMARY KEY (`Id_nacionalidad`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenido de la tabla `nacionalidad`
--

INSERT INTO `nacionalidad` (`Id_nacionalidad`, `Etiqueta`) VALUES
(1, 'Francés'),
(2, 'Inglés'),
(3, 'Alemán'),
(4, 'Ruso');

-- --------------------------------------------------------

--
-- Estructura de la tabla `sala`
--

DROP TABLE IF EXISTS `sala`;
CREATE TABLE IF NOT EXISTS `sala` (
  `Id_sala` int(11) NOT NULL AUTO_INCREMENT,
  `Etiqueta` varchar(20) NOT NULL,
  PRIMARY KEY (`Id_sala`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenido de la tabla `sala`
--

INSERT INTO `sala` (`Id_sala`, `Etiqueta`) VALUES
(1, '101'),
(2, '102'),
(3, '201'),
(4, '202');

-- --------------------------------------------------------

--
-- Estructura de la tabla `becario`
--

DROP TABLE IF EXISTS `becario`;
CREATE TABLE IF NOT EXISTS `becario` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(20) NOT NULL,
  `Apellidos` varchar(20) NOT NULL,
  `Id_nacionalidad` int(11) NOT NULL,
  `Id_tipo_formacion` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Contenido de la tabla `becario`
--

INSERT INTO `becario` (`Id`, `Nombre`, `Apellidos`, `Id_nacionalidad`, `Id_tipo_formacion`) VALUES
(1, 'López', 'Nadia', 4, 1),
(2, 'Del Pozo', 'Carolina', 1, 2),
(8, 'Gómez', 'Alez', 2, 1),
(4, 'Rodríguez', 'María', 3, 2),
(6, 'Morales', 'Estefanía', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de la tabla `becario_formador`
--

DROP TABLE IF EXISTS `becario_formador`;
CREATE TABLE IF NOT EXISTS `becario_formador` (
  `Id_becario` int(11) NOT NULL,
  `Id_formador` int(11) NOT NULL,
  `Fecha_inicio` date NOT NULL,
  `Fecha_fin` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenido de la tabla `becario_formador`
--

INSERT INTO `becario_formador` (`Id_becario`, `Id_formador`, `Fecha_inicio`, `Fecha_fin`) VALUES
(1, 1, '2013-07-25', '2013-10-28'),
(1, 2, '2013-10-31', '2013-12-30'),
(2, 4, '2013-08-26', '2013-10-18'),
(8, 2, '2013-08-15', '2014-02-15'),
(6, 4, '2013-08-21', '2013-10-21'),
(4, 3, '2013-08-17', '2014-02-21');

-- --------------------------------------------------------

--
-- Estructura de la tabla `tipo_formacion`
--

DROP TABLE IF EXISTS `tipo_formacion`;
CREATE TABLE IF NOT EXISTS `tipo_formacion` (
  `Id_tipo_formacion` int(11) NOT NULL AUTO_INCREMENT,
  `Etiqueta` varchar(25) NOT NULL,
  PRIMARY KEY (`Id_tipo_formacion`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenido de la tabla `tipo_formacion`
--

INSERT INTO `tipo_formacion` (`Id_tipo_formacion`, `Etiqueta`) VALUES
(1, 'Web designer'),
(2, 'Desarrollador');

-- --------------------------------------------------------

--
-- Estructura de la tabla `tipo_formacion_formador`
--

DROP TABLE IF EXISTS `tipo_formacion_formador`;
CREATE TABLE IF NOT EXISTS `tipo_formacion_formador` (
  `Id_tipo_formacion` int(11) NOT NULL,
  `Id_formador` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenido de la tabla `tipo_formacion_formador`
--

INSERT INTO `tipo_formacion_formador` (`Id_tipo_formacion`, `Id_formador`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4);
