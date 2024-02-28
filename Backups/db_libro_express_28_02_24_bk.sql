-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_libro_express
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id_cliente` binary(36) NOT NULL DEFAULT uuid(),
  `nombre_cliente` varchar(50) DEFAULT NULL,
  `email_cliente` varchar(100) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  CONSTRAINT `ch_telefono_clientes` CHECK (octet_length(`telefono`) > 8)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('0376b34c-d665-11ee-af71-b04f1307b4d4','Luis','luis@gmail.com','6983 9847'),('03778ac6-d665-11ee-af71-b04f1307b4d4','Josue','Josue@gmail.com','2022 0229'),('037840e3-d665-11ee-af71-b04f1307b4d4','María','maria@example.com','123456789'),('0378eb27-d665-11ee-af71-b04f1307b4d4','Pedro','pedro@example.com','987654321'),('037979d1-d665-11ee-af71-b04f1307b4d4','Ana','ana@example.com','555123456'),('0379f4a8-d665-11ee-af71-b04f1307b4d4','Juan','juan@example.com','987987654'),('037a6c5c-d665-11ee-af71-b04f1307b4d4','Luis','luis@example.com','654987321'),('037b024e-d665-11ee-af71-b04f1307b4d4','Sofía','sofia@example.com','321555123'),('037b7c73-d665-11ee-af71-b04f1307b4d4','Carlos','carlos@example.com','456789123'),('037c0e21-d665-11ee-af71-b04f1307b4d4','Laura','laura@example.com','789321654'),('037c79f7-d665-11ee-af71-b04f1307b4d4','Diego','diego@example.com','214365879'),('037ce7d1-d665-11ee-af71-b04f1307b4d4','Elena','elena@example.com','987654123'),('037d5850-d665-11ee-af71-b04f1307b4d4','Miguel','miguel@example.com','654123789'),('037dd029-d665-11ee-af71-b04f1307b4d4','Lucía','lucia@example.com','789654321'),('037e6955-d665-11ee-af71-b04f1307b4d4','Pablo','pablo@example.com','123789456'),('7182b4da-d664-11ee-af71-b04f1307b4d4','Luis','luis@gmail.com','6983 9847'),('71845d85-d664-11ee-af71-b04f1307b4d4','Josue','Josue@gmail.com','2022 0229'),('71855d14-d664-11ee-af71-b04f1307b4d4','María','maria@example.com','123456789'),('7186694f-d664-11ee-af71-b04f1307b4d4','Pedro','pedro@example.com','987654321'),('7187ca44-d664-11ee-af71-b04f1307b4d4','Ana','ana@example.com','555123456'),('7189ad3d-d664-11ee-af71-b04f1307b4d4','Juan','juan@example.com','987987654'),('718aa695-d664-11ee-af71-b04f1307b4d4','Luis','luis@example.com','654987321'),('718b8edc-d664-11ee-af71-b04f1307b4d4','Sofía','sofia@example.com','321555123'),('718c9aa6-d664-11ee-af71-b04f1307b4d4','Carlos','carlos@example.com','456789123'),('718d9521-d664-11ee-af71-b04f1307b4d4','Laura','laura@example.com','789321654'),('718e9637-d664-11ee-af71-b04f1307b4d4','Diego','diego@example.com','214365879'),('718fb246-d664-11ee-af71-b04f1307b4d4','Elena','elena@example.com','987654123'),('719095fb-d664-11ee-af71-b04f1307b4d4','Miguel','miguel@example.com','654123789'),('71918058-d664-11ee-af71-b04f1307b4d4','Lucía','lucia@example.com','789654321'),('71925f82-d664-11ee-af71-b04f1307b4d4','Pablo','pablo@example.com','123789456'),('9528e047-d664-11ee-af71-b04f1307b4d4','Luis','luis@gmail.com','6983 9847'),('95298f16-d664-11ee-af71-b04f1307b4d4','Josue','Josue@gmail.com','2022 0229'),('952a38f4-d664-11ee-af71-b04f1307b4d4','María','maria@example.com','123456789'),('952ac842-d664-11ee-af71-b04f1307b4d4','Pedro','pedro@example.com','987654321'),('952b6388-d664-11ee-af71-b04f1307b4d4','Ana','ana@example.com','555123456'),('952cb161-d664-11ee-af71-b04f1307b4d4','Juan','juan@example.com','987987654'),('952d4fdb-d664-11ee-af71-b04f1307b4d4','Luis','luis@example.com','654987321'),('952dd3ba-d664-11ee-af71-b04f1307b4d4','Sofía','sofia@example.com','321555123'),('952e57d1-d664-11ee-af71-b04f1307b4d4','Carlos','carlos@example.com','456789123'),('952ec7ba-d664-11ee-af71-b04f1307b4d4','Laura','laura@example.com','789321654'),('952f6317-d664-11ee-af71-b04f1307b4d4','Diego','diego@example.com','214365879'),('952fdd3c-d664-11ee-af71-b04f1307b4d4','Elena','elena@example.com','987654123'),('953050ec-d664-11ee-af71-b04f1307b4d4','Miguel','miguel@example.com','654123789'),('9530c5de-d664-11ee-af71-b04f1307b4d4','Lucía','lucia@example.com','789654321'),('95314523-d664-11ee-af71-b04f1307b4d4','Pablo','pablo@example.com','123789456');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_prestamos`
