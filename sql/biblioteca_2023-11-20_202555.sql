/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
DROP TABLE IF EXISTS autor;
CREATE TABLE `autor` (
  `idautor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) DEFAULT NULL,
  `nacionalidad` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`idautor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS estudiante;
CREATE TABLE `estudiante` (
  `idlector` int(11) NOT NULL AUTO_INCREMENT,
  `ci` varchar(40) DEFAULT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `carrera` varchar(40) DEFAULT NULL,
  `edad` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`idlector`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS libro;
CREATE TABLE `libro` (
  `idlibro` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(40) DEFAULT NULL,
  `editorial` varchar(40) DEFAULT NULL,
  `area` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`idlibro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS lib_autor;
CREATE TABLE `lib_autor` (
  `id_autor` int(11) DEFAULT NULL,
  `id_libro` int(11) DEFAULT NULL,
  KEY `id_autor` (`id_autor`),
  KEY `id_libro` (`id_libro`),
  CONSTRAINT `lib_autor_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`idautor`),
  CONSTRAINT `lib_autor_ibfk_2` FOREIGN KEY (`id_libro`) REFERENCES `libro` (`idlibro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS prestamo;
CREATE TABLE `prestamo` (
  `idlector` int(11) DEFAULT NULL,
  `idlibro` int(11) DEFAULT NULL,
  `fechaprestamo` int(11) NOT NULL,
  `fechadevolucion` int(11) DEFAULT NULL,
  `devuelto` int(11) DEFAULT NULL,
  PRIMARY KEY (`fechaprestamo`),
  KEY `idlector` (`idlector`),
  KEY `idlibro` (`idlibro`),
  CONSTRAINT `prestamo_ibfk_1` FOREIGN KEY (`idlector`) REFERENCES `estudiante` (`idlector`),
  CONSTRAINT `prestamo_ibfk_2` FOREIGN KEY (`idlibro`) REFERENCES `libro` (`idlibro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO autor(idautor,nombre,nacionalidad) VALUES('1','\'jorge\'','\'España\''),('2','\'harry\'','\'España\''),('3','\'miguel\'','\'argentina\'');

INSERT INTO estudiante(idlector,ci,nombre,direccion,carrera,edad) VALUES('1','\'23\'','\'luis\'','\'calle molina 3 casa\'','\'medicina\'','\'21\''),('2','\'41\'','\'luna\'','\'calle antonio\'','\'enfermeria\'','\'26\''),('3','\'11\'','\'robles\'','\'AV Centima\'','\'derecho\'','\'44\'');

INSERT INTO libro(idlibro,titulo,editorial,area) VALUES('1','\'tempestad\'','\'hiruko\'','\'australia\''),('2','\'la verdad\'','\'reversi\'','\'new jork\''),('3','\'shazam \'','\'mappa\'','\' tokio\'');

INSERT INTO lib_autor(id_autor,id_libro) VALUES('1','1'),('2','2'),('3','3');
INSERT INTO prestamo(idlector,idlibro,fechaprestamo,fechadevolucion,devuelto) VALUES('2','2','1','21','400'),('3','3','3','30','4006'),('1','1','22','15','299');