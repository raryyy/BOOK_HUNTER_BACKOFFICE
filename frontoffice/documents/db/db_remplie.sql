CREATE DATABASE  IF NOT EXISTS `book_hunter_2024` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `book_hunter_2024`;
-- MySQL dump 10.13  Distrib 8.0.24, for macos11 (x86_64)
--
-- Host: 127.0.0.1    Database: book_hunter_2024
-- ------------------------------------------------------
-- Server version	5.7.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `biography` text,
  `picture` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'John','Doe','Un auteur prolifique de nombreux genres.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(2,'Jane','Doe','Une auteure renommée de science-fiction.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(3,'James','Smith','Un auteur influent dans le domaine des romans policiers.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(4,'Emily','Johnson','Une étoile montante dans le monde de la littérature fantastique.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(5,'Michael','Brown','Un auteur à succès de romans historiques.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(6,'Sarah','Jones','Connu pour ses romans d\'amour captivants.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(7,'David','Miller','Un auteur respecté et critique dans le domaine de la littérature contemporaine.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(8,'Jessica','Davis','Une auteure acclamée par la critique de romans thrillers.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(9,'Daniel','Garcia','Une figure de proue dans le genre du réalisme magique.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(10,'Emma','Rodriguez','Une auteure primée de fiction pour jeunes adultes.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(11,'Matthew','Martinez','Un auteur très apprécié des livres pour enfants.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(12,'Olivia','Hernandez','Une auteure primée pour ses romans de fantasy.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(13,'Lucas','Lopez','Un auteur talentueux de romans policiers.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(14,'Ava','Gonzalez','Reconnue pour ses romans de science-fiction captivants.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(15,'Ethan','Perez','Un auteur de renom dans le domaine des romans historiques.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(16,'Sophia','Wilson','Un auteur best-seller de romans d\'aventure.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(17,'Mason','Thomas','Connu pour ses intrigues de thriller complexes.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(18,'Amelia','Anderson','Une étoile montante dans le genre de la fantasy.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(19,'Alexander','Taylor','Un auteur primé pour ses romans de réalisme magique.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(20,'Isabella','Moore','Un auteur respecté pour ses romans contemporains.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(21,'William','Martin','Un auteur influent de romans pour jeunes adultes.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(22,'Charlotte','Jackson','Connue pour ses histoires pour enfants captivantes.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(23,'Benjamin','White','Un auteur talentueux dans le genre de la science-fiction.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(24,'Abigail','Harris','Une auteure appréciée pour ses romans d\'amour.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59'),(25,'Albert','Camus','Albert Camus était un philosophe, romancier et essayiste français. Il a reçu le prix Nobel de littérature en 1957.','https://source.unsplash.com/480x360/?movie','2023-05-31 12:48:59');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isbn` varchar(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `resume` text,
  `cover` varchar(45) DEFAULT NULL,
  `publicated_at` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `category_id` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `isbn_UNIQUE` (`isbn`),
  KEY `fk_books_authors_idx` (`author_id`),
  KEY `fk_books_categories1_idx` (`category_id`),
  CONSTRAINT `fk_books_authors` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_books_categories1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'978-3-16-148410-0','Le voyage fantastique','Un voyage fantastique à travers le temps et l\'espace.','https://source.unsplash.com/480x360/?movie','2022-01-01','2023-05-31 12:48:59',1,2),(2,'978-1-4028-9462-6','La clé du mystère','Une enquête palpitante sur une série de crimes non résolus.','https://source.unsplash.com/480x360/?movie','2022-02-01','2023-05-31 12:48:59',2,5),(3,'978-0-7493-1637-7','Le dernier des rois','La lutte pour le pouvoir dans un royaume lointain.','https://source.unsplash.com/480x360/?movie','2022-03-01','2023-05-31 12:48:59',3,1),(4,'978-0-7897-2359-7','La danse des étoiles','Un voyage à travers le cosmos à la découverte des étoiles.','https://source.unsplash.com/480x360/?movie','2022-04-01','2023-05-31 12:48:59',4,1),(5,'978-1-56619-909-4','L\'amour au temps des dragons','Une histoire d\'amour passionnée dans un monde peuplé de dragons.','https://source.unsplash.com/480x360/?movie','2022-05-01','2023-05-31 12:48:59',5,4),(6,'978-1-84356-028-9','Le trône maudit','Un roi doit lutter contre une malédiction qui pèse sur son trône.','https://source.unsplash.com/480x360/?movie','2022-06-01','2023-05-31 12:48:59',6,2),(7,'978-0-684-84328-5','Les secrets du labyrinthe','Un mystère séculaire lié à un labyrinthe ancien.','https://source.unsplash.com/480x360/?movie','2022-07-01','2023-05-31 12:48:59',7,5),(8,'978-0-7336-1143-7','Le cantique des étoiles','Un groupe d\'amis part à la découverte des mystères de l\'univers.','https://source.unsplash.com/480x360/?movie','2022-08-01','2023-05-31 12:48:59',8,1),(9,'978-1-84197-916-9','La princesse perdue','Une princesse disparue et une quête pour la retrouver.','https://source.unsplash.com/480x360/?movie','2022-09-01','2023-05-31 12:48:59',9,2),(10,'978-1-86101-621-9','La quête du Graal','La quête légendaire du Graal racontée sous un nouvel angle.','https://source.unsplash.com/480x360/?movie','2023-01-01','2023-05-31 12:48:59',10,9),(11,'978-0-596-52068-7','Le secret de l\'Atlantide','Une aventure sous-marine à la découverte de la cité perdue de l\'Atlantide.','https://source.unsplash.com/480x360/?movie','2023-02-01','2023-05-31 12:48:59',11,9),(12,'978-0-14-200028-6','Le dernier des mohicans','Un roman historique sur les derniers membres de la tribu des Mohicans.','https://source.unsplash.com/480x360/?movie','2023-03-01','2023-05-31 12:48:59',12,6),(13,'978-0-7553-8527-0','Le jardin secret','L\'histoire d\'une jeune fille qui découvre un jardin secret.','https://source.unsplash.com/480x360/?movie','2023-04-01','2023-05-31 12:48:59',13,8),(14,'978-0-399-15122-1','Le magicien d\'Oz','L\'histoire de Dorothy et de ses amis dans le monde magique d\'Oz.','https://source.unsplash.com/480x360/?movie','2023-05-01','2023-05-31 12:48:59',14,2),(15,'978-0-395-36341-5','Les chroniques de Narnia','Une série d\'aventures fantastiques dans le monde magique de Narnia.','https://source.unsplash.com/480x360/?movie','2023-06-01','2023-05-31 12:48:59',15,2),(16,'978-0-689-85222-3','Harry Potter à l\'école des sorciers','L\'histoire de Harry Potter, un jeune sorcier à l\'école de Poudlard.','https://source.unsplash.com/480x360/?movie','2023-07-01','2023-05-31 12:48:59',16,2),(17,'978-0-7434-1896-5','Le Seigneur des anneaux','L\'histoire épique de la lutte pour contrôler l\'anneau de pouvoir.','https://source.unsplash.com/480x360/?movie','2023-08-01','2023-05-31 12:48:59',17,2),(18,'978-0-316-01202-2','Dune','L\'histoire d\'une planète désertique et de la lutte pour sa ressource précieuse, l\'épice.','https://source.unsplash.com/480x360/?movie','2023-09-01','2023-05-31 12:48:59',18,1),(19,'978-0-375-70404-8','1984','Un roman dystopique sur une société totalitaire.','https://source.unsplash.com/480x360/?movie','2023-10-01','2023-05-31 12:48:59',19,1),(20,'978-0-7432-4722-3','Brave New World','Un aperçu futuriste d\'une société dystopique et technologiquement avancée.','https://source.unsplash.com/480x360/?movie','2023-11-01','2023-05-31 12:48:59',20,1),(21,'978-0-553-40081-5','Fahrenheit 451','Un roman sur un futur où les livres sont interdits et brûlés par les pompiers.','https://source.unsplash.com/480x360/?movie','2023-12-01','2023-05-31 12:48:59',21,1),(22,'978-0-307-26642-4','To Kill a Mockingbird','Une histoire touchante sur l\'innocence et la justice dans le Sud profond.','https://source.unsplash.com/480x360/?movie','2024-01-01','2023-05-31 12:48:59',22,4),(23,'978-0-425-10499-7','Moby-Dick','L\'histoire obsessionnelle du capitaine Ahab pour une grande baleine blanche.','https://source.unsplash.com/480x360/?movie','2024-02-01','2023-05-31 12:48:59',23,6),(24,'978-0-14-029628-1','Pride and Prejudice','Une histoire d\'amour et de préjugés dans l\'Angleterre du 19ème siècle.','https://source.unsplash.com/480x360/?movie','2024-03-01','2023-05-31 12:48:59',24,4),(25,'978-0-517-54677-2','The Catcher in the Rye','L\'histoire d\'un adolescent perturbé à New York.','https://source.unsplash.com/480x360/?movie','2024-04-01','2023-05-31 12:48:59',25,3),(26,'978-0-312-06956-5','Les Misérables','L\'histoire de Jean Valjean, un ancien forçat, dans le Paris du 19ème siècle.','https://source.unsplash.com/480x360/?movie','2024-05-01','2023-05-31 12:48:59',1,4),(27,'978-0-575-07431-8','Don Quixote','L\'histoire d\'un homme qui se croit chevalier dans l\'Espagne du 17ème siècle.','https://source.unsplash.com/480x360/?movie','2024-06-01','2023-05-31 12:48:59',2,4),(28,'978-0-375-70270-9','Le Petit Prince','L\'histoire touchante d\'un jeune prince qui voyage de planète en planète.','https://source.unsplash.com/480x360/?movie','2024-07-01','2023-05-31 12:48:59',3,2),(29,'978-0-15-601219-5','Les Mille et Une Nuits','Une collection de contes du Moyen-Orient.','https://source.unsplash.com/480x360/?movie','2024-08-01','2023-05-31 12:48:59',4,8),(30,'978-0-517-46889-2','Madame Bovary','L\'histoire tragique d\'une femme insatisfaite dans la province française.','https://source.unsplash.com/480x360/?movie','2024-09-01','2023-05-31 12:48:59',5,4),(31,'978-0-07-020980-7','Le Rouge et le Noir','Un roman sur l\'ambition sociale dans la France post-révolutionnaire.','https://source.unsplash.com/480x360/?movie','2024-10-01','2023-05-31 12:48:59',6,4),(32,'978-0-7434-8773-9','L\'Étranger','L\'histoire d\'un homme indifférent face à l\'absurdité de la vie.','https://source.unsplash.com/480x360/?movie','2024-11-01','2023-05-31 12:48:59',7,1),(33,'978-0-375-70076-7','Candide','Une satire mordante de l\'optimisme aveugle.','https://source.unsplash.com/480x360/?movie','2024-12-01','2023-05-31 12:48:59',8,1),(34,'978-0-14-044091-9','Les Trois Mousquetaires','Les aventures d\'un jeune homme qui cherche à devenir mousquetaire.','https://source.unsplash.com/480x360/?movie','2025-01-01','2023-05-31 12:48:59',9,7),(35,'978-0-375-70625-7','L\'Île mystérieuse','Un groupe de personnes échoue sur une île déserte après un crash de montgolfière.','https://source.unsplash.com/480x360/?movie','2025-02-01','2023-05-31 12:48:59',10,6),(36,'978-0-14-044926-4','Germinal','Une description déchirante de la vie des mineurs dans le nord de la France.','https://source.unsplash.com/480x360/?movie','2025-03-01','2023-05-31 12:48:59',11,5),(37,'978-0-375-71469-1','La Peste','L\'histoire d\'une épidémie de peste dans une ville algérienne.','https://source.unsplash.com/480x360/?movie','2025-04-01','2023-05-31 12:48:59',12,1),(38,'978-0-7432-9245-8','Vingt Mille Lieues sous les Mers','Les aventures sous-marines du capitaine Nemo et de son équipage.','https://source.unsplash.com/480x360/?movie','2025-05-01','2023-05-31 12:48:59',13,6),(39,'978-0-7435-3609-1','La Chute','Un avocat parisien devient juge-pénitent à Amsterdam.','https://source.unsplash.com/480x360/?movie','2025-06-01','2023-05-31 12:48:59',14,1),(40,'978-0-517-46889-3','Gargantua et Pantagruel','La vie et les aventures de deux géants, Gargantua et son fils Pantagruel.','https://source.unsplash.com/480x360/?movie','2025-07-01','2023-05-31 12:48:59',15,4),(41,'978-0-07-020980-8','La Comédie Humaine','Une série de nouvelles et de romans représentant la société française au 19ème siècle.','https://source.unsplash.com/480x360/?movie','2025-08-01','2023-05-31 12:48:59',16,4),(42,'978-0-7434-8773-0','Les Fleurs du Mal','Un recueil de poèmes qui rompt avec les conventions de la beauté et de la morale.','https://source.unsplash.com/480x360/?movie','2025-09-01','2023-05-31 12:48:59',17,3),(43,'978-0-375-70076-8','Les Misérables','Le récit de la vie de Jean Valjean, un ancien forçat qui cherche la rédemption.','https://source.unsplash.com/480x360/?movie','2025-10-01','2023-05-31 12:48:59',18,4),(44,'978-0-14-044091-1','Notre-Dame de Paris','L\'histoire tragique de l\'amour non partagé de Quasimodo pour la belle Esmeralda.','https://source.unsplash.com/480x360/?movie','2025-11-01','2023-05-31 12:48:59',19,4),(45,'978-0-375-70625-8','Voyage au Centre de la Terre','Un professeur de minéralogie et son neveu entreprennent un voyage vers le centre de la Terre.','https://source.unsplash.com/480x360/?movie','2025-12-01','2023-05-31 12:48:59',20,6),(46,'978-0-14-044926-5','Le Tour du Monde en 80 Jours','Phileas Fogg tente de voyager autour du monde en 80 jours pour gagner un pari.','https://source.unsplash.com/480x360/?movie','2026-01-01','2023-05-31 12:48:59',21,6),(47,'978-0-375-71469-2','Eugénie Grandet','L\'histoire d\'une jeune femme qui vit avec son père avare dans la province française.','https://source.unsplash.com/480x360/?movie','2026-02-01','2023-05-31 12:48:59',22,4),(48,'978-0-7432-9245-9','Pierre et Jean','Un drame familial centré sur deux frères qui sont amoureux de la même femme.','https://source.unsplash.com/480x360/?movie','2026-03-01','2023-05-31 12:48:59',23,4),(49,'978-0-7435-3609-2','Bel-Ami','La montée au pouvoir d\'un jeune homme ambitieux dans le Paris du 19ème siècle.','https://source.unsplash.com/480x360/?movie','2026-04-01','2023-05-31 12:48:59',24,4),(50,'978-0-07-020981-5','Les Trois Mousquetaires','L\'histoire d\'un jeune homme qui se rend à Paris pour devenir un mousquetaire.','https://source.unsplash.com/480x360/?movie','2026-05-01','2023-05-31 12:48:59',25,4),(51,'978-0-07-020982-2','20,000 Lieues sous les mers','Un professeur et son serviteur se joignent à une expédition pour chasser un monstre marin.','https://source.unsplash.com/480x360/?movie','2026-06-01','2023-05-31 12:48:59',21,6),(52,'ISBN0025A','L’Étranger','Publié en 1942, L’Étranger retrace l’histoire d’un homme simple, Meursault, vivant en Algérie française qui va commettre un crime.','https://source.unsplash.com/480x360/?movie','1942-01-01','2023-05-31 12:48:59',14,4),(53,'ISBN0025B','La Peste','La Peste est un roman écrit par Albert Camus, publié en 1947, qui raconte la vie des habitants d’Oran frappés par la peste.','https://source.unsplash.com/480x360/?movie','1947-01-01','2023-05-31 12:48:59',25,4);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_has_tags`
--

DROP TABLE IF EXISTS `books_has_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books_has_tags` (
  `book_id` int(10) unsigned NOT NULL,
  `tag_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`book_id`,`tag_id`),
  KEY `fk_books_has_tags_tags1_idx` (`tag_id`),
  KEY `fk_books_has_tags_books1_idx` (`book_id`),
  CONSTRAINT `fk_books_has_tags_books1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_books_has_tags_tags1` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_has_tags`
--

LOCK TABLES `books_has_tags` WRITE;
/*!40000 ALTER TABLE `books_has_tags` DISABLE KEYS */;
INSERT INTO `books_has_tags` VALUES (21,2),(38,2),(3,3),(14,3),(17,3),(33,3),(8,4),(18,4),(26,4),(29,4),(49,4),(5,5),(23,5),(24,5),(29,5),(40,5),(29,6),(21,7),(26,7),(30,7),(4,8),(24,8),(27,8),(39,8),(41,8),(9,9),(22,9),(30,9),(41,9),(20,10),(16,11),(26,11),(40,11),(2,12),(6,12),(19,12),(45,12),(51,12),(31,14),(42,15),(49,15),(35,17),(41,17),(27,18),(15,19),(18,19),(7,20),(33,20);
/*!40000 ALTER TABLE `books_has_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Science Fiction','2023-05-31 12:48:59'),(2,'Fantaisie','2023-05-31 12:48:59'),(3,'Thriller','2023-05-31 12:48:59'),(4,'Romance','2023-05-31 12:48:59'),(5,'Mystère','2023-05-31 12:48:59'),(6,'Fiction Historique','2023-05-31 12:48:59'),(7,'Jeune Adulte','2023-05-31 12:48:59'),(8,'Enfants','2023-05-31 12:48:59'),(9,'Aventure','2023-05-31 12:48:59'),(10,'Contemporain','2023-05-31 12:48:59'),(11,'Test','2023-09-25 15:54:50');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'#Bestseller','2023-05-31 12:48:59'),(2,'#MustRead','2023-05-31 12:48:59'),(3,'#Classic','2023-05-31 12:48:59'),(4,'#AwardWinning','2023-05-31 12:48:59'),(5,'#Thriller','2023-05-31 12:48:59'),(6,'#Romance','2023-05-31 12:48:59'),(7,'#SciFi','2023-05-31 12:48:59'),(8,'#Fantasy','2023-05-31 12:48:59'),(9,'#Biography','2023-05-31 12:48:59'),(10,'#Nonfiction','2023-05-31 12:48:59'),(11,'#YoungAdult','2023-05-31 12:48:59'),(12,'#Historical','2023-05-31 12:48:59'),(13,'#Mystery','2023-05-31 12:48:59'),(14,'#Society','2023-05-31 12:48:59'),(15,'#Inspirational','2023-05-31 12:48:59'),(16,'#Adventure','2023-05-31 12:48:59'),(17,'#Drama','2023-05-31 12:48:59'),(18,'#Comedy','2023-05-31 12:48:59'),(19,'#Crime','2023-05-31 12:48:59'),(20,'#Philosophy','2023-05-31 12:48:59');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'charles_dubois@example.com','$2y$10$LBYExGHXa6kcIqOaXEYebeoAFRPubX/gayaoWxQxzrdhvVuA.YOka','Charles','2023-05-31 12:48:59',NULL,NULL,NULL),(2,'elise_martin@example.com','$2y$10$ZUGqvxXZ7N8Wucs2ElWH6uUsInJjnPhphX3NeC3p9277qG6D30tRC','Elise','2023-05-31 12:48:59',NULL,NULL,NULL),(3,'pierre_bernard@example.com','$2y$10$Mtng/4tTyJ0MP9Um3YHyjeaSUyOe3l4/FcUGg9RdvI/4L1x7NnpSa','Pierre','2023-05-31 12:48:59',NULL,NULL,NULL),(4,'sophie_dumont@example.com','$2y$10$tLAdh/ufjPY/YDWKFCvoaOqOxaYfDowYO.jpCanxuq/EeEkvgFNY.','Sophie','2023-05-31 12:48:59',NULL,NULL,NULL),(5,'lucas_moreau@example.com','$2y$10$IlkMCiSJaeUK4gDxh670D.q3X6wEUdS2hu59lysKg5c8VjMZeu1iO','Lucas','2023-05-31 12:48:59',NULL,NULL,NULL),(6,'chloe_lemoine@example.com','$2y$10$QbCV1IxdYpUDndPafVC9hOVVyup/tyIrYnHJBOoDB8BaC3xl8KxH6','Chloe','2023-05-31 12:48:59',NULL,NULL,NULL),(7,'alexandre_garnier@example.com','$2y$10$R7F3OqfxxNUOsUwqbhnRNOc8KGL6jzeW1kASAMYAGgdS9lMix2hmK','Alexandre','2023-05-31 12:48:59',NULL,NULL,NULL),(8,'julie_rodriguez@example.com','$2y$10$mrnq8xeFKZK67W67TAlEKOeQ88kAfV41jiAdLkTj.TgdfSioZcPwi','Julie','2023-05-31 12:48:59',NULL,NULL,NULL),(9,'thomas_legrand@example.com','$2y$10$hLYskbNOrs7P3Cd7HEnRPOFxIEF8TI3JNM1atIQuMBhdHrkhz678O','Thomas','2023-05-31 12:48:59',NULL,NULL,NULL),(10,'emilie_gauthier@example.com','$2y$10$12OPWFSD.k.00PDJujMxkeUqT6trWPIumKpwTp671OJT2jL2.SvLK','Emilie','2023-05-31 12:48:59',NULL,NULL,NULL),(11,'nicolas_perez@example.com','$2y$10$Y/tKz6jljJN11E/1r8S9B.5o2vpXKMXP9Q9GawCMeHOBX3hF3iPlq','Nicolas','2023-05-31 12:48:59',NULL,NULL,NULL),(12,'camille_blanc@example.com','$2y$10$dhYWJmFCeAglkArvGjWW8eRp5LKMu4THJJXl9oyozRAZX6hloKpb2','Camille','2023-05-31 12:48:59',NULL,NULL,NULL),(13,'maxime_petit@example.com','$2y$10$UHnKtBHfCVdfInCgTt/DNeMsyhGMukNyP7v9lkWzjndOsKRtoCU0C','Maxime','2023-05-31 12:48:59',NULL,NULL,NULL),(14,'marie_morel@example.com','$2y$10$IY307LFFz797pnzaDnt7IOItLcZfb6f2kMIEbLPhsB4zfZgoU.O42','Marie','2023-05-31 12:48:59',NULL,NULL,NULL),(15,'adrien_boucher@example.com','$2y$10$8KO3C8BPRDgzihbRE0gNc.m03WMR/NDK1d8IgAO0unhUERQAyzX72','Adrien','2023-05-31 12:48:59',NULL,NULL,NULL),(16,'celine_brun@example.com','$2y$10$q/R6Rbzo3LCE83Qv2.ENM.5uCmRtVVgLBq3R91jmXC3Lcb9b6KgGq','Celine','2023-05-31 12:48:59',NULL,NULL,NULL),(17,'vincent_rousseau@example.com','$2y$10$qxr1ECQAty1WyeGVDCu3h.QaQ7Fe27gPssnLq2h1FEQLWbdhYtY7i','Vincent','2023-05-31 12:48:59',NULL,NULL,NULL),(18,'claire_giraud@example.com','$2y$10$uQQeRtkw.Bk9l1IBkI3PXOX8zrKTXj3x4t9kBvB..FQf/HNZTPWxi','Claire','2023-05-31 12:48:59',NULL,NULL,NULL),(19,'françois_marchand@example.com','$2y$10$tALp2TpMuPFuFN5DaPKgEuyDqGLv57kkPGKaQzIZ6w2PRZeHgsL3a','François','2023-05-31 12:48:59',NULL,NULL,NULL),(20,'jessica_lefevre@example.com','$2y$10$Pc57lJkdZMuUEs69u1uP9uIiYsEqHvDPMrflknwg7GPRyBMYXRMXC','Jessica','2023-05-31 12:48:59',NULL,NULL,NULL),(21,'pascallllacroix@gmail.com','$2y$10$bRZJp8yUk2k7T9G2O88Pn.LkbF0BslzxDrFpA9MkCKsJDVZJDwuKi','Pascal','2024-01-16 10:44:27',NULL,'2024-01-16 11:40:42',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_collections`
--

DROP TABLE IF EXISTS `users_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_collections` (
  `user_id` int(10) unsigned NOT NULL,
  `book_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`user_id`,`book_id`),
  KEY `fk_users_has_books_books1_idx` (`book_id`),
  KEY `fk_users_has_books_users1_idx` (`user_id`),
  CONSTRAINT `fk_users_has_books_books1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_has_books_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_collections`
--

LOCK TABLES `users_collections` WRITE;
/*!40000 ALTER TABLE `users_collections` DISABLE KEYS */;
INSERT INTO `users_collections` VALUES (1,4,'2023-05-31 12:50:36'),(1,20,'2023-06-01 12:52:05'),(1,30,'2023-05-31 12:50:37'),(1,33,'2023-05-31 12:50:35'),(2,2,'2023-05-31 12:50:37'),(2,19,'2023-05-31 12:50:36'),(2,23,'2023-06-01 12:52:05'),(2,33,'2023-05-31 12:50:35'),(3,5,'2023-06-01 12:52:05'),(3,14,'2023-05-31 12:50:35'),(3,16,'2023-05-31 12:50:37'),(3,30,'2023-05-31 12:50:36'),(4,5,'2023-06-01 12:52:05'),(4,21,'2023-05-31 12:50:35'),(4,26,'2023-05-31 12:50:37'),(4,44,'2023-05-31 12:50:36'),(5,10,'2023-06-01 12:52:05'),(5,12,'2023-05-31 12:50:35'),(5,27,'2023-05-31 12:50:36'),(5,28,'2023-05-31 12:50:37'),(6,4,'2023-05-31 12:50:36'),(6,14,'2023-05-31 12:50:37'),(6,32,'2023-06-01 12:52:05'),(6,48,'2023-05-31 12:50:35'),(7,32,'2023-06-01 12:52:05'),(7,34,'2023-05-31 12:50:37'),(7,37,'2023-05-31 12:50:36'),(7,50,'2023-05-31 12:50:35'),(8,5,'2023-05-31 12:50:35'),(8,10,'2023-06-01 12:52:05'),(8,20,'2023-05-31 12:50:36'),(8,26,'2023-05-31 12:50:37'),(9,4,'2023-06-01 12:52:05'),(9,25,'2023-05-31 12:50:35'),(9,27,'2023-05-31 12:50:37'),(9,40,'2023-05-31 12:50:36'),(10,7,'2023-05-31 12:50:37'),(10,10,'2023-05-31 12:50:35'),(10,37,'2023-05-31 12:50:36'),(10,40,'2023-06-01 12:52:05'),(11,1,'2023-05-31 12:50:37'),(11,16,'2023-05-31 12:50:36'),(11,25,'2023-05-31 12:50:35'),(11,35,'2023-06-01 12:52:05'),(12,6,'2023-06-01 12:52:05'),(12,19,'2023-05-31 12:50:36'),(12,35,'2023-05-31 12:50:37'),(12,42,'2023-05-31 12:50:35'),(13,21,'2023-05-31 12:50:37'),(13,23,'2023-06-01 12:52:05'),(13,36,'2023-05-31 12:50:35'),(13,44,'2023-05-31 12:50:36'),(14,3,'2023-05-31 12:50:35'),(14,12,'2023-05-31 12:50:36'),(14,44,'2023-06-01 12:52:05'),(14,47,'2023-05-31 12:50:37'),(15,3,'2023-05-31 12:50:35'),(15,4,'2023-06-01 12:52:05'),(15,23,'2023-05-31 12:50:37'),(15,29,'2023-05-31 12:50:36'),(16,7,'2023-05-31 12:50:35'),(16,8,'2023-05-31 12:50:36'),(16,24,'2023-05-31 12:50:37'),(16,34,'2023-06-01 12:52:05'),(17,7,'2023-06-01 12:52:05'),(17,27,'2023-05-31 12:50:35'),(17,50,'2023-05-31 12:50:37'),(17,51,'2023-05-31 12:50:36'),(18,9,'2023-05-31 12:50:35'),(18,25,'2023-05-31 12:50:37'),(18,30,'2023-05-31 12:50:36'),(18,33,'2023-06-01 12:52:05'),(19,16,'2023-05-31 12:50:35'),(19,24,'2023-05-31 12:50:37'),(19,42,'2023-06-01 12:52:05'),(19,45,'2023-05-31 12:50:36'),(20,11,'2023-06-01 12:52:05'),(20,33,'2023-05-31 12:50:36'),(20,44,'2023-05-31 12:50:37'),(20,51,'2023-05-31 12:50:35');
/*!40000 ALTER TABLE `users_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_notations`
--

DROP TABLE IF EXISTS `users_notations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_notations` (
  `user_id` int(10) unsigned NOT NULL,
  `book_id` int(10) unsigned NOT NULL,
  `note` decimal(3,1) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`user_id`,`book_id`),
  KEY `fk_users_has_books_books2_idx` (`book_id`),
  KEY `fk_users_has_books_users2_idx` (`user_id`),
  CONSTRAINT `fk_users_has_books_books2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_has_books_users2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_notations`
--

LOCK TABLES `users_notations` WRITE;
/*!40000 ALTER TABLE `users_notations` DISABLE KEYS */;
INSERT INTO `users_notations` VALUES (1,10,2.5,'2023-05-31 12:52:26'),(1,18,4.8,'2023-05-31 12:52:12'),(1,39,3.1,'2023-05-31 12:52:11'),(1,47,4.9,'2023-05-31 12:52:10'),(2,12,0.5,'2023-05-31 12:52:10'),(2,41,0.7,'2023-05-31 12:52:11'),(2,42,1.2,'2023-05-31 12:52:12'),(2,49,1.5,'2023-05-31 12:52:26'),(3,18,1.3,'2023-05-31 12:52:11'),(3,32,1.0,'2023-05-31 12:52:26'),(3,37,4.4,'2023-05-31 12:52:12'),(3,43,4.6,'2023-05-31 12:52:10'),(4,3,2.5,'2023-05-31 12:52:10'),(4,8,0.6,'2023-05-31 12:52:26'),(4,11,1.9,'2023-05-31 12:52:12'),(4,14,2.6,'2023-05-31 12:52:11'),(5,9,2.4,'2023-05-31 12:52:26'),(5,18,2.5,'2023-05-31 12:52:12'),(5,19,1.5,'2023-05-31 12:52:10'),(5,43,3.1,'2023-05-31 12:52:11'),(6,23,1.5,'2023-05-31 12:52:10'),(6,27,0.6,'2023-05-31 12:52:12'),(6,31,0.5,'2023-05-31 12:52:11'),(6,47,0.8,'2023-05-31 12:52:26'),(7,3,3.7,'2023-05-31 12:52:26'),(7,10,0.1,'2023-05-31 12:52:10'),(7,36,1.1,'2023-05-31 12:52:11'),(7,50,2.9,'2023-05-31 12:52:12'),(8,2,2.0,'2023-05-31 12:52:11'),(8,27,2.1,'2023-05-31 12:52:26'),(8,30,3.9,'2023-05-31 12:52:10'),(8,48,4.9,'2023-05-31 12:52:12'),(9,5,2.2,'2023-05-31 12:52:12'),(9,12,3.5,'2023-05-31 12:52:10'),(9,26,1.3,'2023-05-31 12:52:26'),(9,47,2.2,'2023-05-31 12:52:11'),(10,1,3.4,'2023-05-31 12:52:12'),(10,21,3.7,'2023-05-31 12:52:11'),(10,40,0.5,'2023-05-31 12:52:26'),(10,44,0.8,'2023-05-31 12:52:10'),(11,11,3.3,'2023-05-31 12:52:26'),(11,15,4.5,'2023-05-31 12:52:10'),(11,19,4.0,'2023-05-31 12:52:12'),(11,25,0.7,'2023-05-31 12:52:11'),(12,17,0.6,'2023-05-31 12:52:11'),(12,32,2.3,'2023-05-31 12:52:10'),(12,37,3.1,'2023-05-31 12:52:26'),(12,48,1.4,'2023-05-31 12:52:12'),(13,21,3.2,'2023-05-31 12:52:10'),(13,32,1.1,'2023-05-31 12:52:12'),(13,35,0.3,'2023-05-31 12:52:11'),(13,48,4.2,'2023-05-31 12:52:26'),(14,12,2.5,'2023-05-31 12:52:12'),(14,14,0.6,'2023-05-31 12:52:11'),(14,22,2.6,'2023-05-31 12:52:26'),(14,49,4.7,'2023-05-31 12:52:10'),(15,20,1.5,'2023-05-31 12:52:26'),(15,39,0.1,'2023-05-31 12:52:10'),(15,41,3.3,'2023-05-31 12:52:11'),(15,42,2.8,'2023-05-31 12:52:12'),(16,19,0.7,'2023-05-31 12:52:12'),(16,22,0.9,'2023-05-31 12:52:26'),(16,43,0.5,'2023-05-31 12:52:10'),(16,44,1.5,'2023-05-31 12:52:11'),(17,1,3.5,'2023-05-31 12:52:10'),(17,30,2.3,'2023-05-31 12:52:12'),(17,32,2.9,'2023-05-31 12:52:26'),(17,49,4.4,'2023-05-31 12:52:11'),(18,2,2.0,'2023-05-31 12:52:26'),(18,26,4.3,'2023-05-31 12:52:11'),(18,28,2.8,'2023-05-31 12:52:10'),(18,30,2.8,'2023-05-31 12:52:12'),(19,4,3.1,'2023-05-31 12:52:12'),(19,11,1.7,'2023-05-31 12:52:10'),(19,40,1.7,'2023-05-31 12:52:11'),(19,47,2.1,'2023-05-31 12:52:26'),(20,5,2.0,'2023-05-31 12:52:10'),(20,17,1.8,'2023-05-31 12:52:26'),(20,20,4.5,'2023-05-31 12:52:11'),(20,48,4.0,'2023-05-31 12:52:12');
/*!40000 ALTER TABLE `users_notations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-16 13:34:05
