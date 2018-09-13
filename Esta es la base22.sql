
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: pp
-- ------------------------------------------------------
-- Server version	5.7.20-log
drop database if exists PP;
create database PP;
use PP;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cat_colonias`
--

DROP TABLE IF EXISTS `cat_colonias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_colonias` (
  `Id_Colonia` int(4) NOT NULL,
  `Id_Delegacion` int(4) DEFAULT NULL,
  `Nom_Colonia` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Colonia`),
  KEY `Id_Delegacion` (`Id_Delegacion`),
  CONSTRAINT `cat_colonias_ibfk_1` FOREIGN KEY (`Id_Delegacion`) REFERENCES `cat_delegaciones`(`Id_Delegacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_colonias`
--

LOCK TABLES `cat_colonias` WRITE;
/*!40000 ALTER TABLE `cat_colonias` DISABLE KEYS */;
INSERT INTO `cat_colonias` VALUES 
(1,1,'col. San Pedro de los Pinos'),(2,1,'Barrio Santa María Nonoalco'),(3,1,'col. Alfonso XIII'),(4,1,'col. Molino de Rosas'),(5,1,'col. La Cascada'),(6,1,'col. Lomas de Plateros'),(7,1,'col. Los Alpes'),(8,1,'col. Campestre'),(9,1,'col. Guadalupe Inn'),(10,1,'col. Florida'),(11,1,'Pueblo Axotla'),(12,1,'col. Exhacienda de Guadalupe Chimalistac'),(13,1,'col. Chimalistac'),(14,1,'Pueblo Tlacopac'),(15,1,'col. San Ángel Inn'),(16,1,'col. Altavista'),(17,1,'col. San Ángel'),(18,1,'Barrio Loreto'),(19,1,'col. Bellavista'),(20,1,'col. José María Pino Suárez'),(21,1,'col. Cove'),(22,1,'col. Las Américas'),(23,1,'col. Hidalgo'),(24,1,'col. Acueducto'),(25,1,'col. Amp. Acueducto'),(26,1,'col. Reacomodo Pino Suárez'),(27,1,'col. Real del Monte'),(28,1,'col. Bosque'),(29,1,'col. Tolteca'),(30,1,'col. Primera Victoria'),(31,1,'col. Carola'),(32,1,'col. Sacramento'),(33,1,'col. Minas Cristo Rey'),(34,1,'Barrio Alfalfar'),(35,1,'col. Francisco Villa'),(36,1,'col. Molino de Santo Domingo'),(37,1,'col. Pólvora'),(38,1,'col. La Conchita'),(39,1,'col. Cristo Rey'),(40,1,'col. Abraham M. González'),(41,1,'col. Isidora Fabela'),(42,1,'col. Belem de las Flores'),(43,1,'col. Amp. El Capulín'),(44,1,'col. El Capulín'),(45,1,'col. Liberales de 1857'),(46,1,'col. Paraíso'),(47,1,'col. Zenón Delgado'),(48,1,'col. María G. de García Ruiz'),(49,1,'col. Mártires de Tacubaya'),(50,1,'col. Bonanza'),(51,1,'col. Arturo Martínez'),(52,1,'col. La Joya'),(53,1,'col. Árvide'),(54,1,'col. Olivar del Conde 1a Secc.'),
(55,1,'col. Lomas de Becerra'),(56,1,'col. Reacomodo El Cuernito'),(57,1,'col. El Pocito'),(58,1,'col. El Rodeo'),(59,1,'col. La Presa'),(60,1,'col. Golondrinas 1a Secc.'),(61,1,'col. Golondrinas'),(62,1,'Barrio Norte'),(63,1,'col. Palmas'),(64,1,'col. Preconcreto'),(65,1,'Barrio La Otra Banda'),(66,1,'col. Jardines del Pedregal'),(67,1,'col. San Jerónimo Aculco'),(68,1,'Pueblo Tizapán'),(69,1,'col. Ermita Tizapán'),(70,1,'col. Progreso Tizapán'),(71,1,'col. Lomas de San Ángel Inn'),(72,1,'col. Atlamaya'),(73,1,'col. Flor de María'),(74,1,'col. Amp. Alpes'),(75,1,'col. Lomas de Tarango'),(76,1,'col. Miguel Hidalgo'),(77,1,'col. San José del Olivar'),(78,1,'col. La Herradura del Pueblo Tetelpan'),(79,1,'col. Lomas de Los Ángeles del Pueblo Tetelpan'),(80,1,'col. Tizampampano del Pueblo Tetelpan'),(81,1,'col. 2da del Moral del Pueblo Tetelpan'),(82,1,'col. San Augustín del Pueblo Tetelpan'),(83,1,'col. Amp. Las Águilas'),(84,1,'col. San Clemente Sur'),(85,1,'col. Tecalcapa del Pueblo Tetelpan'),(86,1,'col. El Mirador del Pueblo Tetelpan'),(87,1,'Pueblo Tetelpan'),(88,1,'col. Encino del Pueblo Tetelpan'),(89,1,'col. La Peñita del Pueblo Tetelpan'),(90,1,'col. Ocotillos del Pueblo Tetelpan'),(91,1,'col. La Joyita del Pueblo Tetelpan'),(92,1,'col. San Clemente Norte'),(93,1,'col. Puente Colorado'),(94,1,'col. Lomas de Las Águilas'),(95,1,'col. Hogar y Redención'),(96,1,'col. Olivar del Conde 2a Secc.'),(97,1,'col. Colina del Sur'),(98,1,'col. Hueytlale'),(99,1,'col. Canutillo 3a Secc.'),(100,1,'col. Galeana'),(101,1,'col. Amp. Piloto Adolfo López Mateos'),(102,1,'col. Golondrinas 2a Secc.'),(103,1,'col. Lomas de Cápula'),(104,1,'col. El Pirul'),(105,1,'col. Presidentes'),(106,1,'col. Presidentes 1a Secc.'),(107,1,'col. El Tecojote'),(108,1,'col. Desarrollo Urbano'),(109,1,'col. Villa Solidaridad'),(110,1,'col. El Cuernito'),(111,1,'col. Cuevitas'),
(112,1,'col. La Estrella'),(113,1,'Pueblo Santa Fe'),(114,1,'col. Bejero del Pueblo de Santa Fe'),(115,1,'col. Lomas de Santa Fe'),(116,1,'col. Tlapechico'),(117,1,'col. El Pirul 2a Secc.'),(118,1,'col. El Pirul Santa Fe'),(119,1,'col. La Huerta'),(120,1,'col. Los Gamitos'),(121,1,'col. Campo de los Tiros'),(122,1,'col. Ladera'),(123,1,'col. Tecolalco'),(124,1,'col. El Árbol'),(125,1,'col. Margarita Masa de Juárez'),(126,1,'Pueblo Nuevo'),(127,1,'col. Lomas de Nuevo México'),(128,1,'col. La Mexicana'),(129,1,'col. Amp. La Cebada'),(130,1,'col. Amp. La Mexicana'),(131,1,'col. La Palmita'),(132,1,'col. Cañada 2a Secc.'),(133,1,'col. Cañada 1a Secc.'),(134,1,'col. Liberación Proletaria'),(135,1,'col. Calzada Jalapa'),(136,1,'col. 2a Amp. La Mexicana'),(137,1,'col. Jalapa Tepito'),(138,1,'col. Amp. Jalalpa'),(139,1,'col. 2a Amp. Jalapa Tepito'),(140,1,'col. San Gabriel'),(141,1,'col. 2a Amp. Presidentes'),(142,1,'col. Santa Fe Peña Blanca'),(143,1,'col. Carlos A. Madrazo'),(144,1,'col. Jalapa El Grande'),(145,1,'col. Piloto Adolfo López Mateos'),(146,1,'col. Santa Fe Centro Ciudad'),(147,1,'col. Santa Fe Tlayapaca'),(148,1,'col. Santa Fe'),(149,1,'col. Paseo de las Lomas'),(150,1,'col. Santa Fe La Loma'),(151,1,'col. Amp. Los Pirules'),(152,1,'col. El Politoco'),(153,1,'col. Estado de Hidalgo'),(154,1,'col. Garcimarrero'),(155,1,'col. La Araña'),(156,1,'col. Los Cedros'),(157,1,'col. Pirúl Santa Lucia'),(158,1,'col. Amp. Estado de Hidalgo'),(159,1,'col. Arcos Centenario'),(160,1,'col. Canutillo 2a Secc.'),(161,1,'col. Canutillo'),(162,1,'col. Exhacienda Tarango'),(163,1,'col. Herón Proal'),(164,1,'col. La Martinica'),(165,1,'col. Las Águilas 1a Secc.'),(166,1,'col. Las Águilas 3ra Parque'),(167,1,'col. Ponciano Arriaga'),(168,1,'col. Rinconada de Tarango'),(169,1,'col. 2do Reacomodo Tlacuitlapa'),(170,1,'col. Colinas de Tarango'),
(171,1,'col. La Milagrosa'),(172,1,'col. Las Águilas 2da Parque'),(173,1,'col. Lomas de Puerta Grande'),(174,1,'col. Los Juristas'),(175,1,'col. Profesor J. Arturo López Martínez'),(176,1,'col. Puerta Grande'),(177,1,'col. Santa Lucía Chantepec'),(178,1,'col. Amp. Tepeaca'),(179,1,'col. Amp. Tlacuitlapa'),(180,1,'col. Ave Real'),(181,1,'col. Balcones de Cehuaya'),(182,1,'col. Cehuaya'),(183,1,'col. El Ruedo'),(184,1,'col. Palmas Axotitla'),(185,1,'col. Punto de Cehuaya'),(186,1,'col. Reacomodo Valentín Gómez Farías'),(187,1,'col. Rinconada La Cuevita'),(188,1,'col. Tepeaca'),(189,1,'col. Tlacuitlapa'),(190,1,'col. Villa Progresista'),(191,1,'Pueblo Santa Lucía Chantepec'),(192,1,'col. La Angostura'),(193,1,'col. Lomas de Chamontoya'),(194,1,'col. Lomas de La Era'),(195,1,'col. Lomas de Los Cedros'),(196,1,'col. Olivar de Los Padres'),(197,1,'col. Tlacoyaque'),(198,1,'col. Torres de Potrero'),(199,1,'col. Acuilotla'),(200,1,'col. Alcantarilla'),(201,1,'col. Cooperativa Unión Olivos'),(202,1,'col. Dos Ríos del Pueblo de Santa Lucía'),(203,1,'col. Ejido San Mateo'),(204,1,'col. El Rincón'),(205,1,'col. La Loma'),(206,1,'col. Llano Redondo'),(207,1,'col. Lomas Axomiatla'),(208,1,'col. Lomas de Guadalupe'),(209,1,'col. Miguel Gaona Armenta'),(210,1,'col. Rancho del Carmen del Pueblo San Bartolo Ameyalco'),(211,1,'col. Rancho San Francisco del Pueblo San Bartolo Ameyalco'),(212,1,'col. Rincón de la Bolsa'),(213,1,'col. Tarango'),(214,1,'col. Tepopotla'),(215,1,'col. Tlacuitlapa'),(216,1,'col. Villa Verdún'),(217,1,'Industrias Militares de SEDENA'),(218,1,'Pueblo San Bartolo Ameyalco'),(219,1,'Pueblo Santa Lucía'),(220,1,'Pueblo Santa Rosa Xochiac'),(221,1,'col. Merced Gómez'),(222,1,'col. Las Águilas'),(223,1,'col. Corpus Christi'),
(224,2,'col. Petrolera'),
(225,2,'col. Tlatilco'),(226,2,'col. Nuevo Santa María'),(227,2,'col. San Salvador Xochimanco'),(228,2,'col. Obrero Popular'),(229,2,'col. UH Cobre de México'),(230,2,'col. San Álvaro'),(231,2,'col. Ángel Zimbrón'),(232,2,'Barrio Santa Apolonia'),(233,2,'Barrio Nextengo'),(234,2,'col. Clavería'),(235,2,'col. Plenitud'),(236,2,'Barrio Santa Lucía'),(237,2,'col. Santa Cruz Acuyacán'),(238,2,'Pueblo San Miguel Amantla'),(239,2,'col. UH La Escuadra'),(240,2,'col. San Antonio'),(241,2,'Pueblo Santiago Ahuizotla'),(242,2,'col. Amp. San Pedro Xalpa'),(243,2,'Isss Fam Las Farmas'),(244,2,'Pueblo San Pedro Xalpa'),(245,2,'col. Panteón San Isidro'),(246,2,'Pueblo San Bartolo Cacahualtongo'),(247,2,'col. UH Campo Encantado'),(248,2,'col. UH San Isidro'),(249,2,'col. Amp. Petrolera'),(250,2,'col. UH Lázaro Cárdenas'),(251,2,'Pueblo San Francisco Tetecala'),(252,2,'col. UH Lerdo de Tejada'),(253,2,'col. Centro de Azcapotzalco'),(254,2,'col. Del Recreo'),(255,2,'col. Providencia'),
(256,2,'col. Exhacienda del Rosario'),(257,2,'col. Prados del Rosario'),(258,2,'col. UH Trabajadores de Pemex'),(259,2,'col. UH El Rosario'),(260,2,'col. Tierra Nueva'),(261,2,'col. Pasteros'),(262,2,'col. Santa Inés'),(263,2,'col. Nueva El Rosario'),(264,2,'col. Nueva España'),(265,2,'col. UH Cruz Roja Tepatongo'),(266,2,'col. UH San Pablo Xalpa'),(267,2,'Pueblo Santa Bárbara'),(268,2,'col. Ferrería'),(269,2,'Estación Pantaco'),(270,2,'Pueblo Santa Catarina'),(271,2,'Pueblo San Andrés'),(272,2,'col. Reynosa Tamaulipas'),(273,2,'Barrio San Marcos'),(274,2,'Nuevo Barrio San Rafael'),(275,2,'col. San Rafael'),(276,2,'col. Santo Domingo II'),(277,2,'Pueblo Santo Domingo'),(278,2,'col. UH Villas Azcapotzalco'),(279,2,'Pueblo San Martín Xochinahuac'),(280,2,'col. UH Las Trancas'),(281,2,'col. Tezozómoc'),(282,2,'col. UH Miguel Hidalgo'),(283,2,'col. UH Presidente Madero'),(284,2,'col. UH Francisco Villa'),(285,2,'col. UH San Juan Tlihuaca'),(286,2,'col. UH Rinconada'),(287,2,'Pueblo San Juan Tlihuaca'),(288,2,'col. UH Rosendo Salazar'),(289,2,'Barrio San Mateo'),(290,2,'col. La Preciosa'),(291,2,'col. UH Azcapotzalco'),(292,2,'Barrio Los Reyes'),(293,2,'col. Santo Tomás'),(294,2,'col. Del Maestro'),(295,2,'col. Libertad'),(296,2,'Barrio San Sebastián'),(297,2,'col. Sindicato Mexicano de Electricistas'),(298,2,'col. Un Hogar Para Cada Trabajador'),(299,2,'col. Jardín Azpeitia'),(300,2,'col. El Jagüey'),(301,2,'col. Las Salinas'),(302,2,'col. Coltongo'),(303,2,'col. Monte Alto'),(304,2,'col. Trabajadores del Hierro'),(305,2,'col. Pro Hogar'),(306,2,'col. Porvenir'),(307,2,'col. Aldana'),(308,2,'col. Liberación'),(309,2,'col. Aguilera'),(310,2,'col. Del Gas'),(311,2,'col. Amp. del Gas'),(312,2,'col. Arenal'),(313,2,'col. La Raza'),(314,2,'Pueblo San Francisco Xocotitla'),(315,2,'col. Euzkadi'),(316,2,'col. Potrero del Llano'),(317,2,'col. Cosmopolita'),(318,2,'col. Amp. Cosmopolita'),(319,2,'col. Victoria de las Democracias'),(320,2,'col. Hogar y Seguridad'),(321,2,'Barrio San Bernabé'),(322,2,'col. Ignacio Allende'),(323,2,'Barrio Huautla de Las Salinas'),(324,2,'col. Unidad Habitacional Cuitláhuac'),(325,2,'col. UH Jardines de Ceylán'),(326,2,'col. Industrial Vallejo'),(327,2,'Barrio Coltongo'),(328,2,'col. Santa Cruz de las Salinas'),(329,2,'Pueblo San Andrés de las Salinas'),(330,2,'Delegación Azcapotzalco'),(331,2,'Pueblo Santa María Malinalco'),
(332,3,	'col. Acacias'),
(333,3,	'col. Actipán'),
(334,3,	'col. Álamos'),
(335,3,	'col. Albert'),
(336,3,	'col. Amp. Nápoles'),
(337,3,	'col. Américas Unidas'),
(338,3,	'col. Atenor Salas'),
(339,3,	'col. Ciudad de los Deportes'),
(340,3,	'col. Crédito Constructor'),
(341,3,	'col. Del Carmen'),
(342,3,	'col. Del Lago'),
(343,3,	'col. Del Valle Centro'),
(344,3,	'col. Del Valle Norte'),
(345,3,	'col. Del Valle Sur'),
(346,3,	'col. Ermita'),
(347,3,	'col. Extremadura Insurgentes'),
(348,3,	'col. General Pedro María Anaya'),
(349,3,	'col. Independencia'),
(350,3,	'col. Insurgentes Mixcoac'),
(351,3,	'col. Insurgentes San Borja'),
(352,3,	'col. Iztaccíhuatl'),
(353,3,	'col. Josefa Ortiz de Domínguez'),
(354,3,	'col. Letrán Valle'),
(355,3,	'col. Merced Gómez'),
(356,3,	'col. Miguel Alemán'),
(357,3,	'col. Miravalle'),
(358,3,	'col. Mixcoac'),
(359,3,	'col. Moderna'),
(360,3,	'col. Narvarte Oriente'	),
(361,3,	'col. Narvarte Poniente'),
(362,3,	'col. Nativitas'),
(363,3,	'col. Niños Héroes'),
(364,3,	'col. Noche Buena'),
(365,3,	'col. Nápoles'),
(366,3,	'col. Periodista'),
(367,3,	'col. Piedad Narvarte'),
(368,3,	'col. Portales Norte'),
(369,3,	'col. Portales Oriente'),
(370,3,	'col. Portales Sur'),
(371,3,	'col. Postal'),
(372,3,	'col. Residencial Emperadores'),
(373,3,	'col. San José Insurgentes'),
(374,3,	'col. San Juan'),
(375,3,	'col. San Pedro de los Pinos'),
(376,3,	'col. San Simón Ticumac'),
(377,3,	'col. Santa Cruz Atoyac'),
(378,3,	'col. Santa María Nonoalco'),
(379,3,	'col. Tlacoquemécatl'),
(380,3,	'col. Villa de Cortés'),
(381,3,	'col. Vértiz Narvarte'),
(382,3,	'col. Xoco'),
(383,3,	'col. Zacahuitzco'),
(384,3, 'col. 8 de Agosto'),
(385,4,	'Barrio de Niño Jesús'),
(386	,	4	,	'	Barrio La Concepción')	,
(387	,	4	,	'	Barrio Oxtopulco Universidad'		)	,
(388	,	4	,	'	Barrio San Lucas'		)	,
(389	,	4	,	'	Barrio Santa Catarina'		)	,
(390	,	4	,	'	Ciudad Universitaria'		)	,
(391	,	4	,	'	col. Bosques de Tetlamaya'		)	,
(	392	,	4	,	'	col. Adolfo Ruiz Cortines'		)	,
(	393	,	4	,	'	col. Ajusco'		)	,
(	394	,	4	,	'	col. Alianza Popular Revolucionaria'		)	,
(	395	,	4	,	'	col. Atlántida'		)	,
(	396	,	4	,	'	col. Avante'		)	,
(	397	,	4	,	'	col. Cafetales'		)	,
(	398	,	4	,	'	col. Campestre Churubusco'		)	,
(	399	,	4	,	'	col. Campestre Coyoacán'		)	,
(	400	,	4	,	'	col. Cantil del Pedregal'		)	,
(	401	,	4	,	'	col. Carmen Serdán'		)	,
(	402	,	4	,	'	col. Churubusco Country Club'		)	,
(	403	,	4	,	'	col. Ciudad Jardín'		)	,
(	404	,	4	,	'	col. Copilco El Alto'		)	,
(	405	,	4	,	'	col. Copilco El Bajo'		)	,
(	406	,	4	,	'	col. Copilco Universidad'		)	,
(	407	,	4	,	'	col. Cuadrante de San Francisco'		)	,
(	408	,	4	,	'	col. Culhuacán CTM Canal Nacional'		)	,
(	409	,	4	,	'	col. Culhuacán CTM Secc. CROC'		)	,
(	410	,	4	,	'	col. Culhuacán CTM Secc. Piloto'		)	,
(	411	,	4	,	'	col. Culhuacán CTM Secc. 1'		)	,
(	412	,	4	,	'	col. Culhuacán CTM Secc. 2'		)	,
(	413	,	4	,	'	col. Culhuacan CTM Secc. 3'		)	,
(	414	,	4	,	'	col. Culhuacán CTM Secc. 5'		)	,
(	415	,	4	,	'	col. Culhuacán CTM Secc. 6'		)	,
(	416	,	4	,	'	col. Culhuacán CTM Secc. 7'		)	,
(	417	,	4	,	'	col. Culhuacan CTM Secc. 8'		)	,
(	418	,	4	,	'	col. Culhuacán CTM Secc. 9-A'		)	,
(	419	,	4	,	'	col. Culhuacán CTM Secc. 9-B'		)	,
(	420	,	4	,	'	col. Culhuacán CTM Secc. 10'	)	,
(	421	,	4	,	'	col. Culhuacán CTM Secc. 10-A'		)	,
(	422	,	4	,	'	col. Del Carmen'		)	,
(	423	,	4	,	'	col. Educación'		)	,
(	424	,	4	,	'	col. El Caracol'		)	,
(	425	,	4	,	'	col. El Centinela'		)	,
(	426	,	4	,	'	col. El Mirador'	)	,
(	427	,	4	,	'	col. El Parque de Coyoacán'		)	,
(	428	,	4	,	'	col. El Reloj'		)	,
(	429	,	4	,	'	col. El Rosario'	)	,
(	430	,	4	,	'	col. El Rosedal'		)	,
(	431	,	4	,	'	col. Emiliano Zapata'		)	,
(	432	,	4	,	'	col. Emiliano Zapata Fraccionamiento Popular'		)	,
(	433	,	4	,	'	col. Espartaco'		)	,
(	434	,	4	,	'	col. Ex–Ejido de San Francisco Culhuacán'		)	,
(	435	,	4	,	'	col. Ex–Ejido de San Pablo Tepetlapa'		)	,
(	436	,	4	,	'	col. Ex–Ejido Santa Úrsula Coapa'		)	,
(	437	,	4	,	'	col. Exhacienda Coapa'		)	,
(	438	,	4	,	'	col. Haciendas de Coyoacán'		)	,
(	439	,	4	,	'	col. Hermosillo'		)	,
(	440	,	4	,	'	col. Huayamilpas'		)	,
(	441	,	4	,	'	col. Insurgentes Cuicuilco'		)	,
(	442	,	4	,	'	col. Jardines de Coyoacán'		)	,
(	443	,	4	,	'	col. Jardines del Pedregal de San Ángel'		)	,
(	444	,	4	,	'	col. Joyas del Pedregal'		)	,
(	445	,	4	,	'	col. La Otra Banda'		)	,
(	446	,	4	,	'	col. Las Campanas'		)	,
(	447	,	4	,	'	col. Los Cedros'		)	,
(	448	,	4	,	'	col. Los Cipreses'		)	,
(	449	,	4	,	'	col. Los Girasoles'		)	,
(	450	,	4	,	'	col. Los Olivos'		)	,
(	451	,	4	,	'	col. Los Sauces'		)	,
(	452	,	4	,	'	col. Nueva Díaz Ordaz'		)	,
(	453	,	4	,	'	col. Olímpica'		)	,
(	454	,	4	,	'	col. Parque San Andrés'		)	,
(	455	,	4	,	'	col. Paseos de Taxqueña'		)	,
(	456	,	4	,	'	col. Pedregal de Carrasco'		)	,
(	457	,	4	,	'	col. Pedregal de San Francisco'		)	,
(	458	,	4	,	'	col. Pedregal de Santa Úrsula'		)	,
(	459	,	4	,	'	col. Pedregal de Santo Domingo'		)	,
(	460	,	4	,	'	col. Petrolera Taxqueña'		)	,
(	461	,	4	,	'	col. Prado Churubusco'		)	,
(	462	,	4	,	'	col. Prados de Coyoacán'		)	,
(	463	,	4	,	'	col. Presidentes Ejidales Secc. 1'		)	,
(	464	,	4	,	'	col. Presidentes Ejidales Secc. 2'		)	,
(	465	,	4	,	'	col. Romero de Terreros'		)	,
(	466	,	4	,	'	col. San Diego Churubusco'		)	,
(	467	,	4	,	'	col. San Mateo'		)	,
(	468	,	4	,	'	col. Santa Cecilia'		)	,
(	469	,	4	,	'	col. Viejo Ejido de Santa Úrsula Coapa'		)	,
(	470	,	4	,	'	col. Villa Coyoacán'		)	,
(	471	,	4	,	'	col. Villa Quietud'		)	,
(	472	,	4	,	'	col. Xotepingo'		)	,
(	473	,	4	,	'	Pueblo de Los Reyes'		)	,
(	474	,	4	,	'	Pueblo de San Pueblo Tepetlapa'		)	,
(	475	,	4	,	'	Pueblo de Santa Úrsula Coapa'		)	,
(	476	,	4	,	'	Pueblo La Candelaria'		)	,
(	477	,	4	,	'	San Francisco Culhuacan Barrio de Santa Ana'		)	,
(	478	,	4	,	'	San Francisco Culhuacán Barrio de La Magdalena'		)	,
(	479	,	4	,	'	San Francisco Culhuacán Barrio de San Francisco'		)	,
(	480	,	4	,	'	San Francisco Culhuacán Barrio de San Juan'		)	,
(	481	,	5	,	'	col. 1ro de Mayo'	)	,
(	482	,	5	,	'	col. Abdias García Soto'	)	,
(	483	,	5	,	'	col. Adolfo Lopez Mateos	')	,
(	484	,	5	,	'	col. Agua Bendita	')	,
(	485	,	5	,	'	col. Amado Nervo	')	,
(	486	,	5	,	'	col. Amp. El Yaqui	')	,
(	487	,	5	,	'	col. Amp. Memetla	')	,
(	488	,	5	,	'	col. Bosques de Las Lomas'	)	,
(	489	,	5	,	'	col. Campestre Palo Alto	')	,
(	490	,	5	,	'	col. Contadero	')	,
(	491	,	5	,	'	col. Cooperativa Palo Alto'	)	,
(	492	,	5	,	'	col. Cruz Blanca	')	,
(	493	,	5	,	'	col. Cuajimalpa	')	,
(	494	,	5	,	'	col. El Ébano	')	,
(	495	,	5	,	'	col. El Molinito'	)	,
(	496	,	5	,	'	col. El Molino	')	,
(	497	,	5	,	'	col. El Tianguillo'	)	,
(	498	,	5	,	'	col. El Yaqui	')	,
(	499	,	5	,	'	col. Granjas Navidad'	)	,
(	500	,	5	,	'	col. Granjas Palo Alto'	)	,
(	501	,	5	,	'	col. Jesús del Monte	')	,
(	502	,	5	,	'	col. La Manzanita	')	,
(	503	,	5	,	'	col. La Pila	')	,
(	504	,	5	,	'	col. La Venta	')	,
(	505	,	5	,	'	col. Las Lajas	')	,
(	506	,	5	,	'	col. Las Maromas'	)	,
(	507	,	5	,	'	col. Las Tinajas'	)	,
(	508	,	5	,	'	col. Locaxco	')	,
(	509	,	5	,	'	col. Loma del Padre	')	,
(	510	,	5	,	'	col. Lomas de Chamizal'	)	,
(	511	,	5	,	'	col. Lomas de Memetla'	)	,
(	512	,	5	,	'	col. Lomas de San Pedro'	)	,
(	513	,	5	,	'	col. Lomas de Vista Hermosa'	)	,
(	514	,	5	,	'	col. Manzanastitla	')	,
(	515	,	5	,	'	col. Memetla'	)	,
(	516	,	5	,	'	col. San José de Los Cedros'	)	,
(	517	,	5	,	'	col. Santa Fe'	)	,
(	518	,	5	,	'	col. Tepetongo'	)	,
(	519	,	5	,	'	col. Xalpa'	)	,
(	520	,	5	,	'	col. Zentlápatl'	)	,
(	521	,	5	,	'	Pueblo San Lorenzo Acopilco'	)	,
(	522	,	5	,	'	Pueblo San Mateo Tlaltenango'	)	,
(	523	,	5	,	'	Pueblo San Pablo Chimalpa'	)	,
(	524	,	5	,	'	Pueblo San Pedro Cuajimalpa'	)	,
(	525	,	5	,	'	Pueblo Santa Rosa Xochiac'	)	,
(	526	,	6	,	'	col. Algarín'	)	,
(	527	,	6	,	'	col. Amp Asturias'	)	,
(	528	,	6	,	'	col. Asturias'	)	,
(	529	,	6	,	'	col. Atlampa'	)	,
(	530	,	6	,	'	col. Buenavista'	)	,
(	531	,	6	,	'	col. Buenos Aires	')	,
(	532	,	6	,	'	col. Centro – Centro Histórico'	)	,
(	533	,	6	,	'	col. Centro – Zona Norte	')	,
(	534	,	6	,	'	col. Centro – Zona Oriente	')	,
(	535	,	6	,	'	col. Centro – Zona Poniente	')	,
(	536	,	6	,	'	col. Centro – Zona Sur	')	,
(	537	,	6	,	'	col. Condesa'	)	,
(	538	,	6	,	'	col. Cuauhtémoc'	)	,
(	539	,	6	,	'	col. Doctores'	)	,
(	540	,	6	,	'	col. Esperanza'	)	,
(	541	,	6	,	'	col. Ex Hipódromo de Peralvillo'	)	,
(	542	,	6	,	'	col. Felipe Pescador'	)	,
(	543	,	6	,	'	col. Guerrero'	)	,
(	544	,	6	,	'	col. Hipódromo'	)	,
(	545	,	6	,	'	col. Hipódromo Condesa'	)	,
(	546	,	6	,	'	col. Juárez – Zona Rosa'	)	,
(	547	,	6	,	'	col. Juárez – Zona Centro'	)	,
(	548	,	6	,	'	col. Juárez – Zona Poniente'	)	,
(	549	,	6	,	'	col. Maza	')	,
(	550	,	6	,	'	col. Morelos'	)	,
(	551	,	6	,	'	col. Nonoalco Tlatelolco'	)	,
(	552	,	6	,	'	col. Nonoalco Tlatelolco – Zona Oriente'	)	,
(	553	,	6	,	'	col. Nonoalco Tlatelolco – Zona Poniente	')	,
(	554	,	6	,	'	col. Obrera'	)	,
(	555	,	6	,	'	col. Paulino Navarro	')	,
(	556	,	6	,	'	col. Peralvillo	')	,
(	557	,	6	,	'	col. Roma Norte	')	,
(	558	,	6	,	'	col. Roma Sur	')	,
(	559	,	6	,	'	col. San Rafael	')	,
(	560	,	6	,	'	col. San Simón Tolnahuac	')	,
(	561	,	6	,	'	col. Santa María Insurgentes'	)	,
(	562	,	6	,	'	col. Santa María La Ribera	')	,
(	563	,	6	,	'	col. Tabacalera'	)	,
(	564	,	6	,	'	col. Tránsito	')	,
(	565	,	6	,	'	col. Valle Gómez'	)	,
(	566	,	6	,	'	col. Vista Alegre'	)	,
(	567	,	7	,	'	Barrio Candelaria Ticomán'	)	,
(	568	,	7	,	'	Barrio Guadalupe Ticomán	')	,
(	569	,	7	,	'	Barrio La Laguna Ticomán'	)	,
(	570	,	7	,	'	Barrio La Purisíma Ticomán'	)	,
(	571	,	7	,	'	Barrio San Juan y Guadalupe Ticomán'	)	,
(	572	,	7	,	'	Barrio San Rafael Ticomán'	)	,
(	573	,	7	,	'	col. 6 de Junio'	)	,
(	574	,	7	,	'	col. 7 de Noviembre'	)	,
(	575	,	7	,	'	col. 15 de Agosto	')	,
(	576	,	7	,	'	col. 25 de Julio'	)	,
(	577	,	7	,	'	col. Acueducto de Guadalupe'	)	,
(	578	,	7	,	'	col. Ahuehuetes'	)	,
(	579	,	7	,	'	col. Amp. Arboledas'	)	,
(	580	,	7	,	'	col. Amp. Benito Juárez'	)	,
(	581	,	7	,	'	col. Amp. Casas Alemán	')	,
(	582	,	7	,	'	col. Amp. Castillo Grande'	)	,
(	583	,	7	,	'	col. Amp. Chalma de Guadalupe'	)	,
(	584	,	7	,	'	col. Amp. Cocoyotes'	)	,
(	585	,	7	,	'	col. Amp. Emiliano Zapata'	)	,
(	586	,	7	,	'	col. Amp. Gabriel Hernández'	)	,
(	587	,	7	,	'	col. Amp. Guadalupe Proletaria'	)	,
(	588	,	7	,	'	col. Amp. Malacates	')	,
(	589	,	7	,	'	col. Amp. Mártires de Río Blanco'	)	,
(	590	,	7	,	'	col. Amp. Panamericana'	)	,
(	591	,	7	,	'	col. Amp. Progreso Nacional	')	,
(	592	,	7	,	'	col. Amp. Providencia'	)	,
(	593	,	7	,	'	col. Amp. San Juan de Aragón	')	,
(	594	,	7	,	'	col. Aragón La Villa'	)	,
(	595	,	7	,	'	col. Arboledas'	)	,
(	596	,	7	,	'	col. Arágon Inguarán'	)	,
(	597	,	7	,	'	col. Belisario Domínguez'	)	,
(	598	,	7	,	'	col. Benito Juárez	')	,
(	599	,	7	,	'	col. Bondojito'	)	,
(	600	,	7	,	'	col. Campestre Aragón	')	,
(	601	,	7	,	'	col. Campultitlán	')	,
(	602	,	7	,	'	col. Castillo Chico	')	,
(	603	,	7	,	'	col. Castillo Grande'	)	,
(	604	,	7	,	'	col. Chalma de Guadalupe'	)	,
(	605	,	7	,	'	col. Churubusco Tepeyac	')	,
(	606	,	7	,	'	col. Cocoyotes	')	,
(	607	,	7	,	'	col. Compositores mexicanos'	)	,
(	608	,	7	,	'	col. Constitución de la República	')	,
(	609	,	7	,	'	col. CTM Aragón	')	,
(	610	,	7	,	'	col. CTM Atzacoalco'	)	,
(	611	,	7	,	'	col. CTM El Risco'	)	,
(	612	,	7	,	'	col. Cuauhtepec Barrio Alto'	)	,
(	613	,	7	,	'	col. Cuauhtepec de Madero	')	,
(	614	,	7	,	'	col. Cuchilla del Tesoro	')	,
(	615	,	7	,	'	col. Cuchilla La Joya	')	,
(	616	,	7	,	'	col. Defensores de la República	')	,
(	617	,	7	,	'	col. Del Bosque'	)	,
(	618	,	7	,	'	col. Del Carmen	')	,
(	619	,	7	,	'	col. Del Obrero	')	,
(	620	,	7	,	'	col. Dinamita	')	,
(	621	,	7	,	'	col. DM Nacional'	)	,
(	622	,	7	,	'	col. El Arbolillo	')	,
(	623	,	7	,	'	col. El Coyol'	)	,
(	624	,	7	,	'	col. El Olivo'	)	,
(	625	,	7	,	'	col. El Tepetatal	')	,
(	626	,	7	,	'	col. Emiliano Zapata'	)	,
(	627	,	7	,	'	col. Estanzuela	')	,
(	628	,	7	,	'	col. Estrella	')	,
(	629	,	7	,	'	col. Exejido de San Juan de Aragón Sector 32	')	,
(	630	,	7	,	'	col. Exejido de San Juan de Aragón Sector 33	')	,
(	631	,	7	,	'	col. Exescuela de Tiro'	)	,
(	632	,	7	,	'	col. Faja de Oro	')	,
(	633	,	7	,	'	col. Fernando Casas Alemán'	)	,
(	634	,	7	,	'	col. Ferrocarrilera	')	,
(	635	,	7	,	'	col. Forestal	')	,
(	636	,	7	,	'	col. Forestal 1	')	,
(	637	,	7	,	'	col. Forestal 2	')	,
(	638	,	7	,	'	col. Gabriel Hernández	')	,
(	639	,	7	,	'	col. General Felipe Berriozabal'	)	,
(	640	,	7	,	'	col. Gertrudis Sánchez 1a Secc.'	)	,
(	641	,	7	,	'	col. Gertrudis Sánchez 2a Secc.	')	,
(	642	,	7	,	'	col. Gertrudis Sánchez 3a Secc.	')	,
(	643	,	7	,	'	col. Graciano Sánchez'	)	,
(	644	,	7	,	'	col. Granjas Modernas'	)	,
(	645	,	7	,	'	col. Guadalupe Insurgentes'	)	,
(	646	,	7	,	'	col. Guadalupe Proletaria	')	,
(	647	,	7	,	'	col. Guadalupe Tepeyac'	)	,
(	648	,	7	,	'	col. Guadalupe Victoria'	)	,
(	649	,	7	,	'	col. Guadalupe Victoria Cuauhtepec'	)	,
(	650	,	7	,	'	col. Héroes de Cerro Prieto	')	,
(	651	,	7	,	'	col. Héroes de Chapultepec	')	,
(	652	,	7	,	'	col. Héroes de Nazcozari	')	,
(	653	,	7	,	'	col. Indeco	')	,
(	654	,	7	,	'	col. Industrial'	)	,
(	655	,	7	,	'	col. Jorge Negrete'	)	,
(	656	,	7	,	'	col. Juan González Romero'	)	,
(	657	,	7	,	'	col. Juventino Rosas'	)	,
(	658	,	7	,	'	col. La Casilda	')	,
(	659	,	7	,	'	col. La Cruz	')	,
(	660	,	7	,	'	col. La Esmeralda'	)	,
(	661	,	7	,	'	col. La Joya	')	,
(	662	,	7	,	'	col. La Joyita	')	,
(	663	,	7	,	'	col. La Legislatura'	)	,
(	664	,	7	,	'	col. La Lengüeta'	)	,
(	665	,	7	,	'	col. La Malinche'	)	,
(	666	,	7	,	'	col. La Pastora	')	,
(	667	,	7	,	'	col. La Pradera	')	,
(	668	,	7	,	'	col. La Providencia'	)	,
(	669	,	7	,	'	col. Lindavista Norte	')	,
(	670	,	7	,	'	col. Lindavista Sur	')	,
(	671	,	7	,	'	col. Lindavista Vallejo 1a Secc.'	)	,
(	672	,	7	,	'	col. Lindavista Vallejo 2a Secc.'	)	,
(	673	,	7	,	'	col. Lindavista Vallejo 3a Secc.'	)	,
(	674	,	7	,	'	col. Loma La Palma	')	,
(	675	,	7	,	'	col. Lomas de Cuautepec'	)	,
(	676	,	7	,	'	col. Luis Donaldo Colosio'	)	,
(	677	,	7	,	'	col. Magdalena de Las Salinas'	)	,
(	678	,	7	,	'	col. Malacates'	)	,
(	679	,	7	,	'	col. Martín Carrera'	)	,
(	680	,	7	,	'	col. Montevideo	')	,
(	681	,	7	,	'	col. Mártires de Río Blanco'	)	,
(	682	,	7	,	'	col. Máximino Ávila Camacho'	)	,
(	683	,	7	,	'	col. Narciso Bassols'	)	,
(	684	,	7	,	'	col. Nueva Atzacoalco'	)	,
(	685	,	7	,	'	col. Nueva Industrial Vallejo'	)	,
(	686	,	7	,	'	col. Nueva Tenochtitlán	')	,
(	687	,	7	,	'	col. Nueva Vallejo'	)	,
(	688	,	7	,	'	col. Palmatitla	')	,
(	689	,	7	,	'	col. Panamericana	')	,
(	690	,	7	,	'	col. Parque Metropolitano'	)	,
(	691	,	7	,	'	col. Planetario Lindavista'	)	,
(	692	,	7	,	'	col. Pradera 2a Secc.	')	,
(	693	,	7	,	'	col. Prados de Cuautepec'	)	,
(	694	,	7	,	'	col. Progreso Nacional	')	,
(	695	,	7	,	'	col. Providencia	')	,
(	696	,	7	,	'	col. Residencial Acueducto de Guadalupe	')	,
(	697	,	7	,	'	col. Residencial La Escalera	')	,
(	698	,	7	,	'	col. Residencial Zacatenco	')	,
(	699	,	7	,	'	col. Rosas del Tepeyac	')	,
(	700	,	7	,	'	col. Salvador Díaz Mirón'	)	,
(	701	,	7	,	'	col. San Antonio	')	,
(	702	,	7	,	'	col. San Bartolo Atepehuacán'	)	,
(	703	,	7	,	'	col. San Felipe de Jesús	')	,
(	704	,	7	,	'	col. San José de La Escalera'	)	,
(	705	,	7	,	'	col. San José Ticomán	')	,
(	706	,	7	,	'	col. San Juan de Aragón	')	,
(	707	,	7	,	'	col. San Juan de Aragón 1a Secc.'	)	,
(	708	,	7	,	'	col. San Juan de Aragón 2a Secc.'	)	,
(	709	,	7	,	'	col. San Juan de Aragón 3a Secc.'	)	,
(	710	,	7	,	'	col. San Juan de Aragón 4a Secc.'	)	,
(	711	,	7	,	'	col. San Juan de Aragón 5a Secc.'	)	,
(	712	,	7	,	'	col. San Juan de Aragón 6a Secc.'	)	,
(	713	,	7	,	'	col. San Juan de Aragón 7a Secc.'	)	,
(	714	,	7	,	'	col. San Miguel'	)	,
(	715	,	7	,	'	col. San Pedro el Chico'	)	,
(	716	,	7	,	'	col. San Pedro Zacatenco'	)	,
(	717	,	7	,	'	col. Santa Isabela Tola	')	,
(	718	,	7	,	'	col. Santa Maria Ticomán'	)	,
(	719	,	7	,	'	col. Santa Rosa	')	,
(	720	,	7	,	'	col. Santiago Atepetlac'	)	,
(	721	,	7	,	'	col. Siete Maravillas'	)	,
(	722	,	7	,	'	col. Solidaridad Nacional'	)	,
(	723	,	7	,	'	col. Tablas de San Augustín'	)	,
(	724	,	7	,	'	col. Tepetates	')	,
(	725	,	7	,	'	col. Tepeyac Insurgentes'	)	,
(	726	,	7	,	'	col. Tlacaelel	')	,
(	727	,	7	,	'	col. Tlacamaca	')	,
(	728	,	7	,	'	col. Tlalpexco	')	,
(	729	,	7	,	'	col. Torres Lindavista'	)	,
(	730	,	7	,	'	col. Tres Estrellas	')	,
(	731	,	7	,	'	col. Triunfo de la Republica'	)	,
(	732	,	7	,	'	col. Valle de Madero	')	,
(	733	,	7	,	'	col. Valle del Tepeyac	')	,
(	734	,	7	,	'	col. Vallejo	')	,
(	735	,	7	,	'	col. Vallejo Poniente'	)	,
(	736	,	7	,	'	col. Vasco de Quiroga'	)	,
(	737	,	7	,	'	col. Villa de Aragón	')	,
(	738	,	7	,	'	col. Villa Gustavo A. Madero'	)	,
(	739	,	7	,	'	col. Villa Hermosa'	)	,
(	740	,	7	,	'	col. Vista Hermosa	')	,
(	741	,	7	,	'	col. Zona Escolar	')	,
(	742	,	7	,	'	col. Zona Escolar Oriente'	)	,
(	743	,	7	,	'	Pueblo de Santiago Atzocoalco'	)	,
(	744	,	7	,	'	Pueblo San Juan de Aragón'	)	,
(	745	,	8	,	'	Barrio La Asunción'	)	,
(	746	,	8	,	'	Barrio Los Reyes	')	,
(	747	,	8	,	'	Barrio San Francisco Xicaltongo'	)	,
(	748	,	8	,	'	Barrio San Miguel'	)	,
(	749	,	8	,	'	Barrio San Pedro	')	,
(	750	,	8	,	'	Barrio Santa Cruz	')	,
(	751	,	8	,	'	Barrio Santiago Norte	')	,
(	752	,	8	,	'	Barrio Santiago Sur	')	,
(	753	,	8	,	'	Barrio Zapotla	')	,
(	754	,	8	,	'	col. Fraccionamiento Coyuya	')	,
(	755	,	8	,	'	col. Reforma Iztaccíhuatl Norte'	)	,
(	756	,	8	,	'	col. Reforma Iztaccíhuatl Sur	')	,
(	757	,	8	,	'	col. Santa Anita	')	,
(	758	,	8	,	'	col. Agrícola Oriental'	)	,
(	759	,	8	,	'	col. Agrícola Pantitlán'	)	,
(	760	,	8	,	'	col. Amp. Gabriel Ramos Millán'	)	,
(	761	,	8	,	'	col. Campamento 2 de Octubre	')	,
(	762	,	8	,	'	col. Carlos Zapata Vela	')	,
(	763	,	8	,	'	col. Cuchilla Agricola Oriental'	)	,
(	764	,	8	,	'	col. El Rodeo	')	,
(	765	,	8	,	'	col. Exejido La Magdalena Mixhuca'	)	,
(	766	,	8	,	'	col. Gabriel Ramos Millán	')	,
(	767	,	8	,	'	col. Gabriel Ramos Millán Secc Tlacotal'	)	,
(	768	,	8	,	'	col. Gabriel Ramos Millán Secc. Cuchilla'	)	,
(	769	,	8	,	'	col. Granjas México	')	,
(	770	,	8	,	'	col. Infonavit Iztacalco'	)	,
(	771	,	8	,	'	col. INPI Picos	')	,
(	772	,	8	,	'	col. Jardines Tecma'	)	,
(	773	,	8	,	'	col. Juventino Rosas'	)	,
(	774	,	8	,	'	col. La Cruz Coyuya	')	,
(	775	,	8	,	'	col. Los Picos de Iztacalco Secc. 1A'	)	,
(	776	,	8	,	'	col. Los Picos de Iztacalco Secc. 1B'	)	,
(	777	,	8	,	'	col. Los Picos de Iztacalco Secc. 2A'	)	,
(	778	,	8	,	'	col. Militar Marte'	)	,
(	779	,	8	,	'	col. Nueva Santa Anita'	)	,
(	780	,	8	,	'	col. Tlazintla'	)	,
(	781	,	8	,	'	col. Viaducto Piedad'	)	,
(	782	,	9	,	'	Barrio Guadalupe	')	,
(	783	,	9	,	'	Barrio La Asunción	')	,
(	784	,	9	,	'	Barrio San Antonio	')	,
(	785	,	9	,	'	Barrio San Antonio Culhuacán	')	,
(	786	,	9	,	'	Barrio San Ignacio'	)	,
(	787	,	9	,	'	Barrio San José	')	,
(	788	,	9	,	'	Barrio San Lorenzo'	)	,
(	789	,	9	,	'	Barrio San Lucas'	)	,
(	790	,	9	,	'	Barrio San Miguel'	)	,
(	791	,	9	,	'	Barrio San Pablo	')	,
(	792	,	9	,	'	Barrio San Pedro	')	,
(	793	,	9	,	'	Barrio San Simón Culhuacán	')	,
(	794	,	9	,	'	Barrio Santa Bárbara	')	,
(	795	,	9	,	'	Barrio Tula'	)	,
(	796	,	9	,	'	col. 12 de Diciembre	')	,
(	797	,	9	,	'	col. Albarrada'	)	,
(	798	,	9	,	'	col. Allepetlalli'	)	,
(	799	,	9	,	'	col. Álvaro Obregón'	)	,
(	800	,	9	,	'	col. Amp Veracruz'	)	,
(	801	,	9	,	'	col. Amp. Bellavista'	)	,
(	802	,	9	,	'	col. Amp. El Santuario'	)	,
(	803	,	9	,	'	col. Amp. El Triunfo	')	,
(	804	,	9	,	'	col. Amp. Emiliano Zapata'	)	,
(	805	,	9	,	'	col. Amp. Los Reyes	')	,
(	806	,	9	,	'	col. Amp. Paraje San Juan'	)	,
(	807	,	9	,	'	col. Amp. Ricardo Flores Magón'	)	,
(	808	,	9	,	'	col. Amp. San Miguel	')	,
(	809	,	9	,	'	col. Amp. Santa Maria Aztahuacán'	)	,
(	810	,	9	,	'	col. Amp. Sinatel'	)	,
(	811	,	9	,	'	col. Apatlaco	')	,
(	812	,	9	,	'	col. Año de Juárez'	)	,
(	813	,	9	,	'	col. Banjada	')	,
(	814	,	9	,	'	col. Barranca de Guadalupe'	)	,
(	815	,	9	,	'	col. Bellavista'	)	,
(	816	,	9	,	'	col. Benito Juárez'	)	,
(	817	,	9	,	'	col. Buenavista	')	,
(	818	,	9	,	'	col. Cacama'	)	,
(	819	,	9	,	'	col. Campestre Potrero	')	,
(	820	,	9	,	'	col. Cananea'	)	,
(	821	,	9	,	'	col. Carlos Hank González'	)	,
(	822	,	9	,	'	col. Carlos Jonguitud Barrios'	)	,
(	823	,	9	,	'	col. Casa Blanca'	)	,
(	824	,	9	,	'	col. Celdalliotli'	)	,
(	825	,	9	,	'	col. Central de Abasto'	)	,
(	826	,	9	,	'	col. Cerro de La Estrella'	)	,
(	827	,	9	,	'	col. Chinampac de Juárez	')	,
(	828	,	9	,	'	col. Citlalli'	)	,
(	829	,	9	,	'	col. Consejo Agrarista Mexicano'	)	,
(	830	,	9	,	'	col. Constitución de 1917	')	,
(	831	,	9	,	'	col. Cuchilla del Moral	')	,
(	832	,	9	,	'	col. Degollado	')	,
(	833	,	9	,	'	col. Desarollo Urbano Quetzalcóatl	')	,
(	834	,	9	,	'	col. Dr. Alfonso Ortiz Tirado'	)	,
(	835	,	9	,	'	col. Ejército de Agua Prieta	')	,
(	836	,	9	,	'	col. Ejército de Oriente	')	,
(	837	,	9	,	'	col. Ejército de Oriente Peñón'	)	,
(	838	,	9	,	'	col. El Edén'	)	,
(	839	,	9	,	'	col. El Manto'	)	,
(	840	,	9	,	'	col. El Mirador'	)	,
(	841	,	9	,	'	col. El Molino	')	,
(	842	,	9	,	'	col. El Molino Tezonco'	)	,
(	843	,	9	,	'	col. El Paraíso'	)	,
(	844	,	9	,	'	col. El Polvorillo	')	,
(	845	,	9	,	'	col. El Prado'	)	,
(	846	,	9	,	'	col. El Retoño'	)	,
(	847	,	9	,	'	col. El Rodeo	')	,
(	848	,	9	,	'	col. El Rosario	')	,
(	849	,	9	,	'	col. El Santuario'	)	,
(	850	,	9	,	'	col. El Sifón	')	,
(	851	,	9	,	'	col. El Triunfo	')	,
(	852	,	9	,	'	col. El Triángulo'	)	,
(	853	,	9	,	'	col. El Vergel	')	,
(	854	,	9	,	'	col. Ermita Zaragoza'	)	,
(	855	,	9	,	'	col. Escuadrón 201	')	,
(	856	,	9	,	'	col. Estado de Veracruz'	)	,
(	857	,	9	,	'	col. Estrella Culhuacán	')	,
(	858	,	9	,	'	col. Estrella del Sur	')	,
(	859	,	9	,	'	col. Eva Sámano de López Mateos	')	,
(	860	,	9	,	'	col. Francisco Villa'	)	,
(	861	,	9	,	'	col. Fuego Nuevo	')	,
(	862	,	9	,	'	col. Granjas de San Antonio'	)	,
(	863	,	9	,	'	col. Granjas Esmeralda'	)	,
(	864	,	9	,	'	col. Granjas Estrella'	)	,
(	865	,	9	,	'	col. Guadalupe del Moral'	)	,
(	866	,	9	,	'	col. Héroes de Churubusco	')	,
(	867	,	9	,	'	col. Insurgentes	')	,
(	868	,	9	,	'	col. Iztapalapa	')	,
(	869	,	9	,	'	col. Iztlahuacán'	)	,
(	870	,	9	,	'	col. Jacarandas	')	,
(	871	,	9	,	'	col. Jardines de Churubusco'	)	,
(	872	,	9	,	'	col. Jardines de San Lorenzo Tezonco	')	,
(	873	,	9	,	'	col. José López Portillo	')	,
(	874	,	9	,	'	col. José María Morelos y Pavón'	)	,
(	875	,	9	,	'	col. Juan Escutia	')	,
(	876	,	9	,	'	col. Justo Sierra	')	,
(	877	,	9	,	'	col. La Era	')	,
(	878	,	9	,	'	col. La Esperanza	')	,
(	879	,	9	,	'	col. La Planta	')	,
(	880	,	9	,	'	col. La Regadera'	)	,
(	881	,	9	,	'	col. Las Peñas	')	,
(	882	,	9	,	'	col. Leyes de Reforma 1a Secc.'	)	,
(	883	,	9	,	'	col. Leyes de Reforma 2a Secc.	')	,
(	884	,	9	,	'	col. Leyes de Reforma 3a Secc.'	)	,
(	885	,	9	,	'	col. Lomas de La Estancia	')	,
(	886	,	9	,	'	col. Lomas de San Lorenzo	')	,
(	887	,	9	,	'	col. Lomas de Santa Cruz'	)	,
(	888	,	9	,	'	col. Lomas de Zaragoza	')	,
(	889	,	9	,	'	col. Lomas El Manto	')	,
(	890	,	9	,	'	col. Lomas Estrella	')	,
(	891	,	9	,	'	col. Los Cipreses	')	,
(	892	,	9	,	'	col. Los Picos	')	,
(	893	,	9	,	'	col. Los Ángeles'	)	,
(	894	,	9	,	'	col. Los Ángeles Apandaya'	)	,
(	895	,	9	,	'	col. Miguel de la Madrid Hurtado'	)	,
(	896	,	9	,	'	col. Minerva	')	,
(	897	,	9	,	'	col. Miravalles	')	,
(	898	,	9	,	'	col. Mixcoatl	')	,
(	899	,	9	,	'	col. Monte Albán'	)	,
(	900	,	9	,	'	col. Nueva Rosita'	)	,
(	901	,	9	,	'	col. Palmitas	')	,
(	902	,	9	,	'	col. Paraje San Juan'	)	,
(	903	,	9	,	'	col. Paraje San Juan Cerro'	)	,
(	904	,	9	,	'	col. Paraje Zacatepec	')	,
(	905	,	9	,	'	col. Paseos de Churubusco'	)	,
(	906	,	9	,	'	col. Plan de Iguala	')	,
(	907	,	9	,	'	col. Presidentes de México'	)	,
(	908	,	9	,	'	col. Progresista'	)	,
(	909	,	9	,	'	col. Progreso del Sur'	)	,
(	910	,	9	,	'	col. Puente Blanco	')	,
(	911	,	9	,	'	col. Purísima Atlazopa'	)	,
(	912	,	9	,	'	col. Real del Moral	')	,
(	913	,	9	,	'	col. Reforma Política'	)	,
(	914	,	9	,	'	col. Renovación	')	,
(	915	,	9	,	'	col. Ricardo Flores Magón'	)	,
(	916	,	9	,	'	col. San Andrés Tetepilco'	)	,
(	917	,	9	,	'	col. San Andrés Tomatlán	')	,
(	918	,	9	,	'	col. San Antonio Culhuacán	')	,
(	919	,	9	,	'	col. San José Aculco	')	,
(	920	,	9	,	'	col. San José Buenavista'	)	,
(	921	,	9	,	'	col. San Juan Estrella	')	,
(	922	,	9	,	'	col. San Juan Joya	')	,
(	923	,	9	,	'	col. San Juan Xalpa	')	,
(	924	,	9	,	'	col. San Miguel 8a Amp.'	)	,
(	925	,	9	,	'	col. San Miguel Teotongo Secc. Acorrolado'	)	,
(	926	,	9	,	'	col. San Miguel Teotongo Secc. Avisadera'	)	,
(	927	,	9	,	'	col. San Miguel Teotongo Secc. Capilla	')	,
(	928	,	9	,	'	col. San Miguel Teotongo Secc. Corrales	')	,
(	929	,	9	,	'	col. San Miguel Teotongo Secc. Guadalupe'	)	,
(	930	,	9	,	'	col. San Miguel Teotongo Secc. Iztlahuaca'	)	,
(	931	,	9	,	'	col. San Miguel Teotongo Secc. Jardines	')	,
(	932	,	9	,	'	col. San Miguel Teotongo Secc. La Cruz	')	,
(	933	,	9	,	'	col. San Miguel Teotongo Secc. Loma Alta'	)	,
(	934	,	9	,	'	col. San Miguel Teotongo Secc. Mercedes	')	,
(	935	,	9	,	'	col. San Miguel Teotongo Secc. Palmitas	')	,
(	936	,	9	,	'	col. San Miguel Teotongo Secc. Puente	')	,
(	937	,	9	,	'	col. San Miguel Teotongo Secc. Ranchito	')	,
(	938	,	9	,	'	col. San Miguel Teotongo Secc. Rancho Bajo'	)	,
(	939	,	9	,	'	col. San Miguel Teotongo Secc. Torres	')	,
(	940	,	9	,	'	col. San Nicolás Tolentino'	)	,
(	941	,	9	,	'	col. San Pablo'	)	,
(	942	,	9	,	'	col. Santa Cruz Meyehualco'	)	,
(	943	,	9	,	'	col. Santa Isabel Industrial'	)	,
(	944	,	9	,	'	col. Santa Martha Acatitla Norte'	)	,
(	945	,	9	,	'	col. Santa Martha Acatitla Sur	')	,
(	946	,	9	,	'	col. Santa María Aztahuacán'	)	,
(	947	,	9	,	'	col. Santa María del Monte	')	,
(	948	,	9	,	'	col. Santiago Acahualtepec 1a Amp.	')	,
(	949	,	9	,	'	col. Santiago Acahualtepec 2a Amp.	')	,
(	950	,	9	,	'	col. Sector Polular	')	,
(	951	,	9	,	'	col. Sideral'	)	,
(	952	,	9	,	'	col. Sinatel'	)	,
(	953	,	9	,	'	col. Tepalcates'	)	,
(	954	,	9	,	'	col. Tonorios'	)	,
(	955	,	9	,	'	col. Unidad Habitacional Ejercicio Constitucional'	)	,
(	956	,	9	,	'	col. Unidad Habitacional Vicente Guerrero	')	,
(	957	,	9	,	'	col. Unidades Modelo	')	,
(	958	,	9	,	'	col. USCOVI'	)	,
(	959	,	9	,	'	col. Valle de Luces'	)	,
(	960	,	9	,	'	col. Valle de San Lorenzo	')	,
(	961	,	9	,	'	col. Valle del Sur	')	,
(	962	,	9	,	'	col. Xalpa	')	,
(	963	,	9	,	'	col. Zacahuitza'	)	,
(	964	,	9	,	'	Pueblo Aculco'	)	,
(	965	,	9	,	'	Pueblo Culhuacán'	)	,
(	966	,	9	,	'	Pueblo Los Reyes Culhuacán'	)	,
(	967	,	9	,	'	Pueblo Magdalena Atlazolpa	')	,
(	968	,	9	,	'	Pueblo Mexicaltzingo	')	,
(	969	,	9	,	'	Pueblo San Andrés Tomatlán'	)	,
(	970	,	9	,	'	Pueblo San Juanico Nextipal'	)	,
(	971	,	9	,	'	Pueblo San Lorenzo Tezonco	')	,
(	972	,	9	,	'	Pueblo San Lorenzo Xicoténcatl'	)	,
(	973	,	9	,	'	Pueblo San Sebastián Tecoloxtitla'	)	,
(	974	,	9	,	'	Pueblo Santa Cruz Meyehualco'	)	,
(	975	,	9	,	'	Pueblo Santa Maria Aztahuacán'	)	,
(	976	,	9	,	'	Pueblo Santa Martha Acatitla	')	,
(	977	,	9	,	'	Pueblo Santa María Tomatlán	')	,
(	978	,	9	,	'	Pueblo Santiago Acahualtepec'	)	,
(	979	,	10	,	'	Barrio Las Calles'	)	,
(	980	,	10	,	'	Barrio San Francisco'	)	,
(	981	,	10	,	'	col. Acataxco'	)	,
(	982	,	10	,	'	col. Amp. Lomas de San Bernabé	')	,
(	983	,	10	,	'	col. Amp. Potrerillo'	)	,
(	984	,	10	,	'	col. Barranca Seca	')	,
(	985	,	10	,	'	col. Barros Serra	')	,
(	986	,	10	,	'	col. Cuauhtémoc'	)	,
(	987	,	10	,	'	col. El Maestro'	)	,
(	988	,	10	,	'	col. El Ocotel	')	,
(	989	,	10	,	'	col. El Rosal	')	,
(	990	,	10	,	'	col. El Tanque	')	,
(	991	,	10	,	'	col. El Toro	')	,
(	992	,	10	,	'	col. Ermitaño	')	,
(	993	,	10	,	'	col. Huayatla'	)	,
(	994	,	10	,	'	col. Héroes de Padierna'	)	,
(	995	,	10	,	'	col. La Carbonera	')	,
(	996	,	10	,	'	col. La Concepción'	)	,
(	997	,	10	,	'	col. La Cruz	')	,
(	998	,	10	,	'	col. La Guadalupe	')	,
(	999	,	10	,	'	col. La Malinche	')	,
(	1000	,	10	,'		col. Las Cruces	')	,
(	1001	,	10	,'		col. Las Huertas'	)	,
(	1002	,	10	,'		col. Las Palmas'	)	,
(	1003	,	10	,'		col. Lomas de San Bernabé'	)	,
(	1004	,	10	,'		col. Lomas Quebradas'	)	,
(	1005	,	10	,'		col. Los Padres	')	,
(	1006	,	10	,'		col. Potrerillo	')	,
(	1007	,	10	,'		col. San Bartolo Ameyalco'	)	,
(	1008	,	10	,'		col. San Francisco'	)	,
(	1009	,	10	,'		col. San Jerónimo Aculco'	)	,
(	1010	,	10	,'		col. San Jerónimo Lidice'	)	,
(	1011	,	10	,'		col. Santa Teresa'	)	,
(	1012	,	10	,'		col. Tierra Unida'	)	,
(	1013	,	10	,'		col. Vista Hermosa'	)	,
(	1014	,	10	,'		Pueblo La Magdalena'	)	,
(	1015	,	10	,'		Pueblo Nuevo Alto'	)	,
(	1016	,	10	,'		Pueblo Nuevo Bajo'	)	,
(	1017	,	10	,'		Pueblo San Bernabé Ocotepec	')	,
(	1018	,	10	,'		Pueblo San Nicolás Totolapan'	)	,
(	1019	,	11	,'		col. 5 de Mayo'	)	,
(	1020	,	11	,'		col. 10 de Abril	')	,
(	1021	,	11	,'		col. 16 de Septiembre'	)	,
(	1022	,	11	,'		col. Ahuehuetes Anáhuac'	)	,
(	1023	,	11	,'		col. Agricultura'	)	,
(	1024	,	11	,'		col. Amp. Daniel Garza'	)	,
(	1025	,	11	,'		col. Amp. Granada'	)	,
(	1026	,	11	,'		col. Amp. Popo	')	,
(	1027	,	11	,'		col. Amp. Torre Blanca'	)	,
(	1028	,	11	,'		col. América	')	,
(	1029	,	11	,'		col. Anzures	')	,
(	1030	,	11	,'		col. Anáhuac 1a Secc.	')	,
(	1031	,	11	,'		col. Anáhuac 2a Secc.	')	,
(	1032	,	11	,'		col. Argentina Antigua	')	,
(	1033	,	11	,'		col. Argentina Poniente	')	,
(	1034	,	11	,'		col. Bosques de Las Lomas'	)	,
(	1035	,	11	,'		col. Cuauhtémoc Pensil'	)	,
(	1036	,	11	,'		col. Daniel Garza	')	,
(	1037	,	11	,'		col. Deportivo Pensil'	)	,
(	1038	,	11	,'		col. Dos Lagos	')	,
(	1039	,	11	,'		col. Escandón 1a Secc.	')	,
(	1040	,	11	,'		col. Escandón 2a Secc.'	)	,
(	1041	,	11	,'		col. Francisco I. Madero	')	,
(	1042	,	11	,'		col. Granada'	)	,
(	1043	,	11	,'		col. Hipódromo de las Américas	')	,
(	1044	,	11	,'		col. Huichapán	')	,
(	1045	,	11	,'		col. Ignacio Manuel Altamirano'	)	,
(	1046	,	11	,'		col. Irrigación	')	,
(	1047	,	11	,'		col. Lago Norte	')	,
(	1048	,	11	,'		col. Lago Sur	')	,
(	1049	,	11	,'		col. Legaria	')	,
(	1050	,	11	,'		col. Loma Hermosa'	)	,
(	1051	,	11	,'		col. Lomas Altas'	)	,
(	1052	,	11	,'		col. Lomas de Bezares	')	,
(	1053	,	11	,'		col. Lomas de Chapultepec 1a Secc.'	)	,
(	1054	,	11	,'		col. Lomas de Chapultepec 2a Secc.	')	,
(	1055	,	11	,'		col. Lomas de Chapultepec 3a Secc.	')	,
(	1056	,	11	,'		col. Lomas de Chapultepec 4a Secc.	')	,
(	1057	,	11	,'		col. Lomas de Chapultepec 5a Secc.'	)	,
(	1058	,	11	,'		col. Lomas de Chapultepec 6a Secc.	')	,
(	1059	,	11	,'		col. Lomas de Chapultepec 7a Secc.'	)	,
(	1060	,	11	,'		col. Lomas de Chapultepec 8a Secc.'	)	,
(	1061	,	11	,'		col. Lomas de Reforma	')	,
(	1062	,	11	,'		col. Lomas de San Isidro	')	,
(	1063	,	11	,'		col. Lomas de Sotelo'	)	,
(	1064	,	11	,'		col. Los Manzanos	')	,
(	1065	,	11	,'		col. Mariano Escobedo'	)	,
(	1066	,	11	,'		col. Modelo Pensil'	)	,
(	1067	,	11	,'		col. Molino del Rey'	)	,
(	1068	,	11	,'		col. México Nuevo'	)	,
(	1069	,	11	,'		col. Nextitla	')	,
(	1070	,	11	,'		col. Observatorio'	)	,
(	1071	,	11	,'		col. Pensil Norte'	)	,
(	1072	,	11	,'		col. Pensil Sur	')	,
(	1073	,	11	,'		col. Peralitos	')	,
(	1074	,	11	,'		col. Periodista'	)	,
(	1075	,	11	,'		col. Plutarco Elías Calles'	)	,
(	1076	,	11	,'		col. Polanco 1a Secc.'	)	,
(	1077	,	11	,'		col. Polanco 2a Secc.'	)	,
(	1078	,	11	,'		col. Polanco 3a Secc.'	)	,
(	1079	,	11	,'		col. Polanco 4a Secc.'	)	,
(	1080	,	11	,'		col. Polanco 5a Secc.'	)	,
(	1081	,	11	,'		col. Popo	')	,
(	1082	,	11	,'		col. Popotla'	)	,
(	1083	,	11	,'		col. Real de Las Lomas	')	,(	1084	,	11	,'		col. Refinería 18 de Marzo'	)	,(	1085	,	11	,'		col. Reforma Pensil	')	,
(	1086	,	11	,'		col. Reforma Social'	)	,(	1087	,	11	,'		col. Residencia Militar	')	,(	1088	,	11	,'		col. San Diego Ocoyoacac'	)	,(	1089	,	11	,'		col. San Joaquín	')	,(	1090	,	11	,'		col. San Juanico'	)	,(	1091	,	11	,'		col. San Lorenzo Tlatenango'	)	,(	1092	,	11	,'		col. San Miguel Chapultepec 1a Secc.	')	,(	1093	,	11	,'		col. San Miguel Chapultepec 2a Secc.	')	,(	1094	,	11	,'		col. Santo Tomás'	)	,(	1095	,	11	,'		col. Tacuba'	)	,(	1096	,	11	,'		col. Tacubaya	')	,(	1097	,	11	,'		col. Tlaxpana	')	,(	1098	,	11	,'		col. Torre Blanca'	)	,(	1099	,	11	,'		col. Un Hogar Para Nosotros'	)	,(	1100	,	11	,'		col. Ventura Pérez de Alba'	)	,(	1101	,	11	,'		col. Verónica Anzures	')	,(	1102	,	12	,'		Pueblo San Agustín Ohtenco	')	,(	1103	,	12	,'		Pueblo San Antonio Tecomitl'	)	,(	1104	,	12	,'		Barrio Cruztitla	')	,(	1105	,	12	,'		Barrio Tecaxtitla'	)	,(	1106	,	12	,'		Barrio Tenatitla'	)	,(	1107	,	12	,'		Barrio Xaltipac'	)	,(	1108	,	12	,'		Barrio Xochitépetl	')	,(	1109	,	12	,'		Pueblo San Bartolomé Xicomulco'	)	,(	1110	,	12	,'		Pueblo San Francisco Tecoxpa'	)	,(	1111	,	12	,'		Pueblo San Jerónimo Miacatlán'	)	,(	1112	,	12	,'		Pueblo San Juan Tepenahuac	')	,(	1113	,	12	,'		Pueblo San Lorenzo Tlacoyucan	')	,(	1114	,	12	,'		Pueblo San Nicolás Tetelco – La Conchita'	)	,(	1115	,	12	,'		Pueblo San Pablo Oztotepec'	)	,(	1116	,	12	,'		Barrio Centro	')	,(	1117	,	12	,'		Barrio Chalmita	')	,(	1118	,	12	,'		Barrio San Juan	')	,(	1119	,	12	,'		Barrio San Miguel'	)	,(	1120	,	12	,'		Pueblo San Pedro Atocpan'	)	,(	1121	,	12	,'		Barrio Nochtla	')	,(	1122	,	12	,'		Barrio Ocotitla'	)	,(	1123	,	12	,'		Barrio Panchimalco'	)	,(	1124	,	12	,'		Barrio Tula	')	,(	1125	,	12	,'		Pueblo San Salvador Cuauhtenco'	)	,(	1126	,	12	,'		Pueblo Santa Ana Tlacotenco'	)	,
(	1127	,	12	,'		Barrio La Lupita Teticpac'	)	,(	1128	,	12	,'		Barrio La Lupita Xolco'	)	,(	1129	,	12	,'		Barrio San José	')	,(	1130	,	12	,'		Barrio San Marcos'	)	,(	1131	,	12	,'		Barrio San Miguel'	)	,(	1132	,	12	,'		Pueblo Villa Milpa Alta'	)	,(	1133	,	12	,'		Barrio La Concepción'	)	,(	1134	,	12	,'		Barrio La Luz'	)	,(	1135	,	12	,'		Barrio Los Ángeles	')	,(	1136	,	12	,'		Barrio San Agustín'	)	,(	1137	,	12	,'		Barrio Santa Cruz'	)	,(	1138	,	12	,'		Barrio Santa Martha'	)	,(	1139	,	12	,'		Barrio San Mateo'	)	,(	1140	,	12	,'		Villa Milpa Alta Centro	')	,(	1141	,	13	,'		col. Agrícola Metropolitana'	)	,(	1142	,	13	,'		col. Amp. Los Olivos'	)	,(	1143	,	13	,'		col. Amp. Zapotitlán'	)	,(	1144	,	13	,'		col. Del Mar'	)	,(	1145	,	13	,'		col. Granjas Cabrera'	)	,(	1146	,	13	,'		col. La Draga	')	,(	1147	,	13	,'		col. La Estación'	)	,(	1148	,	13	,'		col. La Nopalera'	)	,(	1149	,	13	,'		col. La Turba	')	,(	1150	,	13	,'		col. Las Arboledas'	)	,(	1151	,	13	,'		col. Los Olivos	')	,(	1152	,	13	,'		col. Miguel Hidalgo'	)	,(	1153	,	13	,'		col. Villa Centroamericana	')	,(	1154	,	13	,'		col. Zapotitlán	')	,(	1155	,	13	,'		Pueblo San Francisco Tlaltenco'	)	,(	1156	,	13	,'		col. Amp. José López Portillo'	)	,(	1157	,	13	,'		col. Amp. Selene	')	,(	1158	,	13	,'		col. El Triángulo'	)	,(	1159	,	13	,'		col. Guadalupe Tlaltenco'	)	,(	1160	,	13	,'		col. López Portillo'	)	,(	1161	,	13	,'		col. Ojo de Agua'	)	,(	1162	,	13	,'		col. Selene'	)	,(	1163	,	13	,'		col. Zacatenco	')	,(	1164	,	13	,'		Pueblo San Nicolás Tetelco'	)	,(	1165	,	13	,'		col.Tepantitlamilco	')	,(	1166	,	13	,'		Barrio La Asunción	')	,(	1167	,	13	,'		Barrio La Guadalupe del Pueblo San Pedro Tláhuac'	)	,(	1168	,	13	,'		Barrio La Magdalena	')	,(	1169	,	13	,'		Barrio Los Reyes del Pueblo San Pedro Tláhuac	')	,(	1170	,	13	,'		Barrio San Andrés'	)	,(	1171	,	13	,'		Barrio San Juan	')	,(	1172	,	13	,'		Barrio San Mateo	')	,(	1173	,	13	,'		Barrio San Miguel del Pueblo San Pedro Tláhuac'	)	,
(	1174	,	13	,'		Barrio San Sebastián'	)	,(	1175	,	13	,'		Barrio Santa Ana'	)	,(	1176	,	13	,'		col. La Habana	')	,(	1177	,	13	,'		col. Quiahuatla	')	,(	1178	,	13	,'		col. San Isidro	')	,(	1179	,	13	,'		col. San José	')	,(	1180	,	13	,'		col. Santa Cecilia	')	,(	1181	,	13	,'		Barrio La Concepción del Pueblo Santa Catarina Yecahuizotl'	)	,(	1182	,	13	,'		Barrio La Guadalupe del Pueblo Santa Catarina Yecahuizotl'	)	,(	1183	,	13	,'		Barrio San Miguel del Pueblo Santa Catarina Yecahuizotl'	)	,(	1184	,	13	,'		Barrio Santiago	')	,(	1185	,	13	,'		col. Amp. Santa Catarina'	)	,(	1186	,	13	,'		Barrio San Bartolomé'	)	,(	1187	,	13	,'		Barrio Santa Cruz	')	,(	1188	,	13	,'		Barrio Los Reyes del Pueblo San Andrés Mixquic	')	,(	1189	,	13	,'		Barrio San Agustín del Pueblo San Andrés Mixquic'	)	,(	1190	,	13	,'		Barrio San Miguel Pueblo San Andrés Mixquic'	)	,(	1191	,	13	,'		Barrio Santa Ana Centro	')	,(	1192	,	13	,'		Barrio Santa Ana Norte	')	,(	1193	,	13	,'		Barrio Santa Ana Poniente'	)	,(	1194	,	13	,'		Barrio Santa Ana Sur	')	,(	1195	,	13	,'		Barrio Santiago Centro'	)	,(	1196	,	13	,'		Barrio Santiago Norte'	)	,(	1197	,	13	,'		Barrio Santiago Sur	')	,(	1198	,	13	,'		col. La Conchita Zapotitlán	')	,(	1199	,	13	,'		Barrio La Concepción Ixtayopán'	)	,(	1200	,	13	,'		Barrio La Soledad	')	,(	1201	,	13	,'		Barrio San Agustín del Pueblo San Juan Ixtayopán'	)	,(	1202	,	13	,'		col. Amp. La Conchita'	)	,(	1203	,	13	,'		col. El Rosario	')	,(	1204	,	13	,'		col. Francisco Villa'	)	,(	1205	,	13	,'		col. Jaime Torres Bodet'	)	,(	1206	,	13	,'		col. Jardines del Llano'	)	,(	1207	,	13	,'		col. La Asunción'	)	,(	1208	,	13	,'		col. La Lupita'	)	,(	1209	,	13	,'		col. Peña Alta'	)	,(	1210	,	13	,'		col. Potrero del Llano'	)	,(	1211	,	13	,'		col. Tierra Blanca'	)	,(	1212	,	14	,'		Barrio de Caramagüey'	)	,(	1213	,	14	,'		Barrio del Niño Jesús'	)	,(	1214	,	14	,'		Barrio El Capulín'	)	,(	1215	,	14	,'		Barrio El Truenito'	)	,(	1216	,	14	,'		Barrio La Fama'	)	,(	1217	,	14	,'		Barrio La Lonja'	)	,(	1218	,	14	,'		Barrio San Fernando'	)	,(	1219	,	14	,'		col. 2 de Octubre'	)	,(	1220	,	14	,'		col. A.M.S.A.'	)	,(	1221	,	14	,'		col. Amp. Fuentes de Pedregal'	)	,(	1222	,	14	,'		col. Amp. Isidro Fabela'	)	,(	1223	,	14	,'		col. Arboledas del Sur'	)	,(	1224	,	14	,'		col. Arenal de Guadalupe'	)	,(	1225	,	14	,'		col. Arenal Tepepan	')	,(	1226	,	14	,'		col. Belisario Domínguez'	)	,(	1227	,	14	,'		col. Belisario Domínguez Secc. 16'	)	,
(	1228	,	14	,'		col. Belvedere Ajusco'	)	,(	1229	,	14	,'		col. Bosques del Pedregal	')	,(	1230	,	14	,'		col. Cantera Puente de Piedra	')	,(	1231	,	14	,'		col. Chichicáspatl'	)	,(	1232	,	14	,'		col. Chimalli	')	,(	1233	,	14	,'		col. Chimilli	')	,(	1234	,	14	,'		col. Club de Golf México'	)	,(	1235	,	14	,'		col. Colinas del Ajusco	')	,(	1236	,	14	,'		col. Colinas del Bosque	')	,(	1237	,	14	,'		col. Comuneros de Santa Úrsula'	)	,(	1238	,	14	,'		col. Cruz del Farol	')	,(	1239	,	14	,'		col. Cuchilla de Padierna	')	,(	1240	,	14	,'		col. Cultura Maya'	)	,(	1241	,	14	,'		col. Cumbres de Tepetongo'	)	,(	1242	,	14	,'		col. Divisadero	')	,(	1243	,	14	,'		col. Ejidos de San Pedro Mártir'	)	,(	1244	,	14	,'		col. El Mirador 1a Secc.'	)	,(	1245	,	14	,'		col. El Mirador 2a Secc.'	)	,(	1246	,	14	,'		col. El Mirador 3a Secc.'	)	,(	1247	,	14	,'		col. Exhacienda Coapa	')	,(	1248	,	14	,'		col. Exhacienda San Juan de Dios'	)	,(	1249	,	14	,'		col. Floresta Coyoacán	')	,(	1250	,	14	,'		col. Fuentes Brotantes	')	,(	1251	,	14	,'		col. Fuentes de Tepepan	')	,(	1252	,	14	,'		col. Fuentes del Pedregal'	)	,(	1253	,	14	,'		col. Granjas Coapa'	)	,(	1254	,	14	,'		col. Guadalupe	')	,(	1255	,	14	,'		col. Hacienda San Juan	')	,(	1256	,	14	,'		col. Heróico Colegio Militar'	)	,(	1257	,	14	,'		col. Héroes de 1910	')	,(	1258	,	14	,'		col. Héroes de Padierna'	)	,(	1259	,	14	,'		col. Isidrio Fabela	')	,(	1260	,	14	,'		col. Jardines del Ajusco'	)	,(	1261	,	14	,'		col. Jardines en La Montaña'	)	,(	1262	,	14	,'		col. Juventud Unida	')	,(	1263	,	14	,'		col. La Joya	')	,(	1264	,	14	,'		col. La Palma	')	,(	1265	,	14	,'		col. Las Tórtolas'	)	,(	1266	,	14	,'		col. Lomas de Cuilotepec'	)	,(	1267	,	14	,'		col. Lomas de Padierna'	)	,(	1268	,	14	,'		col. Lomas de Padierna Sur'	)	,(	1269	,	14	,'		col. Lomas del Pedregal	')	,(	1270	,	14	,'		col. Lomas del Pedregal Framboyanes'	)	,(	1271	,	14	,'		col. Lomas Hidalgo'	)	,(	1272	,	14	,'		col. Los Encinos'	)	,(	1273	,	14	,'		col. Los Volcanes'	)	,(	1274	,	14	,'		col. Magisterial'	)	,(	1275	,	14	,'		col. Magisterial Coapa'	)	,(	1276	,	14	,'		col. María Esther Zuno de Echeverría'	)	,(	1277	,	14	,'		col. Mesa de Los Hornos'	)	,(	1278	,	14	,'		col. Miguel Hidalgo'	)	,(	1279	,	14	,'		col. Miguel Hidalgo 1a Secc.'	)	,(	1280	,	14	,'		col. Miguel Hidalgo 2a Secc.'	)	,(	1281	,	14	,'		col. Miguel Hidalgo 3a Secc.'	)	,(	1282	,	14	,'		col. Miguel Hidalgo 4a Secc.	')	,(	1283	,	14	,'		col. Mirador del Valle'	)	,(	1284	,	14	,'		col. Mirador I	')	,(	1285	,	14	,'		col. Mirador II'	)	,(	1286	,	14	,'		col. Movimiento Organizado de Tlalpan'	)	,(	1287	,	14	,'		col. Narciso Mendoza	')	,(	1288	,	14	,'		col. Nueva Oriental Coapa'	)	,(	1289	,	14	,'		col. Nuevo Renacimiento de Axalco'	)	,(	1290	,	14	,'		col. Parque del Pedregal	')	,(	1291	,	14	,'		col. Pedregal de Las Águilas'	)	,(	1292	,	14	,'		col. Pedregal de San Nicolás 1a Secc.'	)	,(	1293	,	14	,'		col. Pedregal de San Nicolás 2a Secc.	')	,(	1294	,	14	,'		col. Pedregal de San Nicolás 3a Secc.	')	,(	1295	,	14	,'		col. Pedregal de San Nicolás 4a Secc.'	)	,(	1296	,	14	,'		col. Pedregal de San Nicolás 5a Secc.'	)	,(	1297	,	14	,'		col. Pedregal de Santa Úrsula Xitla'	)	,
(	1298	,	14	,'		col. Peña Pobre'	)	,
(	1299	,	14	,'		col. Plan de Ayala	')	,(	1300	,	14	,'		col. Popular Santa Teresa'	)	,(	1301	,	14	,'		col. Prado Coapa 1a Secc.'	)	,(	1302	,	14	,'		col. Prado Coapa 2a Secc.'	)	,(	1303	,	14	,'		col. Prado Coapa 3a Secc.'	)	,(	1304	,	14	,'		col. Pueblo Quieto'	)	,(	1305	,	14	,'		col. Rancho Los Colorines'	)	,(	1306	,	14	,'		col. Residencial Acoxpa'	)	,(	1307	,	14	,'		col. Residencial Miramontes	')	,(	1308	,	14	,'		col. Residencial Villa Coapa'	)	,(	1309	,	14	,'		col. Riconada Coapa 1a Secc.'	)	,(	1310	,	14	,'		col. Riconada Coapa 2a Secc.'	)	,(	1311	,	14	,'		col. Riconada El Mirador'	)	,(	1312	,	14	,'		col. Riconada Las Hadas	')	,(	1313	,	14	,'		col. Rincón del Pedregal	')	,(	1314	,	14	,'		col. Rómulo Sánchez Mireles'	)	,(	1315	,	14	,'		col. San Bartolo El Chico'	)	,(	1316	,	14	,'		col. San Buenaventura	')	,(	1317	,	14	,'		col. San Juan Tepeximilpa'	)	,(	1318	,	14	,'		col. San Pedro Apóstol	')	,(	1319	,	14	,'		col. Santísima Trinidad'	)	,(	1320	,	14	,'		col. Tecorral	')	,(	1321	,	14	,'		col. Tenorios	')	,(	1322	,	14	,'		col. Tepeximilpa La Paz	')	,(	1323	,	14	,'		col. Texcaltenco'	)	,(	1324	,	14	,'		col. Tlalcología'	)	,(	1325	,	14	,'		col. Tlalmille	')	,(	1326	,	14	,'		col. Tlalpan	')	,(	1327	,	14	,'		col. Tlalpan Centro	')	,(	1328	,	14	,'		col. Tlalpuente	')	,(	1329	,	14	,'		col. Tlaxcaltenco La Mesa'	)	,(	1330	,	14	,'		col. Toriello Guerra	')	,(	1331	,	14	,'		col. Torres de Padierna'	)	,(	1332	,	14	,'		col. Valle de Tepepan'	)	,(	1333	,	14	,'		col. Valle Escondido'	)	,(	1334	,	14	,'		col. Vergel Coapa	')	,(	1335	,	14	,'		col. Vergel de Coyoacán	')	,(	1336	,	14	,'		col. Vergel del Sur	')	,(	1337	,	14	,'		col. Villa Coapa	')	,(	1338	,	14	,'		col. Villa Lázaro Cárdenas	')	,(	1339	,	14	,'		col. Villa Olímpica	')	,(	1340	,	14	,'		col. Villa Tlalpan	')	,(	1341	,	14	,'		col. Vistas del Pedregal'	)	,(	1342	,	14	,'		col. Viveros Coatectlán	')	,(	1343	,	14	,'		col. Zacayucan Peña Pobre'	)	,(	1344	,	14	,'		Pueblo Chimalcóyotl	')	,(	1345	,	14	,'		Pueblo La Magdalena Petlacalco	')	,(	1346	,	14	,'		Pueblo Parres el Guarda	')	,(	1347	,	14	,'		Pueblo San Andrés Totoltepec'	)	,(	1348	,	14	,'		Pueblo San Lorenzo Huipulco	')	,(	1349	,	14	,'		Pueblo San Miguel Ajusco	'),	(	1350	,	14	,'		Pueblo San Miguel Topilejo'	)	,(	1351	,	14	,'		Pueblo San Miguel Xicalco'	)	,(	1352	,	14	,'		Pueblo San Pedro Mártir	')	,(	1353	,	14	,'		Pueblo Santa Úrsula Xitla	')	,(	1354	,	14	,'		Pueblo Santo Tomás Ajusco'	)	,(	1355	,	15	,'		Aeropuerto Internacional de la Ciudad de México'	)	,(	1356	,	15	,'		Alameda Oriente	')	,(	1357	,	15	,'		col. 1o de Mayo	')	,(	1358	,	15	,'		col. 4 Árboles	')	,(	1359	,	15	,'		col. 5o Tramo 20 de noviembre'	)	,(	1360	,	15	,'		col. 7 de Julio	')	,(	1361	,	15	,'		col. 10 de Mayo	')	,(	1362	,	15	,'		col. 20 de Noviembre'	)	,(	1363	,	15	,'		col. 24 de Abril	')	,(	1364	,	15	,'		col. Aarón Sáenz	')	,(	1365	,	15	,'		col. Adolfo Lopéz Mateos'	)	,(	1366	,	15	,'		col. Aeronáutica Militar'	)	,(	1367	,	15	,'		col. Álvaro Obregón	')	,(	1368	,	15	,'		col. Amp. 20 de Noviembre'	)	,(	1369	,	15	,'		col. Amp. Aviación Civil'	)	,
(	1370	,	15	,'		col. Amp. Caracol	')	,(	1371	,	15	,'		col. Amp. Michoacana	')	,(	1372	,	15	,'		col. Amp. Penitencaria	')	,(	1373	,	15	,'		col. Amp. Simón Bolívar	')	,(	1374	,	15	,'		col. Amp. Venustiano Carranza'	)	,(	1375	,	15	,'		col. Aquiles Serdán	')	,(	1376	,	15	,'		col. Arenal 1a Secc.	')	,(	1377	,	15	,'		col. Arenal 2a Secc.	')	,(	1378	,	15	,'		col. Arenal 3a Secc.	')	,(	1379	,	15	,'		col. Arenal 4a Secc.	')	,(	1380	,	15	,'		col. Arenal Puerto Aéreo'	)	,(	1381	,	15	,'		col. Arte Gráficas	')	,(	1382	,	15	,'		col. Aviación Civil	')	,(	1383	,	15	,'		col. Azteca	')	,(	1384	,	15	,'		col. Caracol	')	,(	1385	,	15	,'		col. Cuchilla Pantitlán'	)	,(	1386	,	15	,'		col. Damián Carmona	')	,(	1387	,	15	,'		col. Del Parque	')	,(	1388	,	15	,'		col. Emilio Carranza'	)	,(	1389	,	15	,'		col. Escuela de Tiro'	)	,(	1390	,	15	,'		col. Federal	')	,(	1391	,	15	,'		col. Felipe Ángeles	')	,(	1392	,	15	,'		col. General Ignacio Zaragoza'	)	,(	1393	,	15	,'		col. Industrial Puerto Aéreo'	)	,(	1394	,	15	,'		col. Jamaica	')	,(	1395	,	15	,'		col. Janitzio	')	,(	1396	,	15	,'		col. Jardín Balbuena	')	,(	1397	,	15	,'		col. Lorenzo Boturini	')	,(	1398	,	15	,'		col. Magdalena Mixiuhca	')	,(	1399	,	15	,'		col. Merced Balbuena'	)	,(	1400	,	15	,'		col. Michoacana	')	,(	1401	,	15	,'		col. Miguel Hidalgo	')	,(	1402	,	15	,'		col. Moctezuma 1a Secc.'	)	,(	1403	,	15	,'		col. Moctezuma 2a Secc.'	)	,(	1404	,	15	,'		col. Morelos	')	,(	1405	,	15	,'		col. Nicolás Bravo	')	,(	1406	,	15	,'		col. Penitenciaria	 ')	,(	1407	,	15	,'		col. Pensador Mexicano	')	,(	1408	,	15	,'		col. Peñón de Los Baños'	)	,(	1409	,	15	,'		col. Popular Rastro	')	,(	1410	,	15	,'		col. Progresista	')	,
(	1411	,	15	,'		col. Puebla	')	,(	1412	,	15	,'		col. Revolución	')	,(	1413	,	15	,'		col. Romero Rubio'	)	,(	1414	,	15	,'		col. Santa Cruz Aviación'	)	,(	1415	,	15	,'		col. Sevilla	')	,(	1416	,	15	,'		col. Simón Bolívar	')	,(	1417	,	15	,'		col. Tres Mosqueteros	')	,(	1418	,	15	,'		col. Valentin Goméz Farias'	)	,(	1419	,	15	,'		col. Valle Gómez	')	,(	1420	,	15	,'		col. Venustiano Carranza'	)	,(	1421	,	15	,'		col. Zona Centro	')	,(	1422	,	15	,'		Pueblo de La Magdalena Mixiuhca'	)	,(	1423	,	16	,'		Barrio Dieciocho	')	,(	1424	,	16	,'		col. Amp. San Marcos Norte'	)	,(	1425	,	16	,'		col. Amp. Tepepan	')	,(	1426	,	16	,'		col. Bosque Residencial del Sur'	)	,(	1427	,	16	,'		col. Caltongo	')	,(	1428	,	16	,'		col. El Mirador de Amp. Tepepan'	)	,(	1429	,	16	,'		col. Huichapan	')	,(	1430	,	16	,'		col. Jardines del Sur	')	,(	1431	,	16	,'		col. La Noria	')	,(	1432	,	16	,'		col. Las Peritas	')	,(	1433	,	16	,'		col. Paseos del Sur	')	,(	1434	,	16	,'		col. Potrero de San Bernardino'	)	,(	1435	,	16	,'		col. Rinconada Coapa	')	,(	1436	,	16	,'		col. San Bartolo El Chico'	)	,(	1437	,	16	,'		col. San Lorenzo ')	,(	1438	,	16	,'		Barrio Belem	')	,(	1439	,	16	,'		Barrio El Rosario	')	,(	1440	,	16	,'		Barrio La Asunción	')	, (	1441	,	16	,'		Barrio La Concepción Tlacoapa'	)	,(	1442	,	16	,'		Barrio La Guadalupanita'	)	,(	1443	,	16	,'		Barrio La Santísima	')	,(	1444	,	16	,'		Barrio San Antonio	')	,(	1445	,	16	,'		Barrio San Cristóbal'	)	,(	1446	,	16	,'		Barrio San Diego	')	,(	1447	,	16	,'		Barrio San Esteban'	)	,(	1448	,	16	,'		Barrio San Juan	')	,(	1449	,	16	,'		Barrio San Lorenzo	')	,
(	1450	,	16	,'		Barrio San Marcos	')	,(	1451	,	16	,'		Barrio San Pedro	')	,(	1452	,	16	,'		Barrio Santa Crucita'	)	,(	1453	,	16	,'		Barrio Xaltocan	')	,(	1454	,	16	,'		Pueblo San Andrés Ahuayucan'	)	,(	1455	,	16	,'		Barrio Chapultepec	')	,(	1456	,	16	,'		Barrio El Calvario	')	,(	1457	,	16	,'		col. Rosario Tlalí	')	,(	1458	,	16	,'		Pueblo San Francisco Tlanepantla'	)	,(	1459	,	16	,'		Pueblo San Gregorio Atlapulco'	)	,(	1460	,	16	,'		Barrio 3 de Mayo	')	,(	1461	,	16	,'		Barrio La Asunción de Pueblo San Gregorio Atlapulco')	,(	1462	,	16	,'		Barrio Los Reyes	')	,(	1463	,	16	,'		Barrio San Andrés	')	,(	1464	,	16	,'		Barrio San Antonio de Pueblo San Gregorio Atlapulco'	)	,(	1465	,	16	,'		Barrio San Juan Minas	')	,(	1466	,	16	,'		Barrio San Juan Moyotepec	')	,(	1467	,	16	,'		Barrio San Sebastián'	)	,(	1468	,	16	,'		Barrio Santa Cecilia'	)	,(	1469	,	16	,'		Pueblo de Santa María Tepepan'	)	,(	1470	,	16	,'		col. San Juan Tepepan	')	,(	1471	,	16	,'		Pueblo San Lorenzo Atemoaya'	)	,(	1472	,	16	,'		col. Lomas de Tonalco'	)	,(	1473	,	16	,'		col. Tablas de San Lorenzo	')	,(	1474	,	16	,'		Pueblo San Lucas Xochimanca'	)	,(	1475	,	16	,'		col. La Cañada'	)	,
(	1476	,	16	,'		col. San Lucas Oriente'	)	,(	1477	,	16	,'		col. Texmic	')	,(	1478	,	16	,'		Pueblo San Luis Tlaxialtemalco'	)	,(	1479	,	16	,'		Barrio La Candelaria	')	,(	1480	,	16	,'		Barrio La Guadalupana'	)	,(	1481	,	16	,'		Barrio Niños Héroes'	)	,(	1482	,	16	,'		Barrio San José	')	,(	1483	,	16	,'		Barrio San Juan de Pueblo San Luis Tlaxialtemalco'	)	,(	1484	,	16	,'		Pueblo San Mateo Xalpa'	)	,(	1485	,	16	,'		col. Santa Cruz de Chavarrieta'	)	,(	1486	,	16	,'		col. Santa Cruz de Guadalupe'	)	,(	1487	,	16	,'		col. Santa Inés'	)	,(	1488	,	16	,'		Pueblo Santa Cecilia Tepetlapa'	)	,(	1489	,	16	,'		Pueblo Santa Cruz Acalpixca	')	,(	1490	,	16	,'		Barrio Ahualapa	')	,(	1491	,	16	,'		Barrio Apatlaco	')	,(	1492	,	16	,'		Barrio Calpulco'	)	,(	1493	,	16	,'		Barrio del Puente	')	,(	1494	,	16	,'		Barrio La Gallera	')	,(	1495	,	16	,'		Barrio La Planta	')	,(	1496	,	16	,'		Barrio Las Cruces'	)	,(	1497	,	16	,'		Barrio Las Flores'	)	,(	1498	,	16	,'		Barrio Pocitos	')	,(	1499	,	16	,'		Barrio Tetitla	')	,(	1500	,	16	,'		Pueblo Santa Cruz Xochitepec'	)	,(	1501	,	16	,'		Pueblo Santa María Nativitas'	)	,(	1502	,	16	,'		col. Amp. Nativitas'	)	,(	1503	,	16	,'		col. Año de Juárez'	)	,(	1504	,	16	,'		col. El Jazmín	')	,(	1505	,	16	,'		col. Lomas de Nativitas'	)	,(	1506	,	16	,'		col. Rancho Tejomulco'	)	,(	1507	,	16	,'		col. San Jerónimo'	)	,(	1508	,	16	,'		col. Valle de Santa María	')	,(	1509	,	16	,'		col. Xochipilli	')	,(	1510	,	16	,'		Pueblo Santiago Tepalcatlalpan'	)	,(	1511	,	16	,'		col. La Concha'	)	,(	1512	,	16	,'		Pueblo Santiago Tulyehualco'	)	,(	1513	,	16	,'		Barrio Calyequita	')	,(	1514	,	16	,'		col. Guadalupanita'	)	,(	1515	,	16	,'		col. Cerrillos 1a Secc.'	)	,(	1516	,	16	,'		col. Cerrillos 2a Secc.	')	,(	1517	,	16	,'		col. Cerrillos 3a Secc.'	)	,(	1518	,	16	,'		col. Cristo Rey	')	,(	1519	,	16	,'		col. Del Carmen	')	,(	1520	,	16	,'		col. El Mirador – Tulyehualco'	)	,(	1521	,	16	,'		col. El Sacrificio'	)	,(	1522	,	16	,'		col. Las Ánimas	')	,(	1523	,	16	,'		col. Las Mesitas'	)	,(	1524	,	16	,'		col. Nativitas	')	,(	1525	,	16	,'		col. Quirino Mendoza'	)	,(	1526	,	16	,'		col. San Felipe	')	,(	1527	,	16	,'		col. San Isidro	')	,(	1528	,	16	,'		col. Santiaguito'	)	;


/*!40000 ALTER TABLE `cat_colonias` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `cat_delegaciones`
--

DROP TABLE IF EXISTS `cat_delegaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_delegaciones` (
  `Id_Delegacion` int(4) NOT NULL,
  `Nom_Delegacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Delegacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_delegaciones`
--

LOCK TABLES `cat_delegaciones` WRITE;
/*!40000 ALTER TABLE `cat_delegaciones` DISABLE KEYS */;
INSERT INTO `cat_delegaciones` VALUES 

(1,'Alvaro Obregón'),
(2,'Azcapotzalco'),
(3,'Benito Juárez'),
(4,'Coyoacán'),
(5,'Cuajimalpa de Morelos'),
(6,'Cuauhtémoc'),
(7,'Gustavo A. Madero'),
(8,'Iztacalco'),
(9,'Iztapalapa'),
(10,'Magdalena Contreras'),
(11,'Miguel Hidalgo'),
(12,'Milpa Alta'),
(13,'Tláhuac'),
(14,'Tlalpan'),
(15,'Venustiano Carranza'),
(16,'Xochimilco');



/*!40000 ALTER TABLE `cat_delegaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_razas`
--

DROP TABLE IF EXISTS `cat_razas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_razas` (
  `Id_Raza` int(4) NOT NULL,
  `Nom_Raza` varchar(30) DEFAULT NULL,
  `Id_Tipo` int(4) DEFAULT NULL,
  PRIMARY KEY (`Id_Raza`),
  KEY `Id_Tipo` (`Id_Tipo`),
  CONSTRAINT `cat_razas_ibfk_1` FOREIGN KEY (`Id_Tipo`) REFERENCES `cat_tipos` (`Id_Tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_razas`
--

LOCK TABLES `cat_razas` WRITE;
/*!40000 ALTER TABLE `cat_razas` DISABLE KEYS */;
INSERT INTO `cat_razas` VALUES 
(	1	,	'	Selecciona Raza'		,	1	)	,
(	2	,	'	Periquito		',	2	)	,
(	3	,	'	Perico		',	2	)	,
(	4	,	'	Diamante Mandarin'		,	2	)	,
(	5	,	'	Diamante de Gould'		,	2	)	,
(	6	,	'	Canario		',	2	)	,
(	7	,	'	Jilguero	'	,	2	)	,
(	8	,	'	Agaporni'		,	2	)	,
(	9	,	'	Forpus	'	,	2	)	,
(	10	,	'	Ninfa	'	,	2	)	,
(	11	,	'	Kakarikis'		,	2	)	,
(	12	,	'	Rosella		',	2	)	,
(	13	,	'	Cotorra Argentina'		,	2	)	,
(	14	,	'	Cotorra De Kramer'		,	2	)	,
(	15	,	'	Cotorra del Sol		',	2	)	,
(	16	,	'	Pyrrhura Molinae	'	,	2	)	,
(	17	,	'	Yaco	'	,	2	)	,
(	18	,	'	Electus	'	,	2	)	,
(	19	,	'	Loro Amazonas'		,	2	)	,
(	20	,	'	Loro	'	,	2	)	,
(	21	,	'	Cacatua	'	,	2	)	,
(	22	,	'	Guacamayo'		,	2	)	,
(	23	,	'	Gallina		',	2	)	,
(	24	,	'	Paloma'		,	2	)	,
(	25	,	'	Cotorro'		,	2	)	,
(	26	,	'	Pajaro	'	,	2	)	,
(	27	,	'	Tucan	'	,	2	)	,
(	28	,	'	Pinguino'		,	2	)	,
(	29	,	'	Avestruz'		,	2	)	,
(	30	,	'	Pavo Real'		,	2	)	,
(	31	,	'	Urraca		',	2	)	,
(	32	,	'	Dodo'		,	2	)	,
(	33	,	'	Gallo'		,	2	)	,
(	34	,	'	Aguila'		,	2	)	,
(	35	,	'	Guajolote'		,	2	)	,
(	36	,	'	Otro	'	,	2	)	,
(	37	,	'	No se	'	,	2	)	,
(	38	,	'	Champagne dargent'		,	3	)	,
(	39	,	'	Checkered giant		',	3	)	,
(	40	,	'	Cinnamon'		,	3	)	,
(	41	,	'	Creme dargent'		,	3	)	,
(	42	,	'	Dutch small		',	3	)	,
(	43	,	'	Dwarfhotot		',	3	)	,
(	44	,	'	English angora'		,	3	)	,
(	45	,	'	Englishspot		',	3	)	,
(	46	,	'	Englop small	'	,	3	)	,
(	47	,	'	Flemish giant	'	,	3	)	,
(	48	,	'	Florida white	'	,	3	)	,
(	49	,	'	Frances angora	'	,	3	)	,
(	50	,	'	Frances lop small'		,	3	)	,
(	51	,	'	Gigante angora		',	3	)	,
(	52	,	'	Gigante chinchilla	'	,	3	)	,
(	53	,	'	Harlequin small	'	,	3	)	,
(	54	,	'	Havana	'	,	3	)	,
(	55	,	'	Himalayan'		,	3	)	,
(	56	,	'	Hollandlop small'		,	3	)	,
(	57	,	'	HototJ		',	3	)	,
(	58	,	'	Jersey woolyL'		,	3	)	,
(	59	,	'	Lilac		',	3	)	,
(	60	,	'	Minilop small'		,	3	)	,
(	61	,	'	Minirex		',	3	)	,
(	62	,	'	Netherland dwarf'		,	3	)	,
(	63	,	'	Newzeland small	'	,	3	)	,
(	64	,	'	Palomino		',	3	)	,
(	65	,	'	Polish small	'	,	3	)	,
(	66	,	'	Rex'		,	3	)	,
(	67	,	'	Rhynelander'		,	3	)	,
(	68	,	'	Saint angora'		,	3	)	,
(	69	,	'	Satin		',	3	)	,
(	70	,	'	Silver		',	3	)	,
(	71	,	'	Silver fox	'	,	3	)	,
(	72	,	'	Silver marten'		,	3	)	,
(	73	,	'	Standard chinchilla'		,	3	)	,
(	74	,	'	Tan	'	,	3	)	,
(	75	,	'	No se'		,	3	)	,
(	76	,	'	De agua fria'		,	4	)	,
(	77	,	'	Tropicales	'	,	4	)	,
(	78	,	'	Betta		',	4	)	,
(	79	,	'	Disco		',	4	)	,
(	80	,	'	Espada		',	4	)	,
(	81	,	'	Guppy		',	4	)	,
(	82	,	'	Payaso		',	4	)	,
(	83	,	'	Raya	'	,	4	)	,
(	84	,	'	Angel	'	,	4	)	,
(	85	,	'	Alacha	'	,	4	)	,
(	86	,	'	Atun	'	,	4	)	,
(	87	,	'	Anguila	'	,	4	)	,
(	88	,	'	Bacalao	'	,	4	)	,
(	89	,	'	Volador	'	,	4	)	,
(	90	,	'	Salmon	'	,	4	)	,
(	91	,	'	Papagayo'		,	4	)	,
(	92	,	'	Peje	'	,	4	)	,
(	93	,	'	Carpa	'	,	4	)	,
(	94	,	'	Ciego	'	,	4	)	,
(	95	,	'	Bobo	'	,	4	)	,
(	96	,	'	Pirania	'	,	4	)	,
(	97	,	'	Nose	'	,	4	)	,
(	98	,	'	Otro	'	,	4	)	,
(	99	,	'	Affenpinscher'		,	5	)	,
(	100	,	'	Airedale Terrier'		,	5	)	,
(	101	,	'	Akita	'	,	5	)	,
(	102	,	'	Akita americano	'	,	5	)	,
(	103	,	'	Alano español	'	,	5	)	,
(	104	,	'	Alaskan Husky	'	,	5	)	,
(	105	,	'	Alaska malamute	'	,	5	)	,
(	106	,	'	American Foxhound'		,	5	)	,
(	107	,	'	American pit bull terrier	'	,	5	)	,
(	108	,	'	American stanfforshire terrier'		,	5	)	,
(	109	,	'	Ariegeois'		,	5	)	,
(	110	,	'	Artois		',	5	)	,
(	111	,	'	Australian silky terrier'		,	5	)	,
(	112	,	'	Australian terrier		',	5	)	,
(	113	,	'	Austrian Black & Tan Hound'		,	5	)	,
(	114	,	'	Azawakh		',	5	)	,
(	116	,	'	Balkan Hound	'	,	5	)	,
(	117	,	'	Basenji		',	5	)	,
(	118	,	'	Basset Alpino' 		,	5	)	,
(	119	,	'	Basset Artesiano Normando	'	,	5	)	,
(	120	,	'	Basset Azul de Gascunia		',	5	)	,
(	121	,	'	Basset de Artois'		,	5	)	,
(	122	,	'	Basset de Westphalie'		,	5	)	,
(	123	,	'	Basset Hound		',	5	)	,
(	125	,	'	Bavarian Mountain Scenthound'		,	5	)	,
(	126	,	'	beagle'		,	5	)	,
(	127	,	'	Beagle Harrier'		,	5	)	,
(	128	,	'	Beauceron		',	5	)	,
(	129	,	'	Bedlington Terrier'		,	5	)	,
(	130	,	'	Bichon	'	,	5	)	,
(	131	,	'	Bichon habanero'		,	5	)	,
(	132	,	'	Billy		',	5	)	,
(	133	,	'	Black and Tan Coonhound	'	,	5	)	,
(	134	,	'	Bloodhound (Sabueso de San Huberto)	'	,	5	)	,
(	135	,	'	Bobtail	'	,	5	)	,
(	136	,	'	Boerboel'		,	5	)	,
(	137	,	'	Border Collie'		,	5	)	,
(	138	,	'	Border Terrier'		,	5	)	,
(	139	,	'	Borzoi		',	5	)	,
(	140	,	'	Bosnian Hound'		,	5	)	,
(	141	,	'	Boston Terrier'		,	5	)	,
(	142	,	'	Bouvier des Flandres	'	,	5	)	,
(	143	,	'	Boxer	'	,	5	)	,
(	144	,	'	Boyero de Appenzell'		,	5	)	,
(	145	,	'	Boyero australiano	'	,	5	)	,
(	146	,	'	Boyero de Entlebuch	'	,	5	)	,
(	147	,	'	Boyero de las Ardenas'		,	5	)	,
(	148	,	'	Boyero de Montania Bernes'		,	5	)	,
(	149	,	'	Braco Aleman de pelo corto'		,	5	)	,
(	150	,	'	Braco Aleman de pelo duro	'	,	5	)	,
(	151	,	'	Braco de Ariege'		,	5	)	,
(	152	,	'	Braco de Auvernia'		,	5	)	,
(	153	,	'	Braco de Bourbonnais'		,	5	)	,
(	154	,	'	Braco de Saint Germain'		,	5	)	,
(	155	,	'	Braco Dupuy		',	5	)	,
(	156	,	'	Braco Frances	'	,	5	)	,
(	157	,	'	Braco Italiano	'	,	5	)	,
(	158	,	'	Broholmer	'	,	5	)	,
(	159	,	'	Buhund Noruego'		,	5	)	,
(	160	,	'	Bull terrier'		,	5	)	,
(	161	,	'	Bulldog		',	5	)	,
(	162	,	'	Bulldog americano'		,	5	)	,
(	163	,	'	Bulldog frances		',	5	)	,
(	164	,	'	Bullmastiff	'	,	5	)	,
(	165	,	'	Ca de Bestiar'		,	5	)	,
(	166	,	'	Cairn terrier'		,	5	)	,
(	167	,	'	Cane Corso		',	5	)	,
(	169	,	'	Caniche	'	,	5	)	,
(	170	,	'	Cao da Serra de Aires	'	,	5	)	,
(	171	,	'	Cao da Serra de Estrela	'	,	5	)	,
(	172	,	'	Cao de Castro Laboreiro	'	,	5	)	,
(	173	,	'	Cao de Fila de Sao Miguel'		,	5	)	,
(	174	,	'	Catalburun		',	5	)	,
(	175	,	'	Cavalier King Charles Spaniel'		,	5	)	,
(	176	,	'	Cesky Fousek	'	,	5	)	,
(	177	,	'	Chesapeake Bay Retriever'		,	5	)	,
(	178	,	'	Chihuahua'		,	5	)	,
(	179	,	'	Chin		',	5	)	,
(	180	,	'	Chow Chow	'	,	5	)	,
(	181	,	'	Cirneco del Etna'		,	5	)	,
(	182	,	'	Clumber Spaniel	'	,	5	)	,
(	183	,	'	Cocker Spaniel Americano'		,	5	)	,
(	184	,	'	Cocker Spaniel Ingles	'	,	5	)	,
(	185	,	'	Collie Barbudo'		,	5	)	,
(	186	,	'	Collie pelo corto'		,	5	)	,
(	187	,	'	Collie pelo largo'		,	5	)	,
(	188	,	'	Curly Coated Retriever'		,	5	)	,
(	189	,	'	Dalmata	'	,	5	)	,
(	190	,	'	Dandie dinmont terrier'		,	5	)	,
(	191	,	'	Deerhound',5)	,
(	192	,	'	Dobermann',	5	)	,
(	193	,	'	Dogo Argentino	'	,	5	)	,
(	194	,	'	Dogo de Burdeos	'	,	5	)	,
(	195	,	'	Dogo del Tibet	'	,	5	)	,
(	196	,	'	Drentse Partridge Dog'		,	5	)	,
(	197	,	'	Drever	'	,	5	)	,
(	198	,	'	Dunker	'	,	5	)	,
(	199	,	'	Elkhound Noruego	'	,	5	)	,
(	200	,	'	Elkhound Sueco		',	5	)	,
(	201	,	'	English Foxhound'		,	5	)	,
(	202	,	'	English Springer Spaniel'		,	5	)	,
(	203	,	'	English toy terrier		',	5	)	,
(	204	,	'	Epagneul Picard	'	,	5	)	,
(	205	,	'	Eurasier		',	5	)	,
(	206	,	'	Fila Brasileiro	'	,	5	)	,
(	207	,	'	Finnish Lapphound'		,	5	)	,
(	208	,	'	Flat Coated Retriever'		,	5	)	,
(	209	,	'	Fox terrier de pelo de alambre'		,	5	)	,
(	210	,	'	Fox terrier de pelo liso		',	5	)	,
(	211	,	'	Foxhound Ingles'		,	5	)	,
(	212	,	'	Frisian Pointer	'	,	5	)	,
(	213	,	'	Galgo espaniol	'	,	5	)	,
(	214	,	'	Galgo hangaro (Magyar Agar)'		,	5	)	,
(	215	,	'	Galgo Italiano	'	,	5	)	,
(	216	,	'	Galgo Polaco (Chart Polski)'		,	5	)	,
(	217	,	'	Glen of Imaal Terrier	'	,	5	)	,
(	218	,	'	Golden Retriever		',	5	)	,
(	219	,	'	Gordon Setter'		,	5	)	,
(	220	,	'	Gran Basset Griffon Vendeano'		,	5	)	,
(	221	,	'	Gran Boyero Suizo'		,	5	)	,
(	222	,	'	Gran Danes (Dogo Aleman)'		,	5	)	,
(	223	,	'	Gran Griffon Vendeano	'	,	5	)	,
(	224	,	'	Gran Munsterlander	'	,	5	)	,
(	225	,	'	Gran Perro Japones	'	,	5	)	,
(	226	,	'	Grand Anglo Francais Tricoleur'		,	5	)	,
(	227	,	'	Grand Bleu de Gascogne	'	,	5	)	,
(	228	,	'	Greyhound'		,	5	)	,
(	229	,	'	Griffon Bleu de Gascogne'		,	5	)	,
(	230	,	'	Griffon de pelo duro	'	,	5	)	,
(	231	,	'	Griffon leonado de Bretania'		,	5	)	,
(	232	,	'	Griffon Nivernais	'	,	5	)	,
(	233	,	'	Haldenstoever	'	,	5	)	,
(	234	,	'	Harrier	'	,	5	)	,
(	235	,	'	Hokkaido'		,	5	)	,
(	236	,	'	Hovawart'		,	5	)	,
(	237	,	'	Husky siberiano	'	,	5	)	,
(	238	,	'	Ioujnorousskaia Ovtcharka'		,	5	)	,
(	239	,	'	Irish Glen of Imaal terrier'		,	5	)	,
(	240	,	'	Irish soft coated wheaten terrier	'	,	5	)	,
(	241	,	'	Irish terrier'		,	5	)	,
(	242	,	'	Irish Water Spaniel'		,	5	)	,
(	243	,	'	Irish wolfhound		',	5	)	,
(	244	,	'	Jack Russell terrier'		,	5	)	,
(	245	,	'	Jindo Coreano		',	5	)	,
(	246	,	'	klee klai alaskan	'	,	5	)	,
(	247	,	'	Keeshond	'	,	5	)	,
(	248	,	'	Kelpie Australiano'		,	5	)	,
(	249	,	'	Kerry blue terrier	'	,	5	)	,
(	250	,	'	King Charles Spaniel'		,	5	)	,
(	251	,	'	Kishu'		,	5	)	,
(	252	,	'	Komondor'		,	5	)	,
(	253	,	'	Kooiker	'	,	5	)	,
(	254	,	'	Kuvasz	'	,	5	)	,
(	255	,	'	Labrador Retriever'		,	5	)	,
(	256	,	'	Lagotto Romagnolo	'	,	5	)	,
(	257	,	'	Laika de Siberia Occidental	'	,	5	)	,
(	258	,	'	Laika de Siberia Oriental'		,	5	)	,
(	259	,	'	Laika Ruso Europeo		',	5	)	,
(	260	,	'	Lakeland terrier		',	5	)	,
(	261	,	'	Landseer'		,	5	)	,
(	262	,	'	Lapphund Sueco	'	,	5	)	,
(	263	,	'	Lebrel Afgano	'	,	5	)	,
(	264	,	'	Lebrel Arabe (Sloughi)'		,	5	)	,
(	265	,	'	Leonberger	'	,	5	)	,
(	266	,	'	Lhasa apso	'	,	5	)	,
(	267	,	'	Lowchen		',	5	)	,
(	268	,	'	Lundehund Noruego'		,	5	)	,
(	269	,	'	Malamute de Alaska'		,	5	)	,
(	270	,	'	Manchester terrier	'	,	5	)	,
(	271	,	'	Mastiff	'	,	5	)	,
(	272	,	'	Mudi	'	,	5	)	,
(	273	,	'	Norfolk terrier	'	,	5	)	,
(	274	,	'	Norwich terrier	'	,	5	)	,
(	275	,	'	Nova Scotia duck tolling retriever'		,	5	)	,
(	276	,	'	Ovejero aleman		',	5	)	,
(	277	,	'	Otterhound	'	,	5	)	,
(	278	,	'	Parson Russell terrier'		,	5	)	,
(	279	,	'	Pastor Aleman		',	5	)	,
(	280	,	'	Pastor Australiano	'	,	5	)	,
(	281	,	'	Pastor Belga	'	,	5	)	,
(	282	,	'	Pastor Belga Groenendael'		,	5	)	,
(	283	,	'	Pastor Belga Laekenois	'	,	5	)	,
(	284	,	'	Pastor Belga Malinois	'	,	5	)	,
(	285	,	'	Pastor Belga Tervueren	'	,	5	)	,
(	286	,	'	Pastor Bergamasco		',	5	)	,
(	287	,	'	Pastor blanco suizo 	'	,	5	)	,
(	288	,	'	Pastor Croata'		,	5	)	,
(	289	,	'	Pastor de Anatolia		',	5	)	,
(	290	,	'	Pastor de Asia Central	'	,	5	)	,
(	291	,	'	Pastor de Brie		',	5	)	,
(	292	,	'	Pastor de Istria	'	,	5	)	,
(	293	,	'	Pastor de Laponia 	'	,	5	)	,
(	294	,	'	Pastor de los Pirineos de pelo largo'		,	5	)	,
(	295	,	'	Pastor de los Pirineos de cara rasa	'	,	5	)	,
(	296	,	'	Pastor de Shetland	'	,	5	)	,
(	297	,	'	Pastor del Atlas 	'	,	5	)	,
(	298	,	'	Pastor Holandes		',	5	)	,
(	299	,	'	Pastor Islandes'		,	5	)	,
(	300	,	'	Pastor Picard	'	,	5	)	,
(	301	,	'	Pastor polaco de las llanuras'		,	5	)	,
(	302	,	'	Pastor polaco de Podhale		',	5	)	,
(	303	,	'	Pastor Vasco'		,	5	)	,
(	304	,	'	Perdiguero de Burgos	'	,	5	)	,
(	305	,	'	Perro crestado chino	'	,	5	)	,
(	306	,	'	Perro de Agua Americano '		,	5	)	,
(	307	,	'	Perro de Agua Espaniol	'	,	5	)	,
(	308	,	'	Perro de Agua Frances 	'	,	5	)	,
(	309	,	'	Perro de Canaan	'	,	5	)	,
(	310	,	'	Perro de Groenlandia	'	,	5	)	,
(	311	,	'	Perro de los Visigodos 	'	,	5	)	,
(	312	,	'	Perro de Montania de los Pirineos'		,	5	)	,
(	313	,	'	Perro de Osos de Carelia 	'	,	5	)	,
(	314	,	'	Perro de Presa Espaniol		',	5	)	,
(	315	,	'	Perro del Faraon	'	,	5	)	,
(	316	,	'	Perro Esquimal Americano'		,	5	)	,
(	317	,	'	Perro Esquimal Canadiense'		,	5	)	,
(	318	,	'	Perro Lobo Checoslovaco		',	5	)	,
(	319	,	'	Petit Basset Griffon Vendeen'		,	5	)	,
(	320	,	'	Petit Blue de Gascogne		',	5	)	,
(	321	,	'	Pinscher aleman o mediano	'	,	5	)	,
(	322	,	'	Pinscher Miniatura'		,	5	)	,
(	323	,	'	Pill bull terrier americano'		,	5	)	,
(	324	,	'	Podenco Andaluz	'	,	5	)	,
(	325	,	'	Podenco Canario	'	,	5	)	,
(	326	,	'	Podenco Ibicenco'		,	5	)	,
(	327	,	'	Pointer	'	,	5	)	,
(	328	,	'	Poitevin'		,	5	)	,
(	329	,	'	Pomerania'		,	5	)	,
(	330	,	'	Porcelana'		,	5	)	,
(	331	,	'	Presa Canario'		,	5	)	,
(	332	,	'	Pug o carlino'		,	5	)	,
(	333	,	'	Puli		',	5	)	,
(	334	,	'	Pumi		',	5	)	,
(	335	,	'	Rafeiro do Alentejo'		,	5	)	,
(	336	,	'	Ratonero Bodeguero Andaluz	'	,	5	)	,
(	337	,	'	Retriever de Nueva Escocia	'	,	5	)	,
(	338	,	'	Rhodesian Ridgeback	'	,	5	)	,
(	339	,	'	Ridgeback de Tailandia'		,	5	)	,
(	340	,	'	Rottweiler	'	,	5	)	,
(	341	,	'	Saarloos	'	,	5	)	,
(	342	,	'	Sabueso de Hamilton'		,	5	)	,
(	343	,	'	Sabueso de Hannover	'	,	5	)	,
(	344	,	'	Sabueso de Hygen	'	,	5	)	,
(	345	,	'	Sabueso de Istria	'	,	5	)	,
(	346	,	'	Sabueso de Posavaz	'	,	5	)	,
(	347	,	'	Sabueso de Schiller '		,	5	)	,
(	348	,	'	Sabueso de Smaland 	'	,	5	)	,
(	349	,	'	Sabueso de Transilvania'		,	5	)	,
(	350	,	'	Sabueso del Tirol	'	,	5	)	,
(	351	,	'	Sabueso Espaniol	'	,	5	)	,
(	352	,	'	Sabueso Estirio de pelo duro	'	,	5	)	,
(	353	,	'	Sabueso Finlandes		',	5	)	,
(	354	,	'	Sabueso Frances blanco y negro'		,	5	)	,
(	355	,	'	Sabueso Frances tricolor		',	5	)	,
(	356	,	'	Sabueso Griego	'	,	5	)	,
(	357	,	'	Sabueso Polaco	'	,	5	)	,
(	358	,	'	Sabueso Serbio	'	,	5	)	,
(	359	,	'	Sabueso Suizo	'	,	5	)	,
(	360	,	'	Sabueso Yugoslavo de Montania	'	,	5	)	,
(	361	,	'	Sabueso Yugoslavo tricolor		',	5	)	,
(	362	,	'	Saluki	'	,	5	)	,
(	363	,	'	Samoyedo'		,	5	)	,
(	364	,	'	San Bernardo'		,	5	)	,
(	365	,	'	Sarplaninac	'	,	5	)	,
(	366	,	'	Schapendoes	'	,	5	)	,
(	367	,	'	Schipperke	'	,	5	)	,
(	368	,	'	Schnauzer	'	,	5	)	,
(	369	,	'	Schnauzer gigante'		,	5	)	,
(	370	,	'	Scnnzuzer miniatura'		,	5	)	,
(	371	,	'	Scottish terrier	'	,	5	)	,
(	372	,	'	Sealyham terrier	'	,	5	)	,
(	373	,	'	Segugio Italiano	'	,	5	)	,
(	374	,	'	Seppala Siberiano	'	,	5	)	,
(	375	,	'	Setter Ingles		',	5	)	,
(	376	,	'	Setter Irlandes	'	,	5	)	,
(	377	,	'	Setter Irlandes rojo y blanco'		,	5	)	,
(	378	,	'	Shar Pei	'	,	5	)	,
(	379	,	'	Shiba Inu	'	,	5	)	,
(	380	,	'	Shih Tzu	'	,	5	)	,
(	381	,	'	Shikoku		',	5	)	,
(	382	,	'	Skye terrier'		,	5	)	,
(	383	,	'	Slovensky Cuvac'		,	5	)	,
(	384	,	'	Slovensky Kopov	'	,	5	)	,
(	385	,	'	Smoushond Holandes'		,	5	)	,
(	386	,	'	Spaniel Aleman 		',	5	)	,
(	387	,	'	Spaniel continental enano	'	,	5	)	,
(	388	,	'	Spaniel de Campo	'	,	5	)	,
(	389	,	'	Spaniel de Pont Audemer'		,	5	)	,
(	390	,	'	Spaniel Frances		',	5	)	,
(	391	,	'	Spaniel japones	'	,	5	)	,
(	392	,	'	Spaniel tibetano'		,	5	)	,
(	393	,	'	Spinone Italiano'		,	5	)	,
(	394	,	'	Spitz Finlandes	'	,	5	)	,
(	395	,	'	Spitz Japones	'	,	5	)	,
(	396	,	'	Staffordshire bull terrier'		,	5	)	,
(	397	,	'	Staffordshire terrier americano	'	,	5	)	,
(	398	,	'	Sussex Spaniel'		,	5	)	,
(	399	,	'	Teckel (Dachshund)'		,	5	)	,
(	400	,	'	Tchuvatch eslovaco	'	,	5	)	,
(	401	,	'	Terranova (Newfoundland)'		,	5	)	,
(	402	,	'	Terrier australiano		',	5	)	,
(	403	,	'	Terrier brasilero	'	,	5	)	,
(	404	,	'	Terrier cazador aleman'		,	5	)	,
(	405	,	'	Terrier checo '		,	5	)	,
(	406	,	'	Terrier irlandes' 		,	5	)	,
(	407	,	'	Terrier japones '		,	5	)	,
(	408	,	'	Terrier negro ruso'		,	5	)	,
(	409	,	'	Terrier tibetano	'	,	5	)	,
(	410	,	'	Tosa	'	,	5	)	,
(	411	,	'	Viejo Pastor Ingles'		,	5	)	,
(	412	,	'	Viejo Pointer Danes	'	,	5	)	,
(	413	,	'	Vizsla	'	,	5	)	,
(	414	,	'	Volpino Italiano	'	,	5	)	,
(	415	,	'	Weimaraner'		,	5	)	,
(	416	,	'	Welsh springer spaniel'		,	5	)	,
(	417	,	'	Welsh Corgi Cardigan	'	,	5	)	,
(	418	,	'	Welsh Corgi Pembroke	'	,	5	)	,
(	419	,	'	Welsh terrier'		,	5	)	,
(	420	,	'	West highland white terrier'		,	5	)	,
(	421	,	'	Whippet	'	,	5	)	,
(	422	,	'	Wirehaired solvakian pointer		',	5	)	,
(	423	,	'	Xoloitzcuintle	'	,	5	)	,
(	424	,	'	Yorkshire terrier'		,	5	)	,
(	425	,	'	Desconocida		',	5	)	,
(	426	,	'	Otro	'	,	5	)	,
(	427	,	'	Abisinio'		,	6	)	,
(	428	,	'	Africano domestico	'	,	6	)	,
(	429	,	'	American Curl		',	6	)	,
(	430	,	'	American shorthair	'	,	6	)	,
(	431	,	'	American wirehair	'	,	6	)	,
(	432	,	'	Angora turco		',	6	)	,
(	433	,	'	Aphrodite-s Giants'		,	6	)	,
(	434	,	'	Australian Mist		',	6	)	,
(	435	,	'	Azul ruso	'	,	6	)	,
(	436	,	'	Bengala		',	6	)	,
(	437	,	'	Bobtail japones'		,	6	)	,
(	438	,	'	Bombay		',	6	)	,
(	439	,	'	Bosque de Noruega	'	,	6	)	,
(	440	,	'	Brazilian Shorthair	'	,	6	)	,
(	441	,	'	British Shorthair	'	,	6	)	,
(	442	,	'	Burmes	'	,	6	)	,
(	443	,	'	Burmilla'		,	6	)	,
(	444	,	'	California Spangled'		,	6	)	,
(	445	,	'	Ceylon'		,	6	)	,
(	446	,	'	Chartreux'		,	6	)	,
(	447	,	'	Cornish rex'		,	6	)	,
(	448	,	'	Cymric		',	6	)	,
(	449	,	'	Deutsch Langhaar'		,	6	)	,
(	450	,	'	Devon rex	'	,	6	)	,
(	451	,	'	Don Sphynx	'	,	6	)	,
(	452	,	'	Dorado africano'		,	6	)	,
(	453	,	'	Europeo comun	'	,	6	)	,
(	454	,	'	Gato exotico	'	,	6	)	,
(	455	,	'	German Rex		',	6	)	,
(	456	,	'	Habana brown	'	,	6	)	,
(	457	,	'	Himalayo	'	,	6	)	,
(	458	,	'	Khao Manee	'	,	6	)	,
(	459	,	'	Korat	'	,	6	)	,
(	460	,	'	Maine Coon	'	,	6	)	,
(	461	,	'	Manx'		,	6	)	,
(	462	,	'	Mau egipcio'		,	6	)	,
(	463	,	'	Munchkin	'	,	6	)	,
(	464	,	'	Ocicat		',	6	)	,
(	465	,	'	Ojos azules	'	,	6	)	,
(	466	,	'	Oriental	'	,	6	)	,
(	467	,	'	Oriental de pelo largo	'	,	6	)	,
(	468	,	'	Persa	'	,	6	)	,
(	469	,	'	Peterbald'		,	6	)	,
(	470	,	'	Pixi Bob	'	,	6	)	,
(	471	,	'	Ragdoll	'	,	6	)	,
(	472	,	'	Sagrado de Birmania'		,	6	)	,
(	473	,	'	Scottish Fold	'	,	6	)	,
(	474	,	'	Selkirk rex'		,	6	)	,
(	475	,	'	Serengeti	'	,	6	)	,
(	476	,	'	Seychellois	'	,	6	)	,
(	477	,	'	Siames	'	,	6	)	,
(	478	,	'	Siames Moderno	'	,	6	)	,
(	479	,	'	Siames Tradicional'		,	6	)	,
(	480	,	'	Siberiano		',	6	)	,
(	481	,	'	Snowshoe	'	,	6	)	,
(	482	,	'	Sphynx	'	,	6	)	,
(	483	,	'	Tonkines'		,	6	)	,
(	484	,	'	Van Turco'		,	6	)	,
(	485	,	'	Otro		',	6	)	,
(	486	,	'	No se	'	,	6	)	,
(	487	,	'	Hamster	'	,	7	)	,
(	488	,	'	Iguana	'	,	7	)	,
(	489	,	'	Elefante'		,	7	)	,
(	490	,	'	Puerco		',	7	)	,
(	491	,	'	Tarantulas	'	,	7	)	,
(	492	,	'	Cienpies	'	,	7	)	,
(	493	,	'	Huron		',	7	)	,
(	494	,	'	Tortuga terrestre'		,	7	)	,
(	495	,	'	Tortuga de mar	'	,	7	)	,
(	496	,	'	Ajolote	'	,	7	)	,
(	497	,	'	Mono	'	,	7	)	,
(	498	,	'	Chango	'	,	7	)	,
(	499	,	'	Mandril	'	,	7	)	,
(	500	,	'	Camaleon'		,	7	)	,
(	501	,	'	Caiman	'	,	7	)	,
(	502	,	'	Dragon de comodo	'	,	7	)	,
(	503	,	'	Lemur	'	,	7	)	,
(	504	,	'	Caballo	'	,	7	)	,
(	505	,	'	Burro	'	,	7	)	,
(	506	,	'	Oveja	'	,	7	)	,
(	507	,	'	Colibri	'	,	7	)	,
(	508	,	'	Cebra		',	7	)	,
(	509	,	'	Serpiente'		,	7	)	,
(	510	,	'	Cobra	'	,	7	)	,
(	511	,	'	Buho	'	,	7	)	,
(	512	,	'	Otro	'	,	7	);
/*!40000 ALTER TABLE `cat_razas` ENABLE KEYS */;
UNLOCK TABLES;
describe cat_razas;
--
-- Table structure for table `cat_tipos`
--

DROP TABLE IF EXISTS `cat_tipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_tipos` (
  `Id_Tipo` int(4) NOT NULL,
  `Nom_Tipo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id_Tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
select * from cat_tipos;
--
-- Dumping data for table `cat_tipos`
--

LOCK TABLES `cat_tipos` WRITE;
/*!40000 ALTER TABLE `cat_tipos` DISABLE KEYS */;
INSERT INTO `cat_tipos` VALUES (1,'Selecciona tipo'),(2,'Ave'),(3,'Conejo'),(4,'Pez'),(5,'Perro'),(6,'Gato'),(7,'Otro');
/*!40000 ALTER TABLE `cat_tipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mascotas`
--

DROP TABLE IF EXISTS `mascotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mascotas` (
  `Id_Mascota` int(4) NOT NULL,
  `Nom_Mascota` varchar(30) DEFAULT NULL,
  `Tipo_Registro` varchar(10) DEFAULT NULL,
  `Id_Raza` int(4) DEFAULT NULL,
  `Edad` int(3) DEFAULT NULL,
  `Descripcion` varchar(50) DEFAULT NULL,
  `Sexo_Mascota` varchar(20) DEFAULT NULL,
  `Imagen` text,
  `dueño` varchar(25),
  PRIMARY KEY (`Id_Mascota`),
  KEY `Id_Raza` (`Id_Raza`),
  CONSTRAINT `mascotas_ibfk_1` FOREIGN KEY (`Id_Raza`) REFERENCES `cat_razas` (`Id_Raza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `mascotas`
--


--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personas` (
  `Id_Persona` int(4) NOT NULL,
  `NickName` varchar(25) DEFAULT NULL,
  `Nom_Persona` varchar(25) DEFAULT NULL,
  `Ap_Pat` varchar(20) DEFAULT NULL,
  `Ap_Mat` varchar(20) DEFAULT NULL,
  `Clave` varchar(20) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Num_Telefonico` varchar(15) DEFAULT NULL,
  `Id_Colonia` int(4) DEFAULT NULL,
  `Id_Delegacion` int(4) DEFAULT NULL,
  PRIMARY KEY (`Id_Persona`),
  KEY `Id_Colonia` (`Id_Colonia`),
  KEY `Id_Delegacion` (`Id_Delegacion`),
  CONSTRAINT `personas_ibfk_1` FOREIGN KEY (`Id_Colonia`) REFERENCES `cat_colonias` (`Id_Colonia`),
  CONSTRAINT `personas_ibfk_2` FOREIGN KEY (`Id_Delegacion`) REFERENCES `cat_delegaciones` (`Id_Delegacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Table mascotas perdidas
--


--
-- Dumping data for table `personas`
--
LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'ESME','AAA','BBB','CCC','159','merimtz45604@gmail.com','5567539315',3,2);
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

 drop table if exists MascotasPerdidas;
 /*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
 create table MascotasPerdidas(
 Id_MascotaPer int(3) primary key auto_increment,
 nombre varchar(25) default null,
 descripcion varchar(255) default null,
 recompensa varchar(100) default null,
 edad int(3) default null,
 sexo varchar(20) default null,
 dueño varchar (20)default null,
 idTipo int(4) default null,
 idRaza int(4) default null,
 direccion text,
 fechaExtravio date, 
 imgMascota text,
 
 FOREIGN KEY (`idTipo`) REFERENCES `cat_tipos` (`Id_Tipo`),
 foreign key (`idRaza`) references `cat_razas` (`Id_Raza`)
 )ENGINE=InnoDB DEFAULT CHARSET=utf8;
 /*!40101 SET character_set_client = @saved_cs_client */;
select * from MascotasPerdidas;
select * from mascotas;
describe cat_tipos;
--
-- Table structure for table `rel_delegaciones_colonias`
--

DROP TABLE IF EXISTS `rel_delegaciones_colonias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rel_delegaciones_colonias` (
  `Id_Rel_Delegaciones_Colonias` int(4) NOT NULL,
  `Id_Delegacion` int(4) DEFAULT NULL,
  `Id_Colonia` int(4) DEFAULT NULL,
  PRIMARY KEY (`Id_Rel_Delegaciones_Colonias`),
  KEY `Id_Delegacion` (`Id_Delegacion`),
  KEY `Id_Colonia` (`Id_Colonia`),
  CONSTRAINT `rel_delegaciones_colonias_ibfk_1` FOREIGN KEY (`Id_Delegacion`) REFERENCES `cat_delegaciones` (`Id_Delegacion`),
  CONSTRAINT `rel_delegaciones_colonias_ibfk_2` FOREIGN KEY (`Id_Colonia`) REFERENCES `cat_colonias` (`Id_Colonia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_delegaciones_colonias`
--

LOCK TABLES `rel_delegaciones_colonias` WRITE;
/*!40000 ALTER TABLE `rel_delegaciones_colonias` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_delegaciones_colonias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_persona_mascota`
--

DROP TABLE IF EXISTS `rel_persona_mascota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rel_persona_mascota` (
  `Id_Rel_Persona_Mascota` int(4) NOT NULL,
  `Id_Persona` int(4) DEFAULT NULL,
  `Id_Mascota` int(4) DEFAULT NULL,
  PRIMARY KEY (`Id_Rel_Persona_Mascota`),
  KEY `Id_Persona` (`Id_Persona`),
  KEY `Id_Mascota` (`Id_Mascota`),
  CONSTRAINT `rel_persona_mascota_ibfk_1` FOREIGN KEY (`Id_Persona`) REFERENCES `personas` (`Id_Persona`),
  CONSTRAINT `rel_persona_mascota_ibfk_2` FOREIGN KEY (`Id_Mascota`) REFERENCES `mascotas` (`Id_Mascota`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_persona_mascota`
--

LOCK TABLES `rel_persona_mascota` WRITE;
/*!40000 ALTER TABLE `rel_persona_mascota` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_persona_mascota` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-16 19:08:12


drop procedure if exists sp_Consulta_Masc;
delimiter **;
create procedure sp_Consulta_Masc( in Id_Mas int(4), out Id_Mascota int(4), out Nombre varchar(30), out Sexo varchar(20), out Tipo varchar(30), out Raza varchar(50), out Edad int(3), out Descripcion varchar(100), out Colonia varchar(50), out Delegacion varchar(255), out Imagen text )
begin
declare xMsj varchar(50);
declare xN_Mas varchar(30);
declare xSex_Mas varchar(20);
declare xRaza varchar(30);
declare xIdRaza int(4);
declare xTipo varchar(30);
declare xIdTipo int(4);
declare xEdad int(3);
declare xDesc varchar(50);
declare xIdCol int (4);
declare xColonia varchar(30);
declare xIdDeleg int(4);
declare xDeleg varchar (30);
declare xImg text;
declare existe int;
if(Id_Mas!=0) then
	set existe= (select count(*) from Mascotas where Id_Mascota=Id_Mas);
    
    if(existe=0) then
		set xMsj='La Mascota no existe';
	else
		set xMsj='La Mascota es esta';
        set xN_Mas=(select Nom_Mascota from mascotas where Id_Mascota=Id_Mas);
        set xSex_Mas=(select Sexo_Mascota from mascotas where Id_Mascota=Id_Mas);
        set xIdRaza=(select Id_Raza from mascotas where Id_Mascota=Id_Mas);
        set xRaza=(select Nom_Raza from cat_razas where Id_Raza=xIdRaza);
        set xIdTipo=(select Id_Tipo from cat_razas where Id_Raza=xIdRaza);
        set xTipo=(select Nom_Tipo from cat_tipos where Id_Tipo=xIdTipo);
        set xEdad=(select Edad from mascotas where Id_Mascota=Id_Mas);
        set xDesc=(select Descripcion from mascotas where Id_Mascota=Id_Mas);
        set xIdCol=(select Id_Colonia from mascotas where Id_Mascota=Id_Mas);
        set xColonia=(select Nom_Colonia from cat_colonias where Id_Colonia=xIdCol);
        set xIdDeleg=(select Id_Delegacion from cat_colonias where Id_Colonia=xIdCol);
        set xDeleg=(select Nom_Delegacion from cat_delegaciones where Id_Delegacion=xIdDeleg);
        set xImg=(select Imagen from mascotas where Id_Mascota=Id_Mas);
	end if;
end if;
select Id_Mas as Id_Mascota, xN_Mas as Nombre, xSex_Mas as Sexo ,xTipo as Tipo, xRaza as Raza,
 xEdad as Edad, xDesc as Descripcion, xColonia as Colonia, xDeleg as Delegacion, xImg as Imagen,  xMsj;
end**;

drop procedure if exists InicioP;
delimiter **
create procedure InicioP(in Nick varchar(25), in Clave_Per varchar(20), out resu int(1))

begin
declare xIdAlumno int;
declare contra varchar(20);
declare NickN varchar(25);
declare existe int;

    set existe = (select count(*) from personas where NickName = Nick);
    
    if(existe=0) then
		set resu = 5;
	else
        set NickN=(select NickName from personas where NickName=Nick);
        set contra=(select Clave from personas where NickName=Nick);
        if (contra = Clave_Per) then
			set resu = 3;
		else
			set resu = 4;
            end if;
	end if;
select xIdAlumno as CAMPO, resu; 
end; **

drop procedure if exists AltasP;
delimiter **
create procedure AltasP(in Id int(4), in Nick varchar(25), in Nom_Per varchar(25), in ApPat_Per varchar(20), 
in ApMat_Per varchar(20), in Clave_Per varchar(20), in CorreoC_Per varchar(50), 
in TelC_Per varchar(15), in IdColoD_Per int(4), in IdDeleD_Per int(4), out resu int(1))

begin

declare xIdAlumno int;
declare xMsj varchar (50);
declare existe int;

if (Id = 0) then
	set existe = (select count(*) from personas where NickName = Nick);
    
	if (existe = 0) then
		set xIdAlumno = (select ifnull(max(Id_Persona), 0) + 1 from personas);
        INSERT into personas(Id_Persona, NickName, Nom_Persona, Ap_Pat, Ap_Mat, Clave, Correo, Num_Telefonico, Id_Colonia, Id_Delegacion)
          values (xIdAlumno, Nick, Nom_Per, ApPat_Per, ApMat_Per, Clave_Per, CorreoC_Per, TelC_Per, IdColoD_Per, IdDeleD_Per);
		set resu = 1;
	else
		set resu = 2;
		set xIdAlumno = 0;
    end if;
end if; 
select xIdAlumno as CAMPO, resu; 
end; **

use PP;
drop procedure if exists sp_Alta_Masc;
delimiter **;
create procedure sp_Alta_Masc( in Id_Mas int(4), in N_Mas varchar(30), in T_Reg varchar (10), in Sex_Mas varchar(20) ,
 in Id_Ra int(4), in Ed int(3), in Descr varchar(150), in Img varchar(255), in dueñ varchar(25), out resu int(1))
begin
declare xId_Mas int;
declare xMsj varchar(50);
declare existe int;
declare Id int;
if(Id_Mas=0) then
	set existe= (select count(*) from Mascotas where Nom_Mascota=N_Mas and dueño=dueñ );
    
    if(existe=0) then
		set xId_Mas = (select ifnull(max(Id_Mascota), 0) + 1 from mascotas);
        insert into Mascotas (Id_Mascota, Nom_Mascota, Tipo_Registro, Sexo_Mascota ,Id_Raza, Edad, Descripcion, Imagen, dueño) 
        values(xId_Mas , N_Mas, T_Reg,Sex_Mas,  Id_Ra,  Ed,  Descr,  Img, dueñ);
        set xMsj='Mascota correctamente registrada';
        set resu=1;
	else
		set xMsj='La Mascota ya existe';
        set xId_Mas=0;
         set Id = (select Id_Mascota from Mascotas where dueño = dueñ and Nom_Mascota=N_Mas);
		update Mascotas set Edad=Ed, Descripcion=Descr, Imagen=Img where Id_Mascota = Id;
        set resu=2;
	end if;
end if;
select xId_Mas as Id_Mascota, xMsj, resu;
end**;


use PP;
drop procedure if exists CambiosP;
delimiter **
create procedure CambiosP(in Nick varchar(25), in Clave_Per varchar(20), CorreoC_Per varchar(50), 
in TelC_Per varchar(15), in IdColoD_Per varchar(50), in IdDeleD_Per varchar(50))
begin

declare xMsj varchar (50);
declare existe int;
declare con varchar(20);
declare corre varchar(50);
declare tele varchar(15);
declare IdColo int(4);
declare xIdAlumno int;
declare IdDele int(4);
declare Id int(4);
	if (Clave_Per is null) then
		set con = (select Clave from personas where NickName = Nick);
        else
        set con = Clave_Per;
    end if;
    if (CorreoC_Per is null) then
		set corre = (select Correo from personas where NickName = Nick);
        else
        set corre = CorreoC_Per;
    end if;
    if (TelC_Per is null) then
		set tele = (select Num_Telefonico from personas where NickName = Nick);
        else
        set tele = TelC_Per;
    end if;
    if (IdColoD_Per is null) then
		set IdColo = (select Id_Colonia from personas where NickName = Nick);
        else
        set IdColo = (select Id_Colonia from cat_colonias where Nom_Colonia = IdColoD_Per);
    end if;
    if (IdDeleD_Per is null) then
		set IdDele = (select Id_Delegacion from personas where NickName = Nick);
        else
        set IdDele = (select Id_Delegacion from cat_delegaciones where Nom_Delegacion = IdDeleD_Per);
    end if;
    
    set Id = (select Id_Persona from personas where NickName = Nick);
    
    UPDATE personas set Clave=con, Correo=corre, Num_Telefonico=tele, Id_Colonia=IdColo, Id_Delegacion=IdDele where Id_Persona = Id;
    select xIdAlumno as CAMPO, con;
end; **
delimiter ;
select * from mascotas;

select * from mascotasPerdidas;

select * from personas;

use PP;
DROP TABLE IF EXISTS `Servicios`;
create table Servicios(
	Id_servicios int(4) not null,
    Propietario varchar(25),
	NomServicio varchar(50),
    DescServicio varchar(255),
    Paseo boolean,
    Estetica boolean,
    Veterinaria boolean,
    DescPaseo varchar(255),
    DescEstetica varchar(255),
    DescVeterinaria varchar(255),
    Primary Key (Id_servicios)
);

use PP;
drop procedure if exists Alta_Servicios;
delimiter **;
create procedure Alta_Servicios(in IdSer int(4), in Prop varchar(25), in NomSer varchar(50), in DesSer varchar (255), in Pase boolean,
in Este boolean, in Vete boolean, in DesPase varchar(255), in DesEste varchar(255), in DesVete varchar(255))
begin

declare xId_Ser int;
declare xMsj varchar(50);
declare existe int;
declare Id int(4);
declare Nick varchar(25);
if(IdSer=0) then

	set existe= (select count(*) from Servicios where Propietario=Prop);

    if(existe=0) then
		set xId_Ser = (select ifnull(max(Id_servicios), 0) + 1 from Servicios);
        insert into Servicios (Id_servicios, Propietario, NomServicio, DescServicio, Paseo, Estetica, Veterinaria, DescPaseo, DescEstetica, DescVeterinaria) 
        values(xId_Ser , Prop, NomSer, DesSer, Pase, Este, Vete, DesPase, DesEste, DesVete);
        set xMsj='Servicio correctamente registrado';
        /*set resu=1;*/
	else
		set xMsj='El Servicio ya existe';
        set xId_Ser=0;
        set Id = (select Id_servicios from Servicios where Propietario = Prop);
		update Servicios set NomServicio=NomSer, DescServicio=DesSer, Paseo=Pase, Estetica=Este, Veterinaria=Vete, DescPaseo=DesPase, DescEstetica=DesEste, DescVeterinaria=DesVete where Id_servicios = Id;
	end if;
end if;
select xId_Ser as Id_Mascota, xMsj;
end**; 
select * from Mascotas;

