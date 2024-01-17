/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
DROP TABLE IF EXISTS articulos;
CREATE TABLE `articulos` (
  `codigo` int(11) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `descripcion` varchar(25) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS usuarios;
CREATE TABLE `usuarios` (
  `nombre` varchar(20) DEFAULT NULL,
  `clave` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO articulos(codigo,nombre,descripcion,precio,cantidad) VALUES('1','\'hp\'','\'computadora de escritorio\'','2000','3'),('2','\'dell\'','\'laptop\'','1150','10'),('3','\'compaq\'','\'notbook\'','5400','8'),('4','\'acer\'','\'computadora de escritorio\'','5200','3'),('5','\'lenovo\'','\'computadora\'','5000','18');
INSERT INTO usuarios(nombre,clave) VALUES('\'juan perez\'','\'jpi1\''),('\'maria zarata\'','\'mz2\''),('\'antonio molina\'','\'am3\''),('\'victor gonzales\'','\'vg4\''),('\'angel guitierrez\'','\'ay5\'');