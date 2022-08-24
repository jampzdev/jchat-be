-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: chat_db
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `chat_rooms_tbl`
--

DROP TABLE IF EXISTS `chat_rooms_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_rooms_tbl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `participants` text DEFAULT NULL,
  `date_created` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_rooms_tbl`
--

LOCK TABLES `chat_rooms_tbl` WRITE;
/*!40000 ALTER TABLE `chat_rooms_tbl` DISABLE KEYS */;
INSERT INTO `chat_rooms_tbl` VALUES (1,'Belisa','1,2','2022-08-13 17:49:58'),(2,'Test','1,2','2022-08-13 18:09:52'),(3,'Pangatlo','1,2','2022-08-13 18:18:31');
/*!40000 ALTER TABLE `chat_rooms_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chats_tbl`
--

DROP TABLE IF EXISTS `chats_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chats_tbl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `chat_room_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date_created` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chats_tbl`
--

LOCK TABLES `chats_tbl` WRITE;
/*!40000 ALTER TABLE `chats_tbl` DISABLE KEYS */;
INSERT INTO `chats_tbl` VALUES (1,1,1,'test','2022-08-13 17:50:03'),(2,1,2,'test1','2022-08-13 17:50:03'),(3,1,1,'test','2022-08-13 17:50:03'),(4,2,1,'test','2022-08-13 18:10:29'),(5,2,2,'test1','2022-08-13 18:10:29'),(6,2,1,'test','2022-08-13 18:10:29'),(7,3,1,'hahaha','2022-08-13 18:19:05'),(8,3,2,'hahaha','2022-08-13 18:19:05'),(9,3,1,'hahaha gagi','2022-08-13 18:19:05'),(10,3,1,'hahaha est','2022-08-13 18:19:05'),(11,3,1,'sdafdsafs','2022-08-13 18:57:17'),(12,3,1,'cxzvxczvcz','2022-08-13 18:57:27'),(13,3,1,'sdafdsafsda','2022-08-13 18:57:53'),(14,3,1,'HAHAHAHA','2022-08-13 18:57:59'),(15,2,1,'SDAFDSAFDSAFSDA','2022-08-13 18:58:12'),(16,1,1,'SDAFDSAFS','2022-08-13 18:58:16'),(17,3,1,'fdsafdsa','2022-08-13 19:57:36'),(18,2,1,'sadas','2022-08-13 20:00:34'),(19,2,1,'asdsa','2022-08-13 20:00:47'),(20,2,1,'sdafdsa','2022-08-13 20:02:48'),(21,1,1,'sdafdsa','2022-08-13 20:06:08'),(22,1,1,'sdafdsa','2022-08-13 20:06:19'),(23,1,1,'sdafdsaf','2022-08-13 20:06:50'),(24,1,1,'asdasdsa','2022-08-13 20:09:23'),(25,1,1,'asdas','2022-08-13 20:11:26'),(26,1,1,'sdafdsa','2022-08-13 20:13:22'),(27,1,1,'sadada','2022-08-13 20:14:50'),(28,1,1,'HAHHA','2022-08-13 20:15:30'),(29,1,1,'haha tangina','2022-08-13 20:16:39'),(30,1,1,'asdafsdafs','2022-08-13 20:16:48'),(31,1,1,'ssss','2022-08-13 20:17:27'),(32,1,1,'www','2022-08-13 20:17:52'),(33,1,1,'xczvcxzv','2022-08-13 20:18:13'),(34,1,1,'azxczxcz','2022-08-13 20:54:23'),(35,1,1,'v','2022-08-13 20:54:27'),(36,1,1,'n','2022-08-13 20:54:34'),(37,3,1,'w','2022-08-13 20:54:38'),(38,3,1,'w','2022-08-13 20:54:40'),(39,3,1,'a','2022-08-13 21:03:57'),(40,3,1,'asdasda','2022-08-13 21:05:13'),(41,1,1,'ww','2022-08-13 21:05:50'),(42,1,1,'a','2022-08-13 21:06:47'),(43,1,1,'www','2022-08-13 21:06:51'),(44,2,1,'a','2022-08-13 21:08:26'),(45,3,1,'a','2022-08-13 21:09:43'),(46,3,1,'w','2022-08-13 21:09:45'),(47,3,1,'w','2022-08-13 21:09:52'),(48,3,1,'a','2022-08-13 21:10:00'),(49,3,1,'xczvxczvcxz','2022-08-13 21:23:31'),(50,3,1,'DSAFK.J DSANFKJ DSAKFJ DSKALJF DSKJAF KJDSALKJ FHDSAKJ FDSLAK JFDSAKLJ F','2022-08-13 21:25:15'),(51,2,1,'dsafdsafas','2022-08-13 21:35:37'),(52,3,1,'a','2022-08-13 21:36:36'),(53,3,1,'a','2022-08-13 21:36:42'),(54,1,1,'s','2022-08-13 21:44:06'),(55,3,1,'a','2022-08-13 22:31:56'),(56,3,1,'hahaha','2022-08-13 22:36:33'),(57,2,1,'uy','2022-08-13 22:38:04'),(58,1,1,'haha','2022-08-13 22:38:58'),(59,1,1,'ss','2022-08-13 22:40:26'),(60,1,1,'aaa','2022-08-13 22:40:55'),(61,1,1,'aaa','2022-08-13 22:42:16'),(62,1,1,'aaaa','2022-08-13 22:42:37'),(63,1,1,'a','2022-08-13 22:45:01'),(64,1,1,'hoy pre','2022-08-13 22:45:06'),(65,1,1,'HAHAHA','2022-08-13 22:45:17'),(66,3,1,'hahaha','2022-08-13 22:47:07'),(67,2,1,'ahahaha','2022-08-13 23:04:48'),(68,2,1,'a','2022-08-13 23:04:55'),(69,1,1,'a','2022-08-13 23:05:05'),(70,2,1,'wwwww','2022-08-13 23:05:16'),(71,3,1,'a','2022-08-13 23:06:19'),(72,2,1,'a','2022-08-13 23:06:26'),(73,3,1,'sdfasdaf','2022-08-13 23:50:13'),(74,3,1,'sdafdsa','2022-08-13 23:53:54'),(75,3,1,'AAAAAAAAAAAAAAAAAAAAAAAAAAAA','2022-08-13 23:54:18'),(76,3,1,'sdafdsa','2022-08-13 23:55:24'),(77,3,3,'ssss','2022-08-13 23:55:55'),(78,3,2,'hahaha','2022-08-13 23:57:06'),(79,3,2,'HAHAHA','2022-08-13 23:58:38'),(80,3,3,'o baket ka tumatawa','2022-08-13 23:58:45'),(81,3,2,'tangina mooooo','2022-08-13 23:59:01'),(82,1,3,'asdasda','2022-08-14 12:26:46');
/*!40000 ALTER TABLE `chats_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_tbl`
--

DROP TABLE IF EXISTS `users_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_tbl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) DEFAULT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `date_created` datetime DEFAULT current_timestamp(),
  `username` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_tbl`
--

LOCK TABLES `users_tbl` WRITE;
/*!40000 ALTER TABLE `users_tbl` DISABLE KEYS */;
INSERT INTO `users_tbl` VALUES (1,'Jampz','','Baliw','2022-08-13 17:48:25','jampzbaliw','123'),(2,'Joseph','','Esparago','2022-08-13 17:48:25','joseph','123'),(3,'test','','test','2022-08-13 23:44:18','test','123');
/*!40000 ALTER TABLE `users_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-24 15:59:27
