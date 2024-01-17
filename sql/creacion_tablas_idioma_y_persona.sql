SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de datos: `_test`
--

-- --------------------------------------------------------

--
-- Estructura de la tabla `idioma`
--

DROP TABLE IF EXISTS `idioma`;
CREATE TABLE IF NOT EXISTS `idioma` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Etiqueta` varchar(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenido de la tabla `idioma`
--

INSERT INTO `idioma` (`Id`, `Etiqueta`) VALUES
(1, 'Español'),
(2, 'Inglés'),
(3, 'Alemán'),
(4, 'Francés');

-- --------------------------------------------------------

--
-- Estructura de la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombrebre` varchar(20) NOT NULL,
  `Apellidos` varchar(20) NOT NULL,
  `Edad` int(11) NOT NULL,
  `Id_idioma` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenido de la tabla `persona`
--

INSERT INTO `persona` (`Id`, `Nombrebre`, `Apellidos`, `Edad`, `Id_idioma`) VALUES
(1, 'Sánchez', 'ängel', 55, 1),
(2, 'González', 'María', 60, 2),
(3, 'López', 'Roberto', 35, 3),
(4, 'Alonso', 'Mateo', 23, 1),
(5, 'Martín', 'José', 20, 2),
(6, 'Peréz', 'Luis', 26, 1);
