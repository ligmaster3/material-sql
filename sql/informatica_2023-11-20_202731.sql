/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
DROP TABLE IF EXISTS alunmos;
CREATE TABLE `alunmos` (
  `nombre` varchar(20) DEFAULT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `matricula` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS aulas;
CREATE TABLE `aulas` (
  `idaula` varchar(20) DEFAULT NULL,
  `nombreaula` varchar(20) DEFAULT NULL,
  `edificio` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS maestros;
CREATE TABLE `maestros` (
  `nommaestros` varchar(20) DEFAULT NULL,
  `dirmaestro` varchar(20) DEFAULT NULL,
  `idmaestro` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO alunmos(nombre,direccion,matricula) VALUES('\'jose\'','\'santa rosa 4\'','\'matricula\''),('\'michel\'','\'san marcos\'','\'02\''),('\'rosalia\'','\'verba\'','\'03\'');

INSERT INTO aulas(idaula,nombreaula,edificio) VALUES('\'A4\'','\'claviejero\'','\'A\''),('\'B2\'','\'administrador\'','\'B\''),('\'G1\'','\'laboratorio\'','\'G\'');
INSERT INTO maestros(nommaestros,dirmaestro,idmaestro) VALUES('\'juan perez\'','\'independiente 2\'','\'11\''),('\'mayron gonzales\'','\'frontera\'','\'12\''),('\'rosalia molina\'','\'verba\'','\'4\'');