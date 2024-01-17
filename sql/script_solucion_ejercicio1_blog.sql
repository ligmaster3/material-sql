SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de datos: `Blog`
--

-- --------------------------------------------------------

--
-- Estructura de la tabla `contenido`
--

DROP TABLE IF EXISTS `contenido`;
CREATE TABLE IF NOT EXISTS `contenido` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Titre` varchar(25) NOT NULL,
  `Date` datetime NOT NULL,
  `Comentario` text NOT NULL,
  `Foto` varchar(25) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;