--

DROP TABLE IF EXISTS `detalles_prestamos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalles_prestamos` (
  `id_detalle_prestamo` binary(36) NOT NULL DEFAULT uuid(),
  `id_prestamo` binary(36) DEFAULT NULL,
  `id_libro` binary(36) DEFAULT NULL,
  PRIMARY KEY (`id_detalle_prestamo`),
  KEY `fk_prestamos_detalles_prestamos` (`id_prestamo`),
  KEY `fk_libros_detalles_prestamos` (`id_libro`),
  CONSTRAINT `fk_libros_detalles_prestamos` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libro`),
  CONSTRAINT `fk_prestamos_detalles_prestamos` FOREIGN KEY (`id_prestamo`) REFERENCES `prestamos` (`id_prestamo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_prestamos`
--

LOCK TABLES `detalles_prestamos` WRITE;
/*!40000 ALTER TABLE `detalles_prestamos` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalles_prestamos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER actualizar_estado_libro AFTER INSERT ON detalles_prestamos
FOR EACH ROW
BEGIN 
	UPDATE libros 
	SET estado = 'pendiente'
	WHERE id_libro = NEW.id_libro;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `generos_libros`
--

DROP TABLE IF EXISTS `generos_libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generos_libros` (
  `id_genero_libro` binary(36) NOT NULL DEFAULT uuid(),
  `nombre_genero_libro` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_genero_libro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos_libros`
--

LOCK TABLES `generos_libros` WRITE;
/*!40000 ALTER TABLE `generos_libros` DISABLE KEYS */;
INSERT INTO `generos_libros` VALUES ('01ecaf6f-d665-11ee-af71-b04f1307b4d4','Fantasia'),('01ed9099-d665-11ee-af71-b04f1307b4d4','Terror'),('01ee27f6-d665-11ee-af71-b04f1307b4d4','Romance'),('01eec16d-d665-11ee-af71-b04f1307b4d4','Ciencia ficción'),('01ef6cc7-d665-11ee-af71-b04f1307b4d4','Misterio'),('01f00422-d665-11ee-af71-b04f1307b4d4','Fantasía'),('01f0a228-d665-11ee-af71-b04f1307b4d4','Aventura'),('01f1545a-d665-11ee-af71-b04f1307b4d4','Drama'),('01f1d52d-d665-11ee-af71-b04f1307b4d4','Suspenso'),('01f247f2-d665-11ee-af71-b04f1307b4d4','Histórico'),('01f2b95a-d665-11ee-af71-b04f1307b4d4','Comedia'),('01f328b1-d665-11ee-af71-b04f1307b4d4','Biografía'),('01f395be-d665-11ee-af71-b04f1307b4d4','Infantil'),('01f45378-d665-11ee-af71-b04f1307b4d4','Poesía'),('01f4c451-d665-11ee-af71-b04f1307b4d4','Video juegos'),('71935747-d664-11ee-af71-b04f1307b4d4','Fantasia'),('71944ff9-d664-11ee-af71-b04f1307b4d4','Terror'),('71953102-d664-11ee-af71-b04f1307b4d4','Romance'),('71960cb2-d664-11ee-af71-b04f1307b4d4','Ciencia ficción'),('7196e4ea-d664-11ee-af71-b04f1307b4d4','Misterio'),('7197b52b-d664-11ee-af71-b04f1307b4d4','Fantasía'),('719887cf-d664-11ee-af71-b04f1307b4d4','Aventura'),('719955b9-d664-11ee-af71-b04f1307b4d4','Drama'),('719a37d9-d664-11ee-af71-b04f1307b4d4','Suspenso'),('719b1534-d664-11ee-af71-b04f1307b4d4','Histórico'),('719be782-d664-11ee-af71-b04f1307b4d4','Comedia'),('719cc827-d664-11ee-af71-b04f1307b4d4','Biografía'),('719d87a3-d664-11ee-af71-b04f1307b4d4','Infantil'),('719e4e31-d664-11ee-af71-b04f1307b4d4','Poesía'),('719f0f92-d664-11ee-af71-b04f1307b4d4','Video juegos'),('9531bc18-d664-11ee-af71-b04f1307b4d4','Fantasia'),('95324392-d664-11ee-af71-b04f1307b4d4','Terror'),('9532b4b1-d664-11ee-af71-b04f1307b4d4','Romance'),('95333a9e-d664-11ee-af71-b04f1307b4d4','Ciencia ficción'),('9533adf3-d664-11ee-af71-b04f1307b4d4','Misterio'),('953421c5-d664-11ee-af71-b04f1307b4d4','Fantasía'),('953495c6-d664-11ee-af71-b04f1307b4d4','Aventura'),('953505ce-d664-11ee-af71-b04f1307b4d4','Drama'),('953572ca-d664-11ee-af71-b04f1307b4d4','Suspenso'),('9535e0df-d664-11ee-af71-b04f1307b4d4','Histórico'),('9536503a-d664-11ee-af71-b04f1307b4d4','Comedia'),('9536bc3e-d664-11ee-af71-b04f1307b4d4','Biografía'),('95372f74-d664-11ee-af71-b04f1307b4d4','Infantil'),('9537b049-d664-11ee-af71-b04f1307b4d4','Poesía'),('95381b47-d664-11ee-af71-b04f1307b4d4','Video juegos');
/*!40000 ALTER TABLE `generos_libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libros` (
  `id_libro` binary(36) NOT NULL DEFAULT uuid(),
  `titulo_libro` varchar(50) DEFAULT NULL,
  `anio_publicacion` int(11) DEFAULT NULL,
  `id_genero_libro` binary(36) DEFAULT NULL,
  `estado` enum('activo','inactivo','pendiente') DEFAULT NULL,
  PRIMARY KEY (`id_libro`),
  KEY `fk_generos_libros_libros` (`id_genero_libro`),
  CONSTRAINT `fk_generos_libros_libros` FOREIGN KEY (`id_genero_libro`) REFERENCES `generos_libros` (`id_genero_libro`),
  CONSTRAINT `ch_anio_publicacion_libros` CHECK (`anio_publicacion` > 1990)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamos`
--

DROP TABLE IF EXISTS `prestamos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prestamos` (
  `id_prestamo` binary(36) NOT NULL DEFAULT uuid(),
  `id_cliente` binary(36) DEFAULT NULL,
  `fecha_inicio` date DEFAULT '2024-01-01',
  `fecha_devolucion` date DEFAULT '2024-01-02',
  `estado` enum('activo','inactivo','pendiente') DEFAULT NULL,
  PRIMARY KEY (`id_prestamo`),
  KEY `fk_cliente_prestamo` (`id_cliente`),
  CONSTRAINT `fk_cliente_prestamo` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamos`
--

LOCK TABLES `prestamos` WRITE;
/*!40000 ALTER TABLE `prestamos` DISABLE KEYS */;
/*!40000 ALTER TABLE `prestamos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-28 12:14:58
