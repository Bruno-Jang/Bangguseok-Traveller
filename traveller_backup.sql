-- MySQL dump 10.13  Distrib 8.0.28, for macos11.6 (x86_64)
--
-- Host: localhost    Database: traveller
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'contenttypes','contenttype'),(6,'products','mainimage'),(7,'products','menu'),(8,'products','product'),(12,'products','producttag'),(11,'products','subimage'),(10,'products','tag'),(9,'products','tagcategory'),(2,'sessions','session'),(3,'users','profile'),(5,'users','user'),(4,'users','usertype'),(13,'votes','vote');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-01-21 01:33:58.368144'),(2,'contenttypes','0002_remove_content_type_name','2022-01-21 01:33:58.403433'),(3,'users','0001_initial','2022-01-21 01:33:58.471831'),(4,'products','0001_initial','2022-01-21 01:33:58.714106'),(5,'sessions','0001_initial','2022-01-21 01:33:58.732406'),(6,'votes','0001_initial','2022-01-21 01:33:58.795392');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_images`
--

DROP TABLE IF EXISTS `main_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_images` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image_url` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_images`
--

LOCK TABLES `main_images` WRITE;
/*!40000 ALTER TABLE `main_images` DISABLE KEYS */;
INSERT INTO `main_images` VALUES (1,'https://images.unsplash.com/photo-1578764442423-c21d36076af1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1947&q=80'),(2,'https://images.unsplash.com/photo-1595867818082-083862f3d630?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),(3,'https://images.unsplash.com/photo-1524756614325-ab25ba59e6e6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),(4,'https://images.unsplash.com/photo-1507876466758-bc54f384809c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3309&q=80'),(5,'https://images.unsplash.com/photo-1534351590666-13e3e96b5017?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),(6,'https://images.unsplash.com/photo-1627484986972-e544190b8abb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2068&q=80'),(7,'https://images.unsplash.com/photo-1506104489822-562ca25152fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2069&q=80'),(8,'https://cdn.pixabay.com/photo/2014/02/06/08/27/beautiful-259780_1280.jpg'),(9,'https://cdn.pixabay.com/photo/2020/05/23/08/23/florence-5208579_1280.jpg'),(10,'https://images.unsplash.com/photo-1580060839134-75a5edca2e99?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80'),(11,'https://cdn.pixabay.com/photo/2019/03/08/19/52/galata-4043037_1280.jpg'),(12,'https://cdn.pixabay.com/photo/2021/07/08/03/55/mount-everest-6395759_1280.jpg'),(13,'https://cdn.pixabay.com/photo/2013/11/29/21/12/foz-do-iguacu-221288_1280.jpg'),(14,'https://cdn.pixabay.com/photo/2020/02/20/13/25/city-4864747_1280.jpg'),(15,'https://images.unsplash.com/photo-1460881680858-30d872d5b530?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80'),(16,'https://images.unsplash.com/photo-1544085311-11a028465b03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2532&q=80'),(17,'https://images.unsplash.com/photo-1560703650-ef3e0f254ae0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),(18,'https://images.unsplash.com/photo-1612977512598-3b8d6a498bbb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80'),(19,'https://images.unsplash.com/photo-1605088298038-2876387a80c1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80'),(20,'https://images.unsplash.com/photo-1599172806227-55b02cefcc31?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2073&q=80'),(21,'https://cdn.pixabay.com/photo/2019/03/02/21/25/morocco-4030733_1280.jpg'),(22,'https://images.unsplash.com/photo-1573843981267-be1999ff37cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80'),(23,'https://images.unsplash.com/photo-1577717903315-1691ae25ab3f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),(24,'https://cdn.pixabay.com/photo/2020/12/17/04/09/guanajuato-5838206_1280.jpg'),(25,'https://images.unsplash.com/flagged/photo-1559717201-fbb671ff56b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80'),(26,'https://images.unsplash.com/photo-1552993873-0dd1110e025f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80'),(27,'https://images.unsplash.com/photo-1613516392416-1a621fb69004?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80'),(28,'https://images.unsplash.com/photo-1520986606214-8b456906c813?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),(29,'https://images.unsplash.com/photo-1532270239525-86620e182354?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80'),(30,'https://images.unsplash.com/photo-1483729558449-99ef09a8c325?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),(31,'https://images.unsplash.com/photo-1507699622108-4be3abd695ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80'),(32,'https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),(33,'https://images.unsplash.com/photo-1604433203862-93bc73b0f1e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80'),(34,'https://images.unsplash.com/photo-1586270957726-cc34206d8a36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80'),(35,'https://images.unsplash.com/photo-1521993117367-b7f70ccd029d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2040&q=80'),(36,'https://images.unsplash.com/photo-1524492412937-b28074a5d7da?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80'),(37,'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2073&q=80'),(38,'https://images.unsplash.com/photo-1529260830199-42c24126f198?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2076&q=80'),(39,'https://images.unsplash.com/photo-1553913861-c0fddf2619ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),(40,'https://images.unsplash.com/photo-1509840841025-9088ba78a826?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'),(41,'https://user-images.githubusercontent.com/75561289/150399278-dc4582ac-335b-4c14-af67-2ff77e8f776d.jpeg'),(42,'https://user-images.githubusercontent.com/75561289/150402517-b45e4d23-8311-4bc7-8f4a-6d1020aad8d6.jpg'),(43,'https://user-images.githubusercontent.com/75561289/150403694-37879038-677f-4765-b717-50e966379c38.jpeg'),(44,'https://user-images.githubusercontent.com/75561289/150404344-560f3a70-306b-407d-ac7f-49eefad6485b.jpg'),(45,'https://user-images.githubusercontent.com/75561289/150405225-be8bdd5b-8852-4ab9-b3ca-6ebeaef3cc61.jpg'),(46,'https://user-images.githubusercontent.com/75561289/150406300-f0fe063a-8a24-4fc4-bfdd-99ab187222c2.jpg'),(47,'https://user-images.githubusercontent.com/75561289/150406829-5374d826-f060-4e5c-8ac0-f29caf3d6be9.jpg'),(48,'https://user-images.githubusercontent.com/75561289/150407530-3c854b06-ec89-4729-b8c4-96aba39020e5.jpg'),(49,'https://user-images.githubusercontent.com/75561289/150408628-650b6c84-4da2-4eb0-9e7e-3bdea294763e.png'),(50,'https://user-images.githubusercontent.com/75561289/150409751-30586286-7702-4a29-9ee9-642b69f6b315.jpeg'),(51,'https://user-images.githubusercontent.com/75561289/150411434-a57d8fd6-5416-4ef7-8de5-27a9193a235c.jpg'),(52,'https://user-images.githubusercontent.com/75561289/150412515-c60057a5-fba6-4fd6-8632-7c8ef309a0c2.jpg'),(53,'https://user-images.githubusercontent.com/75561289/150451183-05d2e7a2-9274-4d78-97bc-432b9c851eef.jpg');
/*!40000 ALTER TABLE `main_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'HOME'),(2,'Winners'),(3,'Nominess'),(4,'Collections'),(5,'Academy');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_tags`
--

DROP TABLE IF EXISTS `product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_tags_product_id_138ace6f_fk_products_id` (`product_id`),
  KEY `product_tags_tag_id_dd3a8625_fk_tags_id` (`tag_id`),
  CONSTRAINT `product_tags_product_id_138ace6f_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `product_tags_tag_id_dd3a8625_fk_tags_id` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tags`
--

LOCK TABLES `product_tags` WRITE;
/*!40000 ALTER TABLE `product_tags` DISABLE KEYS */;
INSERT INTO `product_tags` VALUES (1,1,2),(2,1,9),(3,1,12),(4,1,16),(5,1,33),(6,1,37),(7,2,2),(8,2,15),(9,2,22),(10,2,23),(11,2,30),(12,2,36),(13,3,2),(14,3,8),(15,3,9),(16,3,16),(17,3,24),(18,3,26),(19,3,32),(20,3,34),(21,4,6),(22,4,8),(23,4,9),(24,4,16),(25,4,17),(26,4,20),(27,4,32),(28,4,37),(29,5,2),(30,5,15),(31,5,20),(32,5,24),(33,5,30),(34,5,34),(35,6,1),(36,6,15),(37,6,20),(38,6,30),(39,6,35),(40,7,6),(41,7,8),(42,7,15),(43,7,16),(44,7,30),(45,7,37),(46,8,1),(47,8,8),(48,8,9),(49,8,16),(50,8,17),(51,8,21),(52,8,38),(53,9,2),(54,9,15),(55,9,23),(56,9,24),(57,9,36),(58,10,4),(59,10,8),(60,10,15),(61,10,20),(62,10,29),(63,10,38),(64,11,2),(65,11,15),(66,11,24),(67,11,37),(68,12,1),(69,12,9),(70,12,15),(71,12,24),(72,12,31),(73,12,35),(74,13,5),(75,13,8),(76,13,15),(77,13,24),(78,13,30),(79,13,36),(80,14,1),(81,14,8),(82,14,9),(83,14,15),(84,14,16),(85,14,17),(86,14,20),(87,14,21),(88,14,29),(89,14,32),(90,14,35),(91,15,6),(92,15,15),(93,15,18),(94,15,20),(95,15,25),(96,15,28),(97,15,30),(98,15,32),(99,15,37),(100,16,2),(101,16,8),(102,16,9),(103,16,10),(104,16,17),(105,16,33),(106,16,34),(107,17,2),(108,17,15),(109,17,17),(110,17,24),(111,17,32),(112,17,38),(113,18,7),(114,18,8),(115,18,11),(116,18,17),(117,18,22),(118,18,33),(119,18,36),(120,19,1),(121,19,15),(122,19,19),(123,19,20),(124,19,25),(125,19,34),(126,20,6),(127,20,8),(128,20,11),(129,20,16),(130,20,17),(131,20,21),(132,20,30),(133,20,37),(134,21,4),(135,21,15),(136,21,24),(137,21,35),(138,22,1),(139,22,11),(140,22,17),(141,22,26),(142,22,29),(143,22,37),(144,23,1),(145,23,8),(146,23,17),(147,23,20),(148,23,28),(149,23,38),(150,24,6),(151,24,15),(152,24,16),(153,24,19),(154,24,24),(155,24,30),(156,24,31),(157,24,34),(158,25,1),(159,25,13),(160,25,15),(161,25,20),(162,25,21),(163,25,36),(164,26,1),(165,26,15),(166,26,20),(167,26,29),(168,26,30),(169,26,34),(170,27,7),(171,27,8),(172,27,9),(173,27,12),(174,27,16),(175,27,26),(176,27,29),(177,27,33),(178,27,37),(179,28,2),(180,28,10),(181,28,15),(182,28,19),(183,28,20),(184,28,24),(185,28,27),(186,28,34),(187,29,1),(188,29,15),(189,29,20),(190,29,30),(191,29,37),(192,30,5),(193,30,12),(194,30,14),(195,30,15),(196,30,18),(197,30,24),(198,30,38),(199,31,3),(200,31,2),(201,31,17),(202,31,34),(203,32,1),(204,32,15),(205,32,20),(206,32,22),(207,32,24),(208,32,30),(209,32,36),(210,33,1),(211,33,8),(212,33,13),(213,33,15),(214,33,20),(215,33,24),(216,33,38),(217,34,2),(218,34,15),(219,34,19),(220,34,24),(221,34,27),(222,34,35),(223,35,1),(224,35,15),(225,35,21),(226,35,32),(227,35,34),(228,36,1),(229,36,15),(230,36,22),(231,36,29),(232,36,31),(233,36,33),(234,36,35),(235,37,2),(236,37,15),(237,37,18),(238,37,20),(239,37,24),(240,37,25),(241,37,27),(242,37,28),(243,37,31),(244,37,37),(245,37,34),(246,38,2),(247,38,15),(248,38,23),(249,38,24),(250,38,30),(251,38,31),(252,38,36),(253,39,4),(254,39,10),(255,39,13),(256,39,16),(257,39,22),(258,39,24),(259,39,29),(260,39,33),(261,39,38),(262,40,2),(263,40,15),(264,40,20),(265,40,23),(266,40,24),(267,40,27),(268,40,31),(269,40,37),(270,40,2),(271,40,15),(272,40,20),(273,40,23),(274,40,24),(275,40,27),(276,40,31),(277,40,37),(278,41,7),(279,41,9),(280,41,17),(281,41,36),(282,42,1),(283,42,17),(284,42,30),(285,42,37),(286,43,4),(287,43,14),(288,43,38),(289,44,2),(290,44,17),(291,44,22),(292,44,35),(293,45,6),(294,45,9),(295,45,19),(296,45,24),(297,45,31),(298,46,6),(299,46,8),(300,46,17),(301,46,27),(302,46,37),(303,47,6),(304,47,9),(305,47,16),(306,47,22),(307,47,35),(308,48,6),(309,48,15),(310,48,30),(311,48,35),(312,49,7),(313,49,8),(314,49,29),(315,49,36),(316,50,1),(317,50,8),(318,50,18),(319,50,26),(320,50,38),(321,51,3),(322,51,8),(323,51,26),(324,51,32),(325,51,24),(326,52,3),(327,52,8),(328,52,20),(329,52,28),(330,52,34),(331,53,2),(332,53,15),(333,53,22),(334,53,30),(335,53,35);
/*!40000 ALTER TABLE `product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `main_image_id` bigint DEFAULT NULL,
  `menu_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `main_image_id` (`main_image_id`),
  KEY `products_user_id_0be7171c_fk_users_id` (`user_id`),
  KEY `products_menu_id_92765861_fk_menus_id` (`menu_id`),
  CONSTRAINT `products_main_image_id_54d91a32_fk_main_images_id` FOREIGN KEY (`main_image_id`) REFERENCES `main_images` (`id`),
  CONSTRAINT `products_menu_id_92765861_fk_menus_id` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`),
  CONSTRAINT `products_user_id_0be7171c_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'2022-01-21 01:39:00.024918','2022-01-21 01:39:00.024958','스위스','한국인이라면 융프라우 가셔서 컵라면 무료로 받으세요!! ',1,1,1),(2,'2022-01-21 01:39:00.027059','2022-01-21 01:39:00.027086','독일','독일하면 \"맥주\"와 \"쏘시지\"?!',2,1,1),(3,'2022-01-21 01:39:00.028486','2022-01-21 01:39:00.028513','스코틀랜드','네스 호의 괴물을 아시나요?? 그 네스 호가 있는 곳이 스코틀랜드입니다!',3,1,1),(4,'2022-01-21 01:39:00.029929','2022-01-21 01:39:00.029956','하와이','니가 가라 하와이!!',4,1,3),(5,'2022-01-21 01:39:00.031432','2022-01-21 01:39:00.031463','네덜란드','노을 질 무렵이 엄청 예뻐요! 혼자보다는 친구들과 가는 것을 추천드립니다!',5,1,2),(6,'2022-01-21 01:39:00.033240','2022-01-21 01:39:00.033270','중국 상하이','상해 가보셨나요? 상해의 야경 보시면 그냥 \"와...\" 소리 밖에 안 날겁니다..',6,1,1),(7,'2022-01-21 01:39:00.035277','2022-01-21 01:39:00.035312','캐나다','오로라가 보고 싶으시다면 캐나다의 옐로나이프를 추천드려요!!',7,1,2),(8,'2022-01-21 01:39:00.037014','2022-01-21 01:39:00.037041','필리핀 세부','맥주 산 미구엘이 필리핀 맥주인걸 아셨나요?! 세부 해변에서 마시는 맥주 맛은 정말 JMT!!',8,1,1),(9,'2022-01-21 01:39:00.038742','2022-01-21 01:39:00.038770','이탈리아 피렌체','피렌체는 거리가 정말 깔끔하고 사람들도 친절해서 정말 좋았어요!',9,1,1),(10,'2022-01-21 01:39:00.040540','2022-01-21 01:39:00.040569','남아프리카 공화국','남아프리카 공화국에 다시 간다면 케이프타운 해변에 가겠어요!!',10,1,3),(11,'2022-01-21 01:39:00.042511','2022-01-21 01:39:00.042541','터키','지중해에서 크루즈를 타면서 봤던 일몰을 잊지 못하겠어요!',11,1,3),(12,'2022-01-21 01:39:00.044549','2022-01-21 01:39:00.044592','네팔','네팔에 가시면 패러글라이딩을 추천드려요!!',12,1,3),(13,'2022-01-21 01:39:00.046174','2022-01-21 01:39:00.046202','아르헨티나','아르헨티나는 소가 사람보다 많을 정도로 도로나 목초지를 돌아다니는 소를 많이 보실 수 있어요!',13,1,1),(14,'2022-01-21 01:39:00.047861','2022-01-21 01:39:00.047890','태국','태국을 여행하신다면 끄라비를 추천드려요!! 엄청 이뻐요~',14,1,2),(15,'2022-01-21 01:39:00.049318','2022-01-21 01:39:00.049341','미국 LA','LA 갈비?! 힙한 도시에요!',15,1,1),(16,'2022-01-21 01:39:00.050510','2022-01-21 01:39:00.050531','노르웨이','유레일 노르웨이 패스와 함께 노르웨이의 정수를 경험해 보세요!',16,1,1),(17,'2022-01-21 01:39:00.051697','2022-01-21 01:39:00.051719','그리스','산토리니 섬에 꼭 가고 싶어요!! 같이 가실 분 계신가요?!',17,1,2),(18,'2022-01-21 01:39:00.052888','2022-01-21 01:39:00.052910','제주도','제주도 가면 감귤 초콜렛 사오는건 국룰이죠?!',18,1,2),(19,'2022-01-21 01:39:00.054004','2022-01-21 01:39:00.054024','일본 후쿠오카','크흠..! 요즘 노..재..팬이라 추천 드리기가 조금...',19,1,1),(20,'2022-01-21 01:39:00.055012','2022-01-21 01:39:00.055031','괌','괌 같이 갈 사람 과암~!!! 크흠..',20,1,1),(21,'2022-01-21 01:39:00.055935','2022-01-21 01:39:00.055955','모로코','중세 시대풍을 좋아하신다면 모로코에 가보시는걸 추천드립니다!!',21,1,2),(22,'2022-01-21 01:39:00.056956','2022-01-21 01:39:00.056975','몰디브','모히또 가서 몰디브나 한잔 어뗘??!',22,1,1),(23,'2022-01-21 01:39:00.058042','2022-01-21 01:39:00.058063','발리','발리에서 생긴 일.. 레전드 드라마인데 아시는 분...? 발리 가니 그게 생각나더라구요ㅎㅎ',23,1,1),(24,'2022-01-21 01:39:00.059302','2022-01-21 01:39:00.059327','멕시코','멕시코 가시면 멕시코시티나 깐꾼을 추천드립니다!! 해변가에서 타코와 코로나 한잔 하시면 정말 좋습니다!!',24,1,1),(25,'2022-01-21 01:39:00.060629','2022-01-21 01:39:00.060654','UAE 두바이','두바이 가서 부르즈 할리파 꼭대기에 올라가보고 싶어요!! 가보신 분 계신가요??',25,1,3),(26,'2022-01-21 01:39:00.061715','2022-01-21 01:39:00.061735','대만','대만 가시면 현지 시장에서 파는 펑리수와 밀크티를 추천드려요!!',26,1,1),(27,'2022-01-21 01:39:00.062699','2022-01-21 01:39:00.062720','속초','속초 가시면 근처 강릉, 동해까지 같이 여행하면서 해변가에 있는 맛있고 경치 좋은 카페 투어 하시는걸 추천드려요!',27,1,1),(28,'2022-01-21 01:39:00.068780','2022-01-21 01:39:00.068808','잉글랜드 런던','저는 아직 못 가봤으니.. 런던에 가시면 꼭 에미레이츠 스테디움에 방문해주세요..!',28,1,1),(29,'2022-01-21 01:39:00.070335','2022-01-21 01:39:00.070357','홍콩','홍콩에 가시면 디즈니랜드는 꼭 가실거죠??!',29,1,3),(30,'2022-01-21 01:39:00.071434','2022-01-21 01:39:00.071454','브라질','브라질이 좀.. 많이 위험해서 가신다면 정말 조심하셔야해요!!',30,1,2),(31,'2022-01-21 01:39:00.072698','2022-01-21 01:39:00.072723','뉴질랜드','뉴질랜드는 특히 자연경광이 정말 좋아서 하이킹 하기도 좋아요!!',31,1,1),(32,'2022-01-21 01:39:00.074151','2022-01-21 01:39:00.074220','일본 교토','교토는 도쿄와는 다르게 진짜 일본 특유의 감성이 강한 도시 같아요',32,1,2),(33,'2022-01-21 01:39:00.075298','2022-01-21 01:39:00.075319','카타르','축구를 좋아하신다면 이번 겨울에 카타르를 방문하시면 월드컵을 현지에서 즐기실 수 있어요!',33,1,1),(34,'2022-01-21 01:39:00.076383','2022-01-21 01:39:00.076404','잉글랜드 뉴캐슬','뉴캐슬하면.. 조윌록.. 그리고 세인님..? ㅎㅎ 뉴캐슬에 가실 계획이시라면 세인님께 물어보시면 다양한 정보를 얻으실 수 있을거에요!',34,1,1),(35,'2022-01-21 01:39:00.077538','2022-01-21 01:39:00.077560','베트남','베트남은 어딜 가시든 음식이 한국인 입맛에 정말 잘 맞는거 같아요!!',35,1,3),(36,'2022-01-21 01:39:00.078550','2022-01-21 01:39:00.078569','인도','인도는 가능하면 여러명이서 가셔야 안전하게 여행하실 수 있을거에요',36,1,1),(37,'2022-01-21 01:39:00.079471','2022-01-21 01:39:00.079488','프랑스','에밀리 파리에 가다라는 넷플리스 드라마를 보니 더 프랑스에 가고 싶어져요! 프랑스 가보신 분들 공감하시나요?!',37,1,1),(38,'2022-01-21 01:39:00.080350','2022-01-21 01:39:00.080368','이탈리아 로마','로마에 가신다면 여행기간을 적어도 일주일은 잡으셔야 할거에요',38,1,1),(39,'2022-01-21 01:39:00.081230','2022-01-21 01:39:00.081247','이집트','정말 이색적인 도시에요 그리고 사막 투어 강추드려요!! 핵꿀잼!!',39,1,1),(40,'2022-01-21 01:39:00.082125','2022-01-21 01:39:00.082143','스페인','미술에 조금이라도 관심이 있으시다면 사그라다 파밀리아에 꼭 가보세요 정말 좋아요!!',40,1,2),(41,'2022-01-21 10:10:08.150502','2022-01-21 10:10:08.150536','용평','용평 리조트 패키지로 가시면 정말 좋습니다!! 헤헤 by 우경님',41,1,1),(42,'2022-01-21 10:10:08.156971','2022-01-21 10:10:08.156996','다낭','크흠.. 다낭 진짜 좋아요..! 같이 안 간다구요??! 이러면 나 서운해!! by 민욱님',42,1,2),(43,'2022-01-21 10:10:08.158275','2022-01-21 10:10:08.158295','가나','봉사활동을 다녀오신 걸까요~??! 역시나 마음도 착하신 갓신영님 by 신영님',43,1,3),(44,'2022-01-21 10:10:08.159557','2022-01-21 10:10:08.159579','하와이','영화 세트장 같던 노을이 지던 하와이 # 우리의 감성 발라드 DJ by 경래님',44,1,2),(45,'2022-01-21 10:10:08.160804','2022-01-21 10:10:08.160825','플로리다','성이 정말 아름답던 플로리다! 기차에도 관심이 많으신 저의 위니또 by 대영님',45,1,1),(46,'2022-01-21 10:10:08.161716','2022-01-21 10:10:08.161733','마이애미','마이애미 & 해변가 & 서핑 개꿀잼 by 원석님',46,1,3),(47,'2022-01-21 10:10:08.162951','2022-01-21 10:10:08.162983','캐나다','로키 산맥에서 하이킹도 하고 사진 한 컷! 그리고 오로라 빌리지에서 오로라 보시는거 강추!! by 민아님',47,1,2),(48,'2022-01-21 10:10:08.164779','2022-01-21 10:10:08.164805','샌프란시스코','크흠.. 트램도 타고 여기저기 걸어다니느라 고생했지만 너무 좋았네요! by 찬주님',48,1,3),(49,'2022-01-21 10:10:08.166334','2022-01-21 10:10:08.166361','제주도','제주도에서 나에게 취한다... 난 나를 너무 사랑해!!ㅋㅋㅋ by 찬영님',49,1,1),(50,'2022-01-21 10:10:08.167522','2022-01-21 10:10:08.167544','일본 유후인','앨범 프로필 찍을겸 다녀왔습니다!! 프로필 사진은 이렇게!! by 윤국님',50,1,3),(51,'2022-01-21 10:10:08.168587','2022-01-21 10:10:08.168609','호주 VIC','그뤠이이잇 오션 로드 VIC! 사진으로만 봐도 너무나 멋진 곳!! by 정석님',51,1,2),(52,'2022-01-21 10:10:08.169682','2022-01-21 10:10:08.169704','호주 시드니','호주하면 시드니와 멜버른! 날씨도 좋고 음식도 맛있어요! by 현구님',52,1,2),(53,'2022-01-21 10:57:42.574806','2022-01-21 10:57:42.574835','프랑스 파리','추억이 아련아련해지는 파리지엥 by 채현님',53,1,3);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `image_url` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_images`
--

DROP TABLE IF EXISTS `sub_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_images` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image_url` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_images_product_id_15d0d214_fk_products_id` (`product_id`),
  CONSTRAINT `sub_images_product_id_15d0d214_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_images`
--

LOCK TABLES `sub_images` WRITE;
/*!40000 ALTER TABLE `sub_images` DISABLE KEYS */;
INSERT INTO `sub_images` VALUES (1,'https://images.unsplash.com/photo-1527668752968-14dc70a27c95?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',1),(2,'https://images.unsplash.com/photo-1620562423895-ad4924643d43?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2532&q=80',1),(3,'https://images.unsplash.com/photo-1610923686034-98f5730bb317?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',1),(4,'https://images.unsplash.com/photo-1516495825516-28ed3dd4012f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',2),(5,'https://images.unsplash.com/photo-1532634922-8fe0b757fb13?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2072&q=80',2),(6,'https://images.unsplash.com/photo-1599946347371-68eb71b16afc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',2),(7,'https://images.unsplash.com/photo-1565011231598-66c1ec39b72c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1975&q=80',3),(8,'https://images.unsplash.com/photo-1551801841-ecad875a5142?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',3),(9,'https://images.unsplash.com/photo-1557425769-de134747b1f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',3),(10,'https://images.unsplash.com/photo-1483168527879-c66136b56105?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2116&q=80',4),(11,'https://images.unsplash.com/photo-1570060411148-697906505f5d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1975&q=80',4),(12,'https://images.unsplash.com/photo-1562191326-7a067408be55?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',4),(13,'https://images.unsplash.com/photo-1595698251407-8e7e3030a715?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',5),(14,'https://images.unsplash.com/photo-1587726581034-e504c1bddb2b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80',5),(15,'https://images.unsplash.com/photo-1605704320412-5c3255bf47a9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',5),(16,'https://images.unsplash.com/photo-1551771279-b47900068e00?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',6),(17,'https://images.unsplash.com/photo-1579765694323-9687a3dc8974?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2076&q=80',6),(18,'https://cdn.pixabay.com/photo/2015/07/29/18/29/crayfish-866400_1280.jpg',6),(19,'https://images.unsplash.com/photo-1519181258491-889c2b001485?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',7),(20,'https://cdn.pixabay.com/photo/2017/05/09/03/46/alberta-2297204_1280.jpg',7),(21,'https://cdn.pixabay.com/photo/2020/04/21/02/32/buildings-5070537_1280.jpg',7),(22,'https://images.unsplash.com/photo-1582078306176-63f6eeb5e846?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2532&q=80',8),(23,'https://images.unsplash.com/photo-1495443942462-81f29560f7e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2073&q=80',8),(24,'https://images.unsplash.com/photo-1505261476952-32e25cbfc755?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2111&q=80',8),(25,'https://images.unsplash.com/photo-1543429257-3eb0b65d9c58?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',9),(26,'https://cdn.pixabay.com/photo/2019/06/06/13/36/italy-4256018_1280.jpg',9),(27,'https://cdn.pixabay.com/photo/2016/04/28/22/47/steak-1359897_1280.jpg',9),(28,'https://cdn.pixabay.com/photo/2019/11/12/12/34/cape-town-4620987_1280.jpg',10),(29,'https://cdn.pixabay.com/photo/2018/04/06/15/20/simons-town-3296037_1280.jpg',10),(30,'https://cdn.pixabay.com/photo/2017/09/15/09/20/cape-town-2751489_1280.jpg',10),(31,'https://cdn.pixabay.com/photo/2020/05/21/20/00/istanbul-5202424_1280.jpg',11),(32,'https://images.unsplash.com/photo-1583063660702-fb3673c1d52e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',11),(33,'https://images.unsplash.com/photo-1601163130717-627cde53c1de?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',11),(34,'https://cdn.pixabay.com/photo/2016/11/14/03/43/buddhism-1822518_1280.jpg',12),(35,'https://cdn.pixabay.com/photo/2019/12/13/08/21/gokyo-ri-4692458_1280.jpg',12),(36,'https://cdn.pixabay.com/photo/2017/07/04/05/56/pashupatinath-2470062_1280.jpg',12),(37,'https://cdn.pixabay.com/photo/2014/05/22/15/51/caminito-351167_1280.jpg',13),(38,'https://cdn.pixabay.com/photo/2015/01/04/15/48/puerto-madero-588392_1280.jpg',13),(39,'https://cdn.pixabay.com/photo/2018/05/09/20/25/argentina-3386084_1280.jpg',13),(40,'https://cdn.pixabay.com/photo/2020/08/10/10/09/bangkok-5477405_1280.jpg',14),(41,'https://cdn.pixabay.com/photo/2016/11/08/12/59/bangkok-1808265_1280.jpg',14),(42,'https://cdn.pixabay.com/photo/2019/12/19/02/49/pad-thai-4705276_1280.jpg',14),(43,'https://images.unsplash.com/photo-1518540329668-417feba873ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',15),(44,'https://images.unsplash.com/photo-1523430410476-0185cb1f6ff9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',15),(45,'https://images.unsplash.com/photo-1562457346-c1d10d9dee52?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1956&q=80',15),(46,'https://images.unsplash.com/photo-1531366936337-7c912a4589a7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',16),(47,'https://images.unsplash.com/photo-1520769669658-f07657f5a307?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',16),(48,'https://images.unsplash.com/photo-1505731324189-3d0afbeafcbf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2540&q=80',16),(49,'https://images.unsplash.com/photo-1531816458010-fb7685eecbcb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',17),(50,'https://images.unsplash.com/photo-1498503182468-3b51cbb6cb24?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',17),(51,'https://images.unsplash.com/photo-1601581875309-fafbf2d3ed3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',17),(52,'https://images.unsplash.com/photo-1596941248238-0d49dcaa4263?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',18),(53,'https://images.unsplash.com/photo-1581398644564-c46e97d9418a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',18),(54,'https://images.unsplash.com/photo-1562680829-7927493f7a50?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',18),(55,'https://images.unsplash.com/photo-1569869946371-48e63d7883db?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',19),(56,'https://images.unsplash.com/photo-1605472758900-3d101aaf980b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',19),(57,'https://images.unsplash.com/photo-1560331281-54e30c7d5a90?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',19),(58,'https://images.unsplash.com/photo-1544531846-873b4e5cdc1a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2532&q=80',20),(59,'https://images.unsplash.com/photo-1599172806427-975cc19da9c7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2073&q=80',20),(60,'https://images.unsplash.com/photo-1600576933158-34def7f3854f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',20),(61,'https://images.unsplash.com/photo-1564507004663-b6dfb3c824d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',21),(62,'https://images.unsplash.com/photo-1539020140153-e479b8c22e70?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80',21),(63,'https://images.unsplash.com/photo-1519594445471-0e5f86b3fb09?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',21),(64,'https://images.unsplash.com/photo-1543731068-7e0f5beff43a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',22),(65,'https://images.unsplash.com/photo-1505228395891-9a51e7e86bf6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3433&q=80',22),(66,'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2073&q=80',22),(67,'https://cdn.pixabay.com/photo/2017/11/24/21/49/bali-2975787_1280.jpg',23),(68,'https://cdn.pixabay.com/photo/2020/04/30/02/14/bali-5111131_1280.jpg',23),(69,'https://cdn.pixabay.com/photo/2017/08/30/18/19/bali-2698078_1280.jpg',23),(70,'https://cdn.pixabay.com/photo/2020/03/11/06/39/statue-4921193_1280.jpg',24),(71,'https://cdn.pixabay.com/photo/2019/10/19/20/44/guadalajara-4562248_1280.jpg',24),(72,'https://cdn.pixabay.com/photo/2021/01/19/23/16/tacos-5932654_1280.jpg',24),(73,'https://images.unsplash.com/photo-1512632578888-169bbbc64f33?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2560&q=80',25),(74,'https://images.unsplash.com/photo-1489516408517-0c0a15662682?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',25),(75,'https://images.unsplash.com/photo-1549944850-84e00be4203b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1968&q=80',25),(76,'https://images.unsplash.com/photo-1571474004502-c1def214ac6d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2531&q=80',26),(77,'https://images.unsplash.com/photo-1583654979589-aa7a6053a0d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80',26),(78,'https://images.unsplash.com/photo-1599578705716-8d3d9246f53b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80',26),(79,'https://images.unsplash.com/photo-1603031682537-ea6729c9d1bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2069&q=80',27),(80,'https://cdn.pixabay.com/photo/2017/08/01/05/28/hong-to-2563112_1280.jpg',27),(81,'https://cdn.pixabay.com/photo/2017/07/28/06/00/mulhoe-2547750_1280.jpg',27),(82,'https://images.unsplash.com/photo-1520114878144-6123749968dd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',28),(83,'https://images.unsplash.com/photo-1563580853176-38535245e8b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2059&q=80',28),(84,'https://images.unsplash.com/photo-1483972117325-ce4920ff780b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',28),(85,'https://images.unsplash.com/photo-1561346120-851ea1e8776b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1969&q=80',29),(86,'https://images.unsplash.com/photo-1552620819-a99f6dc508ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2028&q=80',29),(87,'https://images.unsplash.com/photo-1569833172924-2324c41f2ec3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2531&q=80',29),(88,'https://images.unsplash.com/photo-1619546952812-520e98064a52?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80',30),(89,'https://images.unsplash.com/photo-1620218776119-2bc322e2d7ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',30),(90,'https://images.unsplash.com/photo-1533241818630-edad657eb3da?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',30),(91,'https://images.unsplash.com/photo-1547314283-befb6cc5cf29?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2532&q=80',31),(92,'https://images.unsplash.com/photo-1508971607899-a238a095d417?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',31),(93,'https://images.unsplash.com/photo-1470093014438-2ede8d7a4818?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',31),(94,'https://images.unsplash.com/photo-1579258151343-c3886311b1b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',32),(95,'https://images.unsplash.com/photo-1503640538573-148065ba4904?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',32),(96,'https://images.unsplash.com/photo-1607823706034-9d39d8c14582?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2075&q=80',32),(97,'https://images.unsplash.com/photo-1539475314840-751cecc1dacd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',33),(98,'https://images.unsplash.com/photo-1507904139316-3c7422a97a49?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2025&q=80',33),(99,'https://images.unsplash.com/photo-1562823083-3f86817ec7a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',33),(100,'https://images.unsplash.com/photo-1606663400043-96d872f8dd88?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',34),(101,'https://images.unsplash.com/photo-1547377694-de3ae5e8a9cb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2069&q=80',34),(102,'https://images.unsplash.com/photo-1603119136925-202e5d97f5d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',34),(103,'https://images.unsplash.com/photo-1583417319070-4a69db38a482?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',35),(104,'https://images.unsplash.com/photo-1555979864-7a8f9b4fddf8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80',35),(105,'https://images.unsplash.com/photo-1526139334526-f591a54b477c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',35),(106,'https://images.unsplash.com/photo-1589463349208-95817c91f971?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',36),(107,'https://images.unsplash.com/photo-1496372412473-e8548ffd82bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2514&q=80',36),(108,'https://images.unsplash.com/photo-1549468057-5b7fa1a41d7a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80',36),(109,'https://images.unsplash.com/photo-1550340499-a6c60fc8287c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',37),(110,'https://images.unsplash.com/photo-1471623432079-b009d30b6729?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',37),(111,'https://images.unsplash.com/photo-1477089922324-c1deaf4a2242?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',37),(112,'https://images.unsplash.com/photo-1604580864964-0462f5d5b1a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',38),(113,'https://images.unsplash.com/photo-1512064444180-54b51a475aa7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2077&q=80',38),(114,'https://images.unsplash.com/photo-1596627118111-5b6c7890bc1b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',38),(115,'https://images.unsplash.com/photo-1539768942893-daf53e448371?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80',39),(116,'https://images.unsplash.com/photo-1502250493741-939d1c76eaad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',39),(117,'https://images.unsplash.com/photo-1502640403806-cf2ac7a5d37a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',39),(118,'https://images.unsplash.com/photo-1561632669-7f55f7975606?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',40),(119,'https://images.unsplash.com/photo-1573611030146-ff6916c398fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1951&q=80',40),(120,'https://images.unsplash.com/photo-1539037116277-4db20889f2d4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',40),(121,'https://user-images.githubusercontent.com/75561289/150399278-dc4582ac-335b-4c14-af67-2ff77e8f776d.jpeg',41),(122,'https://user-images.githubusercontent.com/75561289/150399787-5a0d44a2-4322-41fa-8a29-7b995df69deb.jpeg',41),(123,'https://user-images.githubusercontent.com/75561289/150402659-646a1ce6-428a-4b9a-bc0c-c86925446853.jpg',42),(124,'https://user-images.githubusercontent.com/75561289/150403720-da40c7ef-2b10-481f-b257-0ecf2509a407.jpeg',43),(125,'https://user-images.githubusercontent.com/75561289/150403734-5cdb9ed1-97b3-4fda-b007-22d5de09d971.jpeg',43),(126,'https://user-images.githubusercontent.com/75561289/150404338-8f98a30d-87c2-4e23-adc2-519482982376.jpg',44),(127,'https://user-images.githubusercontent.com/75561289/150404268-3bdcc6b6-d8bf-4ee0-846c-ea12b5df5d19.JPG',44),(128,'https://user-images.githubusercontent.com/75561289/150405219-e9f9cb3f-6a02-4c81-a6ef-8964604333a8.jpg',45),(129,'https://user-images.githubusercontent.com/75561289/150405229-f0e0ab7b-2bdf-4528-b3cb-1348cfd83c8d.jpg',45),(130,'https://user-images.githubusercontent.com/75561289/150406304-5ef110e3-4c54-4c78-981e-099d1fe9a30d.jpg',46),(131,'https://user-images.githubusercontent.com/75561289/150406310-303b3db3-68be-48a2-9eeb-c66773b5de46.jpg',46),(132,'https://user-images.githubusercontent.com/75561289/150406834-76b7c3a6-1c48-4c1d-a710-53e289456d5a.jpg',47),(133,'https://user-images.githubusercontent.com/75561289/150406837-a4003e09-93a3-4fc4-aedd-14193ee5b504.jpg',47),(134,'https://user-images.githubusercontent.com/75561289/150407533-c937c148-5523-48db-981a-8f0df63f6fa1.jpg',48),(135,'https://user-images.githubusercontent.com/75561289/150409756-1208c5b1-a952-451b-891f-b81112660b48.jpeg',50),(136,'https://user-images.githubusercontent.com/75561289/150409759-a1f37e38-6952-437c-b271-e03c29fe7cab.jpeg',50),(137,'https://user-images.githubusercontent.com/75561289/150411444-c3b3470d-cbc2-4317-8cb4-4f1ef891643a.jpg',51),(138,'https://user-images.githubusercontent.com/75561289/150411447-33fbdc58-7528-4d44-84d2-35143a9e440e.jpg',51),(139,'https://user-images.githubusercontent.com/75561289/150412519-09dc7ef8-244d-46ca-8dbb-1abef8db817f.jpg',52),(140,'https://user-images.githubusercontent.com/75561289/150412526-7e314d36-552d-469d-8d3b-db8899fe8c12.jpg',52),(141,'',53),(142,'',49);
/*!40000 ALTER TABLE `sub_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_categories`
--

DROP TABLE IF EXISTS `tag_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag_categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_categories`
--

LOCK TABLES `tag_categories` WRITE;
/*!40000 ALTER TABLE `tag_categories` DISABLE KEYS */;
INSERT INTO `tag_categories` VALUES (1,'대륙'),(2,'지역'),(3,'테마'),(4,'인원');
/*!40000 ALTER TABLE `tag_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `tag_category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tags_tag_category_id_cf11706c_fk_tag_categories_id` (`tag_category_id`),
  CONSTRAINT `tags_tag_category_id_cf11706c_fk_tag_categories_id` FOREIGN KEY (`tag_category_id`) REFERENCES `tag_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'아시아',1),(2,'유럽',1),(3,'오세아니아',1),(4,'아프리카',1),(5,'남미',1),(6,'북미',1),(7,'국내',1),(8,'바다',2),(9,'산',2),(10,'강',2),(11,'섬',2),(12,'계곡',2),(13,'사막',2),(14,'숲',2),(15,'도시',2),(16,'자연',3),(17,'휴양',3),(18,'드라이브',3),(19,'기차여행',3),(20,'쇼핑',3),(21,'호캉스',3),(22,'배낭여행',3),(23,'미술/전시',3),(24,'명소',3),(25,'테마파크',3),(26,'캠핑',3),(27,'스포츠',3),(28,'공연',3),(29,'레저/체험',3),(30,'맛집/카페',3),(31,'유적지',3),(32,'패키지',3),(33,'하이킹',3),(34,'1인여행',4),(35,'우정여행',4),(36,'커플여행',4),(37,'가족여행',4),(38,'단체여행',4);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_types`
--

DROP TABLE IF EXISTS `user_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_types` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_types`
--

LOCK TABLES `user_types` WRITE;
/*!40000 ALTER TABLE `user_types` DISABLE KEYS */;
INSERT INTO `user_types` VALUES (1,'mentor'),(2,'mentee');
/*!40000 ALTER TABLE `user_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `kakao_id` int NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `nickname` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `user_profile_id` bigint DEFAULT NULL,
  `user_type_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_profile_id` (`user_profile_id`),
  KEY `users_user_type_id_c594293d_fk_user_types_id` (`user_type_id`),
  CONSTRAINT `users_user_profile_id_3c1c3766_fk_profiles_id` FOREIGN KEY (`user_profile_id`) REFERENCES `profiles` (`id`),
  CONSTRAINT `users_user_type_id_c594293d_fk_user_types_id` FOREIGN KEY (`user_type_id`) REFERENCES `user_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2022-01-21 01:36:27.648287','2022-01-21 01:36:27.648331',100,'admin1@traveller.com','admin1',NULL,2),(2,'2022-01-21 01:36:43.500293','2022-01-21 01:36:43.500326',200,'admin2@traveller.com','admin2',NULL,2),(3,'2022-01-21 01:37:00.853613','2022-01-21 01:37:00.853643',300,'admin3@traveller.com','admin3',NULL,2),(4,'2022-01-21 02:46:29.831866','2022-01-23 14:51:52.350735',2075267116,'ptr1129@hanmail.net','김정현',NULL,2),(5,'2022-01-21 10:50:47.701508','2022-01-21 10:50:47.701564',500,'email1@traveller.com','노세인',NULL,2),(6,'2022-01-21 10:51:07.144324','2022-01-21 10:51:07.144366',600,'email2@traveller.com','장우경',NULL,2),(7,'2022-01-21 10:51:31.141261','2022-01-21 10:53:07.267854',700,'email3@traveller.com','안현재',NULL,2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `votes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `sensibility` decimal(4,2) NOT NULL,
  `intent_to_visit` decimal(4,2) NOT NULL,
  `impression_on_picture` decimal(4,2) NOT NULL,
  `is_voted` tinyint(1) NOT NULL,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `votes_product_id_ad47949d_fk_products_id` (`product_id`),
  KEY `votes_user_id_def56ed6_fk_users_id` (`user_id`),
  CONSTRAINT `votes_product_id_ad47949d_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `votes_user_id_def56ed6_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votes`
--

LOCK TABLES `votes` WRITE;
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
INSERT INTO `votes` VALUES (1,'2022-01-21 02:46:54.620655','2022-01-21 02:46:54.620688',5.00,8.00,10.00,1,1,4),(2,'2022-01-21 02:47:16.896215','2022-01-21 02:47:16.896257',5.00,5.00,5.00,1,2,4),(3,'2022-01-21 02:47:31.808875','2022-01-21 02:47:31.808906',10.00,10.00,10.00,1,3,4),(4,'2022-01-21 10:43:46.372147','2022-01-21 10:43:46.372182',10.00,8.00,6.00,1,6,4),(5,'2022-01-21 10:44:04.403404','2022-01-21 10:44:04.403437',9.00,7.00,8.00,1,8,4),(6,'2022-01-21 10:44:26.324409','2022-01-21 10:44:26.324438',4.00,8.00,6.00,1,30,4),(7,'2022-01-21 10:44:54.264824','2022-01-21 10:44:54.264856',4.00,7.00,8.00,1,39,4),(8,'2022-01-21 11:34:09.370349','2022-01-21 11:34:09.370380',6.00,8.00,4.00,1,29,4),(9,'2022-01-21 11:34:23.615083','2022-01-21 11:34:23.615131',8.00,4.00,6.00,1,32,4),(10,'2022-01-21 11:46:23.514743','2022-01-21 11:46:23.514773',3.00,7.00,7.00,1,23,4),(11,'2022-01-21 11:46:34.426031','2022-01-21 11:46:34.426060',8.00,8.00,7.00,1,20,4),(12,'2022-01-21 11:47:58.875009','2022-01-21 11:47:58.875039',3.00,5.00,7.00,1,21,4),(13,'2022-01-21 11:48:08.058355','2022-01-21 11:48:08.058380',7.00,9.00,9.00,1,24,4),(14,'2022-01-21 11:48:28.705773','2022-01-21 11:48:28.705806',9.00,10.00,10.00,1,31,4),(15,'2022-01-21 11:50:15.037711','2022-01-21 11:50:15.037784',2.00,6.00,6.00,1,28,4),(16,'2022-01-21 12:35:28.080088','2022-01-21 12:35:28.080121',5.00,6.00,7.00,1,49,4),(17,'2022-01-23 14:46:55.781415','2022-01-23 14:46:55.781445',9.00,10.00,8.00,1,4,4),(18,'2022-01-23 14:54:44.967368','2022-01-23 14:54:44.967397',9.00,8.00,10.00,1,22,4);
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-01 19:12:35
