-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: ecf
-- ------------------------------------------------------
-- Server version	5.7.33

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id_article` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_article`),
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,1,'Lorem ipsum','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum congue posuere ipsum at euismod. Nullam tristique, augue vel lacinia lobortis, dui nibh rhoncus est, ac pretium ligula ex ultricies arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nunc eu ligula ut nibh porta dictum eget sed nisl. Curabitur vitae laoreet dolor, ac interdum magna. Etiam dignissim hendrerit dapibus. Integer dictum facilisis nisi eget posuere. Integer et accumsan libero. Phasellus quis risus mattis, imperdiet nisi vel, varius mauris. Aenean fringilla risus nisl, a dignissim lacus tincidunt sit amet. Maecenas sagittis tortor metus, a dignissim nulla mollis non. Nunc mattis est venenatis interdum tincidunt. Vestibulum lacinia ex vitae risus facilisis, at mattis dui dapibus. Ut feugiat vitae neque in scelerisque. Phasellus augue mi, dapibus ornare magna eu, placerat lobortis neque.\r\n\r\nCras sed ullamcorper est, vitae tincidunt elit. Praesent at elit vel mi aliquam vehicula vel vel lectus. Etiam quis dapibus nisl, tincidunt elementum odio. Proin nec varius nisl. Sed congue orci risus, id auctor lacus fringilla quis. Cras pretium lectus vel elementum posuere. Sed varius luctus metus at condimentum. Aliquam elementum augue in scelerisque placerat. Morbi pharetra lectus ac erat pretium pellentesque.\r\n\r\nNulla eu justo tellus. Etiam convallis lacinia arcu, eget posuere dolor condimentum vitae. Nunc vitae porttitor mi. Curabitur vel nunc in augue posuere placerat id sed nulla. Nam nec mollis quam. Aenean mauris nisl, porttitor consequat pharetra ut, euismod vel tortor. Phasellus facilisis magna quis nisi porttitor ultrices. Curabitur egestas ligula eget sem pharetra eleifend eget nec nulla. Morbi sit amet sodales neque. Aenean at risus felis. Mauris consectetur est vitae enim bibendum vulputate. Maecenas in velit nec diam iaculis lobortis id id turpis. Phasellus non quam eget ligula porta suscipit eget ut purus. Fusce gravida lacinia sapien id vehicula.\r\n\r\nQuisque vel ultrices libero. Ut pellentesque odio id lacinia dignissim. Mauris lacinia velit a sapien egestas iaculis. Proin convallis porttitor ornare. Nulla ut dolor eget augue suscipit tristique eu et lectus. Nulla vel justo porttitor, cursus lectus venenatis, porttitor sem. In laoreet mi quis condimentum congue. Proin tellus lacus, eleifend et aliquam id, condimentum quis nibh. Suspendisse vel euismod ipsum, eu lacinia augue. Nam facilisis mollis leo. Maecenas consectetur posuere arcu ac euismod. Curabitur hendrerit ullamcorper mauris quis laoreet. Duis eget velit vel nunc tincidunt vulputate vitae in nibh. Nam libero arcu, tempus pharetra sapien eu, commodo congue leo. Proin massa diam, auctor sed leo in, luctus consectetur lacus. Nullam in tincidunt felis, ut posuere mi.\r\n\r\nCurabitur blandit mauris metus, sed suscipit erat eleifend a. Nullam rutrum ligula at odio finibus ullamcorper. Proin tincidunt lorem sit amet malesuada lobortis. Sed ut orci nisi. Morbi purus turpis, venenatis quis metus ut, scelerisque ornare urna. Curabitur elementum facilisis bibendum. Donec dapibus leo ligula, eget sagittis sapien blandit non. Donec vel velit sodales, varius ligula luctus, posuere est. Quisque tortor erat, aliquet scelerisque lacus in, porttitor elementum dolor. Maecenas vel eros tincidunt, condimentum diam vel, gravida nisi. ','2022-03-09 13:53:53'),(2,1,'Nulla eu justo tellus','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum congue posuere ipsum at euismod. Nullam tristique, augue vel lacinia lobortis, dui nibh rhoncus est, ac pretium ligula ex ultricies arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nunc eu ligula ut nibh porta dictum eget sed nisl. Curabitur vitae laoreet dolor, ac interdum magna. Etiam dignissim hendrerit dapibus. Integer dictum facilisis nisi eget posuere. Integer et accumsan libero. Phasellus quis risus mattis, imperdiet nisi vel, varius mauris. Aenean fringilla risus nisl, a dignissim lacus tincidunt sit amet. Maecenas sagittis tortor metus, a dignissim nulla mollis non. Nunc mattis est venenatis interdum tincidunt. Vestibulum lacinia ex vitae risus facilisis, at mattis dui dapibus. Ut feugiat vitae neque in scelerisque. Phasellus augue mi, dapibus ornare magna eu, placerat lobortis neque.\r\n\r\nCras sed ullamcorper est, vitae tincidunt elit. Praesent at elit vel mi aliquam vehicula vel vel lectus. Etiam quis dapibus nisl, tincidunt elementum odio. Proin nec varius nisl. Sed congue orci risus, id auctor lacus fringilla quis. Cras pretium lectus vel elementum posuere. Sed varius luctus metus at condimentum. Aliquam elementum augue in scelerisque placerat. Morbi pharetra lectus ac erat pretium pellentesque.\r\n\r\nNulla eu justo tellus. Etiam convallis lacinia arcu, eget posuere dolor condimentum vitae. Nunc vitae porttitor mi. Curabitur vel nunc in augue posuere placerat id sed nulla. Nam nec mollis quam. Aenean mauris nisl, porttitor consequat pharetra ut, euismod vel tortor. Phasellus facilisis magna quis nisi porttitor ultrices. Curabitur egestas ligula eget sem pharetra eleifend eget nec nulla. Morbi sit amet sodales neque. Aenean at risus felis. Mauris consectetur est vitae enim bibendum vulputate. Maecenas in velit nec diam iaculis lobortis id id turpis. Phasellus non quam eget ligula porta suscipit eget ut purus. Fusce gravida lacinia sapien id vehicula.\r\n\r\nQuisque vel ultrices libero. Ut pellentesque odio id lacinia dignissim. Mauris lacinia velit a sapien egestas iaculis. Proin convallis porttitor ornare. Nulla ut dolor eget augue suscipit tristique eu et lectus. Nulla vel justo porttitor, cursus lectus venenatis, porttitor sem. In laoreet mi quis condimentum congue. Proin tellus lacus, eleifend et aliquam id, condimentum quis nibh. Suspendisse vel euismod ipsum, eu lacinia augue. Nam facilisis mollis leo. Maecenas consectetur posuere arcu ac euismod. Curabitur hendrerit ullamcorper mauris quis laoreet. Duis eget velit vel nunc tincidunt vulputate vitae in nibh. Nam libero arcu, tempus pharetra sapien eu, commodo congue leo. Proin massa diam, auctor sed leo in, luctus consectetur lacus. Nullam in tincidunt felis, ut posuere mi.\r\n\r\nCurabitur blandit mauris metus, sed suscipit erat eleifend a. Nullam rutrum ligula at odio finibus ullamcorper. Proin tincidunt lorem sit amet malesuada lobortis. Sed ut orci nisi. Morbi purus turpis, venenatis quis metus ut, scelerisque ornare urna. Curabitur elementum facilisis bibendum. Donec dapibus leo ligula, eget sagittis sapien blandit non. Donec vel velit sodales, varius ligula luctus, posuere est. Quisque tortor erat, aliquet scelerisque lacus in, porttitor elementum dolor. Maecenas vel eros tincidunt, condimentum diam vel, gravida nisi.','2022-03-10 10:54:47'),(4,1,'Cras sed ullamcorper est','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum congue posuere ipsum at euismod. Nullam tristique, augue vel lacinia lobortis, dui nibh rhoncus est, ac pretium ligula ex ultricies arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nunc eu ligula ut nibh porta dictum eget sed nisl. Curabitur vitae laoreet dolor, ac interdum magna. Etiam dignissim hendrerit dapibus. Integer dictum facilisis nisi eget posuere. Integer et accumsan libero. Phasellus quis risus mattis, imperdiet nisi vel, varius mauris. Aenean fringilla risus nisl, a dignissim lacus tincidunt sit amet. Maecenas sagittis tortor metus, a dignissim nulla mollis non. Nunc mattis est venenatis interdum tincidunt. Vestibulum lacinia ex vitae risus facilisis, at mattis dui dapibus. Ut feugiat vitae neque in scelerisque. Phasellus augue mi, dapibus ornare magna eu, placerat lobortis neque.\r\n\r\nCras sed ullamcorper est, vitae tincidunt elit. Praesent at elit vel mi aliquam vehicula vel vel lectus. Etiam quis dapibus nisl, tincidunt elementum odio. Proin nec varius nisl. Sed congue orci risus, id auctor lacus fringilla quis. Cras pretium lectus vel elementum posuere. Sed varius luctus metus at condimentum. Aliquam elementum augue in scelerisque placerat. Morbi pharetra lectus ac erat pretium pellentesque.\r\n\r\nNulla eu justo tellus. Etiam convallis lacinia arcu, eget posuere dolor condimentum vitae. Nunc vitae porttitor mi. Curabitur vel nunc in augue posuere placerat id sed nulla. Nam nec mollis quam. Aenean mauris nisl, porttitor consequat pharetra ut, euismod vel tortor. Phasellus facilisis magna quis nisi porttitor ultrices. Curabitur egestas ligula eget sem pharetra eleifend eget nec nulla. Morbi sit amet sodales neque. Aenean at risus felis. Mauris consectetur est vitae enim bibendum vulputate. Maecenas in velit nec diam iaculis lobortis id id turpis. Phasellus non quam eget ligula porta suscipit eget ut purus. Fusce gravida lacinia sapien id vehicula.\r\n\r\nQuisque vel ultrices libero. Ut pellentesque odio id lacinia dignissim. Mauris lacinia velit a sapien egestas iaculis. Proin convallis porttitor ornare. Nulla ut dolor eget augue suscipit tristique eu et lectus. Nulla vel justo porttitor, cursus lectus venenatis, porttitor sem. In laoreet mi quis condimentum congue. Proin tellus lacus, eleifend et aliquam id, condimentum quis nibh. Suspendisse vel euismod ipsum, eu lacinia augue. Nam facilisis mollis leo. Maecenas consectetur posuere arcu ac euismod. Curabitur hendrerit ullamcorper mauris quis laoreet. Duis eget velit vel nunc tincidunt vulputate vitae in nibh. Nam libero arcu, tempus pharetra sapien eu, commodo congue leo. Proin massa diam, auctor sed leo in, luctus consectetur lacus. Nullam in tincidunt felis, ut posuere mi.\r\n\r\nCurabitur blandit mauris metus, sed suscipit erat eleifend a. Nullam rutrum ligula at odio finibus ullamcorper. Proin tincidunt lorem sit amet malesuada lobortis. Sed ut orci nisi. Morbi purus turpis, venenatis quis metus ut, scelerisque ornare urna. Curabitur elementum facilisis bibendum. Donec dapibus leo ligula, eget sagittis sapien blandit non. Donec vel velit sodales, varius ligula luctus, posuere est. Quisque tortor erat, aliquet scelerisque lacus in, porttitor elementum dolor. Maecenas vel eros tincidunt, condimentum diam vel, gravida nisi. ','2022-03-21 09:38:43'),(6,NULL,'ARTICLE 4','ARTICLE POUR LA PAGINATION','2022-04-29 14:25:23'),(7,NULL,'ARTICLE 5','ARTICLE POUR LA PAGINATION','2022-04-29 14:25:30'),(8,NULL,'ARTICLE','ARTICLE POUR LA PAGINATION','2022-04-29 14:25:35'),(9,NULL,'ARTICLE','ARTICLE POUR LA PAGINATION','2022-04-29 14:25:39');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id_comment` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `article_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_comment`),
  KEY `FK_categoryarticle` (`article_id`),
  KEY `FK_articlecategory` (`user_id`),
  CONSTRAINT `FK_articlecategory` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE CASCADE,
  CONSTRAINT `FK_categoryarticle` FOREIGN KEY (`article_id`) REFERENCES `article` (`id_article`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'TEST DE COMMENTAIRES WOOOHOOO !!!',4,1,'2022-04-29 10:20:37'),(3,'Un commentaire de test. ',1,1,'2022-04-29 10:22:08'),(4,'Un deuxieme commentaire edited',1,1,'2022-04-29 10:29:14'),(18,'Un dernier commentaire.',1,2,'2022-04-29 13:58:46'),(20,'TEST DE COMMENTAIRE EDITE !',4,2,'2022-04-29 14:21:37'),(21,'TEST DE COMMENTAIRES WOOOHOOO',4,1,'2022-04-29 14:22:48'),(22,'TEST DE COMMENTAIRES WOOOHOOO',4,1,'2022-04-29 14:22:51'),(23,'TEST DE COMMENTAIRES WOOOHOOO',4,1,'2022-04-29 14:22:51'),(24,'TEST DE COMMENTAIRES WOOOHOOO',4,1,'2022-04-29 14:22:51'),(25,'TEST DE COMMENTAIRES WOOOHOOO',4,1,'2022-04-29 14:22:52'),(26,'TEST DE COMMENTAIRES WOOOHOOO',4,1,'2022-04-29 14:22:52'),(27,'TEST DE COMMENTAIRES WOOOHOOO',4,1,'2022-04-29 14:22:52'),(28,'TEST DE COMMENTAIRES WOOOHOOO',4,1,'2022-04-29 14:22:52'),(29,'TEST DE COMMENTAIRES WOOOHOOO',4,1,'2022-04-29 14:22:52'),(30,'TEST DE COMMENTAIRES WOOOHOOO',4,1,'2022-04-29 14:22:52'),(31,'TEST DE COMMENTAIRES WOOOHOOO',4,1,'2022-04-29 14:22:53'),(32,'test de commentaire, oui encore :\')',2,2,'2022-04-29 15:54:12');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id_user` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Admin','$argon2i$v=19$m=65536,t=4,p=1$Z253VDlRSWNFUGNZZ0tlUg$I5nIoToVjVwDYR3kJDCWvYJOiDeuUqguXxgmxCcQ1UY','admin@test.com','2022-03-09 12:08:54'),(2,'steve','$argon2i$v=19$m=65536,t=4,p=1$S0s1cXBGQmRra3lyVDQwdg$M/Y/zfr1DBq/RAZ/3UUkptx2V4KG8IAVnQAoiMqk1Xo','steve@aol.fr','2022-04-29 11:14:35');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-29 15:56:43
