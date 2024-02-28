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
  UNIQUE KEY `UN_telefono_clientes` (`telefono`),
  UNIQUE KEY `UN_correo_clientes` (`email_cliente`),
  CONSTRAINT `CH_telefono_clientes` CHECK (octet_length(`telefono`) > 8)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0','María','maria@example.com','123456789'),('244f524b-d652-11ee-9d4a-5cbaef0d8908','Luis','luis@gmail.com','6983 9847'),('581825ae-d659-11ee-9d4a-5cbaef0d8908','Pedro','pedro@example.com','987654321'),('581b1b9d-d659-11ee-9d4a-5cbaef0d8908','Ana','ana@example.com','555123456'),('581dfe15-d659-11ee-9d4a-5cbaef0d8908','Juan','juan@example.com','987987654'),('5820db6c-d659-11ee-9d4a-5cbaef0d8908','Luis','luis@example.com','654987321'),('5824b9f4-d659-11ee-9d4a-5cbaef0d8908','Sofía','sofia@example.com','321555123'),('58288931-d659-11ee-9d4a-5cbaef0d8908','Carlos','carlos@example.com','456789123'),('582bff50-d659-11ee-9d4a-5cbaef0d8908','Laura','laura@example.com','789321654'),('582f8da5-d659-11ee-9d4a-5cbaef0d8908','Diego','diego@example.com','214365879'),('58329df9-d659-11ee-9d4a-5cbaef0d8908','Elena','elena@example.com','987654123'),('583651b3-d659-11ee-9d4a-5cbaef0d8908','Miguel','miguel@example.com','654123789'),('583979b0-d659-11ee-9d4a-5cbaef0d8908','Lucía','lucia@example.com','789654321'),('583c99a4-d659-11ee-9d4a-5cbaef0d8908','Pablo','pablo@example.com','123789456'),('8506b5b2-d68d-11ee-9d4a-5cbaef0d8908','Josesito','josesito@example.com','0303 9292'),('a74695be-d658-11ee-9d4a-5cbaef0d8908','Josue','Josue@gmail.com','2022 0229');
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
INSERT INTO `detalles_prestamos` VALUES ('7cc147c2-d662-11ee-9d4a-5cbaef0d8908','64b74928-d65f-11ee-9d4a-5cbaef0d8908','8ad35efa-d65d-11ee-9d4a-5cbaef0d8908'),('d0b38091-d662-11ee-9d4a-5cbaef0d8908','64b74928-d65f-11ee-9d4a-5cbaef0d8908','8ad35efa-d65d-11ee-9d4a-5cbaef0d8908'),('d0b7a01f-d662-11ee-9d4a-5cbaef0d8908','64bea95b-d65f-11ee-9d4a-5cbaef0d8908','8ad864ad-d65d-11ee-9d4a-5cbaef0d8908'),('d0bacfae-d662-11ee-9d4a-5cbaef0d8908','64c0faed-d65f-11ee-9d4a-5cbaef0d8908','8ada9807-d65d-11ee-9d4a-5cbaef0d8908'),('d0bba2ad-d662-11ee-9d4a-5cbaef0d8908','64c33d65-d65f-11ee-9d4a-5cbaef0d8908','8adcb7c1-d65d-11ee-9d4a-5cbaef0d8908'),('d0bd4917-d662-11ee-9d4a-5cbaef0d8908','64c7c420-d65f-11ee-9d4a-5cbaef0d8908','8adee189-d65d-11ee-9d4a-5cbaef0d8908'),('d0bee907-d662-11ee-9d4a-5cbaef0d8908','64c9f61a-d65f-11ee-9d4a-5cbaef0d8908','8ae13e1d-d65d-11ee-9d4a-5cbaef0d8908'),('d0c1f6bd-d662-11ee-9d4a-5cbaef0d8908','64cd35be-d65f-11ee-9d4a-5cbaef0d8908','8ae3510d-d65d-11ee-9d4a-5cbaef0d8908'),('d0c320b9-d662-11ee-9d4a-5cbaef0d8908','64d0a099-d65f-11ee-9d4a-5cbaef0d8908','8ae58476-d65d-11ee-9d4a-5cbaef0d8908'),('d0c42315-d662-11ee-9d4a-5cbaef0d8908','64d3a5b7-d65f-11ee-9d4a-5cbaef0d8908','8ae7a714-d65d-11ee-9d4a-5cbaef0d8908'),('d0c695d8-d662-11ee-9d4a-5cbaef0d8908','64d696a7-d65f-11ee-9d4a-5cbaef0d8908','8aec32df-d65d-11ee-9d4a-5cbaef0d8908'),('d0c90ec2-d662-11ee-9d4a-5cbaef0d8908','64d9a8f4-d65f-11ee-9d4a-5cbaef0d8908','8af1c57f-d65d-11ee-9d4a-5cbaef0d8908'),('d0ca704d-d662-11ee-9d4a-5cbaef0d8908','64dcbe74-d65f-11ee-9d4a-5cbaef0d8908','9bd6ddb2-d65c-11ee-9d4a-5cbaef0d8908'),('d0cb4df6-d662-11ee-9d4a-5cbaef0d8908','b6c62b48-d65e-11ee-9d4a-5cbaef0d8908','c3817493-d65c-11ee-9d4a-5cbaef0d8908'),('d0cc9678-d662-11ee-9d4a-5cbaef0d8908','b6ca1f65-d65e-11ee-9d4a-5cbaef0d8908','e4665e85-d65c-11ee-9d4a-5cbaef0d8908');
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
INSERT INTO `generos_libros` VALUES ('7788e64b-d659-11ee-9d4a-5cbaef0d8908','Terror'),('afc04e42-d652-11ee-9d4a-5cbaef0d8908','Fantasía'),('e39e0574-d659-11ee-9d4a-5cbaef0d8908','Romance'),('e3a48ea1-d659-11ee-9d4a-5cbaef0d8908','Ciencia ficción'),('e3a7bff9-d659-11ee-9d4a-5cbaef0d8908','Misterio'),('e3aabe1e-d659-11ee-9d4a-5cbaef0d8908','Fantasía'),('e3addebf-d659-11ee-9d4a-5cbaef0d8908','Aventura'),('e3b4ff8f-d659-11ee-9d4a-5cbaef0d8908','Drama'),('e3b7e1d2-d659-11ee-9d4a-5cbaef0d8908','Suspenso'),('e3bc3498-d659-11ee-9d4a-5cbaef0d8908','Histórico'),('e3c0ef4c-d659-11ee-9d4a-5cbaef0d8908','Comedia'),('e3c5ec7b-d659-11ee-9d4a-5cbaef0d8908','Biografía'),('e3cade9e-d659-11ee-9d4a-5cbaef0d8908','Infantil'),('e3cf5da9-d659-11ee-9d4a-5cbaef0d8908','Poesía'),('e3d277c3-d659-11ee-9d4a-5cbaef0d8908','Video juegos');
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
  KEY `fk_generoslibros_libros` (`id_genero_libro`),
  CONSTRAINT `fk_generoslibros_libros` FOREIGN KEY (`id_genero_libro`) REFERENCES `generos_libros` (`id_genero_libro`),
  CONSTRAINT `CH_anio_publicacion_libros` CHECK (`anio_publicacion` > 1990)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES ('2c5aee0f-d68d-11ee-9d4a-5cbaef0d8908','Orgullo y prejuicio',2000,'e3c5ec7b-d659-11ee-9d4a-5cbaef0d8908','activo'),('8ad35efa-d65d-11ee-9d4a-5cbaef0d8908','El señor de las moscas',2000,'e3a48ea1-d659-11ee-9d4a-5cbaef0d8908','pendiente'),('8ad864ad-d65d-11ee-9d4a-5cbaef0d8908','Crimen y castigo',2000,'e3a7bff9-d659-11ee-9d4a-5cbaef0d8908','pendiente'),('8ada9807-d65d-11ee-9d4a-5cbaef0d8908','La Odisea',2000,'e3aabe1e-d659-11ee-9d4a-5cbaef0d8908','pendiente'),('8adcb7c1-d65d-11ee-9d4a-5cbaef0d8908','1984',2000,'e3addebf-d659-11ee-9d4a-5cbaef0d8908','pendiente'),('8adee189-d65d-11ee-9d4a-5cbaef0d8908','Cien años de soledad',2000,'e3b4ff8f-d659-11ee-9d4a-5cbaef0d8908','pendiente'),('8ae13e1d-d65d-11ee-9d4a-5cbaef0d8908','La metamorfosis',2000,'e3b7e1d2-d659-11ee-9d4a-5cbaef0d8908','pendiente'),('8ae3510d-d65d-11ee-9d4a-5cbaef0d8908','Don Quijote de la Mancha',2000,'e3bc3498-d659-11ee-9d4a-5cbaef0d8908','pendiente'),('8ae58476-d65d-11ee-9d4a-5cbaef0d8908','Moby-Dick',2000,'e3c0ef4c-d659-11ee-9d4a-5cbaef0d8908','pendiente'),('8ae7a714-d65d-11ee-9d4a-5cbaef0d8908','Orgullo y prejuicio',2000,'e3c5ec7b-d659-11ee-9d4a-5cbaef0d8908','pendiente'),('8aec32df-d65d-11ee-9d4a-5cbaef0d8908','Las aventuras de Tom Sawyer',2000,'e3cade9e-d659-11ee-9d4a-5cbaef0d8908','pendiente'),('8af1c57f-d65d-11ee-9d4a-5cbaef0d8908','Cumbres borrascosas',2000,'e3cf5da9-d659-11ee-9d4a-5cbaef0d8908','pendiente'),('9bd6ddb2-d65c-11ee-9d4a-5cbaef0d8908','El mago de oz',1991,'7788e64b-d659-11ee-9d4a-5cbaef0d8908','pendiente'),('c3817493-d65c-11ee-9d4a-5cbaef0d8908','IT',1995,'afc04e42-d652-11ee-9d4a-5cbaef0d8908','pendiente'),('e4665e85-d65c-11ee-9d4a-5cbaef0d8908','El amor',2005,'e39e0574-d659-11ee-9d4a-5cbaef0d8908','pendiente');
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
INSERT INTO `prestamos` VALUES ('64b74928-d65f-11ee-9d4a-5cbaef0d8908','244f524b-d652-11ee-9d4a-5cbaef0d8908','2024-01-01','2024-01-02','activo'),('64bea95b-d65f-11ee-9d4a-5cbaef0d8908','581825ae-d659-11ee-9d4a-5cbaef0d8908','2024-01-01','2024-01-02','inactivo'),('64c0faed-d65f-11ee-9d4a-5cbaef0d8908','581b1b9d-d659-11ee-9d4a-5cbaef0d8908','2024-01-01','2024-01-02','pendiente'),('64c33d65-d65f-11ee-9d4a-5cbaef0d8908','581dfe15-d659-11ee-9d4a-5cbaef0d8908','2024-01-01','2024-01-02','activo'),('64c7c420-d65f-11ee-9d4a-5cbaef0d8908','5820db6c-d659-11ee-9d4a-5cbaef0d8908','2024-01-01','2024-01-02','inactivo'),('64c9f61a-d65f-11ee-9d4a-5cbaef0d8908','5824b9f4-d659-11ee-9d4a-5cbaef0d8908','2024-01-01','2024-01-02','pendiente'),('64cd35be-d65f-11ee-9d4a-5cbaef0d8908','58288931-d659-11ee-9d4a-5cbaef0d8908','2024-01-01','2024-01-02','activo'),('64d0a099-d65f-11ee-9d4a-5cbaef0d8908','582bff50-d659-11ee-9d4a-5cbaef0d8908','2024-01-01','2024-01-02','inactivo'),('64d3a5b7-d65f-11ee-9d4a-5cbaef0d8908','582f8da5-d659-11ee-9d4a-5cbaef0d8908','2024-01-01','2024-01-02','pendiente'),('64d696a7-d65f-11ee-9d4a-5cbaef0d8908','58329df9-d659-11ee-9d4a-5cbaef0d8908','2024-01-01','2024-01-02','activo'),('64d9a8f4-d65f-11ee-9d4a-5cbaef0d8908','583c99a4-d659-11ee-9d4a-5cbaef0d8908','2024-01-01','2024-01-02','inactivo'),('64dcbe74-d65f-11ee-9d4a-5cbaef0d8908','a74695be-d658-11ee-9d4a-5cbaef0d8908','2024-01-01','2024-01-02','pendiente'),('b6c62b48-d65e-11ee-9d4a-5cbaef0d8908','581825ae-d659-11ee-9d4a-5cbaef0d8908','2024-01-01','2024-01-02',''),('b6ca1f65-d65e-11ee-9d4a-5cbaef0d8908','581825ae-d659-11ee-9d4a-5cbaef0d8908','2024-01-01','2024-01-02','pendiente'),('bcbce9fd-d65e-11ee-9d4a-5cbaef0d8908','244f524b-d652-11ee-9d4a-5cbaef0d8908','2024-01-01','2024-01-02','activo');
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

-- Dump completed on 2024-02-28 17:14:06
