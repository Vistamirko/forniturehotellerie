-- MySQL dump 10.13  Distrib 8.1.0, for macos14.0 (arm64)
--
-- Host: localhost    Database: nest
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'TqR4hHO9WxjA3r4YPkAi9HxlAkUtLGgI',1,'2024-01-23 01:51:55','2024-01-23 01:51:55','2024-01-23 01:51:55'),(2,2,'83WynrPGU8Ze1QEHk4FRLw9JKPGJrzhB',1,'2024-01-23 01:51:55','2024-01-23 01:51:55','2024-01-23 01:51:55');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Everyday Fresh','2029-01-23 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.png','/products',0,1,'published','2024-01-23 01:51:56','2024-01-23 01:51:56',1,NULL,NULL),(2,'Make your Breakfast','2029-01-23 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.png','/products',0,2,'published','2024-01-23 01:51:56','2024-01-23 01:51:56',1,NULL,NULL),(3,'The best Organic','2029-01-23 00:00:00','not_set','ILSDKVYFGXPH','promotion/3.png','/products',0,3,'published','2024-01-23 01:51:56','2024-01-23 01:51:56',1,NULL,NULL),(4,'Bring nature into your home','2029-01-23 00:00:00','not_set','IZ6WU8KUALYG','promotion/4.png','/products',0,4,'published','2024-01-23 01:51:56','2024-01-23 01:51:56',1,NULL,NULL),(5,'Delivered to your home','2029-01-23 00:00:00','not_set','IZ6WU8KUALYH','promotion/5.png','/products',0,5,'published','2024-01-23 01:51:56','2024-01-23 01:51:56',1,NULL,NULL),(6,'Save 17% on Oganic Juice','2029-01-23 00:00:00','not_set','IZ6WU8KUALYI','promotion/6.png','/products',0,6,'published','2024-01-23 01:51:56','2024-01-23 01:51:56',1,NULL,NULL),(7,'Everyday Fresh & Clean with Our Products','2029-01-23 00:00:00','not_set','IZ6WU8KUALYJ','promotion/7.png','/products',0,7,'published','2024-01-23 01:51:56','2024-01-23 01:51:56',1,NULL,NULL),(8,'The best Organic Products Online','2029-01-23 00:00:00','not_set','IZ6WU8KUALYK','promotion/8.png','/products',0,8,'published','2024-01-23 01:51:56','2024-01-23 01:51:56',1,NULL,NULL),(9,'Everyday Fresh with Our Products','2029-01-23 00:00:00','not_set','IZ6WU8KUALYL','promotion/9.png',NULL,0,9,'published','2024-01-23 01:51:56','2024-01-23 01:51:56',1,NULL,NULL),(10,'100% guaranteed all Fresh items','2029-01-23 00:00:00','not_set','IZ6WU8KUALYM','promotion/10.png',NULL,0,10,'published','2024-01-23 01:51:56','2024-01-23 01:51:56',1,NULL,NULL),(11,'Special grocery sale off this month','2029-01-23 00:00:00','not_set','IZ6WU8KUALYN','promotion/11.png',NULL,0,11,'published','2024-01-23 01:51:56','2024-01-23 01:51:56',1,NULL,NULL),(12,'Enjoy 15% OFF for all vegetable and fruit','2029-01-23 00:00:00','not_set','IZ6WU8KUALYO','promotion/12.png',NULL,0,12,'published','2024-01-23 01:51:56','2024-01-23 01:51:56',1,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Assumenda molestias velit qui officiis sint quibusdam ducimus labore. Est enim et dolore ut ut ut quis debitis. Dignissimos aut ut sint eaque veritatis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2024-01-23 01:51:55','2024-01-23 01:51:55'),(2,'Fashion',0,'Ut et rem enim fugiat quidem ut. Qui earum magni itaque dolores labore cum. Reprehenderit enim nulla saepe tempora ut quidem dolores. Aut vel magni quasi non nisi.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-01-23 01:51:55','2024-01-23 01:51:55'),(3,'Electronic',0,'Eum pariatur molestias dolores. Magni quo consectetur qui ut. Ea repellat voluptas omnis laudantium ut beatae.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-01-23 01:51:55','2024-01-23 01:51:55'),(4,'Commercial',0,'Aperiam et veniam cumque esse cumque. Qui voluptatem quis quia totam aliquid est ad. Corrupti possimus ipsum perferendis nulla aut autem eligendi.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-01-23 01:51:55','2024-01-23 01:51:55');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Perxsion',NULL,NULL,NULL,'published',0,1,'2024-01-23 01:51:40','2024-01-23 01:51:40'),(2,'Hiching',NULL,NULL,NULL,'published',1,1,'2024-01-23 01:51:40','2024-01-23 01:51:40'),(3,'Kepslo',NULL,NULL,NULL,'published',2,1,'2024-01-23 01:51:40','2024-01-23 01:51:40'),(4,'Groneba',NULL,NULL,NULL,'published',3,1,'2024-01-23 01:51:40','2024-01-23 01:51:40'),(5,'Babian',NULL,NULL,NULL,'published',4,1,'2024-01-23 01:51:40','2024-01-23 01:51:40'),(6,'Valorant',NULL,NULL,NULL,'published',5,1,'2024-01-23 01:51:40','2024-01-23 01:51:40'),(7,'Pure',NULL,NULL,NULL,'published',6,1,'2024-01-23 01:51:40','2024-01-23 01:51:40');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-01-23 01:51:40','2024-01-23 01:51:40'),(2,'EUR','€',0,2,1,0,0.84,'2024-01-23 01:51:40','2024-01-23 01:51:40'),(3,'VND','₫',0,0,2,0,23203,'2024-01-23 01:51:40','2024-01-23 01:51:40'),(4,'NGN','₦',1,2,2,0,895.52,'2024-01-23 01:51:40','2024-01-23 01:51:40');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Dr. Marisol Mohr Jr.','customer@botble.com','+14753683133','PT','Florida','McLaughlinstad','755 Alberto Cove',1,1,'2024-01-23 01:51:49','2024-01-23 01:51:49','99443'),(2,'Dr. Marisol Mohr Jr.','customer@botble.com','+15179629857','BI','Mississippi','Port Pedro','924 Helga Field Suite 260',1,0,'2024-01-23 01:51:49','2024-01-23 01:51:49','40180-7034'),(3,'Miss Aleen Dooley','vendor@botble.com','+18459586969','JE','Rhode Island','North Carole','9336 Spinka Camp',2,1,'2024-01-23 01:51:49','2024-01-23 01:51:49','53955'),(4,'Miss Aleen Dooley','vendor@botble.com','+16233919389','KY','North Dakota','Trompburgh','28464 Heidenreich Lakes Suite 824',2,0,'2024-01-23 01:51:49','2024-01-23 01:51:49','50362-4000'),(5,'Hattie Breitenberg','langworth.margaretta@example.net','+13417274192','PM','South Carolina','West Justice','123 Stacy Harbors Suite 621',3,1,'2024-01-23 01:51:49','2024-01-23 01:51:49','83341-0504'),(6,'Berneice Trantow','mitchel.watsica@example.net','+19526103286','CL','Ohio','Fayburgh','24918 Hayes Radial Apt. 102',4,1,'2024-01-23 01:51:49','2024-01-23 01:51:49','88431'),(7,'Dr. Dell Bogisich','maude95@example.com','+12819502540','SY','Wyoming','Lake Nolanborough','95801 Kovacek Bypass Apt. 403',5,1,'2024-01-23 01:51:50','2024-01-23 01:51:50','75809'),(8,'Dr. Stacy Gibson','andre.jones@example.org','+18165128098','SX','New Jersey','Lake Percivalchester','1844 Mertie Club Suite 742',6,1,'2024-01-23 01:51:50','2024-01-23 01:51:50','80345'),(9,'Prof. Javier Nikolaus','fadel.katharina@example.org','+16824953340','EC','North Carolina','Lake Wiltonburgh','280 Rohan Gateway',7,1,'2024-01-23 01:51:50','2024-01-23 01:51:50','70428'),(10,'Karli Beatty','bzulauf@example.net','+18569178152','BT','Maryland','Lake Earnestine','823 Blair Cliffs',8,1,'2024-01-23 01:51:50','2024-01-23 01:51:50','91489-0792'),(11,'Janie Smith','tod11@example.com','+13104162696','GR','Massachusetts','Kilbackberg','57644 Torp Mount Apt. 850',9,1,'2024-01-23 01:51:51','2024-01-23 01:51:51','06087'),(12,'Dr. Erich Pfannerstill','gmcclure@example.com','+17693080876','PK','Michigan','Reillystad','44451 Nikolaus Crossing Apt. 302',10,1,'2024-01-23 01:51:51','2024-01-23 01:51:51','80163');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Dr. Marisol Mohr Jr.','customer@botble.com','$2y$12$zn/5OBYZyFOWkK9yukmXe.pQCCxHcYJFS7P7pqynMPEQAazyTeHja','customers/1.jpg','2001-01-12','+18056141011',NULL,'2024-01-23 01:51:49','2024-01-23 01:51:49','2024-01-23 08:51:49',NULL,'activated',NULL,0,NULL),(2,'Miss Aleen Dooley','vendor@botble.com','$2y$12$DeaD0bdJeHzXfEIF8ZeaqOw72Gk82XveBI4TE269F8YDp7Jv22i8a','customers/7.jpg','1988-01-19','+12706219412',NULL,'2024-01-23 01:51:49','2024-01-23 01:51:59','2024-01-23 08:51:49',NULL,'activated',NULL,1,'2024-01-23 08:51:59'),(3,'Hattie Breitenberg','langworth.margaretta@example.net','$2y$12$rEjx/xk.LD2BOILHGKvB5OfXrnCIK.BfuIqYca9vAp6p1xGNht7iO','customers/1.jpg','2004-01-08','+12392869360',NULL,'2024-01-23 01:51:49','2024-01-23 01:51:49','2024-01-23 08:51:49',NULL,'activated',NULL,0,NULL),(4,'Berneice Trantow','mitchel.watsica@example.net','$2y$12$YojXM.lJJuesGra86YenuuAjCDlyFjkAK2TJUUwhAwUZXHMaL.3OO','customers/2.jpg','1993-01-06','+17609895323',NULL,'2024-01-23 01:51:49','2024-01-23 01:51:49','2024-01-23 08:51:49',NULL,'activated',NULL,0,NULL),(5,'Dr. Dell Bogisich','maude95@example.com','$2y$12$ODWiXkbJom9FL0tCiFlWneJW8nNr5KRkqBafs8MSVQPYnHQ.eiKCy','customers/3.jpg','1990-12-26','+14427135347',NULL,'2024-01-23 01:51:50','2024-01-23 01:51:59','2024-01-23 08:51:50',NULL,'activated',NULL,1,'2024-01-23 08:51:59'),(6,'Dr. Stacy Gibson','andre.jones@example.org','$2y$12$Wi2pa1gJEv4LvhRX22N.S.OcFqnviIj2y.LP..1RFez08erGOrX/a','customers/4.jpg','2002-12-25','+14703149857',NULL,'2024-01-23 01:51:50','2024-01-23 01:51:50','2024-01-23 08:51:50',NULL,'activated',NULL,0,NULL),(7,'Prof. Javier Nikolaus','fadel.katharina@example.org','$2y$12$eBexxk4wfMi0j4lsVHUogeM6u34YMvPONu9JMxd.TCrc0O2hQPMlW','customers/5.jpg','1997-01-05','+17794339445',NULL,'2024-01-23 01:51:50','2024-01-23 01:51:50','2024-01-23 08:51:50',NULL,'activated',NULL,0,NULL),(8,'Karli Beatty','bzulauf@example.net','$2y$12$YianeIdwropA0WaBTeo6EuKjlHed9OIOuxRyiMfqFyzs96y3oFWiq','customers/6.jpg','1975-01-04','+14588902050',NULL,'2024-01-23 01:51:50','2024-01-23 01:52:00','2024-01-23 08:51:50',NULL,'activated',NULL,1,'2024-01-23 08:52:00'),(9,'Janie Smith','tod11@example.com','$2y$12$pYeHXQsLtdzPphIxVYWVbO7cCYaszNdy5xlEgwChRn4h4KT1u8bpa','customers/7.jpg','1974-12-26','+12817701516',NULL,'2024-01-23 01:51:51','2024-01-23 01:52:00','2024-01-23 08:51:51',NULL,'activated',NULL,1,'2024-01-23 08:52:00'),(10,'Dr. Erich Pfannerstill','gmcclure@example.com','$2y$12$cL6MnEp.tx92jQzZyJ6PseK3.rJeaXVQuFIGSNBneIGTliRqPR7Xa','customers/8.jpg','1998-12-24','+17323912350',NULL,'2024-01-23 01:51:51','2024-01-23 01:51:51','2024-01-23 08:51:51',NULL,'activated',NULL,0,NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,2,214.52,15,5),(2,11,61.56,11,3),(3,12,53.65,15,5),(4,13,105.27,16,1),(5,4,24.0903,18,4),(5,1,362.88,8,3),(5,2,280.26,7,3),(5,3,260.63,7,5),(5,4,48.1806,10,2),(5,5,26.46,7,2);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day','2024-02-26 00:00:00','published','2024-01-23 01:51:52','2024-01-23 01:51:52'),(2,'Winter Sale','2024-03-07 00:00:00','published','2024-01-23 01:51:52','2024-01-23 01:51:52'),(3,'Gadgets &amp; Accessories','2024-03-01 00:00:00','published','2024-01-23 01:51:52','2024-01-23 01:51:52'),(4,'Hot products','2024-03-08 00:00:00','published','2024-01-23 01:51:52','2024-01-23 01:51:52'),(5,'Best sale items','2024-02-17 00:00:00','published','2024-01-23 01:51:52','2024-01-23 01:51:52');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-01-23 01:51:58','2024-01-23 01:51:58'),(1,2,'2 Year',10,9999,0,'2024-01-23 01:51:58','2024-01-23 01:51:58'),(1,3,'3 Year',20,9999,0,'2024-01-23 01:51:58','2024-01-23 01:51:58'),(2,4,'4GB',0,9999,0,'2024-01-23 01:51:58','2024-01-23 01:51:58'),(2,5,'8GB',10,9999,0,'2024-01-23 01:51:58','2024-01-23 01:51:58'),(2,6,'16GB',20,9999,0,'2024-01-23 01:51:58','2024-01-23 01:51:58'),(3,7,'Core i5',0,9999,0,'2024-01-23 01:51:58','2024-01-23 01:51:58'),(3,8,'Core i7',10,9999,0,'2024-01-23 01:51:58','2024-01-23 01:51:58'),(3,9,'Core i9',20,9999,0,'2024-01-23 01:51:58','2024-01-23 01:51:58'),(4,10,'128GB',0,9999,0,'2024-01-23 01:51:58','2024-01-23 01:51:58'),(4,11,'256GB',10,9999,0,'2024-01-23 01:51:58','2024-01-23 01:51:58'),(4,12,'512GB',20,9999,0,'2024-01-23 01:51:58','2024-01-23 01:51:58');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-01-23 01:51:58','2024-01-23 01:51:58'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-01-23 01:51:58','2024-01-23 01:51:58'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-01-23 01:51:58','2024-01-23 01:51:58'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-01-23 01:51:58','2024-01-23 01:51:58');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
INSERT INTO `ec_invoice_items` VALUES (1,1,'Botble\\Ecommerce\\Models\\Product',35,'Blue Diamond Almonds Lightly (Digital)',NULL,'products/5.jpg',1,42.00,42.00,0.00,0.00,42.00,'{\"sku\":\"HS-160-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 4 Boxes)\"}','2024-01-23 01:52:01','2024-01-23 01:52:01'),(2,2,'Botble\\Ecommerce\\Models\\Product',53,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,'products/12-1.jpg',3,125.00,375.00,0.00,0.00,375.00,'{\"sku\":\"HS-167-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 5 Boxes)\"}','2024-01-23 01:52:01','2024-01-23 01:52:01'),(3,3,'Botble\\Ecommerce\\Models\\Product',62,'Oroweat Country Buttermilk Bread',NULL,'products/15.jpg',3,125.00,375.00,0.00,0.00,375.00,'{\"sku\":\"HS-142-A0-A3\",\"attributes\":\"(Weight: 3KG, Boxes: 3 Boxes)\"}','2024-01-23 01:52:02','2024-01-23 01:52:02'),(4,4,'Botble\\Ecommerce\\Models\\Product',26,'Seeds of Change Organic Quinoe (Digital)',NULL,'products/1-1.jpg',3,432.00,1296.00,0.00,0.00,1296.00,'{\"sku\":\"HS-113-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}','2024-01-23 01:52:02','2024-01-23 01:52:02'),(5,5,'Botble\\Ecommerce\\Models\\Product',60,'Oroweat Country Buttermilk Bread',NULL,'products/15-1.jpg',3,125.00,375.00,0.00,0.00,375.00,'{\"sku\":\"HS-142-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}','2024-01-23 01:52:02','2024-01-23 01:52:02'),(6,6,'Botble\\Ecommerce\\Models\\Product',80,'Colorful Banana',NULL,'products/23.jpg',2,119.00,238.00,0.00,0.00,238.00,'{\"sku\":\"HS-100-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 1 Box)\"}','2024-01-23 01:52:02','2024-01-23 01:52:02'),(7,6,'Botble\\Ecommerce\\Models\\Product',82,'Colorful Banana',NULL,'products/23.jpg',2,119.00,238.00,0.00,0.00,238.00,'{\"sku\":\"HS-100-A0-A2\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}','2024-01-23 01:52:02','2024-01-23 01:52:02'),(8,7,'Botble\\Ecommerce\\Models\\Product',30,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn',NULL,'products/3.jpg',2,389.00,778.00,0.00,0.00,778.00,'{\"sku\":\"HS-178-A0\",\"attributes\":\"(Weight: 5KG, Boxes: 5 Boxes)\"}','2024-01-23 01:52:02','2024-01-23 01:52:02'),(9,8,'Botble\\Ecommerce\\Models\\Product',46,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,'products/9.jpg',3,114.00,342.00,0.00,0.00,342.00,'{\"sku\":\"HS-128-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}','2024-01-23 01:52:03','2024-01-23 01:52:03'),(10,9,'Botble\\Ecommerce\\Models\\Product',34,'Foster Farms Takeout Crispy Classic',NULL,'products/4.jpg',2,87.00,174.00,0.00,0.00,174.00,'{\"sku\":\"HS-113-A0-A3\",\"attributes\":\"(Boxes: 3 Boxes, Weight: 5KG)\"}','2024-01-23 01:52:03','2024-01-23 01:52:03'),(11,9,'Botble\\Ecommerce\\Models\\Product',61,'Oroweat Country Buttermilk Bread',NULL,'products/15.jpg',1,125.00,125.00,0.00,0.00,125.00,'{\"sku\":\"HS-142-A0-A2\",\"attributes\":\"(Weight: 3KG, Boxes: 3 Boxes)\"}','2024-01-23 01:52:03','2024-01-23 01:52:03'),(12,10,'Botble\\Ecommerce\\Models\\Product',43,'Encore Seafoods Stuffed Alaskan',NULL,'products/8.jpg',1,126.00,126.00,0.00,0.00,126.00,'{\"sku\":\"HS-113-A0\",\"attributes\":\"(Boxes: 3 Boxes, Weight: 5KG)\"}','2024-01-23 01:52:03','2024-01-23 01:52:03'),(13,11,'Botble\\Ecommerce\\Models\\Product',36,'Blue Diamond Almonds Lightly (Digital)',NULL,'products/5-1.jpg',3,42.00,126.00,0.00,0.00,126.00,'{\"sku\":\"HS-160-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}','2024-01-23 01:52:03','2024-01-23 01:52:03'),(14,12,'Botble\\Ecommerce\\Models\\Product',47,'Haagen-Dazs Caramel Cone Ice Cream',NULL,'products/10.jpg',1,229.00,229.00,0.00,0.00,229.00,'{\"sku\":\"HS-164-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 5 Boxes)\"}','2024-01-23 01:52:04','2024-01-23 01:52:04'),(15,13,'Botble\\Ecommerce\\Models\\Product',29,'All Natural Italian-Style Chicken Meatballs',NULL,'products/2-1.jpg',2,346.00,692.00,0.00,0.00,692.00,'{\"sku\":\"HS-106-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 4 Boxes)\"}','2024-01-23 01:52:04','2024-01-23 01:52:04'),(16,13,'Botble\\Ecommerce\\Models\\Product',31,'Foster Farms Takeout Crispy Classic',NULL,'products/4.jpg',1,87.00,87.00,0.00,0.00,87.00,'{\"sku\":\"HS-113-A0\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 3KG)\"}','2024-01-23 01:52:04','2024-01-23 01:52:04'),(17,13,'Botble\\Ecommerce\\Models\\Product',84,'Signature Wood-Fired Mushroom and Caramelized',NULL,'products/24-1.jpg',3,114.00,342.00,0.00,0.00,342.00,'{\"sku\":\"HS-188-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 3 Boxes)\"}','2024-01-23 01:52:04','2024-01-23 01:52:04'),(18,14,'Botble\\Ecommerce\\Models\\Product',51,'Nestle Original Coffee-Mate Coffee Creamer',NULL,'products/11-1.jpg',2,114.00,228.00,0.00,0.00,228.00,'{\"sku\":\"HS-176-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 1 Box)\"}','2024-01-23 01:52:04','2024-01-23 01:52:04'),(19,15,'Botble\\Ecommerce\\Models\\Product',41,'Canada Dry Ginger Ale – 2 L Bottle',NULL,'products/7.jpg',3,116.00,348.00,0.00,0.00,348.00,'{\"sku\":\"HS-148-A0\",\"attributes\":\"(Weight: 5KG, Boxes: 5 Boxes)\"}','2024-01-23 01:52:04','2024-01-23 01:52:04'),(20,16,'Botble\\Ecommerce\\Models\\Product',46,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,'products/9.jpg',1,114.00,114.00,0.00,0.00,114.00,'{\"sku\":\"HS-128-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}','2024-01-23 01:52:05','2024-01-23 01:52:05'),(21,17,'Botble\\Ecommerce\\Models\\Product',75,'Chen Watermelon (Digital)',NULL,'products/21-1.jpg',3,111.00,333.00,0.00,0.00,333.00,'{\"sku\":\"HS-192-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 4 Boxes)\"}','2024-01-23 01:52:05','2024-01-23 01:52:05'),(22,18,'Botble\\Ecommerce\\Models\\Product',34,'Foster Farms Takeout Crispy Classic',NULL,'products/4.jpg',1,87.00,87.00,0.00,0.00,87.00,'{\"sku\":\"HS-113-A0-A3\",\"attributes\":\"(Boxes: 3 Boxes, Weight: 5KG)\"}','2024-01-23 01:52:05','2024-01-23 01:52:05'),(23,19,'Botble\\Ecommerce\\Models\\Product',35,'Blue Diamond Almonds Lightly (Digital)',NULL,'products/5.jpg',1,42.00,42.00,0.00,0.00,42.00,'{\"sku\":\"HS-160-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 4 Boxes)\"}','2024-01-23 01:52:05','2024-01-23 01:52:05'),(24,20,'Botble\\Ecommerce\\Models\\Product',32,'Foster Farms Takeout Crispy Classic',NULL,'products/4-1.jpg',1,87.00,87.00,0.00,0.00,87.00,'{\"sku\":\"HS-113-A0-A1\",\"attributes\":\"(Boxes: 3 Boxes, Weight: 5KG)\"}','2024-01-23 01:52:05','2024-01-23 01:52:05'),(25,20,'Botble\\Ecommerce\\Models\\Product',85,'Signature Wood-Fired Mushroom and Caramelized',NULL,'products/24.jpg',2,114.00,228.00,0.00,0.00,228.00,'{\"sku\":\"HS-188-A0-A2\",\"attributes\":\"(Weight: 3KG, Boxes: 5 Boxes)\"}','2024-01-23 01:52:05','2024-01-23 01:52:05'),(26,21,'Botble\\Ecommerce\\Models\\Product',74,'Chen Watermelon (Digital)',NULL,'products/21.jpg',1,111.00,111.00,0.00,0.00,111.00,'{\"sku\":\"HS-192-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 4KG)\"}','2024-01-23 01:52:06','2024-01-23 01:52:06'),(27,22,'Botble\\Ecommerce\\Models\\Product',46,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,'products/9.jpg',3,114.00,342.00,0.00,0.00,342.00,'{\"sku\":\"HS-128-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}','2024-01-23 01:52:06','2024-01-23 01:52:06'),(28,22,'Botble\\Ecommerce\\Models\\Product',54,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,'products/13.jpg',3,121.00,363.00,0.00,0.00,363.00,'{\"sku\":\"HS-160-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 5 Boxes)\"}','2024-01-23 01:52:06','2024-01-23 01:52:06'),(29,23,'Botble\\Ecommerce\\Models\\Product',46,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,'products/9.jpg',1,114.00,114.00,0.00,0.00,114.00,'{\"sku\":\"HS-128-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}','2024-01-23 01:52:06','2024-01-23 01:52:06'),(30,24,'Botble\\Ecommerce\\Models\\Product',72,'Simply Lemonade with Raspberry Juice',NULL,'products/19.jpg',1,117.00,117.00,0.00,0.00,117.00,'{\"sku\":\"HS-188-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 5KG)\"}','2024-01-23 01:52:06','2024-01-23 01:52:06'),(31,25,'Botble\\Ecommerce\\Models\\Product',78,'Organic Cage-Free Grade A Large Brown Eggs',NULL,'products/22.jpg',3,120.00,360.00,0.00,0.00,360.00,'{\"sku\":\"HS-149-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 2KG)\"}','2024-01-23 01:52:06','2024-01-23 01:52:06'),(32,25,'Botble\\Ecommerce\\Models\\Product',82,'Colorful Banana',NULL,'products/23.jpg',2,119.00,238.00,0.00,0.00,238.00,'{\"sku\":\"HS-100-A0-A2\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}','2024-01-23 01:52:06','2024-01-23 01:52:06'),(33,26,'Botble\\Ecommerce\\Models\\Product',48,'Haagen-Dazs Caramel Cone Ice Cream',NULL,'products/10-1.jpg',1,229.00,229.00,0.00,0.00,229.00,'{\"sku\":\"HS-164-A0-A1\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}','2024-01-23 01:52:07','2024-01-23 01:52:07'),(34,26,'Botble\\Ecommerce\\Models\\Product',60,'Oroweat Country Buttermilk Bread',NULL,'products/15-1.jpg',3,125.00,375.00,0.00,0.00,375.00,'{\"sku\":\"HS-142-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}','2024-01-23 01:52:07','2024-01-23 01:52:07'),(35,26,'Botble\\Ecommerce\\Models\\Product',84,'Signature Wood-Fired Mushroom and Caramelized',NULL,'products/24-1.jpg',1,114.00,114.00,0.00,0.00,114.00,'{\"sku\":\"HS-188-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 3 Boxes)\"}','2024-01-23 01:52:07','2024-01-23 01:52:07'),(36,27,'Botble\\Ecommerce\\Models\\Product',68,'All Natural Italian-Style Chicken Meatballs',NULL,'products/18.jpg',1,121.00,121.00,0.00,0.00,121.00,'{\"sku\":\"HS-137-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 2 Boxes)\"}','2024-01-23 01:52:07','2024-01-23 01:52:07'),(37,28,'Botble\\Ecommerce\\Models\\Product',66,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)',NULL,'products/17.jpg',1,115.00,115.00,0.00,0.00,115.00,'{\"sku\":\"HS-160-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}','2024-01-23 01:52:07','2024-01-23 01:52:07'),(38,29,'Botble\\Ecommerce\\Models\\Product',72,'Simply Lemonade with Raspberry Juice',NULL,'products/19.jpg',2,117.00,234.00,0.00,0.00,234.00,'{\"sku\":\"HS-188-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 5KG)\"}','2024-01-23 01:52:07','2024-01-23 01:52:07'),(39,30,'Botble\\Ecommerce\\Models\\Product',28,'All Natural Italian-Style Chicken Meatballs',NULL,'products/2.jpg',3,346.00,1038.00,0.00,0.00,1038.00,'{\"sku\":\"HS-106-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 4 Boxes)\"}','2024-01-23 01:52:08','2024-01-23 01:52:08'),(40,31,'Botble\\Ecommerce\\Models\\Product',53,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,'products/12-1.jpg',2,125.00,250.00,0.00,0.00,250.00,'{\"sku\":\"HS-167-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 5 Boxes)\"}','2024-01-23 01:52:08','2024-01-23 01:52:08'),(41,32,'Botble\\Ecommerce\\Models\\Product',54,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,'products/13.jpg',3,121.00,363.00,0.00,0.00,363.00,'{\"sku\":\"HS-160-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 5 Boxes)\"}','2024-01-23 01:52:08','2024-01-23 01:52:08'),(42,33,'Botble\\Ecommerce\\Models\\Product',79,'Organic Cage-Free Grade A Large Brown Eggs',NULL,'products/22-1.jpg',2,120.00,240.00,0.00,0.00,240.00,'{\"sku\":\"HS-149-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 1 Box)\"}','2024-01-23 01:52:08','2024-01-23 01:52:08'),(43,34,'Botble\\Ecommerce\\Models\\Product',55,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,'products/13-1.jpg',1,121.00,121.00,0.00,0.00,121.00,'{\"sku\":\"HS-160-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 3 Boxes)\"}','2024-01-23 01:52:08','2024-01-23 01:52:08'),(44,35,'Botble\\Ecommerce\\Models\\Product',68,'All Natural Italian-Style Chicken Meatballs',NULL,'products/18.jpg',3,121.00,363.00,0.00,0.00,363.00,'{\"sku\":\"HS-137-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 2 Boxes)\"}','2024-01-23 01:52:09','2024-01-23 01:52:09'),(45,35,'Botble\\Ecommerce\\Models\\Product',69,'All Natural Italian-Style Chicken Meatballs',NULL,'products/18-1.jpg',1,121.00,121.00,0.00,0.00,121.00,'{\"sku\":\"HS-137-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 4 Boxes)\"}','2024-01-23 01:52:09','2024-01-23 01:52:09'),(46,35,'Botble\\Ecommerce\\Models\\Product',70,'All Natural Italian-Style Chicken Meatballs',NULL,'products/18.jpg',2,121.00,242.00,0.00,0.00,242.00,'{\"sku\":\"HS-137-A0-A2\",\"attributes\":\"(Weight: 1KG, Boxes: 2 Boxes)\"}','2024-01-23 01:52:09','2024-01-23 01:52:09'),(47,36,'Botble\\Ecommerce\\Models\\Product',31,'Foster Farms Takeout Crispy Classic',NULL,'products/4.jpg',2,87.00,174.00,0.00,0.00,174.00,'{\"sku\":\"HS-113-A0\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 3KG)\"}','2024-01-23 01:52:09','2024-01-23 01:52:09'),(48,36,'Botble\\Ecommerce\\Models\\Product',33,'Foster Farms Takeout Crispy Classic',NULL,'products/4.jpg',1,87.00,87.00,0.00,0.00,87.00,'{\"sku\":\"HS-113-A0-A2\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}','2024-01-23 01:52:09','2024-01-23 01:52:09'),(49,37,'Botble\\Ecommerce\\Models\\Product',65,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,'products/16-1.jpg',3,116.00,348.00,0.00,0.00,348.00,'{\"sku\":\"HS-176-A0-A1\",\"attributes\":\"(Boxes: 3 Boxes, Weight: 4KG)\"}','2024-01-23 01:52:09','2024-01-23 01:52:09'),(50,38,'Botble\\Ecommerce\\Models\\Product',77,'Chen Watermelon (Digital)',NULL,'products/21.jpg',3,111.00,333.00,0.00,0.00,333.00,'{\"sku\":\"HS-192-A0-A3\",\"attributes\":\"(Weight: 1KG, Boxes: 4 Boxes)\"}','2024-01-23 01:52:09','2024-01-23 01:52:09'),(51,39,'Botble\\Ecommerce\\Models\\Product',40,'Chobani Complete Vanilla Greek',NULL,'products/6.jpg',3,59.00,177.00,0.00,0.00,177.00,'{\"sku\":\"HS-150-A0-A2\",\"attributes\":\"(Weight: 2KG, Boxes: 2 Boxes)\"}','2024-01-23 01:52:10','2024-01-23 01:52:10'),(52,39,'Botble\\Ecommerce\\Models\\Product',55,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,'products/13-1.jpg',3,121.00,363.00,0.00,0.00,363.00,'{\"sku\":\"HS-160-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 3 Boxes)\"}','2024-01-23 01:52:10','2024-01-23 01:52:10'),(53,40,'Botble\\Ecommerce\\Models\\Product',79,'Organic Cage-Free Grade A Large Brown Eggs',NULL,'products/22-1.jpg',2,120.00,240.00,0.00,0.00,240.00,'{\"sku\":\"HS-149-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 1 Box)\"}','2024-01-23 01:52:10','2024-01-23 01:52:10'),(54,41,'Botble\\Ecommerce\\Models\\Product',38,'Chobani Complete Vanilla Greek',NULL,'products/6.jpg',2,59.00,118.00,0.00,0.00,118.00,'{\"sku\":\"HS-150-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 2 Boxes)\"}','2024-01-23 01:52:10','2024-01-23 01:52:10'),(55,42,'Botble\\Ecommerce\\Models\\Product',69,'All Natural Italian-Style Chicken Meatballs',NULL,'products/18-1.jpg',1,121.00,121.00,0.00,0.00,121.00,'{\"sku\":\"HS-137-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 4 Boxes)\"}','2024-01-23 01:52:10','2024-01-23 01:52:10'),(56,43,'Botble\\Ecommerce\\Models\\Product',44,'Encore Seafoods Stuffed Alaskan',NULL,'products/8-1.jpg',3,126.00,378.00,0.00,0.00,378.00,'{\"sku\":\"HS-113-A0-A1\",\"attributes\":\"(Weight: 5KG, Boxes: 5 Boxes)\"}','2024-01-23 01:52:10','2024-01-23 01:52:10'),(57,43,'Botble\\Ecommerce\\Models\\Product',82,'Colorful Banana',NULL,'products/23.jpg',2,119.00,238.00,0.00,0.00,238.00,'{\"sku\":\"HS-100-A0-A2\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}','2024-01-23 01:52:10','2024-01-23 01:52:10'),(58,44,'Botble\\Ecommerce\\Models\\Product',55,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,'products/13-1.jpg',3,121.00,363.00,0.00,0.00,363.00,'{\"sku\":\"HS-160-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 3 Boxes)\"}','2024-01-23 01:52:11','2024-01-23 01:52:11'),(59,44,'Botble\\Ecommerce\\Models\\Product',56,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,'products/13.jpg',3,121.00,363.00,0.00,0.00,363.00,'{\"sku\":\"HS-160-A0-A2\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 3KG)\"}','2024-01-23 01:52:11','2024-01-23 01:52:11'),(60,45,'Botble\\Ecommerce\\Models\\Product',32,'Foster Farms Takeout Crispy Classic',NULL,'products/4-1.jpg',1,87.00,87.00,0.00,0.00,87.00,'{\"sku\":\"HS-113-A0-A1\",\"attributes\":\"(Boxes: 3 Boxes, Weight: 5KG)\"}','2024-01-23 01:52:11','2024-01-23 01:52:11'),(61,45,'Botble\\Ecommerce\\Models\\Product',62,'Oroweat Country Buttermilk Bread',NULL,'products/15.jpg',1,125.00,125.00,0.00,0.00,125.00,'{\"sku\":\"HS-142-A0-A3\",\"attributes\":\"(Weight: 3KG, Boxes: 3 Boxes)\"}','2024-01-23 01:52:11','2024-01-23 01:52:11'),(62,46,'Botble\\Ecommerce\\Models\\Product',43,'Encore Seafoods Stuffed Alaskan',NULL,'products/8.jpg',2,126.00,252.00,0.00,0.00,252.00,'{\"sku\":\"HS-113-A0\",\"attributes\":\"(Boxes: 3 Boxes, Weight: 5KG)\"}','2024-01-23 01:52:11','2024-01-23 01:52:11'),(63,47,'Botble\\Ecommerce\\Models\\Product',54,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,'products/13.jpg',2,121.00,242.00,0.00,0.00,242.00,'{\"sku\":\"HS-160-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 5 Boxes)\"}','2024-01-23 01:52:11','2024-01-23 01:52:11');
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
INSERT INTO `ec_invoices` VALUES (1,'Botble\\Ecommerce\\Models\\Order',1,'INV-1','Prof. Javier Nikolaus','',NULL,'fadel.katharina@example.org','+16824953340','280 Rohan Gateway, Lake Wiltonburgh, North Carolina, EC',NULL,42.00,0.00,0.00,0.00,NULL,'',NULL,NULL,42.00,NULL,1,'completed','2024-01-23 01:52:01','2024-01-13 01:52:01','2024-01-23 01:52:01'),(2,'Botble\\Ecommerce\\Models\\Order',2,'INV-2','Prof. Javier Nikolaus','',NULL,'fadel.katharina@example.org','+16824953340','280 Rohan Gateway, Lake Wiltonburgh, North Carolina, EC',NULL,375.00,0.00,0.00,0.00,'1','default',NULL,NULL,375.00,NULL,2,'completed','2024-01-23 01:52:01','2024-01-11 09:52:01','2024-01-23 01:52:01'),(3,'Botble\\Ecommerce\\Models\\Order',3,'INV-3','Prof. Javier Nikolaus','',NULL,'fadel.katharina@example.org','+16824953340','280 Rohan Gateway, Lake Wiltonburgh, North Carolina, EC',NULL,375.00,0.00,0.00,0.00,'1','default',NULL,NULL,375.00,NULL,3,'completed','2024-01-23 01:52:02','2024-01-21 09:52:01','2024-01-23 01:52:02'),(4,'Botble\\Ecommerce\\Models\\Order',4,'INV-4','Dr. Marisol Mohr Jr.','',NULL,'customer@botble.com','+14753683133','755 Alberto Cove, McLaughlinstad, Florida, PT',NULL,1296.00,0.00,0.00,0.00,NULL,'',NULL,NULL,1296.00,NULL,4,'pending',NULL,'2024-01-18 07:52:02','2024-01-23 01:52:02'),(5,'Botble\\Ecommerce\\Models\\Order',5,'INV-5','Dr. Marisol Mohr Jr.','',NULL,'customer@botble.com','+14753683133','755 Alberto Cove, McLaughlinstad, Florida, PT',NULL,375.00,0.00,0.00,0.00,'1','default',NULL,NULL,375.00,NULL,5,'completed','2024-01-23 01:52:02','2024-01-21 11:52:02','2024-01-23 01:52:02'),(6,'Botble\\Ecommerce\\Models\\Order',6,'INV-6','Dr. Marisol Mohr Jr.','',NULL,'customer@botble.com','+14753683133','755 Alberto Cove, McLaughlinstad, Florida, PT',NULL,476.00,0.00,0.00,0.00,'1','default',NULL,NULL,476.00,NULL,6,'pending',NULL,'2024-01-21 11:52:02','2024-01-23 01:52:02'),(7,'Botble\\Ecommerce\\Models\\Order',7,'INV-7','Hattie Breitenberg','',NULL,'langworth.margaretta@example.net','+13417274192','123 Stacy Harbors Suite 621, West Justice, South Carolina, PM',NULL,778.00,0.00,0.00,0.00,'1','default',NULL,NULL,778.00,NULL,7,'pending',NULL,'2024-01-21 13:52:02','2024-01-23 01:52:02'),(8,'Botble\\Ecommerce\\Models\\Order',8,'INV-8','Hattie Breitenberg','',NULL,'langworth.margaretta@example.net','+13417274192','123 Stacy Harbors Suite 621, West Justice, South Carolina, PM',NULL,342.00,0.00,0.00,0.00,NULL,'',NULL,NULL,342.00,NULL,8,'completed','2024-01-23 01:52:03','2024-01-11 01:52:03','2024-01-23 01:52:03'),(9,'Botble\\Ecommerce\\Models\\Order',9,'INV-9','Hattie Breitenberg','',NULL,'langworth.margaretta@example.net','+13417274192','123 Stacy Harbors Suite 621, West Justice, South Carolina, PM',NULL,299.00,0.00,0.00,0.00,'1','default',NULL,NULL,299.00,NULL,9,'completed','2024-01-23 01:52:03','2024-01-11 17:52:03','2024-01-23 01:52:03'),(10,'Botble\\Ecommerce\\Models\\Order',10,'INV-10','Hattie Breitenberg','',NULL,'langworth.margaretta@example.net','+13417274192','123 Stacy Harbors Suite 621, West Justice, South Carolina, PM',NULL,126.00,0.00,0.00,0.00,'1','default',NULL,NULL,126.00,NULL,10,'completed','2024-01-23 01:52:03','2024-01-21 15:52:03','2024-01-23 01:52:03'),(11,'Botble\\Ecommerce\\Models\\Order',11,'INV-11','Prof. Javier Nikolaus','',NULL,'fadel.katharina@example.org','+16824953340','280 Rohan Gateway, Lake Wiltonburgh, North Carolina, EC',NULL,126.00,0.00,0.00,0.00,NULL,'',NULL,NULL,126.00,NULL,11,'pending',NULL,'2024-01-20 09:52:03','2024-01-23 01:52:03'),(12,'Botble\\Ecommerce\\Models\\Order',12,'INV-12','Prof. Javier Nikolaus','',NULL,'fadel.katharina@example.org','+16824953340','280 Rohan Gateway, Lake Wiltonburgh, North Carolina, EC',NULL,229.00,0.00,0.00,0.00,'1','default',NULL,NULL,229.00,NULL,12,'pending',NULL,'2024-01-15 01:52:04','2024-01-23 01:52:04'),(13,'Botble\\Ecommerce\\Models\\Order',13,'INV-13','Prof. Javier Nikolaus','',NULL,'fadel.katharina@example.org','+16824953340','280 Rohan Gateway, Lake Wiltonburgh, North Carolina, EC',NULL,1121.00,0.00,0.00,0.00,'1','default',NULL,NULL,1121.00,NULL,13,'completed','2024-01-23 01:52:04','2024-01-15 13:52:04','2024-01-23 01:52:04'),(14,'Botble\\Ecommerce\\Models\\Order',14,'INV-14','Prof. Javier Nikolaus','',NULL,'fadel.katharina@example.org','+16824953340','280 Rohan Gateway, Lake Wiltonburgh, North Carolina, EC',NULL,228.00,0.00,0.00,0.00,'1','default',NULL,NULL,228.00,NULL,14,'completed','2024-01-23 01:52:04','2024-01-21 19:52:04','2024-01-23 01:52:04'),(15,'Botble\\Ecommerce\\Models\\Order',15,'INV-15','Dr. Stacy Gibson','',NULL,'andre.jones@example.org','+18165128098','1844 Mertie Club Suite 742, Lake Percivalchester, New Jersey, SX',NULL,348.00,0.00,0.00,0.00,'1','default',NULL,NULL,348.00,NULL,15,'completed','2024-01-23 01:52:04','2024-01-20 17:52:04','2024-01-23 01:52:04'),(16,'Botble\\Ecommerce\\Models\\Order',16,'INV-16','Dr. Stacy Gibson','',NULL,'andre.jones@example.org','+18165128098','1844 Mertie Club Suite 742, Lake Percivalchester, New Jersey, SX',NULL,114.00,0.00,0.00,0.00,NULL,'',NULL,NULL,114.00,NULL,16,'completed','2024-01-23 01:52:05','2024-01-21 21:52:04','2024-01-23 01:52:05'),(17,'Botble\\Ecommerce\\Models\\Order',17,'INV-17','Dr. Stacy Gibson','',NULL,'andre.jones@example.org','+18165128098','1844 Mertie Club Suite 742, Lake Percivalchester, New Jersey, SX',NULL,333.00,0.00,0.00,0.00,NULL,'',NULL,NULL,333.00,NULL,17,'pending',NULL,'2024-01-21 21:52:05','2024-01-23 01:52:05'),(18,'Botble\\Ecommerce\\Models\\Order',18,'INV-18','Dr. Marisol Mohr Jr.','',NULL,'customer@botble.com','+14753683133','755 Alberto Cove, McLaughlinstad, Florida, PT',NULL,87.00,0.00,0.00,0.00,'1','default',NULL,NULL,87.00,NULL,18,'completed','2024-01-23 01:52:05','2024-01-20 21:52:05','2024-01-23 01:52:05'),(19,'Botble\\Ecommerce\\Models\\Order',19,'INV-19','Dr. Marisol Mohr Jr.','',NULL,'customer@botble.com','+14753683133','755 Alberto Cove, McLaughlinstad, Florida, PT',NULL,42.00,0.00,0.00,0.00,NULL,'',NULL,NULL,42.00,NULL,19,'completed','2024-01-23 01:52:05','2024-01-15 11:52:05','2024-01-23 01:52:05'),(20,'Botble\\Ecommerce\\Models\\Order',20,'INV-20','Prof. Javier Nikolaus','',NULL,'fadel.katharina@example.org','+16824953340','280 Rohan Gateway, Lake Wiltonburgh, North Carolina, EC',NULL,315.00,0.00,0.00,0.00,'1','default',NULL,NULL,315.00,NULL,20,'completed','2024-01-23 01:52:05','2024-01-22 01:52:05','2024-01-23 01:52:05'),(21,'Botble\\Ecommerce\\Models\\Order',21,'INV-21','Prof. Javier Nikolaus','',NULL,'fadel.katharina@example.org','+16824953340','280 Rohan Gateway, Lake Wiltonburgh, North Carolina, EC',NULL,111.00,0.00,0.00,0.00,NULL,'',NULL,NULL,111.00,NULL,21,'completed','2024-01-23 01:52:06','2024-01-21 01:52:06','2024-01-23 01:52:06'),(22,'Botble\\Ecommerce\\Models\\Order',22,'INV-22','Dr. Marisol Mohr Jr.','',NULL,'customer@botble.com','+14753683133','755 Alberto Cove, McLaughlinstad, Florida, PT',NULL,705.00,0.00,0.00,0.00,NULL,'',NULL,NULL,705.00,NULL,22,'pending',NULL,'2024-01-14 19:52:06','2024-01-23 01:52:06'),(23,'Botble\\Ecommerce\\Models\\Order',23,'INV-23','Dr. Marisol Mohr Jr.','',NULL,'customer@botble.com','+14753683133','755 Alberto Cove, McLaughlinstad, Florida, PT',NULL,114.00,0.00,0.00,0.00,NULL,'',NULL,NULL,114.00,NULL,23,'completed','2024-01-23 01:52:06','2024-01-22 05:52:06','2024-01-23 01:52:06'),(24,'Botble\\Ecommerce\\Models\\Order',24,'INV-24','Dr. Marisol Mohr Jr.','',NULL,'customer@botble.com','+14753683133','755 Alberto Cove, McLaughlinstad, Florida, PT',NULL,117.00,0.00,0.00,0.00,'1','default',NULL,NULL,117.00,NULL,24,'completed','2024-01-23 01:52:06','2024-01-14 17:52:06','2024-01-23 01:52:06'),(25,'Botble\\Ecommerce\\Models\\Order',25,'INV-25','Dr. Marisol Mohr Jr.','',NULL,'customer@botble.com','+14753683133','755 Alberto Cove, McLaughlinstad, Florida, PT',NULL,598.00,0.00,0.00,0.00,'1','default',NULL,NULL,598.00,NULL,25,'completed','2024-01-23 01:52:06','2024-01-22 05:52:06','2024-01-23 01:52:06'),(26,'Botble\\Ecommerce\\Models\\Order',26,'INV-26','Dr. Marisol Mohr Jr.','',NULL,'customer@botble.com','+14753683133','755 Alberto Cove, McLaughlinstad, Florida, PT',NULL,718.00,0.00,0.00,0.00,'1','default',NULL,NULL,718.00,NULL,26,'completed','2024-01-23 01:52:07','2024-01-22 07:52:07','2024-01-23 01:52:07'),(27,'Botble\\Ecommerce\\Models\\Order',27,'INV-27','Dr. Marisol Mohr Jr.','',NULL,'customer@botble.com','+14753683133','755 Alberto Cove, McLaughlinstad, Florida, PT',NULL,121.00,0.00,0.00,0.00,'1','default',NULL,NULL,121.00,NULL,27,'pending',NULL,'2024-01-21 13:52:07','2024-01-23 01:52:07'),(28,'Botble\\Ecommerce\\Models\\Order',28,'INV-28','Dr. Marisol Mohr Jr.','',NULL,'customer@botble.com','+14753683133','755 Alberto Cove, McLaughlinstad, Florida, PT',NULL,115.00,0.00,0.00,0.00,NULL,'',NULL,NULL,115.00,NULL,28,'completed','2024-01-23 01:52:07','2024-01-19 17:52:07','2024-01-23 01:52:07'),(29,'Botble\\Ecommerce\\Models\\Order',29,'INV-29','Dr. Marisol Mohr Jr.','',NULL,'customer@botble.com','+14753683133','755 Alberto Cove, McLaughlinstad, Florida, PT',NULL,234.00,0.00,0.00,0.00,'1','default',NULL,NULL,234.00,NULL,29,'completed','2024-01-23 01:52:07','2024-01-17 01:52:07','2024-01-23 01:52:07'),(30,'Botble\\Ecommerce\\Models\\Order',30,'INV-30','Hattie Breitenberg','',NULL,'langworth.margaretta@example.net','+13417274192','123 Stacy Harbors Suite 621, West Justice, South Carolina, PM',NULL,1038.00,0.00,0.00,0.00,'1','default',NULL,NULL,1038.00,NULL,30,'pending',NULL,'2024-01-19 13:52:07','2024-01-23 01:52:08'),(31,'Botble\\Ecommerce\\Models\\Order',31,'INV-31','Hattie Breitenberg','',NULL,'langworth.margaretta@example.net','+13417274192','123 Stacy Harbors Suite 621, West Justice, South Carolina, PM',NULL,250.00,0.00,0.00,0.00,'1','default',NULL,NULL,250.00,NULL,31,'completed','2024-01-23 01:52:08','2024-01-19 13:52:08','2024-01-23 01:52:08'),(32,'Botble\\Ecommerce\\Models\\Order',32,'INV-32','Hattie Breitenberg','',NULL,'langworth.margaretta@example.net','+13417274192','123 Stacy Harbors Suite 621, West Justice, South Carolina, PM',NULL,363.00,0.00,0.00,0.00,NULL,'',NULL,NULL,363.00,NULL,32,'pending',NULL,'2024-01-18 09:52:08','2024-01-23 01:52:08'),(33,'Botble\\Ecommerce\\Models\\Order',33,'INV-33','Hattie Breitenberg','',NULL,'langworth.margaretta@example.net','+13417274192','123 Stacy Harbors Suite 621, West Justice, South Carolina, PM',NULL,240.00,0.00,0.00,0.00,'1','default',NULL,NULL,240.00,NULL,33,'completed','2024-01-23 01:52:08','2024-01-18 23:52:08','2024-01-23 01:52:08'),(34,'Botble\\Ecommerce\\Models\\Order',34,'INV-34','Dr. Marisol Mohr Jr.','',NULL,'customer@botble.com','+14753683133','755 Alberto Cove, McLaughlinstad, Florida, PT',NULL,121.00,0.00,0.00,0.00,NULL,'',NULL,NULL,121.00,NULL,34,'completed','2024-01-23 01:52:08','2024-01-21 01:52:08','2024-01-23 01:52:08'),(35,'Botble\\Ecommerce\\Models\\Order',35,'INV-35','Dr. Marisol Mohr Jr.','',NULL,'customer@botble.com','+14753683133','755 Alberto Cove, McLaughlinstad, Florida, PT',NULL,726.00,0.00,0.00,0.00,'1','default',NULL,NULL,726.00,NULL,35,'completed','2024-01-23 01:52:09','2024-01-20 13:52:09','2024-01-23 01:52:09'),(36,'Botble\\Ecommerce\\Models\\Order',36,'INV-36','Hattie Breitenberg','',NULL,'langworth.margaretta@example.net','+13417274192','123 Stacy Harbors Suite 621, West Justice, South Carolina, PM',NULL,261.00,0.00,0.00,0.00,'1','default',NULL,NULL,261.00,NULL,36,'completed','2024-01-23 01:52:09','2024-01-21 09:52:09','2024-01-23 01:52:09'),(37,'Botble\\Ecommerce\\Models\\Order',37,'INV-37','Hattie Breitenberg','',NULL,'langworth.margaretta@example.net','+13417274192','123 Stacy Harbors Suite 621, West Justice, South Carolina, PM',NULL,348.00,0.00,0.00,0.00,'1','default',NULL,NULL,348.00,NULL,37,'completed','2024-01-23 01:52:09','2024-01-21 19:52:09','2024-01-23 01:52:09'),(38,'Botble\\Ecommerce\\Models\\Order',38,'INV-38','Hattie Breitenberg','',NULL,'langworth.margaretta@example.net','+13417274192','123 Stacy Harbors Suite 621, West Justice, South Carolina, PM',NULL,333.00,0.00,0.00,0.00,NULL,'',NULL,NULL,333.00,NULL,38,'completed','2024-01-23 01:52:09','2024-01-18 21:52:09','2024-01-23 01:52:09'),(39,'Botble\\Ecommerce\\Models\\Order',39,'INV-39','Dr. Marisol Mohr Jr.','',NULL,'customer@botble.com','+14753683133','755 Alberto Cove, McLaughlinstad, Florida, PT',NULL,540.00,0.00,0.00,0.00,'1','default',NULL,NULL,540.00,NULL,39,'pending',NULL,'2024-01-21 01:52:10','2024-01-23 01:52:10'),(40,'Botble\\Ecommerce\\Models\\Order',40,'INV-40','Dr. Marisol Mohr Jr.','',NULL,'customer@botble.com','+14753683133','755 Alberto Cove, McLaughlinstad, Florida, PT',NULL,240.00,0.00,0.00,0.00,'1','default',NULL,NULL,240.00,NULL,40,'completed','2024-01-23 01:52:10','2024-01-19 17:52:10','2024-01-23 01:52:10'),(41,'Botble\\Ecommerce\\Models\\Order',41,'INV-41','Hattie Breitenberg','',NULL,'langworth.margaretta@example.net','+13417274192','123 Stacy Harbors Suite 621, West Justice, South Carolina, PM',NULL,118.00,0.00,0.00,0.00,'1','default',NULL,NULL,118.00,NULL,41,'pending',NULL,'2024-01-21 19:52:10','2024-01-23 01:52:10'),(42,'Botble\\Ecommerce\\Models\\Order',42,'INV-42','Hattie Breitenberg','',NULL,'langworth.margaretta@example.net','+13417274192','123 Stacy Harbors Suite 621, West Justice, South Carolina, PM',NULL,121.00,0.00,0.00,0.00,'1','default',NULL,NULL,121.00,NULL,42,'completed','2024-01-23 01:52:10','2024-01-21 19:52:10','2024-01-23 01:52:10'),(43,'Botble\\Ecommerce\\Models\\Order',43,'INV-43','Berneice Trantow','',NULL,'mitchel.watsica@example.net','+19526103286','24918 Hayes Radial Apt. 102, Fayburgh, Ohio, CL',NULL,616.00,0.00,0.00,0.00,'1','default',NULL,NULL,616.00,NULL,43,'completed','2024-01-23 01:52:10','2024-01-22 17:52:10','2024-01-23 01:52:10'),(44,'Botble\\Ecommerce\\Models\\Order',44,'INV-44','Berneice Trantow','',NULL,'mitchel.watsica@example.net','+19526103286','24918 Hayes Radial Apt. 102, Fayburgh, Ohio, CL',NULL,726.00,0.00,0.00,0.00,NULL,'',NULL,NULL,726.00,NULL,44,'completed','2024-01-23 01:52:11','2024-01-21 13:52:11','2024-01-23 01:52:11'),(45,'Botble\\Ecommerce\\Models\\Order',45,'INV-45','Dr. Erich Pfannerstill','',NULL,'gmcclure@example.com','+17693080876','44451 Nikolaus Crossing Apt. 302, Reillystad, Michigan, PK',NULL,212.00,0.00,0.00,0.00,'1','default',NULL,NULL,212.00,NULL,45,'completed','2024-01-23 01:52:11','2024-01-22 05:52:11','2024-01-23 01:52:11'),(46,'Botble\\Ecommerce\\Models\\Order',46,'INV-46','Dr. Erich Pfannerstill','',NULL,'gmcclure@example.com','+17693080876','44451 Nikolaus Crossing Apt. 302, Reillystad, Michigan, PK',NULL,252.00,0.00,0.00,0.00,'1','default',NULL,NULL,252.00,NULL,46,'completed','2024-01-23 01:52:11','2024-01-22 13:52:11','2024-01-23 01:52:11'),(47,'Botble\\Ecommerce\\Models\\Order',47,'INV-47','Dr. Erich Pfannerstill','',NULL,'gmcclure@example.com','+17693080876','44451 Nikolaus Crossing Apt. 302, Reillystad, Michigan, PK',NULL,242.00,0.00,0.00,0.00,NULL,'',NULL,NULL,242.00,NULL,47,'completed','2024-01-23 01:52:11','2024-01-22 05:52:11','2024-01-23 01:52:11');
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Prof. Javier Nikolaus','+16824953340','fadel.katharina@example.org','EC','North Carolina','Lake Wiltonburgh','280 Rohan Gateway',1,'70428','shipping_address'),(2,'Prof. Javier Nikolaus','+16824953340','fadel.katharina@example.org','EC','North Carolina','Lake Wiltonburgh','280 Rohan Gateway',2,'70428','shipping_address'),(3,'Prof. Javier Nikolaus','+16824953340','fadel.katharina@example.org','EC','North Carolina','Lake Wiltonburgh','280 Rohan Gateway',3,'70428','shipping_address'),(4,'Dr. Marisol Mohr Jr.','+14753683133','customer@botble.com','PT','Florida','McLaughlinstad','755 Alberto Cove',4,'99443','shipping_address'),(5,'Dr. Marisol Mohr Jr.','+14753683133','customer@botble.com','PT','Florida','McLaughlinstad','755 Alberto Cove',5,'99443','shipping_address'),(6,'Dr. Marisol Mohr Jr.','+14753683133','customer@botble.com','PT','Florida','McLaughlinstad','755 Alberto Cove',6,'99443','shipping_address'),(7,'Hattie Breitenberg','+13417274192','langworth.margaretta@example.net','PM','South Carolina','West Justice','123 Stacy Harbors Suite 621',7,'83341-0504','shipping_address'),(8,'Hattie Breitenberg','+13417274192','langworth.margaretta@example.net','PM','South Carolina','West Justice','123 Stacy Harbors Suite 621',8,'83341-0504','shipping_address'),(9,'Hattie Breitenberg','+13417274192','langworth.margaretta@example.net','PM','South Carolina','West Justice','123 Stacy Harbors Suite 621',9,'83341-0504','shipping_address'),(10,'Hattie Breitenberg','+13417274192','langworth.margaretta@example.net','PM','South Carolina','West Justice','123 Stacy Harbors Suite 621',10,'83341-0504','shipping_address'),(11,'Prof. Javier Nikolaus','+16824953340','fadel.katharina@example.org','EC','North Carolina','Lake Wiltonburgh','280 Rohan Gateway',11,'70428','shipping_address'),(12,'Prof. Javier Nikolaus','+16824953340','fadel.katharina@example.org','EC','North Carolina','Lake Wiltonburgh','280 Rohan Gateway',12,'70428','shipping_address'),(13,'Prof. Javier Nikolaus','+16824953340','fadel.katharina@example.org','EC','North Carolina','Lake Wiltonburgh','280 Rohan Gateway',13,'70428','shipping_address'),(14,'Prof. Javier Nikolaus','+16824953340','fadel.katharina@example.org','EC','North Carolina','Lake Wiltonburgh','280 Rohan Gateway',14,'70428','shipping_address'),(15,'Dr. Stacy Gibson','+18165128098','andre.jones@example.org','SX','New Jersey','Lake Percivalchester','1844 Mertie Club Suite 742',15,'80345','shipping_address'),(16,'Dr. Stacy Gibson','+18165128098','andre.jones@example.org','SX','New Jersey','Lake Percivalchester','1844 Mertie Club Suite 742',16,'80345','shipping_address'),(17,'Dr. Stacy Gibson','+18165128098','andre.jones@example.org','SX','New Jersey','Lake Percivalchester','1844 Mertie Club Suite 742',17,'80345','shipping_address'),(18,'Dr. Marisol Mohr Jr.','+14753683133','customer@botble.com','PT','Florida','McLaughlinstad','755 Alberto Cove',18,'99443','shipping_address'),(19,'Dr. Marisol Mohr Jr.','+14753683133','customer@botble.com','PT','Florida','McLaughlinstad','755 Alberto Cove',19,'99443','shipping_address'),(20,'Prof. Javier Nikolaus','+16824953340','fadel.katharina@example.org','EC','North Carolina','Lake Wiltonburgh','280 Rohan Gateway',20,'70428','shipping_address'),(21,'Prof. Javier Nikolaus','+16824953340','fadel.katharina@example.org','EC','North Carolina','Lake Wiltonburgh','280 Rohan Gateway',21,'70428','shipping_address'),(22,'Dr. Marisol Mohr Jr.','+14753683133','customer@botble.com','PT','Florida','McLaughlinstad','755 Alberto Cove',22,'99443','shipping_address'),(23,'Dr. Marisol Mohr Jr.','+14753683133','customer@botble.com','PT','Florida','McLaughlinstad','755 Alberto Cove',23,'99443','shipping_address'),(24,'Dr. Marisol Mohr Jr.','+14753683133','customer@botble.com','PT','Florida','McLaughlinstad','755 Alberto Cove',24,'99443','shipping_address'),(25,'Dr. Marisol Mohr Jr.','+14753683133','customer@botble.com','PT','Florida','McLaughlinstad','755 Alberto Cove',25,'99443','shipping_address'),(26,'Dr. Marisol Mohr Jr.','+14753683133','customer@botble.com','PT','Florida','McLaughlinstad','755 Alberto Cove',26,'99443','shipping_address'),(27,'Dr. Marisol Mohr Jr.','+14753683133','customer@botble.com','PT','Florida','McLaughlinstad','755 Alberto Cove',27,'99443','shipping_address'),(28,'Dr. Marisol Mohr Jr.','+14753683133','customer@botble.com','PT','Florida','McLaughlinstad','755 Alberto Cove',28,'99443','shipping_address'),(29,'Dr. Marisol Mohr Jr.','+14753683133','customer@botble.com','PT','Florida','McLaughlinstad','755 Alberto Cove',29,'99443','shipping_address'),(30,'Hattie Breitenberg','+13417274192','langworth.margaretta@example.net','PM','South Carolina','West Justice','123 Stacy Harbors Suite 621',30,'83341-0504','shipping_address'),(31,'Hattie Breitenberg','+13417274192','langworth.margaretta@example.net','PM','South Carolina','West Justice','123 Stacy Harbors Suite 621',31,'83341-0504','shipping_address'),(32,'Hattie Breitenberg','+13417274192','langworth.margaretta@example.net','PM','South Carolina','West Justice','123 Stacy Harbors Suite 621',32,'83341-0504','shipping_address'),(33,'Hattie Breitenberg','+13417274192','langworth.margaretta@example.net','PM','South Carolina','West Justice','123 Stacy Harbors Suite 621',33,'83341-0504','shipping_address'),(34,'Dr. Marisol Mohr Jr.','+14753683133','customer@botble.com','PT','Florida','McLaughlinstad','755 Alberto Cove',34,'99443','shipping_address'),(35,'Dr. Marisol Mohr Jr.','+14753683133','customer@botble.com','PT','Florida','McLaughlinstad','755 Alberto Cove',35,'99443','shipping_address'),(36,'Hattie Breitenberg','+13417274192','langworth.margaretta@example.net','PM','South Carolina','West Justice','123 Stacy Harbors Suite 621',36,'83341-0504','shipping_address'),(37,'Hattie Breitenberg','+13417274192','langworth.margaretta@example.net','PM','South Carolina','West Justice','123 Stacy Harbors Suite 621',37,'83341-0504','shipping_address'),(38,'Hattie Breitenberg','+13417274192','langworth.margaretta@example.net','PM','South Carolina','West Justice','123 Stacy Harbors Suite 621',38,'83341-0504','shipping_address'),(39,'Dr. Marisol Mohr Jr.','+14753683133','customer@botble.com','PT','Florida','McLaughlinstad','755 Alberto Cove',39,'99443','shipping_address'),(40,'Dr. Marisol Mohr Jr.','+14753683133','customer@botble.com','PT','Florida','McLaughlinstad','755 Alberto Cove',40,'99443','shipping_address'),(41,'Hattie Breitenberg','+13417274192','langworth.margaretta@example.net','PM','South Carolina','West Justice','123 Stacy Harbors Suite 621',41,'83341-0504','shipping_address'),(42,'Hattie Breitenberg','+13417274192','langworth.margaretta@example.net','PM','South Carolina','West Justice','123 Stacy Harbors Suite 621',42,'83341-0504','shipping_address'),(43,'Berneice Trantow','+19526103286','mitchel.watsica@example.net','CL','Ohio','Fayburgh','24918 Hayes Radial Apt. 102',43,'88431','shipping_address'),(44,'Berneice Trantow','+19526103286','mitchel.watsica@example.net','CL','Ohio','Fayburgh','24918 Hayes Radial Apt. 102',44,'88431','shipping_address'),(45,'Dr. Erich Pfannerstill','+17693080876','gmcclure@example.com','PK','Michigan','Reillystad','44451 Nikolaus Crossing Apt. 302',45,'80163','shipping_address'),(46,'Dr. Erich Pfannerstill','+17693080876','gmcclure@example.com','PK','Michigan','Reillystad','44451 Nikolaus Crossing Apt. 302',46,'80163','shipping_address'),(47,'Dr. Erich Pfannerstill','+17693080876','gmcclure@example.com','PK','Michigan','Reillystad','44451 Nikolaus Crossing Apt. 302',47,'80163','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2024-01-13 01:52:01','2024-01-13 01:52:01'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2024-01-13 01:52:01','2024-01-13 01:52:01'),(3,'confirm_payment','Payment was confirmed (amount $42.00) by %user_name%',0,1,NULL,'2024-01-23 01:52:01','2024-01-23 01:52:01'),(4,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,1,NULL,'2024-01-23 01:52:01','2024-01-23 01:52:01'),(5,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2024-01-11 09:52:01','2024-01-11 09:52:01'),(6,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2024-01-11 09:52:01','2024-01-11 09:52:01'),(7,'confirm_payment','Payment was confirmed (amount $375.00) by %user_name%',0,2,NULL,'2024-01-23 01:52:01','2024-01-23 01:52:01'),(8,'create_shipment','Created shipment for order',0,2,NULL,'2024-01-23 01:52:01','2024-01-23 01:52:01'),(9,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2024-01-21 09:52:01','2024-01-21 09:52:01'),(10,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2024-01-21 09:52:01','2024-01-21 09:52:01'),(11,'confirm_payment','Payment was confirmed (amount $375.00) by %user_name%',0,3,NULL,'2024-01-23 01:52:01','2024-01-23 01:52:01'),(12,'create_shipment','Created shipment for order',0,3,NULL,'2024-01-23 01:52:02','2024-01-23 01:52:02'),(13,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2024-01-18 07:52:02','2024-01-18 07:52:02'),(14,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2024-01-18 07:52:02','2024-01-18 07:52:02'),(15,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2024-01-21 11:52:02','2024-01-21 11:52:02'),(16,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2024-01-21 11:52:02','2024-01-21 11:52:02'),(17,'confirm_payment','Payment was confirmed (amount $375.00) by %user_name%',0,5,NULL,'2024-01-23 01:52:02','2024-01-23 01:52:02'),(18,'create_shipment','Created shipment for order',0,5,NULL,'2024-01-23 01:52:02','2024-01-23 01:52:02'),(19,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,NULL,'2024-01-23 01:52:02','2024-01-23 01:52:02'),(20,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2024-01-21 11:52:02','2024-01-21 11:52:02'),(21,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2024-01-21 11:52:02','2024-01-21 11:52:02'),(22,'create_shipment','Created shipment for order',0,6,NULL,'2024-01-23 01:52:02','2024-01-23 01:52:02'),(23,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,6,NULL,'2024-01-23 01:52:02','2024-01-23 01:52:02'),(24,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2024-01-21 13:52:02','2024-01-21 13:52:02'),(25,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2024-01-21 13:52:02','2024-01-21 13:52:02'),(26,'create_shipment','Created shipment for order',0,7,NULL,'2024-01-23 01:52:03','2024-01-23 01:52:03'),(27,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2024-01-11 01:52:03','2024-01-11 01:52:03'),(28,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2024-01-11 01:52:03','2024-01-11 01:52:03'),(29,'confirm_payment','Payment was confirmed (amount $342.00) by %user_name%',0,8,NULL,'2024-01-23 01:52:03','2024-01-23 01:52:03'),(30,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,8,NULL,'2024-01-23 01:52:03','2024-01-23 01:52:03'),(31,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2024-01-11 17:52:03','2024-01-11 17:52:03'),(32,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2024-01-11 17:52:03','2024-01-11 17:52:03'),(33,'confirm_payment','Payment was confirmed (amount $299.00) by %user_name%',0,9,NULL,'2024-01-23 01:52:03','2024-01-23 01:52:03'),(34,'create_shipment','Created shipment for order',0,9,NULL,'2024-01-23 01:52:03','2024-01-23 01:52:03'),(35,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2024-01-21 15:52:03','2024-01-21 15:52:03'),(36,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2024-01-21 15:52:03','2024-01-21 15:52:03'),(37,'confirm_payment','Payment was confirmed (amount $126.00) by %user_name%',0,10,NULL,'2024-01-23 01:52:03','2024-01-23 01:52:03'),(38,'create_shipment','Created shipment for order',0,10,NULL,'2024-01-23 01:52:03','2024-01-23 01:52:03'),(39,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2024-01-20 09:52:03','2024-01-20 09:52:03'),(40,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2024-01-20 09:52:03','2024-01-20 09:52:03'),(41,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2024-01-15 01:52:04','2024-01-15 01:52:04'),(42,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2024-01-15 01:52:04','2024-01-15 01:52:04'),(43,'create_shipment','Created shipment for order',0,12,NULL,'2024-01-23 01:52:04','2024-01-23 01:52:04'),(44,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,NULL,'2024-01-23 01:52:04','2024-01-23 01:52:04'),(45,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2024-01-15 13:52:04','2024-01-15 13:52:04'),(46,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2024-01-15 13:52:04','2024-01-15 13:52:04'),(47,'confirm_payment','Payment was confirmed (amount $1,121.00) by %user_name%',0,13,NULL,'2024-01-23 01:52:04','2024-01-23 01:52:04'),(48,'create_shipment','Created shipment for order',0,13,NULL,'2024-01-23 01:52:04','2024-01-23 01:52:04'),(49,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2024-01-21 19:52:04','2024-01-21 19:52:04'),(50,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2024-01-21 19:52:04','2024-01-21 19:52:04'),(51,'confirm_payment','Payment was confirmed (amount $228.00) by %user_name%',0,14,NULL,'2024-01-23 01:52:04','2024-01-23 01:52:04'),(52,'create_shipment','Created shipment for order',0,14,NULL,'2024-01-23 01:52:04','2024-01-23 01:52:04'),(53,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,NULL,'2024-01-23 01:52:04','2024-01-23 01:52:04'),(54,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2024-01-20 17:52:04','2024-01-20 17:52:04'),(55,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2024-01-20 17:52:04','2024-01-20 17:52:04'),(56,'confirm_payment','Payment was confirmed (amount $348.00) by %user_name%',0,15,NULL,'2024-01-23 01:52:04','2024-01-23 01:52:04'),(57,'create_shipment','Created shipment for order',0,15,NULL,'2024-01-23 01:52:04','2024-01-23 01:52:04'),(58,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,NULL,'2024-01-23 01:52:04','2024-01-23 01:52:04'),(59,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2024-01-21 21:52:04','2024-01-21 21:52:04'),(60,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2024-01-21 21:52:04','2024-01-21 21:52:04'),(61,'confirm_payment','Payment was confirmed (amount $114.00) by %user_name%',0,16,NULL,'2024-01-23 01:52:05','2024-01-23 01:52:05'),(62,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,16,NULL,'2024-01-23 01:52:05','2024-01-23 01:52:05'),(63,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2024-01-21 21:52:05','2024-01-21 21:52:05'),(64,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2024-01-21 21:52:05','2024-01-21 21:52:05'),(65,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2024-01-20 21:52:05','2024-01-20 21:52:05'),(66,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2024-01-20 21:52:05','2024-01-20 21:52:05'),(67,'confirm_payment','Payment was confirmed (amount $87.00) by %user_name%',0,18,NULL,'2024-01-23 01:52:05','2024-01-23 01:52:05'),(68,'create_shipment','Created shipment for order',0,18,NULL,'2024-01-23 01:52:05','2024-01-23 01:52:05'),(69,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,NULL,'2024-01-23 01:52:05','2024-01-23 01:52:05'),(70,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2024-01-15 11:52:05','2024-01-15 11:52:05'),(71,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2024-01-15 11:52:05','2024-01-15 11:52:05'),(72,'confirm_payment','Payment was confirmed (amount $42.00) by %user_name%',0,19,NULL,'2024-01-23 01:52:05','2024-01-23 01:52:05'),(73,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,19,NULL,'2024-01-23 01:52:05','2024-01-23 01:52:05'),(74,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2024-01-22 01:52:05','2024-01-22 01:52:05'),(75,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2024-01-22 01:52:05','2024-01-22 01:52:05'),(76,'confirm_payment','Payment was confirmed (amount $315.00) by %user_name%',0,20,NULL,'2024-01-23 01:52:05','2024-01-23 01:52:05'),(77,'create_shipment','Created shipment for order',0,20,NULL,'2024-01-23 01:52:06','2024-01-23 01:52:06'),(78,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2024-01-21 01:52:06','2024-01-21 01:52:06'),(79,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2024-01-21 01:52:06','2024-01-21 01:52:06'),(80,'confirm_payment','Payment was confirmed (amount $111.00) by %user_name%',0,21,NULL,'2024-01-23 01:52:06','2024-01-23 01:52:06'),(81,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,21,NULL,'2024-01-23 01:52:06','2024-01-23 01:52:06'),(82,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2024-01-14 19:52:06','2024-01-14 19:52:06'),(83,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2024-01-14 19:52:06','2024-01-14 19:52:06'),(84,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2024-01-22 05:52:06','2024-01-22 05:52:06'),(85,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2024-01-22 05:52:06','2024-01-22 05:52:06'),(86,'confirm_payment','Payment was confirmed (amount $114.00) by %user_name%',0,23,NULL,'2024-01-23 01:52:06','2024-01-23 01:52:06'),(87,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,23,NULL,'2024-01-23 01:52:06','2024-01-23 01:52:06'),(88,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2024-01-14 17:52:06','2024-01-14 17:52:06'),(89,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2024-01-14 17:52:06','2024-01-14 17:52:06'),(90,'confirm_payment','Payment was confirmed (amount $117.00) by %user_name%',0,24,NULL,'2024-01-23 01:52:06','2024-01-23 01:52:06'),(91,'create_shipment','Created shipment for order',0,24,NULL,'2024-01-23 01:52:06','2024-01-23 01:52:06'),(92,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,NULL,'2024-01-23 01:52:06','2024-01-23 01:52:06'),(93,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2024-01-22 05:52:06','2024-01-22 05:52:06'),(94,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2024-01-22 05:52:06','2024-01-22 05:52:06'),(95,'confirm_payment','Payment was confirmed (amount $598.00) by %user_name%',0,25,NULL,'2024-01-23 01:52:06','2024-01-23 01:52:06'),(96,'create_shipment','Created shipment for order',0,25,NULL,'2024-01-23 01:52:07','2024-01-23 01:52:07'),(97,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,25,NULL,'2024-01-23 01:52:07','2024-01-23 01:52:07'),(98,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2024-01-22 07:52:07','2024-01-22 07:52:07'),(99,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2024-01-22 07:52:07','2024-01-22 07:52:07'),(100,'confirm_payment','Payment was confirmed (amount $718.00) by %user_name%',0,26,NULL,'2024-01-23 01:52:07','2024-01-23 01:52:07'),(101,'create_shipment','Created shipment for order',0,26,NULL,'2024-01-23 01:52:07','2024-01-23 01:52:07'),(102,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2024-01-21 13:52:07','2024-01-21 13:52:07'),(103,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2024-01-21 13:52:07','2024-01-21 13:52:07'),(104,'create_shipment','Created shipment for order',0,27,NULL,'2024-01-23 01:52:07','2024-01-23 01:52:07'),(105,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2024-01-19 17:52:07','2024-01-19 17:52:07'),(106,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2024-01-19 17:52:07','2024-01-19 17:52:07'),(107,'confirm_payment','Payment was confirmed (amount $115.00) by %user_name%',0,28,NULL,'2024-01-23 01:52:07','2024-01-23 01:52:07'),(108,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,28,NULL,'2024-01-23 01:52:07','2024-01-23 01:52:07'),(109,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2024-01-17 01:52:07','2024-01-17 01:52:07'),(110,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2024-01-17 01:52:07','2024-01-17 01:52:07'),(111,'confirm_payment','Payment was confirmed (amount $234.00) by %user_name%',0,29,NULL,'2024-01-23 01:52:07','2024-01-23 01:52:07'),(112,'create_shipment','Created shipment for order',0,29,NULL,'2024-01-23 01:52:07','2024-01-23 01:52:07'),(113,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2024-01-19 13:52:07','2024-01-19 13:52:07'),(114,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2024-01-19 13:52:07','2024-01-19 13:52:07'),(115,'create_shipment','Created shipment for order',0,30,NULL,'2024-01-23 01:52:08','2024-01-23 01:52:08'),(116,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2024-01-19 13:52:08','2024-01-19 13:52:08'),(117,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2024-01-19 13:52:08','2024-01-19 13:52:08'),(118,'confirm_payment','Payment was confirmed (amount $250.00) by %user_name%',0,31,NULL,'2024-01-23 01:52:08','2024-01-23 01:52:08'),(119,'create_shipment','Created shipment for order',0,31,NULL,'2024-01-23 01:52:08','2024-01-23 01:52:08'),(120,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2024-01-18 09:52:08','2024-01-18 09:52:08'),(121,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2024-01-18 09:52:08','2024-01-18 09:52:08'),(122,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2024-01-18 23:52:08','2024-01-18 23:52:08'),(123,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2024-01-18 23:52:08','2024-01-18 23:52:08'),(124,'confirm_payment','Payment was confirmed (amount $240.00) by %user_name%',0,33,NULL,'2024-01-23 01:52:08','2024-01-23 01:52:08'),(125,'create_shipment','Created shipment for order',0,33,NULL,'2024-01-23 01:52:08','2024-01-23 01:52:08'),(126,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2024-01-21 01:52:08','2024-01-21 01:52:08'),(127,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2024-01-21 01:52:08','2024-01-21 01:52:08'),(128,'confirm_payment','Payment was confirmed (amount $121.00) by %user_name%',0,34,NULL,'2024-01-23 01:52:08','2024-01-23 01:52:08'),(129,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,34,NULL,'2024-01-23 01:52:09','2024-01-23 01:52:09'),(130,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2024-01-20 13:52:09','2024-01-20 13:52:09'),(131,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2024-01-20 13:52:09','2024-01-20 13:52:09'),(132,'confirm_payment','Payment was confirmed (amount $726.00) by %user_name%',0,35,NULL,'2024-01-23 01:52:09','2024-01-23 01:52:09'),(133,'create_shipment','Created shipment for order',0,35,NULL,'2024-01-23 01:52:09','2024-01-23 01:52:09'),(134,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,35,NULL,'2024-01-23 01:52:09','2024-01-23 01:52:09'),(135,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2024-01-21 09:52:09','2024-01-21 09:52:09'),(136,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2024-01-21 09:52:09','2024-01-21 09:52:09'),(137,'confirm_payment','Payment was confirmed (amount $261.00) by %user_name%',0,36,NULL,'2024-01-23 01:52:09','2024-01-23 01:52:09'),(138,'create_shipment','Created shipment for order',0,36,NULL,'2024-01-23 01:52:09','2024-01-23 01:52:09'),(139,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,36,NULL,'2024-01-23 01:52:09','2024-01-23 01:52:09'),(140,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2024-01-21 19:52:09','2024-01-21 19:52:09'),(141,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2024-01-21 19:52:09','2024-01-21 19:52:09'),(142,'confirm_payment','Payment was confirmed (amount $348.00) by %user_name%',0,37,NULL,'2024-01-23 01:52:09','2024-01-23 01:52:09'),(143,'create_shipment','Created shipment for order',0,37,NULL,'2024-01-23 01:52:09','2024-01-23 01:52:09'),(144,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2024-01-18 21:52:09','2024-01-18 21:52:09'),(145,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2024-01-18 21:52:09','2024-01-18 21:52:09'),(146,'confirm_payment','Payment was confirmed (amount $333.00) by %user_name%',0,38,NULL,'2024-01-23 01:52:09','2024-01-23 01:52:09'),(147,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,38,NULL,'2024-01-23 01:52:10','2024-01-23 01:52:10'),(148,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2024-01-21 01:52:10','2024-01-21 01:52:10'),(149,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2024-01-21 01:52:10','2024-01-21 01:52:10'),(150,'create_shipment','Created shipment for order',0,39,NULL,'2024-01-23 01:52:10','2024-01-23 01:52:10'),(151,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2024-01-19 17:52:10','2024-01-19 17:52:10'),(152,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2024-01-19 17:52:10','2024-01-19 17:52:10'),(153,'confirm_payment','Payment was confirmed (amount $240.00) by %user_name%',0,40,NULL,'2024-01-23 01:52:10','2024-01-23 01:52:10'),(154,'create_shipment','Created shipment for order',0,40,NULL,'2024-01-23 01:52:10','2024-01-23 01:52:10'),(155,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2024-01-21 19:52:10','2024-01-21 19:52:10'),(156,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2024-01-21 19:52:10','2024-01-21 19:52:10'),(157,'create_shipment','Created shipment for order',0,41,NULL,'2024-01-23 01:52:10','2024-01-23 01:52:10'),(158,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2024-01-21 19:52:10','2024-01-21 19:52:10'),(159,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2024-01-21 19:52:10','2024-01-21 19:52:10'),(160,'confirm_payment','Payment was confirmed (amount $121.00) by %user_name%',0,42,NULL,'2024-01-23 01:52:10','2024-01-23 01:52:10'),(161,'create_shipment','Created shipment for order',0,42,NULL,'2024-01-23 01:52:10','2024-01-23 01:52:10'),(162,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,42,NULL,'2024-01-23 01:52:10','2024-01-23 01:52:10'),(163,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2024-01-22 17:52:10','2024-01-22 17:52:10'),(164,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2024-01-22 17:52:10','2024-01-22 17:52:10'),(165,'confirm_payment','Payment was confirmed (amount $616.00) by %user_name%',0,43,NULL,'2024-01-23 01:52:10','2024-01-23 01:52:10'),(166,'create_shipment','Created shipment for order',0,43,NULL,'2024-01-23 01:52:11','2024-01-23 01:52:11'),(167,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,43,NULL,'2024-01-23 01:52:11','2024-01-23 01:52:11'),(168,'create_order_from_seeder','Order is created from the checkout page',NULL,44,NULL,'2024-01-21 13:52:11','2024-01-21 13:52:11'),(169,'confirm_order','Order was verified by %user_name%',0,44,NULL,'2024-01-21 13:52:11','2024-01-21 13:52:11'),(170,'confirm_payment','Payment was confirmed (amount $726.00) by %user_name%',0,44,NULL,'2024-01-23 01:52:11','2024-01-23 01:52:11'),(171,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,44,NULL,'2024-01-23 01:52:11','2024-01-23 01:52:11'),(172,'create_order_from_seeder','Order is created from the checkout page',NULL,45,NULL,'2024-01-22 05:52:11','2024-01-22 05:52:11'),(173,'confirm_order','Order was verified by %user_name%',0,45,NULL,'2024-01-22 05:52:11','2024-01-22 05:52:11'),(174,'confirm_payment','Payment was confirmed (amount $212.00) by %user_name%',0,45,NULL,'2024-01-23 01:52:11','2024-01-23 01:52:11'),(175,'create_shipment','Created shipment for order',0,45,NULL,'2024-01-23 01:52:11','2024-01-23 01:52:11'),(176,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,45,NULL,'2024-01-23 01:52:11','2024-01-23 01:52:11'),(177,'create_order_from_seeder','Order is created from the checkout page',NULL,46,NULL,'2024-01-22 13:52:11','2024-01-22 13:52:11'),(178,'confirm_order','Order was verified by %user_name%',0,46,NULL,'2024-01-22 13:52:11','2024-01-22 13:52:11'),(179,'confirm_payment','Payment was confirmed (amount $252.00) by %user_name%',0,46,NULL,'2024-01-23 01:52:11','2024-01-23 01:52:11'),(180,'create_shipment','Created shipment for order',0,46,NULL,'2024-01-23 01:52:11','2024-01-23 01:52:11'),(181,'create_order_from_seeder','Order is created from the checkout page',NULL,47,NULL,'2024-01-22 05:52:11','2024-01-22 05:52:11'),(182,'confirm_order','Order was verified by %user_name%',0,47,NULL,'2024-01-22 05:52:11','2024-01-22 05:52:11'),(183,'confirm_payment','Payment was confirmed (amount $242.00) by %user_name%',0,47,NULL,'2024-01-23 01:52:11','2024-01-23 01:52:11'),(184,'update_status','Changed status of shipping to: . Updated by: %user_name%',0,47,NULL,'2024-01-23 01:52:12','2024-01-23 01:52:12'),(185,'update_status','Order confirmed by %user_name%',0,5,NULL,'2024-01-23 01:52:12','2024-01-23 01:52:12'),(186,'update_status','Order confirmed by %user_name%',0,14,NULL,'2024-01-23 01:52:12','2024-01-23 01:52:12'),(187,'update_status','Order confirmed by %user_name%',0,15,NULL,'2024-01-23 01:52:13','2024-01-23 01:52:13'),(188,'update_status','Order confirmed by %user_name%',0,18,NULL,'2024-01-23 01:52:13','2024-01-23 01:52:13'),(189,'update_status','Order confirmed by %user_name%',0,24,NULL,'2024-01-23 01:52:14','2024-01-23 01:52:14'),(190,'update_status','Order confirmed by %user_name%',0,25,NULL,'2024-01-23 01:52:14','2024-01-23 01:52:14'),(191,'update_status','Order confirmed by %user_name%',0,35,NULL,'2024-01-23 01:52:15','2024-01-23 01:52:15'),(192,'update_status','Order confirmed by %user_name%',0,36,NULL,'2024-01-23 01:52:15','2024-01-23 01:52:15'),(193,'update_status','Order confirmed by %user_name%',0,42,NULL,'2024-01-23 01:52:16','2024-01-23 01:52:16'),(194,'update_status','Order confirmed by %user_name%',0,43,NULL,'2024-01-23 01:52:17','2024-01-23 01:52:17'),(195,'update_status','Order confirmed by %user_name%',0,45,NULL,'2024-01-23 01:52:17','2024-01-23 01:52:17');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,1,42.00,0.00,'{\"sku\":\"HS-160-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 4 Boxes)\"}',NULL,35,'Blue Diamond Almonds Lightly (Digital)','products/5.jpg',872.00,0,'2024-01-23 01:52:01','2024-01-23 01:52:01','digital',3,NULL),(2,2,3,125.00,0.00,'{\"sku\":\"HS-167-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 5 Boxes)\"}',NULL,53,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','products/12-1.jpg',2259.00,0,'2024-01-23 01:52:01','2024-01-23 01:52:01','physical',0,NULL),(3,3,3,125.00,0.00,'{\"sku\":\"HS-142-A0-A3\",\"attributes\":\"(Weight: 3KG, Boxes: 3 Boxes)\"}',NULL,62,'Oroweat Country Buttermilk Bread','products/15.jpg',1962.00,0,'2024-01-23 01:52:01','2024-01-23 01:52:01','physical',0,NULL),(4,4,3,432.00,0.00,'{\"sku\":\"HS-113-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}',NULL,26,'Seeds of Change Organic Quinoe (Digital)','products/1-1.jpg',2241.00,0,'2024-01-23 01:52:02','2024-01-23 01:52:02','digital',3,NULL),(5,5,3,125.00,0.00,'{\"sku\":\"HS-142-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}',NULL,60,'Oroweat Country Buttermilk Bread','products/15-1.jpg',1962.00,0,'2024-01-23 01:52:02','2024-01-23 01:52:02','physical',0,NULL),(6,6,2,119.00,0.00,'{\"sku\":\"HS-100-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 1 Box)\"}',NULL,80,'Colorful Banana','products/23.jpg',1328.00,0,'2024-01-23 01:52:02','2024-01-23 01:52:02','physical',0,NULL),(7,6,2,119.00,0.00,'{\"sku\":\"HS-100-A0-A2\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}',NULL,82,'Colorful Banana','products/23.jpg',1328.00,0,'2024-01-23 01:52:02','2024-01-23 01:52:02','physical',0,NULL),(8,7,2,389.00,0.00,'{\"sku\":\"HS-178-A0\",\"attributes\":\"(Weight: 5KG, Boxes: 5 Boxes)\"}',NULL,30,'Angie’s Boomchickapop Sweet & Salty Kettle Corn','products/3.jpg',1388.00,0,'2024-01-23 01:52:02','2024-01-23 01:52:02','physical',0,NULL),(9,8,3,114.00,0.00,'{\"sku\":\"HS-128-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}',NULL,46,'Gorton’s Beer Battered Fish Fillets (Digital)','products/9.jpg',2340.00,0,'2024-01-23 01:52:03','2024-01-23 01:52:03','digital',2,NULL),(10,9,2,87.00,0.00,'{\"sku\":\"HS-113-A0-A3\",\"attributes\":\"(Boxes: 3 Boxes, Weight: 5KG)\"}',NULL,34,'Foster Farms Takeout Crispy Classic','products/4.jpg',1586.00,0,'2024-01-23 01:52:03','2024-01-23 01:52:03','physical',0,NULL),(11,9,1,125.00,0.00,'{\"sku\":\"HS-142-A0-A2\",\"attributes\":\"(Weight: 3KG, Boxes: 3 Boxes)\"}',NULL,61,'Oroweat Country Buttermilk Bread','products/15.jpg',654.00,0,'2024-01-23 01:52:03','2024-01-23 01:52:03','physical',0,NULL),(12,10,1,126.00,0.00,'{\"sku\":\"HS-113-A0\",\"attributes\":\"(Boxes: 3 Boxes, Weight: 5KG)\"}',NULL,43,'Encore Seafoods Stuffed Alaskan','products/8.jpg',512.00,0,'2024-01-23 01:52:03','2024-01-23 01:52:03','physical',0,NULL),(13,11,3,42.00,0.00,'{\"sku\":\"HS-160-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}',NULL,36,'Blue Diamond Almonds Lightly (Digital)','products/5-1.jpg',2616.00,0,'2024-01-23 01:52:03','2024-01-23 01:52:03','digital',2,NULL),(14,12,1,229.00,0.00,'{\"sku\":\"HS-164-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 5 Boxes)\"}',NULL,47,'Haagen-Dazs Caramel Cone Ice Cream','products/10.jpg',804.00,0,'2024-01-23 01:52:04','2024-01-23 01:52:04','physical',0,NULL),(15,13,2,346.00,0.00,'{\"sku\":\"HS-106-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 4 Boxes)\"}',NULL,29,'All Natural Italian-Style Chicken Meatballs','products/2-1.jpg',1288.00,0,'2024-01-23 01:52:04','2024-01-23 01:52:04','physical',0,NULL),(16,13,1,87.00,0.00,'{\"sku\":\"HS-113-A0\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 3KG)\"}',NULL,31,'Foster Farms Takeout Crispy Classic','products/4.jpg',793.00,0,'2024-01-23 01:52:04','2024-01-23 01:52:04','physical',0,NULL),(17,13,3,114.00,0.00,'{\"sku\":\"HS-188-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 3 Boxes)\"}',NULL,84,'Signature Wood-Fired Mushroom and Caramelized','products/24-1.jpg',1506.00,0,'2024-01-23 01:52:04','2024-01-23 01:52:04','physical',0,NULL),(18,14,2,114.00,0.00,'{\"sku\":\"HS-176-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 1 Box)\"}',NULL,51,'Nestle Original Coffee-Mate Coffee Creamer','products/11-1.jpg',1698.00,0,'2024-01-23 01:52:04','2024-01-23 01:52:04','physical',0,NULL),(19,15,3,116.00,0.00,'{\"sku\":\"HS-148-A0\",\"attributes\":\"(Weight: 5KG, Boxes: 5 Boxes)\"}',NULL,41,'Canada Dry Ginger Ale – 2 L Bottle','products/7.jpg',1989.00,0,'2024-01-23 01:52:04','2024-01-23 01:52:04','physical',0,NULL),(20,16,1,114.00,0.00,'{\"sku\":\"HS-128-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}',NULL,46,'Gorton’s Beer Battered Fish Fillets (Digital)','products/9.jpg',780.00,0,'2024-01-23 01:52:04','2024-01-23 01:52:04','digital',8,NULL),(21,17,3,111.00,0.00,'{\"sku\":\"HS-192-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 4 Boxes)\"}',NULL,75,'Chen Watermelon (Digital)','products/21-1.jpg',2376.00,0,'2024-01-23 01:52:05','2024-01-23 01:52:05','digital',7,NULL),(22,18,1,87.00,0.00,'{\"sku\":\"HS-113-A0-A3\",\"attributes\":\"(Boxes: 3 Boxes, Weight: 5KG)\"}',NULL,34,'Foster Farms Takeout Crispy Classic','products/4.jpg',793.00,0,'2024-01-23 01:52:05','2024-01-23 01:52:05','physical',0,NULL),(23,19,1,42.00,0.00,'{\"sku\":\"HS-160-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 4 Boxes)\"}',NULL,35,'Blue Diamond Almonds Lightly (Digital)','products/5.jpg',872.00,0,'2024-01-23 01:52:05','2024-01-23 01:52:05','digital',6,NULL),(24,20,1,87.00,0.00,'{\"sku\":\"HS-113-A0-A1\",\"attributes\":\"(Boxes: 3 Boxes, Weight: 5KG)\"}',NULL,32,'Foster Farms Takeout Crispy Classic','products/4-1.jpg',793.00,0,'2024-01-23 01:52:05','2024-01-23 01:52:05','physical',0,NULL),(25,20,2,114.00,0.00,'{\"sku\":\"HS-188-A0-A2\",\"attributes\":\"(Weight: 3KG, Boxes: 5 Boxes)\"}',NULL,85,'Signature Wood-Fired Mushroom and Caramelized','products/24.jpg',1004.00,0,'2024-01-23 01:52:05','2024-01-23 01:52:05','physical',0,NULL),(26,21,1,111.00,0.00,'{\"sku\":\"HS-192-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 4KG)\"}',NULL,74,'Chen Watermelon (Digital)','products/21.jpg',792.00,0,'2024-01-23 01:52:06','2024-01-23 01:52:06','digital',9,NULL),(27,22,3,114.00,0.00,'{\"sku\":\"HS-128-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}',NULL,46,'Gorton’s Beer Battered Fish Fillets (Digital)','products/9.jpg',2340.00,0,'2024-01-23 01:52:06','2024-01-23 01:52:06','digital',2,NULL),(28,22,3,121.00,0.00,'{\"sku\":\"HS-160-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 5 Boxes)\"}',NULL,54,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','products/13.jpg',2202.00,0,'2024-01-23 01:52:06','2024-01-23 01:52:06','digital',9,NULL),(29,23,1,114.00,0.00,'{\"sku\":\"HS-128-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}',NULL,46,'Gorton’s Beer Battered Fish Fillets (Digital)','products/9.jpg',780.00,0,'2024-01-23 01:52:06','2024-01-23 01:52:06','digital',8,NULL),(30,24,1,117.00,0.00,'{\"sku\":\"HS-188-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 5KG)\"}',NULL,72,'Simply Lemonade with Raspberry Juice','products/19.jpg',562.00,0,'2024-01-23 01:52:06','2024-01-23 01:52:06','physical',0,NULL),(31,25,3,120.00,0.00,'{\"sku\":\"HS-149-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 2KG)\"}',NULL,78,'Organic Cage-Free Grade A Large Brown Eggs','products/22.jpg',2436.00,0,'2024-01-23 01:52:06','2024-01-23 01:52:06','physical',0,NULL),(32,25,2,119.00,0.00,'{\"sku\":\"HS-100-A0-A2\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}',NULL,82,'Colorful Banana','products/23.jpg',1328.00,0,'2024-01-23 01:52:06','2024-01-23 01:52:06','physical',0,NULL),(33,26,1,229.00,0.00,'{\"sku\":\"HS-164-A0-A1\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}',NULL,48,'Haagen-Dazs Caramel Cone Ice Cream','products/10-1.jpg',804.00,0,'2024-01-23 01:52:07','2024-01-23 01:52:07','physical',0,NULL),(34,26,3,125.00,0.00,'{\"sku\":\"HS-142-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}',NULL,60,'Oroweat Country Buttermilk Bread','products/15-1.jpg',1962.00,0,'2024-01-23 01:52:07','2024-01-23 01:52:07','physical',0,NULL),(35,26,1,114.00,0.00,'{\"sku\":\"HS-188-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 3 Boxes)\"}',NULL,84,'Signature Wood-Fired Mushroom and Caramelized','products/24-1.jpg',502.00,0,'2024-01-23 01:52:07','2024-01-23 01:52:07','physical',0,NULL),(36,27,1,121.00,0.00,'{\"sku\":\"HS-137-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 2 Boxes)\"}',NULL,68,'All Natural Italian-Style Chicken Meatballs','products/18.jpg',806.00,0,'2024-01-23 01:52:07','2024-01-23 01:52:07','physical',0,NULL),(37,28,1,115.00,0.00,'{\"sku\":\"HS-160-A0\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}',NULL,66,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)','products/17.jpg',542.00,0,'2024-01-23 01:52:07','2024-01-23 01:52:07','digital',9,NULL),(38,29,2,117.00,0.00,'{\"sku\":\"HS-188-A0\",\"attributes\":\"(Boxes: 1 Box, Weight: 5KG)\"}',NULL,72,'Simply Lemonade with Raspberry Juice','products/19.jpg',1124.00,0,'2024-01-23 01:52:07','2024-01-23 01:52:07','physical',0,NULL),(39,30,3,346.00,0.00,'{\"sku\":\"HS-106-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 4 Boxes)\"}',NULL,28,'All Natural Italian-Style Chicken Meatballs','products/2.jpg',1932.00,0,'2024-01-23 01:52:07','2024-01-23 01:52:07','physical',0,NULL),(40,31,2,125.00,0.00,'{\"sku\":\"HS-167-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 5 Boxes)\"}',NULL,53,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','products/12-1.jpg',1506.00,0,'2024-01-23 01:52:08','2024-01-23 01:52:08','physical',0,NULL),(41,32,3,121.00,0.00,'{\"sku\":\"HS-160-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 5 Boxes)\"}',NULL,54,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','products/13.jpg',2202.00,0,'2024-01-23 01:52:08','2024-01-23 01:52:08','digital',4,NULL),(42,33,2,120.00,0.00,'{\"sku\":\"HS-149-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 1 Box)\"}',NULL,79,'Organic Cage-Free Grade A Large Brown Eggs','products/22-1.jpg',1624.00,0,'2024-01-23 01:52:08','2024-01-23 01:52:08','physical',0,NULL),(43,34,1,121.00,0.00,'{\"sku\":\"HS-160-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 3 Boxes)\"}',NULL,55,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','products/13-1.jpg',734.00,0,'2024-01-23 01:52:08','2024-01-23 01:52:08','digital',2,NULL),(44,35,3,121.00,0.00,'{\"sku\":\"HS-137-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 2 Boxes)\"}',NULL,68,'All Natural Italian-Style Chicken Meatballs','products/18.jpg',2418.00,0,'2024-01-23 01:52:09','2024-01-23 01:52:09','physical',0,NULL),(45,35,1,121.00,0.00,'{\"sku\":\"HS-137-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 4 Boxes)\"}',NULL,69,'All Natural Italian-Style Chicken Meatballs','products/18-1.jpg',806.00,0,'2024-01-23 01:52:09','2024-01-23 01:52:09','physical',0,NULL),(46,35,2,121.00,0.00,'{\"sku\":\"HS-137-A0-A2\",\"attributes\":\"(Weight: 1KG, Boxes: 2 Boxes)\"}',NULL,70,'All Natural Italian-Style Chicken Meatballs','products/18.jpg',1612.00,0,'2024-01-23 01:52:09','2024-01-23 01:52:09','physical',0,NULL),(47,36,2,87.00,0.00,'{\"sku\":\"HS-113-A0\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 3KG)\"}',NULL,31,'Foster Farms Takeout Crispy Classic','products/4.jpg',1586.00,0,'2024-01-23 01:52:09','2024-01-23 01:52:09','physical',0,NULL),(48,36,1,87.00,0.00,'{\"sku\":\"HS-113-A0-A2\",\"attributes\":\"(Boxes: 4 Boxes, Weight: 5KG)\"}',NULL,33,'Foster Farms Takeout Crispy Classic','products/4.jpg',793.00,0,'2024-01-23 01:52:09','2024-01-23 01:52:09','physical',0,NULL),(49,37,3,116.00,0.00,'{\"sku\":\"HS-176-A0-A1\",\"attributes\":\"(Boxes: 3 Boxes, Weight: 4KG)\"}',NULL,65,'Foster Farms Takeout Crispy Classic Buffalo Wings','products/16-1.jpg',2367.00,0,'2024-01-23 01:52:09','2024-01-23 01:52:09','physical',0,NULL),(50,38,3,111.00,0.00,'{\"sku\":\"HS-192-A0-A3\",\"attributes\":\"(Weight: 1KG, Boxes: 4 Boxes)\"}',NULL,77,'Chen Watermelon (Digital)','products/21.jpg',2376.00,0,'2024-01-23 01:52:09','2024-01-23 01:52:09','digital',3,NULL),(51,39,3,59.00,0.00,'{\"sku\":\"HS-150-A0-A2\",\"attributes\":\"(Weight: 2KG, Boxes: 2 Boxes)\"}',NULL,40,'Chobani Complete Vanilla Greek','products/6.jpg',1839.00,0,'2024-01-23 01:52:10','2024-01-23 01:52:10','physical',0,NULL),(52,39,3,121.00,0.00,'{\"sku\":\"HS-160-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 3 Boxes)\"}',NULL,55,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','products/13-1.jpg',2202.00,0,'2024-01-23 01:52:10','2024-01-23 01:52:10','digital',10,NULL),(53,40,2,120.00,0.00,'{\"sku\":\"HS-149-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 1 Box)\"}',NULL,79,'Organic Cage-Free Grade A Large Brown Eggs','products/22-1.jpg',1624.00,0,'2024-01-23 01:52:10','2024-01-23 01:52:10','physical',0,NULL),(54,41,2,59.00,0.00,'{\"sku\":\"HS-150-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 2 Boxes)\"}',NULL,38,'Chobani Complete Vanilla Greek','products/6.jpg',1226.00,0,'2024-01-23 01:52:10','2024-01-23 01:52:10','physical',0,NULL),(55,42,1,121.00,0.00,'{\"sku\":\"HS-137-A0-A1\",\"attributes\":\"(Weight: 1KG, Boxes: 4 Boxes)\"}',NULL,69,'All Natural Italian-Style Chicken Meatballs','products/18-1.jpg',806.00,0,'2024-01-23 01:52:10','2024-01-23 01:52:10','physical',0,NULL),(56,43,3,126.00,0.00,'{\"sku\":\"HS-113-A0-A1\",\"attributes\":\"(Weight: 5KG, Boxes: 5 Boxes)\"}',NULL,44,'Encore Seafoods Stuffed Alaskan','products/8-1.jpg',1536.00,0,'2024-01-23 01:52:10','2024-01-23 01:52:10','physical',0,NULL),(57,43,2,119.00,0.00,'{\"sku\":\"HS-100-A0-A2\",\"attributes\":\"(Weight: 2KG, Boxes: 4 Boxes)\"}',NULL,82,'Colorful Banana','products/23.jpg',1328.00,0,'2024-01-23 01:52:10','2024-01-23 01:52:10','physical',0,NULL),(58,44,3,121.00,0.00,'{\"sku\":\"HS-160-A0-A1\",\"attributes\":\"(Weight: 2KG, Boxes: 3 Boxes)\"}',NULL,55,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','products/13-1.jpg',2202.00,0,'2024-01-23 01:52:11','2024-01-23 01:52:11','digital',9,NULL),(59,44,3,121.00,0.00,'{\"sku\":\"HS-160-A0-A2\",\"attributes\":\"(Boxes: 2 Boxes, Weight: 3KG)\"}',NULL,56,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','products/13.jpg',2202.00,0,'2024-01-23 01:52:11','2024-01-23 01:52:11','digital',10,NULL),(60,45,1,87.00,0.00,'{\"sku\":\"HS-113-A0-A1\",\"attributes\":\"(Boxes: 3 Boxes, Weight: 5KG)\"}',NULL,32,'Foster Farms Takeout Crispy Classic','products/4-1.jpg',793.00,0,'2024-01-23 01:52:11','2024-01-23 01:52:11','physical',0,NULL),(61,45,1,125.00,0.00,'{\"sku\":\"HS-142-A0-A3\",\"attributes\":\"(Weight: 3KG, Boxes: 3 Boxes)\"}',NULL,62,'Oroweat Country Buttermilk Bread','products/15.jpg',654.00,0,'2024-01-23 01:52:11','2024-01-23 01:52:11','physical',0,NULL),(62,46,2,126.00,0.00,'{\"sku\":\"HS-113-A0\",\"attributes\":\"(Boxes: 3 Boxes, Weight: 5KG)\"}',NULL,43,'Encore Seafoods Stuffed Alaskan','products/8.jpg',1024.00,0,'2024-01-23 01:52:11','2024-01-23 01:52:11','physical',0,NULL),(63,47,2,121.00,0.00,'{\"sku\":\"HS-160-A0\",\"attributes\":\"(Weight: 1KG, Boxes: 5 Boxes)\"}',NULL,54,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','products/13.jpg',1468.00,0,'2024-01-23 01:52:11','2024-01-23 01:52:11','digital',6,NULL);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',7,NULL,'','completed',42.00,0.00,0.00,NULL,NULL,0.00,42.00,1,NULL,1,'2024-01-23 01:52:01','itsLkjl777VcO9SwLHTqjC6qEmeMp',1,'2024-01-13 01:52:01','2024-01-23 01:52:01',4),(2,'#10000002',7,'1','default','pending',375.00,0.00,0.00,NULL,NULL,0.00,375.00,1,NULL,1,NULL,'PnnKjnJfkzCTxcihQzRmjOQ4lA2TE',2,'2024-01-11 09:52:01','2024-01-23 01:52:01',3),(3,'#10000003',7,'1','default','pending',375.00,0.00,0.00,NULL,NULL,0.00,375.00,1,NULL,1,NULL,'mRZIM1eNt4F6aFXoBJnp6XbB2cVYy',3,'2024-01-21 09:52:01','2024-01-23 01:52:01',2),(4,'#10000004',1,NULL,'','pending',1296.00,0.00,0.00,NULL,NULL,0.00,1296.00,1,NULL,1,NULL,'DvW8hjBSMvkRzy0eRZVPYxQDBUN8n',4,'2024-01-18 07:52:02','2024-01-23 01:52:02',3),(5,'#10000005',1,'1','default','completed',375.00,0.00,0.00,NULL,NULL,0.00,375.00,1,NULL,1,'2024-01-23 01:52:12','ubVgzIWrrJDvtFJsZl7EEb5EErbP8',5,'2024-01-21 11:52:02','2024-01-23 01:52:12',2),(6,'#10000006',1,'1','default','completed',476.00,0.00,0.00,NULL,NULL,0.00,476.00,1,NULL,1,'2024-01-23 01:52:02','5S06uG2o0NcAIQJPTu9xiQKPM75T2',6,'2024-01-21 11:52:02','2024-01-23 01:52:02',4),(7,'#10000007',3,'1','default','pending',778.00,0.00,0.00,NULL,NULL,0.00,778.00,1,NULL,1,NULL,'EkVnECruNHV1NgIzUusCcm3l6VIzR',7,'2024-01-21 13:52:02','2024-01-23 01:52:02',2),(8,'#10000008',3,NULL,'','completed',342.00,0.00,0.00,NULL,NULL,0.00,342.00,1,NULL,1,'2024-01-23 01:52:03','nkdtdVpYxycvZWRU4p3rjSOEWYuOH',8,'2024-01-11 01:52:03','2024-01-23 01:52:03',1),(9,'#10000009',3,'1','default','pending',299.00,0.00,0.00,NULL,NULL,0.00,299.00,1,NULL,1,NULL,'WP5HBjPIlcyE3VT2mBG2OBNY7jWMh',9,'2024-01-11 17:52:03','2024-01-23 01:52:03',2),(10,'#10000010',3,'1','default','pending',126.00,0.00,0.00,NULL,NULL,0.00,126.00,1,NULL,1,NULL,'IqhTVdPrM7x0DzoJnyGfXR8SWUeTs',10,'2024-01-21 15:52:03','2024-01-23 01:52:03',4),(11,'#10000011',7,NULL,'','pending',126.00,0.00,0.00,NULL,NULL,0.00,126.00,1,NULL,1,NULL,'2AFw8973OUnADbuSXqWtF3LtOCbC3',11,'2024-01-20 09:52:03','2024-01-23 01:52:03',4),(12,'#10000012',7,'1','default','completed',229.00,0.00,0.00,NULL,NULL,0.00,229.00,1,NULL,1,'2024-01-23 01:52:04','bWyh86LvX5wKBE7IM5O3PkpbzBgeX',12,'2024-01-15 01:52:04','2024-01-23 01:52:04',2),(13,'#10000013',7,'1','default','pending',1121.00,0.00,0.00,NULL,NULL,0.00,1121.00,1,NULL,1,NULL,'vbWE3Ya2OcOM9d9k4hRqI1Np61ETX',13,'2024-01-15 13:52:04','2024-01-23 01:52:04',2),(14,'#10000014',7,'1','default','completed',228.00,0.00,0.00,NULL,NULL,0.00,228.00,1,NULL,1,'2024-01-23 01:52:12','dUoFerD7gUq1j8ej0XBmLbWigDuOa',14,'2024-01-21 19:52:04','2024-01-23 01:52:12',3),(15,'#10000015',6,'1','default','completed',348.00,0.00,0.00,NULL,NULL,0.00,348.00,1,NULL,1,'2024-01-23 01:52:13','csCGGJ50RcTF6fM80Ba9fiAuFOMZe',15,'2024-01-20 17:52:04','2024-01-23 01:52:13',2),(16,'#10000016',6,NULL,'','completed',114.00,0.00,0.00,NULL,NULL,0.00,114.00,1,NULL,1,'2024-01-23 01:52:05','U7oD2wNkPeUygfNlCxghRvXIDou1X',16,'2024-01-21 21:52:04','2024-01-23 01:52:05',1),(17,'#10000017',6,NULL,'','pending',333.00,0.00,0.00,NULL,NULL,0.00,333.00,1,NULL,1,NULL,'BA4qOCsbDXbuLdCdPzu0SxBUtshHF',17,'2024-01-21 21:52:05','2024-01-23 01:52:05',4),(18,'#10000018',1,'1','default','completed',87.00,0.00,0.00,NULL,NULL,0.00,87.00,1,NULL,1,'2024-01-23 01:52:13','kOBbBs0g0JpzSYc4Cz2cTmbbOGJD1',18,'2024-01-20 21:52:05','2024-01-23 01:52:13',2),(19,'#10000019',1,NULL,'','completed',42.00,0.00,0.00,NULL,NULL,0.00,42.00,1,NULL,1,'2024-01-23 01:52:05','eqJg2nm9lnsg1LykKpOyhwEEqk3Pw',19,'2024-01-15 11:52:05','2024-01-23 01:52:05',4),(20,'#10000020',7,'1','default','pending',315.00,0.00,0.00,NULL,NULL,0.00,315.00,1,NULL,1,NULL,'TSQFZ2vHfGwcY5dtKYC0EFp7IGKvJ',20,'2024-01-22 01:52:05','2024-01-23 01:52:05',2),(21,'#10000021',7,NULL,'','completed',111.00,0.00,0.00,NULL,NULL,0.00,111.00,1,NULL,1,'2024-01-23 01:52:06','j1A9Oox4xid1ZUwMNLX55MlPJXpgl',21,'2024-01-21 01:52:06','2024-01-23 01:52:06',4),(22,'#10000022',1,NULL,'','pending',705.00,0.00,0.00,NULL,NULL,0.00,705.00,1,NULL,1,NULL,'NfxRGj7tRTW5dleoJbock3PYDq9Bv',22,'2024-01-14 19:52:06','2024-01-23 01:52:06',1),(23,'#10000023',1,NULL,'','completed',114.00,0.00,0.00,NULL,NULL,0.00,114.00,1,NULL,1,'2024-01-23 01:52:06','p0bIdfd9rcfzAetGQvFxDosBnuV0V',23,'2024-01-22 05:52:06','2024-01-23 01:52:06',1),(24,'#10000024',1,'1','default','completed',117.00,0.00,0.00,NULL,NULL,0.00,117.00,1,NULL,1,'2024-01-23 01:52:14','HgE34dIg7gARe4nQnjzoIR5j9uQuH',24,'2024-01-14 17:52:06','2024-01-23 01:52:14',2),(25,'#10000025',1,'1','default','completed',598.00,0.00,0.00,NULL,NULL,0.00,598.00,1,NULL,1,'2024-01-23 01:52:14','8rnG1PD6yXhZUMG0qdaey4JaX6U8I',25,'2024-01-22 05:52:06','2024-01-23 01:52:14',4),(26,'#10000026',1,'1','default','pending',718.00,0.00,0.00,NULL,NULL,0.00,718.00,1,NULL,1,NULL,'veCRDMT1EQXGgbrdQlQiMZNvie8XH',26,'2024-01-22 07:52:07','2024-01-23 01:52:07',2),(27,'#10000027',1,'1','default','pending',121.00,0.00,0.00,NULL,NULL,0.00,121.00,1,NULL,1,NULL,'hr0bYSXoPbJDBzh1sovhmqIKvA2eD',27,'2024-01-21 13:52:07','2024-01-23 01:52:07',3),(28,'#10000028',1,NULL,'','completed',115.00,0.00,0.00,NULL,NULL,0.00,115.00,1,NULL,1,'2024-01-23 01:52:07','MTcSIKMXWNdvWJaAFVTDDUBwFYCFk',28,'2024-01-19 17:52:07','2024-01-23 01:52:07',1),(29,'#10000029',1,'1','default','pending',234.00,0.00,0.00,NULL,NULL,0.00,234.00,1,NULL,1,NULL,'3re4yUdhrcLxLBHEBuAZxSgrMULFd',29,'2024-01-17 01:52:07','2024-01-23 01:52:07',2),(30,'#10000030',3,'1','default','pending',1038.00,0.00,0.00,NULL,NULL,0.00,1038.00,1,NULL,1,NULL,'2Qpk7YseO1kk3DIm7VIK60LFWdM0k',30,'2024-01-19 13:52:07','2024-01-23 01:52:07',2),(31,'#10000031',3,'1','default','pending',250.00,0.00,0.00,NULL,NULL,0.00,250.00,1,NULL,1,NULL,'6khNRPsJTX18T2eGx5BFbaQagBker',31,'2024-01-19 13:52:08','2024-01-23 01:52:08',3),(32,'#10000032',3,NULL,'','pending',363.00,0.00,0.00,NULL,NULL,0.00,363.00,1,NULL,1,NULL,'cce3ZIccO3nYaglvQfZ9Hgm2yEpJK',32,'2024-01-18 09:52:08','2024-01-23 01:52:08',1),(33,'#10000033',3,'1','default','pending',240.00,0.00,0.00,NULL,NULL,0.00,240.00,1,NULL,1,NULL,'TcfEP9GcFU1QWt1RA6hIqLKxmCp2F',33,'2024-01-18 23:52:08','2024-01-23 01:52:08',4),(34,'#10000034',1,NULL,'','completed',121.00,0.00,0.00,NULL,NULL,0.00,121.00,1,NULL,1,'2024-01-23 01:52:09','DEho1hut9OTqS9lijtqDSIMYyielU',34,'2024-01-21 01:52:08','2024-01-23 01:52:09',1),(35,'#10000035',1,'1','default','completed',726.00,0.00,0.00,NULL,NULL,0.00,726.00,1,NULL,1,'2024-01-23 01:52:15','oabrxfRZ9HBonMY2shPGhTe7eiaLn',35,'2024-01-20 13:52:09','2024-01-23 01:52:15',3),(36,'#10000036',3,'1','default','completed',261.00,0.00,0.00,NULL,NULL,0.00,261.00,1,NULL,1,'2024-01-23 01:52:15','wk58fA8zQRfogU3ipmoZf7stwxBkP',36,'2024-01-21 09:52:09','2024-01-23 01:52:15',2),(37,'#10000037',3,'1','default','pending',348.00,0.00,0.00,NULL,NULL,0.00,348.00,1,NULL,1,NULL,'fDB6NhFrElluElo84OWIrhPwc2kWJ',37,'2024-01-21 19:52:09','2024-01-23 01:52:09',3),(38,'#10000038',3,NULL,'','completed',333.00,0.00,0.00,NULL,NULL,0.00,333.00,1,NULL,1,'2024-01-23 01:52:10','YYfw6PRGsILyIlqjcZ16S8SPyldvI',38,'2024-01-18 21:52:09','2024-01-23 01:52:10',4),(39,'#10000039',1,'1','default','pending',540.00,0.00,0.00,NULL,NULL,0.00,540.00,1,NULL,1,NULL,'y0gvVqFotq4FSa9XoqymCNtSPEdGJ',39,'2024-01-21 01:52:10','2024-01-23 01:52:10',1),(40,'#10000040',1,'1','default','pending',240.00,0.00,0.00,NULL,NULL,0.00,240.00,1,NULL,1,NULL,'WWB6tTXQCPWtdaVFKNaPiMRXZ9WOB',40,'2024-01-19 17:52:10','2024-01-23 01:52:10',4),(41,'#10000041',3,'1','default','pending',118.00,0.00,0.00,NULL,NULL,0.00,118.00,1,NULL,1,NULL,'jz7ZtBBq2DsrtEPLEw714E9XY80Dr',41,'2024-01-21 19:52:10','2024-01-23 01:52:10',1),(42,'#10000042',3,'1','default','completed',121.00,0.00,0.00,NULL,NULL,0.00,121.00,1,NULL,1,'2024-01-23 01:52:16','DTte5bIt0ZYooxJ1dqPgf6W4d11BU',42,'2024-01-21 19:52:10','2024-01-23 01:52:16',3),(43,'#10000043',4,'1','default','completed',616.00,0.00,0.00,NULL,NULL,0.00,616.00,1,NULL,1,'2024-01-23 01:52:17','lejQ4QaQeEy0bWByyfOJDjSGGixBF',43,'2024-01-22 17:52:10','2024-01-23 01:52:17',4),(44,'#10000044',4,NULL,'','completed',726.00,0.00,0.00,NULL,NULL,0.00,726.00,1,NULL,1,'2024-01-23 01:52:11','lcGzeAhOn1Cnw57gJbzvZ7bL5QfZa',44,'2024-01-21 13:52:11','2024-01-23 01:52:11',1),(45,'#10000045',10,'1','default','completed',212.00,0.00,0.00,NULL,NULL,0.00,212.00,1,NULL,1,'2024-01-23 01:52:17','xwC4AbbJzNEdnOldSoHH7ZyYbgoqO',45,'2024-01-22 05:52:11','2024-01-23 01:52:17',2),(46,'#10000046',10,'1','default','pending',252.00,0.00,0.00,NULL,NULL,0.00,252.00,1,NULL,1,NULL,'kuLfqAtpql0n0TsVgzwPObNkGPFKi',46,'2024-01-22 13:52:11','2024-01-23 01:52:11',4),(47,'#10000047',10,NULL,'','completed',242.00,0.00,0.00,NULL,NULL,0.00,242.00,1,NULL,1,'2024-01-23 01:52:12','aBHH58KqNdb0yrdHmQ3s4FrGCKKRP',47,'2024-01-22 05:52:11','2024-01-23 01:52:12',1);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Weight','weight','text',1,1,1,'published',0,'2024-01-23 01:51:42','2024-01-23 01:51:42',0),(2,'Boxes','boxes','text',1,1,1,'published',1,'2024-01-23 01:51:42','2024-01-23 01:51:42',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'1KG','1kg',NULL,NULL,1,1,'2024-01-23 01:51:42','2024-01-23 01:51:42'),(2,1,'2KG','2kg',NULL,NULL,0,2,'2024-01-23 01:51:42','2024-01-23 01:51:42'),(3,1,'3KG','3kg',NULL,NULL,0,3,'2024-01-23 01:51:42','2024-01-23 01:51:42'),(4,1,'4KG','4kg',NULL,NULL,0,4,'2024-01-23 01:51:42','2024-01-23 01:51:42'),(5,1,'5KG','5kg',NULL,NULL,0,5,'2024-01-23 01:51:42','2024-01-23 01:51:42'),(6,2,'1 Box','1-box',NULL,NULL,1,1,'2024-01-23 01:51:42','2024-01-23 01:51:42'),(7,2,'2 Boxes','2-boxes',NULL,NULL,0,2,'2024-01-23 01:51:42','2024-01-23 01:51:42'),(8,2,'3 Boxes','3-boxes',NULL,NULL,0,3,'2024-01-23 01:51:42','2024-01-23 01:51:42'),(9,2,'4 Boxes','4-boxes',NULL,NULL,0,4,'2024-01-23 01:51:42','2024-01-23 01:51:42'),(10,2,'5 Boxes','5-boxes',NULL,NULL,0,5,'2024-01-23 01:51:42','2024-01-23 01:51:42');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Milks and Dairies',0,NULL,'published',0,'product-categories/image-1.png',1,'2024-01-23 01:51:42','2024-01-23 01:51:42',NULL,'product-categories/icon-1.png'),(2,'Clothing & beauty',0,NULL,'published',1,'product-categories/image-2.png',1,'2024-01-23 01:51:42','2024-01-23 01:51:42',NULL,'product-categories/icon-2.png'),(3,'Pet Toy',0,NULL,'published',2,'product-categories/image-3.png',1,'2024-01-23 01:51:42','2024-01-23 01:51:42',NULL,'product-categories/icon-3.png'),(4,'Baking material',0,NULL,'published',3,'product-categories/image-4.png',1,'2024-01-23 01:51:42','2024-01-23 01:51:42',NULL,'product-categories/icon-4.png'),(5,'Fresh Fruit',0,NULL,'published',4,'product-categories/image-5.png',1,'2024-01-23 01:51:42','2024-01-23 01:51:42',NULL,'product-categories/icon-5.png'),(6,'Wines & Drinks',0,NULL,'published',5,'product-categories/image-6.png',1,'2024-01-23 01:51:42','2024-01-23 01:51:42',NULL,'product-categories/icon-6.png'),(7,'Fresh Seafood',0,NULL,'published',6,'product-categories/image-7.png',1,'2024-01-23 01:51:42','2024-01-23 01:51:42',NULL,'product-categories/icon-7.png'),(8,'Fast food',0,NULL,'published',7,'product-categories/image-8.png',1,'2024-01-23 01:51:42','2024-01-23 01:51:42',NULL,'product-categories/icon-8.png'),(9,'Vegetables',0,NULL,'published',8,'product-categories/image-9.png',1,'2024-01-23 01:51:42','2024-01-23 01:51:42',NULL,'product-categories/icon-9.png'),(10,'Bread and Juice',0,NULL,'published',9,'product-categories/image-10.png',1,'2024-01-23 01:51:42','2024-01-23 01:51:42',NULL,'product-categories/icon-10.png'),(11,'Cake & Milk',0,NULL,'published',10,'product-categories/image-11.png',1,'2024-01-23 01:51:42','2024-01-23 01:51:42',NULL,'product-categories/icon-11.png'),(12,'Coffee & Teas',0,NULL,'published',11,'product-categories/image-12.png',1,'2024-01-23 01:51:42','2024-01-23 01:51:42',NULL,'product-categories/icon-12.png'),(13,'Pet Foods',0,NULL,'published',12,'product-categories/image-13.png',0,'2024-01-23 01:51:42','2024-01-23 01:51:42',NULL,'product-categories/icon-13.png'),(14,'Diet Foods',0,NULL,'published',13,'product-categories/image-14.png',0,'2024-01-23 01:51:42','2024-01-23 01:51:42',NULL,'product-categories/icon-14.png');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,10),(1,13),(2,16),(2,19),(3,2),(3,18),(3,24),(4,15),(5,20),(6,22),(6,23),(8,7),(9,9),(10,12),(11,6),(11,8),(11,17),(11,21),(12,3),(12,5),(13,11),(13,14),(14,1),(14,4);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,2),(1,4),(1,9),(1,13),(1,17),(2,3),(2,5),(2,7),(2,8),(2,11),(2,16),(2,18),(2,21),(2,24),(3,1),(3,6),(3,10),(3,12),(3,14),(3,15),(3,19),(3,20),(3,22),(3,23);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2024-01-23 01:51:42','2024-01-23 01:51:42',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2024-01-23 01:51:42','2024-01-23 01:51:42',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2024-01-23 01:51:42','2024-01-23 01:51:42',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,6,0,0.00,'fixed',1),(1,9,0,0.00,'fixed',1),(1,12,0,0.00,'fixed',1),(1,16,0,0.00,'fixed',1),(2,1,0,0.00,'fixed',1),(2,6,0,0.00,'fixed',1),(2,10,0,0.00,'fixed',1),(2,16,0,0.00,'fixed',1),(3,2,0,0.00,'fixed',1),(3,8,0,0.00,'fixed',1),(3,16,0,0.00,'fixed',1),(3,17,0,0.00,'fixed',1),(4,5,0,0.00,'fixed',1),(4,14,0,0.00,'fixed',1),(4,20,0,0.00,'fixed',1),(4,24,0,0.00,'fixed',1),(5,9,0,0.00,'fixed',1),(5,11,0,0.00,'fixed',1),(5,19,0,0.00,'fixed',1),(5,24,0,0.00,'fixed',1),(6,5,0,0.00,'fixed',1),(6,7,0,0.00,'fixed',1),(6,11,0,0.00,'fixed',1),(6,14,0,0.00,'fixed',1),(7,9,0,0.00,'fixed',1),(7,10,0,0.00,'fixed',1),(7,13,0,0.00,'fixed',1),(7,24,0,0.00,'fixed',1),(8,1,0,0.00,'fixed',1),(8,7,0,0.00,'fixed',1),(8,20,0,0.00,'fixed',1),(8,24,0,0.00,'fixed',1),(9,1,0,0.00,'fixed',1),(9,7,0,0.00,'fixed',1),(9,11,0,0.00,'fixed',1),(9,16,0,0.00,'fixed',1),(10,2,0,0.00,'fixed',1),(10,5,0,0.00,'fixed',1),(10,16,0,0.00,'fixed',1),(10,18,0,0.00,'fixed',1),(11,5,0,0.00,'fixed',1),(11,7,0,0.00,'fixed',1),(11,12,0,0.00,'fixed',1),(11,15,0,0.00,'fixed',1),(12,4,0,0.00,'fixed',1),(12,8,0,0.00,'fixed',1),(12,16,0,0.00,'fixed',1),(13,10,0,0.00,'fixed',1),(13,17,0,0.00,'fixed',1),(13,18,0,0.00,'fixed',1),(13,24,0,0.00,'fixed',1),(14,1,0,0.00,'fixed',1),(14,3,0,0.00,'fixed',1),(14,18,0,0.00,'fixed',1),(14,21,0,0.00,'fixed',1),(15,1,0,0.00,'fixed',1),(15,3,0,0.00,'fixed',1),(15,20,0,0.00,'fixed',1),(15,24,0,0.00,'fixed',1),(16,3,0,0.00,'fixed',1),(16,4,0,0.00,'fixed',1),(16,9,0,0.00,'fixed',1),(16,12,0,0.00,'fixed',1),(17,3,0,0.00,'fixed',1),(17,5,0,0.00,'fixed',1),(17,7,0,0.00,'fixed',1),(17,12,0,0.00,'fixed',1),(18,4,0,0.00,'fixed',1),(18,5,0,0.00,'fixed',1),(18,16,0,0.00,'fixed',1),(18,22,0,0.00,'fixed',1),(19,5,0,0.00,'fixed',1),(19,11,0,0.00,'fixed',1),(19,14,0,0.00,'fixed',1),(19,24,0,0.00,'fixed',1),(20,1,0,0.00,'fixed',1),(20,21,0,0.00,'fixed',1),(20,22,0,0.00,'fixed',1),(21,4,0,0.00,'fixed',1),(21,6,0,0.00,'fixed',1),(21,10,0,0.00,'fixed',1),(21,14,0,0.00,'fixed',1),(22,2,0,0.00,'fixed',1),(22,10,0,0.00,'fixed',1),(22,11,0,0.00,'fixed',1),(22,20,0,0.00,'fixed',1),(23,4,0,0.00,'fixed',1),(23,9,0,0.00,'fixed',1),(23,10,0,0.00,'fixed',1),(23,14,0,0.00,'fixed',1),(24,7,0,0.00,'fixed',1),(24,13,0,0.00,'fixed',1),(24,17,0,0.00,'fixed',1),(24,19,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,25,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:46\",\"name\":\"1\",\"extension\":\"jpg\"}','2024-01-23 01:51:46','2024-01-23 01:51:46'),(2,25,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:46\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2024-01-23 01:51:46','2024-01-23 01:51:46'),(3,26,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:46\",\"name\":\"1\",\"extension\":\"jpg\"}','2024-01-23 01:51:46','2024-01-23 01:51:46'),(4,26,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:46\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2024-01-23 01:51:46','2024-01-23 01:51:46'),(5,27,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:46\",\"name\":\"1\",\"extension\":\"jpg\"}','2024-01-23 01:51:46','2024-01-23 01:51:46'),(6,27,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:46\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2024-01-23 01:51:46','2024-01-23 01:51:46'),(7,35,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:46\",\"name\":\"5\",\"extension\":\"jpg\"}','2024-01-23 01:51:46','2024-01-23 01:51:46'),(8,35,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:46\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2024-01-23 01:51:46','2024-01-23 01:51:46'),(9,36,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:46\",\"name\":\"5\",\"extension\":\"jpg\"}','2024-01-23 01:51:46','2024-01-23 01:51:46'),(10,36,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:46\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2024-01-23 01:51:46','2024-01-23 01:51:46'),(11,37,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:46\",\"name\":\"5\",\"extension\":\"jpg\"}','2024-01-23 01:51:46','2024-01-23 01:51:46'),(12,37,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:46\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2024-01-23 01:51:46','2024-01-23 01:51:46'),(13,46,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:47\",\"name\":\"9\",\"extension\":\"jpg\"}','2024-01-23 01:51:47','2024-01-23 01:51:47'),(14,46,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:47\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2024-01-23 01:51:47','2024-01-23 01:51:47'),(15,54,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:47\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-01-23 01:51:47','2024-01-23 01:51:47'),(16,54,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:47\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-01-23 01:51:47','2024-01-23 01:51:47'),(17,55,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:47\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-01-23 01:51:47','2024-01-23 01:51:47'),(18,55,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:47\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-01-23 01:51:47','2024-01-23 01:51:47'),(19,56,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:47\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-01-23 01:51:47','2024-01-23 01:51:47'),(20,56,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:47\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-01-23 01:51:47','2024-01-23 01:51:47'),(21,57,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:47\",\"name\":\"13\",\"extension\":\"jpg\"}','2024-01-23 01:51:47','2024-01-23 01:51:47'),(22,57,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:47\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2024-01-23 01:51:47','2024-01-23 01:51:47'),(23,66,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:47\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-01-23 01:51:47','2024-01-23 01:51:47'),(24,66,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:47\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2024-01-23 01:51:47','2024-01-23 01:51:47'),(25,67,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:47\",\"name\":\"17\",\"extension\":\"jpg\"}','2024-01-23 01:51:47','2024-01-23 01:51:47'),(26,67,'product-files/17-1.jpg','{\"filename\":\"17-1.jpg\",\"url\":\"product-files\\/17-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:47\",\"name\":\"17-1\",\"extension\":\"jpg\"}','2024-01-23 01:51:47','2024-01-23 01:51:47'),(27,74,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:48\",\"name\":\"21\",\"extension\":\"jpg\"}','2024-01-23 01:51:48','2024-01-23 01:51:48'),(28,74,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:48\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2024-01-23 01:51:48','2024-01-23 01:51:48'),(29,75,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:48\",\"name\":\"21\",\"extension\":\"jpg\"}','2024-01-23 01:51:48','2024-01-23 01:51:48'),(30,75,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:48\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2024-01-23 01:51:48','2024-01-23 01:51:48'),(31,76,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:48\",\"name\":\"21\",\"extension\":\"jpg\"}','2024-01-23 01:51:48','2024-01-23 01:51:48'),(32,76,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:48\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2024-01-23 01:51:48','2024-01-23 01:51:48'),(33,77,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:48\",\"name\":\"21\",\"extension\":\"jpg\"}','2024-01-23 01:51:48','2024-01-23 01:51:48'),(34,77,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9730,\"modified\":\"2024-01-23 08:51:48\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2024-01-23 01:51:48','2024-01-23 01:51:48');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,21),(2,7),(3,14);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2024-01-23 01:51:42','2024-01-23 01:51:42'),(2,'New','#00c9a7','published','2024-01-23 01:51:42','2024-01-23 01:51:42'),(3,'Sale','#fe9931','published','2024-01-23 01:51:42','2024-01-23 01:51:42');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,2),(1,5),(2,1),(2,5),(2,6),(3,1),(3,5),(3,6),(4,1),(4,4),(4,6),(5,1),(6,1),(6,2),(7,1),(7,5),(7,6),(8,1),(8,4),(9,1),(9,2),(9,5),(10,3),(10,4),(10,6),(11,4),(11,6),(12,1),(12,4),(13,2),(13,3),(13,4),(14,1),(14,3),(14,4),(15,4),(15,6),(16,1),(16,4),(16,5),(17,2),(17,3),(17,6),(18,1),(18,3),(19,1),(19,3),(19,5),(20,1),(20,4),(20,6),(21,1),(21,3),(22,1),(23,1),(23,5),(24,1),(24,3),(24,5);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Wallet',NULL,'published','2024-01-23 01:51:42','2024-01-23 01:51:42'),(2,'Bags',NULL,'published','2024-01-23 01:51:42','2024-01-23 01:51:42'),(3,'Shoes',NULL,'published','2024-01-23 01:51:42','2024-01-23 01:51:42'),(4,'Clothes',NULL,'published','2024-01-23 01:51:42','2024-01-23 01:51:42'),(5,'Hand bag',NULL,'published','2024-01-23 01:51:42','2024-01-23 01:51:42');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (5,1,3),(7,1,4),(9,1,5),(21,1,11),(27,1,14),(41,1,21),(53,1,27),(55,1,28),(57,1,29),(59,1,30),(67,1,34),(69,1,35),(87,1,44),(89,1,45),(91,1,46),(93,1,47),(101,1,51),(105,1,53),(109,1,55),(111,1,56),(3,2,2),(23,2,12),(25,2,13),(31,2,16),(35,2,18),(43,2,22),(45,2,23),(61,2,31),(71,2,36),(83,2,42),(85,2,43),(107,2,54),(115,2,58),(119,2,60),(13,3,7),(29,3,15),(49,3,25),(63,3,32),(73,3,37),(75,3,38),(79,3,40),(97,3,49),(103,3,52),(121,3,61),(51,4,26),(81,4,41),(99,4,50),(123,4,62),(1,5,1),(11,5,6),(15,5,8),(17,5,9),(19,5,10),(33,5,17),(37,5,19),(39,5,20),(47,5,24),(65,5,33),(77,5,39),(95,5,48),(113,5,57),(117,5,59),(2,6,1),(30,6,15),(54,6,27),(70,6,35),(96,6,48),(100,6,50),(108,6,54),(110,6,55),(112,6,56),(124,6,62),(14,7,7),(28,7,14),(32,7,16),(42,7,21),(50,7,25),(52,7,26),(64,7,32),(88,7,44),(92,7,46),(118,7,59),(16,8,8),(20,8,10),(38,8,19),(62,8,31),(74,8,37),(76,8,38),(78,8,39),(82,8,41),(120,8,60),(4,9,2),(8,9,4),(10,9,5),(18,9,9),(22,9,11),(24,9,12),(36,9,18),(44,9,22),(48,9,24),(56,9,28),(66,9,33),(68,9,34),(72,9,36),(80,9,40),(84,9,42),(90,9,45),(98,9,49),(102,9,51),(106,9,53),(114,9,57),(116,9,58),(6,10,3),(12,10,6),(26,10,13),(34,10,17),(40,10,20),(46,10,23),(58,10,29),(60,10,30),(86,10,43),(94,10,47),(104,10,52),(122,10,61);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,25,1,1),(2,26,1,0),(3,27,1,0),(4,28,2,1),(5,29,2,0),(6,30,3,1),(7,31,4,1),(8,32,4,0),(9,33,4,0),(10,34,4,0),(11,35,5,1),(12,36,5,0),(13,37,5,0),(14,38,6,1),(15,39,6,0),(16,40,6,0),(17,41,7,1),(18,42,7,0),(19,43,8,1),(20,44,8,0),(21,45,8,0),(22,46,9,1),(23,47,10,1),(24,48,10,0),(25,49,10,0),(26,50,11,1),(27,51,11,0),(28,52,12,1),(29,53,12,0),(30,54,13,1),(31,55,13,0),(32,56,13,0),(33,57,13,0),(34,58,14,1),(35,59,15,1),(36,60,15,0),(37,61,15,0),(38,62,15,0),(39,63,15,0),(40,64,16,1),(41,65,16,0),(42,66,17,1),(43,67,17,0),(44,68,18,1),(45,69,18,0),(46,70,18,0),(47,71,18,0),(48,72,19,1),(49,73,20,1),(50,74,21,1),(51,75,21,0),(52,76,21,0),(53,77,21,0),(54,78,22,1),(55,79,22,0),(56,80,23,1),(57,81,23,0),(58,82,23,0),(59,83,24,1),(60,84,24,0),(61,85,24,0),(62,86,24,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2024-01-23',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0),(1,24,0),(2,24,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Seeds of Change Organic Quinoe (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\"]','HS-113-A0',0,12,0,1,1,7,0,0,432,NULL,NULL,NULL,10.00,11.00,11.00,747.00,NULL,76038,'2024-01-23 01:51:45','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,3,0),(2,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\"]','HS-106-A0',0,13,0,1,1,5,0,0,346,NULL,NULL,NULL,17.00,17.00,19.00,644.00,NULL,84459,'2024-01-23 01:51:45','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(3,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\"]','HS-178-A0',0,18,0,1,1,7,0,0,389,NULL,NULL,NULL,20.00,10.00,19.00,694.00,NULL,30995,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(4,'Foster Farms Takeout Crispy Classic','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\"]','HS-113-A0',0,11,0,1,1,5,0,0,87,61.77,NULL,NULL,20.00,18.00,11.00,793.00,NULL,118268,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(5,'Blue Diamond Almonds Lightly (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\"]','HS-160-A0',0,12,0,1,1,7,0,0,42,NULL,NULL,NULL,15.00,11.00,17.00,872.00,NULL,134107,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,4,0),(6,'Chobani Complete Vanilla Greek','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]','HS-150-A0',0,14,0,1,1,7,0,0,59,NULL,NULL,NULL,13.00,15.00,16.00,613.00,NULL,140030,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(7,'Canada Dry Ginger Ale – 2 L Bottle','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]','HS-148-A0',0,15,0,1,1,4,0,0,116,NULL,NULL,NULL,16.00,13.00,13.00,663.00,NULL,118742,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(8,'Encore Seafoods Stuffed Alaskan','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]','HS-113-A0',0,13,0,1,1,1,0,0,126,98.28,NULL,NULL,17.00,15.00,18.00,512.00,NULL,154078,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(9,'Gorton’s Beer Battered Fish Fillets (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]','HS-128-A0',0,18,0,1,1,4,0,0,114,NULL,NULL,NULL,18.00,19.00,11.00,780.00,NULL,122059,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,1,0),(10,'Haagen-Dazs Caramel Cone Ice Cream','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]','HS-164-A0',0,20,0,1,1,3,0,0,229,NULL,NULL,NULL,19.00,17.00,18.00,804.00,NULL,42760,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(11,'Nestle Original Coffee-Mate Coffee Creamer','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]','HS-176-A0',0,14,0,1,1,1,0,0,114,NULL,NULL,NULL,13.00,12.00,10.00,849.00,NULL,78152,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(12,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]','HS-167-A0',0,18,0,1,1,2,0,0,125,92.5,NULL,NULL,17.00,16.00,16.00,753.00,NULL,122457,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(13,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','HS-160-A0',0,13,0,1,1,6,0,0,121,NULL,NULL,NULL,11.00,10.00,19.00,734.00,NULL,192695,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,1,0),(14,'Organic Frozen Triple Berry Blend','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]','HS-196-A0',0,16,0,1,1,1,0,0,128,NULL,NULL,NULL,12.00,18.00,19.00,679.00,NULL,11324,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,1,0),(15,'Oroweat Country Buttermilk Bread','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','HS-142-A0',0,16,0,1,1,3,0,0,125,NULL,NULL,NULL,15.00,16.00,17.00,654.00,NULL,191907,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(16,'Foster Farms Takeout Crispy Classic Buffalo Wings','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/16.jpg\",\"products\\/16-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-3.jpg\",\"products\\/16-4.jpg\",\"products\\/16-5.jpg\",\"products\\/16-6.jpg\"]','HS-176-A0',0,16,0,1,1,6,0,0,116,96.28,NULL,NULL,13.00,15.00,17.00,789.00,NULL,60692,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(17,'Angie’s Boomchickapop Sweet &amp; Salty Kettle Corn (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\"]','HS-160-A0',0,20,0,1,1,1,0,0,115,NULL,NULL,NULL,16.00,17.00,17.00,542.00,NULL,113499,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,1,0),(18,'All Natural Italian-Style Chicken Meatballs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\"]','HS-137-A0',0,17,0,1,1,5,0,0,121,NULL,NULL,NULL,12.00,15.00,16.00,806.00,NULL,116083,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,3,0),(19,'Simply Lemonade with Raspberry Juice','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]','HS-188-A0',0,20,0,1,1,2,0,0,117,NULL,NULL,NULL,13.00,19.00,13.00,562.00,NULL,174492,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(20,'Perdue Simply Smart Organics Gluten Free','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]','HS-109-A0',0,14,0,1,1,7,0,0,119,97.58,NULL,NULL,19.00,16.00,16.00,817.00,NULL,24541,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(21,'Chen Watermelon (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]','HS-192-A0',0,10,0,1,1,5,0,0,111,NULL,NULL,NULL,18.00,18.00,12.00,792.00,NULL,158592,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,4,0),(22,'Organic Cage-Free Grade A Large Brown Eggs','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]','HS-149-A0',0,15,0,1,1,4,0,0,120,NULL,NULL,NULL,19.00,18.00,10.00,812.00,NULL,107585,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(23,'Colorful Banana','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]','HS-100-A0',0,13,0,1,1,4,0,0,119,NULL,NULL,NULL,19.00,11.00,16.00,664.00,NULL,184468,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,4,0),(24,'Signature Wood-Fired Mushroom and Caramelized','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline.</p>\n<p><img src=\"/storage/general/clock.png\" alt=\"icon\" style=\"height:15px;\">  1 Year AL Jazeera Brand Warranty\n</p>\n<p><img src=\"/storage/general/paper-plane.png\" alt=\"icon\" style=\"height:15px;\">   30 Day Return Policy</p>\n<p><img src=\"/storage/general/credit-card.png\" alt=\"icon\" style=\"height:15px;\">  Cash on Delivery available\n</p>\n','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string\n    detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in\n    cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic\n    silhouette and utilitarian design details.</p>\n<p>- Casual unisex fit</p>\n\n<p>- 64% polyester, 36% polyurethane</p>\n\n<p>- Water column pressure: 4000 mm</p>\n\n<p>- Model is 187cm tall and wearing a size S / M</p>\n\n<p>- Unisex fit</p>\n\n<p>- Drawstring hood with built-in cap</p>\n\n<p>- Front placket with snap buttons</p>\n\n<p>- Ventilation under armpit</p>\n\n<p>- Adjustable cuffs</p>\n\n<p>- Double welted front pockets</p>\n\n<p>- Adjustable elastic string at hempen</p>\n\n<p>- Ultrasonically welded seams</p>\n\n<p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing\n    information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean\n    and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising\n    from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody-\n    but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy\n    days, issuing an invitation to explore even in the most mercurial weather.</p>\n','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]','HS-188-A0',0,10,0,1,1,7,0,0,114,99.18,NULL,NULL,13.00,12.00,17.00,502.00,NULL,182983,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,2,0),(25,'Seeds of Change Organic Quinoe (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-113-A0',0,12,0,1,0,7,1,0,432,NULL,NULL,NULL,10.00,11.00,11.00,747.00,NULL,0,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(26,'Seeds of Change Organic Quinoe (Digital)',NULL,NULL,'published','[\"products\\/1-1.jpg\"]','HS-113-A0-A1',0,12,0,1,0,7,1,0,432,NULL,NULL,NULL,10.00,11.00,11.00,747.00,NULL,0,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(27,'Seeds of Change Organic Quinoe (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-113-A0-A2',0,12,0,1,0,7,1,0,432,NULL,NULL,NULL,10.00,11.00,11.00,747.00,NULL,0,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(28,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-106-A0',0,13,0,1,0,5,1,0,346,NULL,NULL,NULL,17.00,17.00,19.00,644.00,NULL,0,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(29,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','HS-106-A0-A1',0,13,0,1,0,5,1,0,346,NULL,NULL,NULL,17.00,17.00,19.00,644.00,NULL,0,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(30,'Angie’s Boomchickapop Sweet & Salty Kettle Corn',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-178-A0',0,18,0,1,0,7,1,0,389,NULL,NULL,NULL,20.00,10.00,19.00,694.00,NULL,0,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(31,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-113-A0',0,11,0,1,0,5,1,0,87,61.77,NULL,NULL,20.00,18.00,11.00,793.00,NULL,0,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(32,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','HS-113-A0-A1',0,11,0,1,0,5,1,0,87,65.25,NULL,NULL,20.00,18.00,11.00,793.00,NULL,0,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(33,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-113-A0-A2',0,11,0,1,0,5,1,0,87,61.77,NULL,NULL,20.00,18.00,11.00,793.00,NULL,0,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(34,'Foster Farms Takeout Crispy Classic',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-113-A0-A3',0,11,0,1,0,5,1,0,87,71.34,NULL,NULL,20.00,18.00,11.00,793.00,NULL,0,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(35,'Blue Diamond Almonds Lightly (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-160-A0',0,12,0,1,0,7,1,0,42,NULL,NULL,NULL,15.00,11.00,17.00,872.00,NULL,0,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(36,'Blue Diamond Almonds Lightly (Digital)',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','HS-160-A0-A1',0,12,0,1,0,7,1,0,42,NULL,NULL,NULL,15.00,11.00,17.00,872.00,NULL,0,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(37,'Blue Diamond Almonds Lightly (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-160-A0-A2',0,12,0,1,0,7,1,0,42,NULL,NULL,NULL,15.00,11.00,17.00,872.00,NULL,0,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(38,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-150-A0',0,14,0,1,0,7,1,0,59,NULL,NULL,NULL,13.00,15.00,16.00,613.00,NULL,0,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(39,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6-1.jpg\"]','HS-150-A0-A1',0,14,0,1,0,7,1,0,59,NULL,NULL,NULL,13.00,15.00,16.00,613.00,NULL,0,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(40,'Chobani Complete Vanilla Greek',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-150-A0-A2',0,14,0,1,0,7,1,0,59,NULL,NULL,NULL,13.00,15.00,16.00,613.00,NULL,0,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(41,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-148-A0',0,15,0,1,0,4,1,0,116,NULL,NULL,NULL,16.00,13.00,13.00,663.00,NULL,0,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(42,'Canada Dry Ginger Ale – 2 L Bottle',NULL,NULL,'published','[\"products\\/7-1.jpg\"]','HS-148-A0-A1',0,15,0,1,0,4,1,0,116,NULL,NULL,NULL,16.00,13.00,13.00,663.00,NULL,0,'2024-01-23 01:51:46','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(43,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-113-A0',0,13,0,1,0,1,1,0,126,98.28,NULL,NULL,17.00,15.00,18.00,512.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(44,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','HS-113-A0-A1',0,13,0,1,0,1,1,0,126,95.76,NULL,NULL,17.00,15.00,18.00,512.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(45,'Encore Seafoods Stuffed Alaskan',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-113-A0-A2',0,13,0,1,0,1,1,0,126,110.88,NULL,NULL,17.00,15.00,18.00,512.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(46,'Gorton’s Beer Battered Fish Fillets (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-128-A0',0,18,0,1,0,4,1,0,114,NULL,NULL,NULL,18.00,19.00,11.00,780.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(47,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-164-A0',0,20,0,1,0,3,1,0,229,NULL,NULL,NULL,19.00,17.00,18.00,804.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(48,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','HS-164-A0-A1',0,20,0,1,0,3,1,0,229,NULL,NULL,NULL,19.00,17.00,18.00,804.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(49,'Haagen-Dazs Caramel Cone Ice Cream',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-164-A0-A2',0,20,0,1,0,3,1,0,229,NULL,NULL,NULL,19.00,17.00,18.00,804.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(50,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-176-A0',0,14,0,1,0,1,1,0,114,NULL,NULL,NULL,13.00,12.00,10.00,849.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(51,'Nestle Original Coffee-Mate Coffee Creamer',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','HS-176-A0-A1',0,14,0,1,0,1,1,0,114,NULL,NULL,NULL,13.00,12.00,10.00,849.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(52,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-167-A0',0,18,0,1,0,2,1,0,125,92.5,NULL,NULL,17.00,16.00,16.00,753.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(53,'Naturally Flavored Cinnamon Vanilla Light Roast Coffee',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','HS-167-A0-A1',0,18,0,1,0,2,1,0,125,100,NULL,NULL,17.00,16.00,16.00,753.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(54,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-160-A0',0,13,0,1,0,6,1,0,121,NULL,NULL,NULL,11.00,10.00,19.00,734.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(55,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','HS-160-A0-A1',0,13,0,1,0,6,1,0,121,NULL,NULL,NULL,11.00,10.00,19.00,734.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(56,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-160-A0-A2',0,13,0,1,0,6,1,0,121,NULL,NULL,NULL,11.00,10.00,19.00,734.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(57,'Pepperidge Farm Farmhouse Hearty White Bread (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-160-A0-A3',0,13,0,1,0,6,1,0,121,NULL,NULL,NULL,11.00,10.00,19.00,734.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(58,'Organic Frozen Triple Berry Blend',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-196-A0',0,16,0,1,0,1,1,0,128,NULL,NULL,NULL,12.00,18.00,19.00,679.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(59,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-142-A0',0,16,0,1,0,3,1,0,125,NULL,NULL,NULL,15.00,16.00,17.00,654.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(60,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','HS-142-A0-A1',0,16,0,1,0,3,1,0,125,NULL,NULL,NULL,15.00,16.00,17.00,654.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(61,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-142-A0-A2',0,16,0,1,0,3,1,0,125,NULL,NULL,NULL,15.00,16.00,17.00,654.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(62,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-142-A0-A3',0,16,0,1,0,3,1,0,125,NULL,NULL,NULL,15.00,16.00,17.00,654.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(63,'Oroweat Country Buttermilk Bread',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-142-A0-A4',0,16,0,1,0,3,1,0,125,NULL,NULL,NULL,15.00,16.00,17.00,654.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(64,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-176-A0',0,16,0,1,0,6,1,0,116,96.28,NULL,NULL,13.00,15.00,17.00,789.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(65,'Foster Farms Takeout Crispy Classic Buffalo Wings',NULL,NULL,'published','[\"products\\/16-1.jpg\"]','HS-176-A0-A1',0,16,0,1,0,6,1,0,116,89.32,NULL,NULL,13.00,15.00,17.00,789.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(66,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-160-A0',0,20,0,1,0,1,1,0,115,NULL,NULL,NULL,16.00,17.00,17.00,542.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(67,'Angie’s Boomchickapop Sweet & Salty Kettle Corn (Digital)',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','HS-160-A0-A1',0,20,0,1,0,1,1,0,115,NULL,NULL,NULL,16.00,17.00,17.00,542.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(68,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-137-A0',0,17,0,1,0,5,1,0,121,NULL,NULL,NULL,12.00,15.00,16.00,806.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(69,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','HS-137-A0-A1',0,17,0,1,0,5,1,0,121,NULL,NULL,NULL,12.00,15.00,16.00,806.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(70,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-137-A0-A2',0,17,0,1,0,5,1,0,121,NULL,NULL,NULL,12.00,15.00,16.00,806.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(71,'All Natural Italian-Style Chicken Meatballs',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-137-A0-A3',0,17,0,1,0,5,1,0,121,NULL,NULL,NULL,12.00,15.00,16.00,806.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(72,'Simply Lemonade with Raspberry Juice',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-188-A0',0,20,0,1,0,2,1,0,117,NULL,NULL,NULL,13.00,19.00,13.00,562.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(73,'Perdue Simply Smart Organics Gluten Free',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-109-A0',0,14,0,1,0,7,1,0,119,97.58,NULL,NULL,19.00,16.00,16.00,817.00,NULL,0,'2024-01-23 01:51:47','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(74,'Chen Watermelon (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-192-A0',0,10,0,1,0,5,1,0,111,NULL,NULL,NULL,18.00,18.00,12.00,792.00,NULL,0,'2024-01-23 01:51:48','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(75,'Chen Watermelon (Digital)',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','HS-192-A0-A1',0,10,0,1,0,5,1,0,111,NULL,NULL,NULL,18.00,18.00,12.00,792.00,NULL,0,'2024-01-23 01:51:48','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(76,'Chen Watermelon (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-192-A0-A2',0,10,0,1,0,5,1,0,111,NULL,NULL,NULL,18.00,18.00,12.00,792.00,NULL,0,'2024-01-23 01:51:48','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(77,'Chen Watermelon (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-192-A0-A3',0,10,0,1,0,5,1,0,111,NULL,NULL,NULL,18.00,18.00,12.00,792.00,NULL,0,'2024-01-23 01:51:48','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,NULL,0),(78,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-149-A0',0,15,0,1,0,4,1,0,120,NULL,NULL,NULL,19.00,18.00,10.00,812.00,NULL,0,'2024-01-23 01:51:48','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(79,'Organic Cage-Free Grade A Large Brown Eggs',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','HS-149-A0-A1',0,15,0,1,0,4,1,0,120,NULL,NULL,NULL,19.00,18.00,10.00,812.00,NULL,0,'2024-01-23 01:51:48','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(80,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-100-A0',0,13,0,1,0,4,1,0,119,NULL,NULL,NULL,19.00,11.00,16.00,664.00,NULL,0,'2024-01-23 01:51:48','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(81,'Colorful Banana',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','HS-100-A0-A1',0,13,0,1,0,4,1,0,119,NULL,NULL,NULL,19.00,11.00,16.00,664.00,NULL,0,'2024-01-23 01:51:48','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(82,'Colorful Banana',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-100-A0-A2',0,13,0,1,0,4,1,0,119,NULL,NULL,NULL,19.00,11.00,16.00,664.00,NULL,0,'2024-01-23 01:51:48','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(83,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-188-A0',0,10,0,1,0,7,1,0,114,99.18,NULL,NULL,13.00,12.00,17.00,502.00,NULL,0,'2024-01-23 01:51:48','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(84,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24-1.jpg\"]','HS-188-A0-A1',0,10,0,1,0,7,1,0,114,90.06,NULL,NULL,13.00,12.00,17.00,502.00,NULL,0,'2024-01-23 01:51:48','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(85,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-188-A0-A2',0,10,0,1,0,7,1,0,114,92.34,NULL,NULL,13.00,12.00,17.00,502.00,NULL,0,'2024-01-23 01:51:48','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0),(86,'Signature Wood-Fired Mushroom and Caramelized',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-188-A0-A3',0,10,0,1,0,7,1,0,114,98.04,NULL,NULL,13.00,12.00,17.00,502.00,NULL,0,'2024-01-23 01:51:48','2024-01-23 01:52:00','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,8,8,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/16-6.jpg\"]'),(2,3,5,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/11.jpg\",\"products\\/15.jpg\",\"products\\/20-1.jpg\"]'),(3,6,8,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/6-1.jpg\",\"products\\/6.jpg\",\"products\\/10-1.jpg\"]'),(4,2,12,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/13-1.jpg\",\"products\\/16-5.jpg\",\"products\\/21-1.jpg\"]'),(6,9,17,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/10.jpg\",\"products\\/22.jpg\"]'),(7,1,18,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/12-1.jpg\",\"products\\/16-4.jpg\",\"products\\/23-1.jpg\"]'),(8,3,13,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/16-3.jpg\"]'),(9,6,11,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/11.jpg\",\"products\\/16-3.jpg\",\"products\\/17-1.jpg\"]'),(10,9,10,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/2.jpg\",\"products\\/13-1.jpg\",\"products\\/18-1.jpg\",\"products\\/24.jpg\"]'),(11,5,14,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/20-1.jpg\"]'),(12,8,15,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/17.jpg\",\"products\\/24-1.jpg\"]'),(13,3,23,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/16-3.jpg\",\"products\\/16-6.jpg\",\"products\\/21-1.jpg\"]'),(14,9,2,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/16-6.jpg\"]'),(15,10,16,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/16-2.jpg\",\"products\\/23-1.jpg\"]'),(16,2,4,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/9-1.jpg\",\"products\\/12.jpg\",\"products\\/17.jpg\"]'),(18,1,4,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/9-1.jpg\"]'),(19,4,18,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/9.jpg\",\"products\\/16-3.jpg\",\"products\\/23-1.jpg\",\"products\\/23.jpg\"]'),(20,6,24,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/2.jpg\",\"products\\/16-5.jpg\",\"products\\/17-1.jpg\",\"products\\/19.jpg\"]'),(21,8,6,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/7.jpg\",\"products\\/11.jpg\",\"products\\/16-2.jpg\"]'),(22,5,5,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/3.jpg\",\"products\\/16-4.jpg\",\"products\\/17.jpg\",\"products\\/23.jpg\"]'),(23,10,9,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/21-1.jpg\"]'),(24,9,16,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/1.jpg\",\"products\\/23.jpg\"]'),(26,4,15,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/8-1.jpg\",\"products\\/16-1.jpg\"]'),(27,4,24,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/16.jpg\",\"products\\/21.jpg\",\"products\\/23.jpg\"]'),(28,3,18,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/12-1.jpg\",\"products\\/14-1.jpg\",\"products\\/19-1.jpg\",\"products\\/19.jpg\"]'),(29,1,19,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/2-1.jpg\",\"products\\/11-1.jpg\",\"products\\/16-1.jpg\"]'),(30,2,1,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/23.jpg\"]'),(31,5,4,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/1.jpg\",\"products\\/10-1.jpg\"]'),(32,6,20,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/19-1.jpg\"]'),(33,5,10,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/21-1.jpg\"]'),(35,6,10,5.00,'Best ecommerce CMS online store!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/5-1.jpg\",\"products\\/11.jpg\"]'),(36,8,3,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/16-2.jpg\"]'),(38,9,4,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/1-1.jpg\",\"products\\/8-1.jpg\",\"products\\/12.jpg\",\"products\\/22.jpg\"]'),(39,8,12,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/18-1.jpg\"]'),(40,2,15,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/11-1.jpg\",\"products\\/16-5.jpg\"]'),(41,6,22,3.00,'Best ecommerce CMS online store!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/16.jpg\"]'),(42,8,9,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/3-1.jpg\"]'),(44,9,7,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/1.jpg\"]'),(45,7,8,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/7-1.jpg\",\"products\\/12.jpg\"]'),(46,7,13,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/10.jpg\"]'),(47,6,13,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/10.jpg\",\"products\\/18.jpg\",\"products\\/22-1.jpg\"]'),(48,6,15,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/19-1.jpg\",\"products\\/20-1.jpg\",\"products\\/20.jpg\",\"products\\/23-1.jpg\"]'),(49,4,6,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/23-1.jpg\"]'),(50,3,20,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/11.jpg\",\"products\\/13-1.jpg\"]'),(51,4,2,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/2.jpg\",\"products\\/3.jpg\",\"products\\/8-1.jpg\",\"products\\/15-1.jpg\"]'),(53,5,13,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/13-1.jpg\"]'),(55,10,2,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/1-1.jpg\",\"products\\/14.jpg\",\"products\\/16-4.jpg\",\"products\\/24.jpg\"]'),(56,5,19,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/2-1.jpg\",\"products\\/17-1.jpg\"]'),(57,5,6,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/8-1.jpg\",\"products\\/18.jpg\",\"products\\/20-1.jpg\",\"products\\/21-1.jpg\"]'),(58,1,23,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/9-1.jpg\",\"products\\/24.jpg\"]'),(59,10,20,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/16-5.jpg\"]'),(60,3,6,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/4-1.jpg\"]'),(61,1,6,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/19.jpg\"]'),(62,10,1,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/7-1.jpg\",\"products\\/14.jpg\",\"products\\/21.jpg\"]'),(64,7,22,1.00,'Best ecommerce CMS online store!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/4-1.jpg\",\"products\\/9-1.jpg\",\"products\\/17-1.jpg\",\"products\\/19.jpg\"]'),(68,4,23,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/9-1.jpg\"]'),(70,10,18,2.00,'Good app, good backup service and support. Good documentation.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/9-1.jpg\",\"products\\/15-1.jpg\"]'),(71,6,12,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/5.jpg\",\"products\\/6-1.jpg\"]'),(72,6,23,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/5.jpg\",\"products\\/9.jpg\",\"products\\/14-1.jpg\",\"products\\/16-5.jpg\"]'),(73,3,17,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/24.jpg\"]'),(74,9,8,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/7-1.jpg\"]'),(75,2,20,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/5-1.jpg\",\"products\\/15-1.jpg\",\"products\\/21.jpg\"]'),(76,4,13,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/10-1.jpg\"]'),(77,10,3,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/2.jpg\",\"products\\/12.jpg\",\"products\\/23-1.jpg\"]'),(78,10,24,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/10-1.jpg\",\"products\\/20.jpg\"]'),(79,3,19,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/7-1.jpg\",\"products\\/8.jpg\",\"products\\/15-1.jpg\",\"products\\/16-1.jpg\"]'),(82,2,2,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/5-1.jpg\",\"products\\/8.jpg\",\"products\\/12-1.jpg\",\"products\\/20.jpg\"]'),(83,8,21,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/6-1.jpg\",\"products\\/13-1.jpg\",\"products\\/15-1.jpg\"]'),(84,4,20,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/5.jpg\",\"products\\/16-4.jpg\",\"products\\/16-5.jpg\",\"products\\/24.jpg\"]'),(85,7,16,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/2-1.jpg\"]'),(86,4,22,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/16.jpg\",\"products\\/20-1.jpg\"]'),(87,7,17,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/17.jpg\",\"products\\/21-1.jpg\",\"products\\/22-1.jpg\"]'),(88,3,10,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/4-1.jpg\",\"products\\/22.jpg\"]'),(89,5,7,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/4-1.jpg\",\"products\\/18-1.jpg\",\"products\\/23.jpg\"]'),(90,3,3,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/11.jpg\",\"products\\/20.jpg\"]'),(91,2,21,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/7-1.jpg\",\"products\\/12-1.jpg\",\"products\\/16-2.jpg\",\"products\\/24-1.jpg\"]'),(92,7,1,3.00,'Clean & perfect source code','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/7.jpg\",\"products\\/9.jpg\",\"products\\/10-1.jpg\",\"products\\/12-1.jpg\"]'),(93,4,9,1.00,'Best ecommerce CMS online store!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/15-1.jpg\"]'),(95,8,16,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/10-1.jpg\",\"products\\/17-1.jpg\",\"products\\/21-1.jpg\"]'),(96,6,1,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/21-1.jpg\"]'),(97,10,21,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/18-1.jpg\"]'),(98,2,17,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/3-1.jpg\",\"products\\/16-2.jpg\"]'),(99,1,8,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/6-1.jpg\",\"products\\/13-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-3.jpg\"]'),(100,5,20,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/17.jpg\",\"products\\/18.jpg\",\"products\\/21.jpg\",\"products\\/24.jpg\"]'),(104,3,7,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/6.jpg\",\"products\\/16-3.jpg\",\"products\\/16-4.jpg\"]'),(105,4,1,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/13.jpg\",\"products\\/16-3.jpg\"]'),(106,8,22,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/12-1.jpg\"]'),(107,6,4,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/1-1.jpg\",\"products\\/16-3.jpg\"]'),(108,10,17,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/9-1.jpg\",\"products\\/16-3.jpg\",\"products\\/19-1.jpg\"]'),(109,5,12,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/12.jpg\"]'),(110,1,22,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/7-1.jpg\",\"products\\/8-1.jpg\",\"products\\/9.jpg\",\"products\\/12.jpg\"]'),(111,6,5,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/5.jpg\",\"products\\/9.jpg\",\"products\\/10-1.jpg\",\"products\\/15.jpg\"]'),(114,2,11,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/6-1.jpg\",\"products\\/7-1.jpg\"]'),(115,4,19,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/2-1.jpg\",\"products\\/8-1.jpg\",\"products\\/18-1.jpg\"]'),(116,8,10,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/9.jpg\",\"products\\/12-1.jpg\"]'),(117,9,3,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/16-4.jpg\"]'),(118,4,5,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/15.jpg\"]'),(119,8,14,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/22-1.jpg\"]'),(120,5,21,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/14.jpg\",\"products\\/16-6.jpg\",\"products\\/16.jpg\"]'),(121,8,23,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/15-1.jpg\"]'),(122,7,6,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/14-1.jpg\",\"products\\/15-1.jpg\",\"products\\/16-4.jpg\"]'),(124,7,2,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/4.jpg\",\"products\\/16-3.jpg\",\"products\\/20-1.jpg\",\"products\\/21-1.jpg\"]'),(126,10,13,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/3.jpg\",\"products\\/13-1.jpg\"]'),(127,3,9,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/17-1.jpg\"]'),(128,6,3,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/17.jpg\",\"products\\/19.jpg\"]'),(129,5,8,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/2-1.jpg\",\"products\\/10-1.jpg\",\"products\\/15.jpg\"]'),(132,8,4,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/5-1.jpg\",\"products\\/12-1.jpg\",\"products\\/18-1.jpg\",\"products\\/18.jpg\"]'),(136,6,17,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/8.jpg\",\"products\\/10-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-5.jpg\"]'),(138,2,3,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/9-1.jpg\",\"products\\/15-1.jpg\"]'),(140,3,11,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/20.jpg\"]'),(141,2,9,3.00,'Clean & perfect source code','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/3-1.jpg\",\"products\\/13-1.jpg\",\"products\\/16-2.jpg\",\"products\\/19.jpg\"]'),(143,4,17,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/11.jpg\",\"products\\/20-1.jpg\"]'),(144,10,14,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/15.jpg\",\"products\\/16-3.jpg\",\"products\\/22-1.jpg\"]'),(145,3,24,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/7.jpg\",\"products\\/11.jpg\",\"products\\/12.jpg\"]'),(146,7,21,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/1-1.jpg\",\"products\\/6.jpg\"]'),(147,10,22,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/24.jpg\"]'),(148,9,21,5.00,'Best ecommerce CMS online store!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/2.jpg\",\"products\\/19-1.jpg\",\"products\\/19.jpg\"]'),(149,7,9,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/1-1.jpg\",\"products\\/2.jpg\",\"products\\/22-1.jpg\"]'),(152,5,1,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/8-1.jpg\",\"products\\/16-6.jpg\",\"products\\/22-1.jpg\",\"products\\/23.jpg\"]'),(153,9,24,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/7.jpg\",\"products\\/11-1.jpg\",\"products\\/15.jpg\",\"products\\/24.jpg\"]'),(154,1,11,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/1-1.jpg\",\"products\\/5-1.jpg\"]'),(158,7,11,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/1.jpg\",\"products\\/8-1.jpg\"]'),(159,4,16,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/2.jpg\",\"products\\/8.jpg\",\"products\\/24.jpg\"]'),(163,2,18,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/5-1.jpg\",\"products\\/21.jpg\",\"products\\/23.jpg\"]'),(164,10,12,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/14-1.jpg\",\"products\\/16-3.jpg\",\"products\\/18-1.jpg\"]'),(166,1,15,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/3-1.jpg\",\"products\\/16-3.jpg\",\"products\\/23-1.jpg\"]'),(169,4,21,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/16-3.jpg\"]'),(170,7,19,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/13.jpg\"]'),(172,2,22,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/4.jpg\",\"products\\/22-1.jpg\"]'),(174,4,4,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/5.jpg\",\"products\\/13-1.jpg\",\"products\\/13.jpg\",\"products\\/21.jpg\"]'),(177,10,8,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/1-1.jpg\",\"products\\/16-5.jpg\",\"products\\/19.jpg\"]'),(178,7,20,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/4.jpg\",\"products\\/11-1.jpg\",\"products\\/15.jpg\"]'),(179,7,3,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/12.jpg\",\"products\\/18.jpg\",\"products\\/21.jpg\"]'),(188,7,23,3.00,'Good app, good backup service and support. Good documentation.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/8.jpg\",\"products\\/13.jpg\",\"products\\/24.jpg\"]'),(189,9,18,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/10.jpg\",\"products\\/11-1.jpg\",\"products\\/11.jpg\",\"products\\/19.jpg\"]'),(191,4,12,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/20-1.jpg\",\"products\\/22.jpg\"]'),(192,3,14,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/11-1.jpg\",\"products\\/13.jpg\"]'),(195,2,24,1.00,'Best ecommerce CMS online store!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/2.jpg\"]'),(196,8,18,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/7.jpg\",\"products\\/17-1.jpg\"]'),(197,1,9,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/9-1.jpg\",\"products\\/15.jpg\"]'),(198,1,7,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/10-1.jpg\",\"products\\/16-5.jpg\"]'),(200,7,18,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/1.jpg\",\"products\\/18.jpg\",\"products\\/20-1.jpg\",\"products\\/24-1.jpg\"]'),(201,7,4,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/8.jpg\",\"products\\/16.jpg\",\"products\\/18-1.jpg\"]'),(203,9,15,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/1-1.jpg\",\"products\\/2.jpg\",\"products\\/7-1.jpg\"]'),(212,9,12,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/1-1.jpg\",\"products\\/3-1.jpg\",\"products\\/13-1.jpg\",\"products\\/16-3.jpg\"]'),(215,9,20,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/4.jpg\",\"products\\/12.jpg\",\"products\\/16-2.jpg\"]'),(216,5,16,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/8.jpg\",\"products\\/13-1.jpg\",\"products\\/16-3.jpg\"]'),(217,1,3,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/12-1.jpg\",\"products\\/16-6.jpg\",\"products\\/24-1.jpg\"]'),(222,10,4,3.00,'Good app, good backup service and support. Good documentation.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/4-1.jpg\",\"products\\/15-1.jpg\"]'),(224,9,22,3.00,'Clean & perfect source code','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/16-5.jpg\",\"products\\/20-1.jpg\",\"products\\/21-1.jpg\"]'),(226,6,18,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/2.jpg\",\"products\\/3.jpg\"]'),(228,9,1,4.00,'Good app, good backup service and support. Good documentation.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/14-1.jpg\"]'),(230,5,24,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/10-1.jpg\",\"products\\/11.jpg\",\"products\\/16-2.jpg\",\"products\\/18-1.jpg\"]'),(239,5,3,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/8.jpg\",\"products\\/16-6.jpg\",\"products\\/20-1.jpg\",\"products\\/22-1.jpg\"]'),(243,10,23,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/8.jpg\"]'),(245,8,19,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/16-6.jpg\",\"products\\/16.jpg\",\"products\\/19.jpg\"]'),(246,1,2,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/21.jpg\"]'),(248,4,14,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/3-1.jpg\",\"products\\/15.jpg\",\"products\\/16-3.jpg\",\"products\\/23-1.jpg\"]'),(249,8,5,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/13.jpg\"]'),(250,1,24,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/7.jpg\",\"products\\/9.jpg\",\"products\\/22-1.jpg\"]'),(251,8,24,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/23.jpg\"]'),(252,5,18,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/24-1.jpg\"]'),(254,1,14,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/2-1.jpg\",\"products\\/3-1.jpg\",\"products\\/8-1.jpg\",\"products\\/24-1.jpg\"]'),(256,1,12,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/16-4.jpg\",\"products\\/20-1.jpg\"]'),(258,2,10,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/3.jpg\",\"products\\/17.jpg\",\"products\\/20-1.jpg\"]'),(259,9,13,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/5.jpg\"]'),(260,2,14,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/1-1.jpg\",\"products\\/16-4.jpg\",\"products\\/16-6.jpg\",\"products\\/22.jpg\"]'),(261,1,1,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/19.jpg\"]'),(279,9,9,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/4.jpg\",\"products\\/12-1.jpg\",\"products\\/13.jpg\",\"products\\/16-1.jpg\"]'),(284,7,24,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/14-1.jpg\",\"products\\/15.jpg\",\"products\\/17.jpg\"]'),(286,8,17,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/3.jpg\"]'),(288,3,12,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/16-6.jpg\"]'),(291,6,19,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/10-1.jpg\",\"products\\/12-1.jpg\",\"products\\/12.jpg\",\"products\\/20-1.jpg\"]'),(296,5,17,3.00,'Best ecommerce CMS online store!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/9.jpg\"]'),(297,8,11,2.00,'Clean & perfect source code','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/3-1.jpg\"]'),(298,1,5,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/24.jpg\"]'),(301,6,6,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/4.jpg\"]'),(303,9,23,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/15.jpg\",\"products\\/16-1.jpg\"]'),(304,5,23,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/2-1.jpg\",\"products\\/10.jpg\"]'),(312,10,10,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/4-1.jpg\"]'),(313,10,5,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/4-1.jpg\",\"products\\/14-1.jpg\",\"products\\/21-1.jpg\"]'),(329,6,14,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/10.jpg\",\"products\\/15.jpg\",\"products\\/17.jpg\",\"products\\/22-1.jpg\"]'),(332,2,23,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/2-1.jpg\",\"products\\/8-1.jpg\",\"products\\/16-2.jpg\"]'),(336,4,7,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/3.jpg\",\"products\\/6-1.jpg\",\"products\\/8-1.jpg\",\"products\\/19.jpg\"]'),(337,10,15,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/2.jpg\",\"products\\/12.jpg\"]'),(339,7,7,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/16-2.jpg\"]'),(342,5,22,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/21.jpg\"]'),(346,10,7,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/2.jpg\",\"products\\/12-1.jpg\",\"products\\/22.jpg\"]'),(361,7,15,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/1.jpg\",\"products\\/16-3.jpg\"]'),(368,2,16,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/2.jpg\",\"products\\/12.jpg\",\"products\\/15.jpg\"]'),(373,5,11,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/19.jpg\"]'),(380,3,2,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/12.jpg\",\"products\\/16-4.jpg\"]'),(384,7,12,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/5.jpg\",\"products\\/14-1.jpg\",\"products\\/15.jpg\",\"products\\/16-5.jpg\"]'),(385,6,21,4.00,'Best ecommerce CMS online store!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/3-1.jpg\"]'),(389,7,14,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/19.jpg\"]'),(403,6,7,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/3.jpg\",\"products\\/16-6.jpg\",\"products\\/17-1.jpg\"]'),(405,2,7,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/14-1.jpg\"]'),(408,7,5,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/4-1.jpg\",\"products\\/6-1.jpg\",\"products\\/10.jpg\"]'),(410,8,7,2.00,'Best ecommerce CMS online store!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/9-1.jpg\",\"products\\/9.jpg\",\"products\\/20.jpg\",\"products\\/24-1.jpg\"]'),(412,2,13,3.00,'Clean & perfect source code','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/16-2.jpg\"]'),(415,3,8,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/1.jpg\",\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/16-6.jpg\"]'),(422,10,6,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/13.jpg\",\"products\\/15-1.jpg\"]'),(424,7,10,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/12.jpg\"]'),(432,6,16,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/8.jpg\"]'),(436,9,14,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/9.jpg\"]'),(437,4,8,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/2-1.jpg\",\"products\\/5-1.jpg\",\"products\\/12.jpg\"]'),(444,8,13,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/4.jpg\",\"products\\/11.jpg\",\"products\\/15-1.jpg\",\"products\\/17.jpg\"]'),(445,3,4,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/16-4.jpg\",\"products\\/22-1.jpg\",\"products\\/23.jpg\"]'),(453,2,19,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/4.jpg\",\"products\\/10-1.jpg\",\"products\\/14-1.jpg\",\"products\\/20-1.jpg\"]'),(459,4,10,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/8-1.jpg\",\"products\\/16-3.jpg\",\"products\\/20.jpg\",\"products\\/23-1.jpg\"]'),(465,2,5,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/5.jpg\",\"products\\/19-1.jpg\"]'),(468,4,3,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/5-1.jpg\",\"products\\/16-6.jpg\"]'),(486,10,19,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/5.jpg\",\"products\\/24-1.jpg\"]'),(494,1,21,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/16-6.jpg\"]'),(504,6,2,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/3.jpg\",\"products\\/12.jpg\",\"products\\/15-1.jpg\",\"products\\/15.jpg\"]'),(515,3,15,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/1-1.jpg\",\"products\\/4.jpg\",\"products\\/9.jpg\",\"products\\/21.jpg\"]'),(516,8,1,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/1.jpg\",\"products\\/2.jpg\",\"products\\/12.jpg\",\"products\\/16-6.jpg\"]'),(523,9,6,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/2.jpg\",\"products\\/7-1.jpg\",\"products\\/16-2.jpg\"]'),(528,1,13,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/22.jpg\"]'),(551,1,20,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/14-1.jpg\",\"products\\/16-2.jpg\",\"products\\/16-6.jpg\"]'),(572,8,20,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/17-1.jpg\",\"products\\/18-1.jpg\",\"products\\/20-1.jpg\"]'),(584,1,17,1.00,'Good app, good backup service and support. Good documentation.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/3.jpg\",\"products\\/12.jpg\",\"products\\/16-2.jpg\",\"products\\/24-1.jpg\"]'),(588,3,21,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/16-3.jpg\"]'),(621,4,11,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/3.jpg\",\"products\\/11.jpg\",\"products\\/16-4.jpg\",\"products\\/16.jpg\"]'),(625,2,6,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/13.jpg\"]'),(629,2,8,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/7.jpg\",\"products\\/16-2.jpg\"]'),(641,9,5,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/2-1.jpg\",\"products\\/3.jpg\",\"products\\/4.jpg\",\"products\\/24.jpg\"]'),(643,9,19,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/14-1.jpg\",\"products\\/20-1.jpg\"]'),(681,10,11,2.00,'Best ecommerce CMS online store!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/8.jpg\",\"products\\/21.jpg\",\"products\\/22-1.jpg\"]'),(715,3,16,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/11-1.jpg\",\"products\\/16-1.jpg\",\"products\\/16-5.jpg\",\"products\\/23-1.jpg\"]'),(756,5,15,5.00,'Best ecommerce CMS online store!','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/10.jpg\",\"products\\/16-2.jpg\",\"products\\/16-6.jpg\"]'),(773,9,11,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/5-1.jpg\"]'),(812,5,2,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/12.jpg\"]'),(872,3,1,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/6-1.jpg\",\"products\\/11-1.jpg\",\"products\\/16-6.jpg\"]'),(915,8,2,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/8.jpg\",\"products\\/9.jpg\",\"products\\/15-1.jpg\"]'),(949,1,10,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-01-23 01:51:51','2024-01-23 01:51:51','[\"products\\/5-1.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,2,'2024-01-11 09:52:01','2024-01-11 09:52:01','Botble\\ACL\\Models\\User'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,2,'2024-01-21 09:52:01','2024-01-23 01:52:01','Botble\\ACL\\Models\\User'),(3,'create_from_order','Shipping was created from order %order_id%',0,2,3,'2024-01-21 09:52:01','2024-01-21 09:52:01','Botble\\ACL\\Models\\User'),(4,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,3,'2024-01-21 09:52:02','2024-01-23 01:52:02','Botble\\ACL\\Models\\User'),(5,'create_from_order','Shipping was created from order %order_id%',0,3,5,'2024-01-21 11:52:02','2024-01-21 11:52:02','Botble\\ACL\\Models\\User'),(6,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,5,'2024-01-21 11:52:02','2024-01-23 01:52:02','Botble\\ACL\\Models\\User'),(7,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,3,5,'2024-01-23 01:52:02','2024-01-23 01:52:02','Botble\\ACL\\Models\\User'),(8,'create_from_order','Shipping was created from order %order_id%',0,4,6,'2024-01-21 11:52:02','2024-01-21 11:52:02','Botble\\ACL\\Models\\User'),(9,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,6,'2024-01-21 11:52:02','2024-01-23 01:52:02','Botble\\ACL\\Models\\User'),(10,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,6,'2024-01-23 01:52:02','2024-01-23 01:52:02','Botble\\ACL\\Models\\User'),(11,'create_from_order','Shipping was created from order %order_id%',0,5,7,'2024-01-21 13:52:02','2024-01-21 13:52:02','Botble\\ACL\\Models\\User'),(12,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,7,'2024-01-21 13:52:03','2024-01-23 01:52:03','Botble\\ACL\\Models\\User'),(13,'create_from_order','Shipping was created from order %order_id%',0,6,9,'2024-01-11 17:52:03','2024-01-11 17:52:03','Botble\\ACL\\Models\\User'),(14,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,9,'2024-01-21 15:52:03','2024-01-23 01:52:03','Botble\\ACL\\Models\\User'),(15,'create_from_order','Shipping was created from order %order_id%',0,7,10,'2024-01-21 15:52:03','2024-01-21 15:52:03','Botble\\ACL\\Models\\User'),(16,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,10,'2024-01-21 15:52:03','2024-01-23 01:52:03','Botble\\ACL\\Models\\User'),(17,'create_from_order','Shipping was created from order %order_id%',0,8,12,'2024-01-15 01:52:04','2024-01-15 01:52:04','Botble\\ACL\\Models\\User'),(18,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,12,'2024-01-21 17:52:04','2024-01-23 01:52:04','Botble\\ACL\\Models\\User'),(19,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,12,'2024-01-23 01:52:04','2024-01-23 01:52:04','Botble\\ACL\\Models\\User'),(20,'create_from_order','Shipping was created from order %order_id%',0,9,13,'2024-01-15 13:52:04','2024-01-15 13:52:04','Botble\\ACL\\Models\\User'),(21,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,13,'2024-01-21 19:52:04','2024-01-23 01:52:04','Botble\\ACL\\Models\\User'),(22,'create_from_order','Shipping was created from order %order_id%',0,10,14,'2024-01-21 19:52:04','2024-01-21 19:52:04','Botble\\ACL\\Models\\User'),(23,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,14,'2024-01-21 19:52:04','2024-01-23 01:52:04','Botble\\ACL\\Models\\User'),(24,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,14,'2024-01-23 01:52:04','2024-01-23 01:52:04','Botble\\ACL\\Models\\User'),(25,'create_from_order','Shipping was created from order %order_id%',0,11,15,'2024-01-20 17:52:04','2024-01-20 17:52:04','Botble\\ACL\\Models\\User'),(26,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,15,'2024-01-21 21:52:04','2024-01-23 01:52:04','Botble\\ACL\\Models\\User'),(27,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,15,'2024-01-23 01:52:04','2024-01-23 01:52:04','Botble\\ACL\\Models\\User'),(28,'create_from_order','Shipping was created from order %order_id%',0,12,18,'2024-01-20 21:52:05','2024-01-20 21:52:05','Botble\\ACL\\Models\\User'),(29,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,18,'2024-01-21 23:52:05','2024-01-23 01:52:05','Botble\\ACL\\Models\\User'),(30,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,18,'2024-01-23 01:52:05','2024-01-23 01:52:05','Botble\\ACL\\Models\\User'),(31,'create_from_order','Shipping was created from order %order_id%',0,13,20,'2024-01-22 01:52:05','2024-01-22 01:52:05','Botble\\ACL\\Models\\User'),(32,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,20,'2024-01-22 01:52:06','2024-01-23 01:52:06','Botble\\ACL\\Models\\User'),(33,'create_from_order','Shipping was created from order %order_id%',0,14,24,'2024-01-14 17:52:06','2024-01-14 17:52:06','Botble\\ACL\\Models\\User'),(34,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,24,'2024-01-22 05:52:06','2024-01-23 01:52:06','Botble\\ACL\\Models\\User'),(35,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,24,'2024-01-23 01:52:06','2024-01-23 01:52:06','Botble\\ACL\\Models\\User'),(36,'create_from_order','Shipping was created from order %order_id%',0,15,25,'2024-01-22 05:52:06','2024-01-22 05:52:06','Botble\\ACL\\Models\\User'),(37,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,25,'2024-01-22 05:52:07','2024-01-23 01:52:07','Botble\\ACL\\Models\\User'),(38,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,25,'2024-01-23 01:52:07','2024-01-23 01:52:07','Botble\\ACL\\Models\\User'),(39,'create_from_order','Shipping was created from order %order_id%',0,16,26,'2024-01-22 07:52:07','2024-01-22 07:52:07','Botble\\ACL\\Models\\User'),(40,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,26,'2024-01-22 07:52:07','2024-01-23 01:52:07','Botble\\ACL\\Models\\User'),(41,'create_from_order','Shipping was created from order %order_id%',0,17,27,'2024-01-21 13:52:07','2024-01-21 13:52:07','Botble\\ACL\\Models\\User'),(42,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,27,'2024-01-22 07:52:07','2024-01-23 01:52:07','Botble\\ACL\\Models\\User'),(43,'create_from_order','Shipping was created from order %order_id%',0,18,29,'2024-01-17 01:52:07','2024-01-17 01:52:07','Botble\\ACL\\Models\\User'),(44,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,29,'2024-01-22 09:52:07','2024-01-23 01:52:07','Botble\\ACL\\Models\\User'),(45,'create_from_order','Shipping was created from order %order_id%',0,19,30,'2024-01-19 13:52:07','2024-01-19 13:52:07','Botble\\ACL\\Models\\User'),(46,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,30,'2024-01-22 11:52:08','2024-01-23 01:52:08','Botble\\ACL\\Models\\User'),(47,'create_from_order','Shipping was created from order %order_id%',0,20,31,'2024-01-19 13:52:08','2024-01-19 13:52:08','Botble\\ACL\\Models\\User'),(48,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,31,'2024-01-22 11:52:08','2024-01-23 01:52:08','Botble\\ACL\\Models\\User'),(49,'create_from_order','Shipping was created from order %order_id%',0,21,33,'2024-01-18 23:52:08','2024-01-18 23:52:08','Botble\\ACL\\Models\\User'),(50,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,33,'2024-01-22 11:52:08','2024-01-23 01:52:08','Botble\\ACL\\Models\\User'),(51,'create_from_order','Shipping was created from order %order_id%',0,22,35,'2024-01-20 13:52:09','2024-01-20 13:52:09','Botble\\ACL\\Models\\User'),(52,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,35,'2024-01-22 13:52:09','2024-01-23 01:52:09','Botble\\ACL\\Models\\User'),(53,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,35,'2024-01-23 01:52:09','2024-01-23 01:52:09','Botble\\ACL\\Models\\User'),(54,'create_from_order','Shipping was created from order %order_id%',0,23,36,'2024-01-21 09:52:09','2024-01-21 09:52:09','Botble\\ACL\\Models\\User'),(55,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,36,'2024-01-22 15:52:09','2024-01-23 01:52:09','Botble\\ACL\\Models\\User'),(56,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,23,36,'2024-01-23 01:52:09','2024-01-23 01:52:09','Botble\\ACL\\Models\\User'),(57,'create_from_order','Shipping was created from order %order_id%',0,24,37,'2024-01-21 19:52:09','2024-01-21 19:52:09','Botble\\ACL\\Models\\User'),(58,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,37,'2024-01-22 15:52:09','2024-01-23 01:52:09','Botble\\ACL\\Models\\User'),(59,'create_from_order','Shipping was created from order %order_id%',0,25,39,'2024-01-21 01:52:10','2024-01-21 01:52:10','Botble\\ACL\\Models\\User'),(60,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,39,'2024-01-22 17:52:10','2024-01-23 01:52:10','Botble\\ACL\\Models\\User'),(61,'create_from_order','Shipping was created from order %order_id%',0,26,40,'2024-01-19 17:52:10','2024-01-19 17:52:10','Botble\\ACL\\Models\\User'),(62,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,40,'2024-01-22 17:52:10','2024-01-23 01:52:10','Botble\\ACL\\Models\\User'),(63,'create_from_order','Shipping was created from order %order_id%',0,27,41,'2024-01-21 19:52:10','2024-01-21 19:52:10','Botble\\ACL\\Models\\User'),(64,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,41,'2024-01-22 19:52:10','2024-01-23 01:52:10','Botble\\ACL\\Models\\User'),(65,'create_from_order','Shipping was created from order %order_id%',0,28,42,'2024-01-21 19:52:10','2024-01-21 19:52:10','Botble\\ACL\\Models\\User'),(66,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,42,'2024-01-22 19:52:10','2024-01-23 01:52:10','Botble\\ACL\\Models\\User'),(67,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,42,'2024-01-23 01:52:10','2024-01-23 01:52:10','Botble\\ACL\\Models\\User'),(68,'create_from_order','Shipping was created from order %order_id%',0,29,43,'2024-01-22 17:52:10','2024-01-22 17:52:10','Botble\\ACL\\Models\\User'),(69,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,43,'2024-01-22 21:52:11','2024-01-23 01:52:11','Botble\\ACL\\Models\\User'),(70,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,29,43,'2024-01-23 01:52:11','2024-01-23 01:52:11','Botble\\ACL\\Models\\User'),(71,'create_from_order','Shipping was created from order %order_id%',0,30,45,'2024-01-22 05:52:11','2024-01-22 05:52:11','Botble\\ACL\\Models\\User'),(72,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,45,'2024-01-22 23:52:11','2024-01-23 01:52:11','Botble\\ACL\\Models\\User'),(73,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,45,'2024-01-23 01:52:11','2024-01-23 01:52:11','Botble\\ACL\\Models\\User'),(74,'create_from_order','Shipping was created from order %order_id%',0,31,46,'2024-01-22 13:52:11','2024-01-22 13:52:11','Botble\\ACL\\Models\\User'),(75,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,46,'2024-01-22 23:52:11','2024-01-23 01:52:11','Botble\\ACL\\Models\\User');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,2,NULL,2259.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:01','2024-01-23 01:52:01','JJD0096873844','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-01 08:52:01',NULL,NULL,NULL),(2,3,NULL,1962.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:02','2024-01-23 01:52:02','JJD003990670','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-25 08:52:02',NULL,NULL,NULL),(3,5,NULL,1962.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:02','2024-01-23 01:52:02','JJD0030513273','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-31 08:52:02','2024-01-23 08:52:02',NULL,NULL),(4,6,NULL,2656.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:02','2024-01-23 01:52:02','JJD0096105402','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-01 08:52:02','2024-01-23 08:52:02',NULL,NULL),(5,7,NULL,1388.00,NULL,NULL,'','approved',778.00,'pending','pending',0.00,0,'2024-01-23 01:52:03','2024-01-23 01:52:03','JJD0080432907','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-31 08:52:03',NULL,NULL,NULL),(6,9,NULL,2240.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:03','2024-01-23 01:52:03','JJD0036325122','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-28 08:52:03',NULL,NULL,NULL),(7,10,NULL,512.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:03','2024-01-23 01:52:03','JJD0010793168','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-31 08:52:03',NULL,NULL,NULL),(8,12,NULL,804.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:04','2024-01-23 01:52:04','JJD0019050435','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-27 08:52:04','2024-01-23 08:52:04',NULL,NULL),(9,13,NULL,3587.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:04','2024-01-23 01:52:04','JJD0039585130','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-26 08:52:04',NULL,NULL,NULL),(10,14,NULL,1698.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:04','2024-01-23 01:52:04','JJD0084413610','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-01 08:52:04','2024-01-23 08:52:04',NULL,NULL),(11,15,NULL,1989.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:04','2024-01-23 01:52:04','JJD0053560623','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-28 08:52:04','2024-01-23 08:52:04',NULL,NULL),(12,18,NULL,793.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:05','2024-01-23 01:52:05','JJD0079347366','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-29 08:52:05','2024-01-23 08:52:05',NULL,NULL),(13,20,NULL,1797.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:06','2024-01-23 01:52:06','JJD001141776','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-27 08:52:06',NULL,NULL,NULL),(14,24,NULL,562.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:06','2024-01-23 01:52:06','JJD0050302541','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-24 08:52:06','2024-01-23 08:52:06',NULL,NULL),(15,25,NULL,3764.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:07','2024-01-23 01:52:07','JJD0038936903','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-29 08:52:07','2024-01-23 08:52:07',NULL,NULL),(16,26,NULL,3268.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:07','2024-01-23 01:52:07','JJD0085317016','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-26 08:52:07',NULL,NULL,NULL),(17,27,NULL,806.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:07','2024-01-23 01:52:07','JJD0098293169','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-30 08:52:07',NULL,NULL,NULL),(18,29,NULL,1124.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:07','2024-01-23 01:52:07','JJD0057837144','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-28 08:52:07',NULL,NULL,NULL),(19,30,NULL,1932.00,NULL,NULL,'','approved',1038.00,'pending','pending',0.00,0,'2024-01-23 01:52:08','2024-01-23 01:52:08','JJD0042865994','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-30 08:52:08',NULL,NULL,NULL),(20,31,NULL,1506.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:08','2024-01-23 01:52:08','JJD0075372817','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-28 08:52:08',NULL,NULL,NULL),(21,33,NULL,1624.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:08','2024-01-23 01:52:08','JJD0026332631','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-27 08:52:08',NULL,NULL,NULL),(22,35,NULL,4836.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:09','2024-01-23 01:52:09','JJD0071555441','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-26 08:52:09','2024-01-23 08:52:09',NULL,NULL),(23,36,NULL,2379.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:09','2024-01-23 01:52:09','JJD0067884022','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-28 08:52:09','2024-01-23 08:52:09',NULL,NULL),(24,37,NULL,2367.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:09','2024-01-23 01:52:09','JJD0080743830','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-01 08:52:09',NULL,NULL,NULL),(25,39,NULL,4041.00,NULL,NULL,'','approved',540.00,'pending','pending',0.00,0,'2024-01-23 01:52:10','2024-01-23 01:52:10','JJD0030522142','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-24 08:52:10',NULL,NULL,NULL),(26,40,NULL,1624.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:10','2024-01-23 01:52:10','JJD0047542899','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-01 08:52:10',NULL,NULL,NULL),(27,41,NULL,1226.00,NULL,NULL,'','approved',118.00,'pending','pending',0.00,0,'2024-01-23 01:52:10','2024-01-23 01:52:10','JJD0038344046','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-02-01 08:52:10',NULL,NULL,NULL),(28,42,NULL,806.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:10','2024-01-23 01:52:10','JJD0061706503','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-29 08:52:10','2024-01-23 08:52:10',NULL,NULL),(29,43,NULL,2864.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:11','2024-01-23 01:52:11','JJD0092283430','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-26 08:52:11','2024-01-23 08:52:11',NULL,NULL),(30,45,NULL,1447.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:11','2024-01-23 01:52:11','JJD0087790624','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-27 08:52:11','2024-01-23 08:52:11',NULL,NULL),(31,46,NULL,1024.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2024-01-23 01:52:11','2024-01-23 01:52:11','JJD0084589200','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2024-01-25 08:52:11',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-01-23 01:51:51','2024-01-23 01:51:51');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2024-01-23 01:51:51','2024-01-23 01:51:51');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Nest','sales@botble.com','18006268','North Link Building, 10 Admiralty Street','SG','Singapore','Singapore',1,1,'2024-01-23 01:51:51','2024-01-23 01:51:51');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-01-23 01:51:48','2024-01-23 01:51:48'),(2,'None',0.000000,2,'published','2024-01-23 01:51:48','2024-01-23 01:51:48'),(3,'Import Tax',15.000000,3,'published','2024-01-23 01:51:48','2024-01-23 01:51:48');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2024-01-23 01:51:40','2024-01-23 01:51:40',NULL),(2,'Payment',1,'published','2024-01-23 01:51:40','2024-01-23 01:51:40',NULL),(3,'Order &amp; Returns',2,'published','2024-01-23 01:51:40','2024-01-23 01:51:40',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-01-23 01:51:40','2024-01-23 01:51:40'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-01-23 01:51:40','2024-01-23 01:51:40'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-01-23 01:51:40','2024-01-23 01:51:40'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-01-23 01:51:40','2024-01-23 01:51:40'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-01-23 01:51:40','2024-01-23 01:51:40'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-01-23 01:51:40','2024-01-23 01:51:40'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-01-23 01:51:40','2024-01-23 01:51:40'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-01-23 01:51:40','2024-01-23 01:51:40'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-01-23 01:51:40','2024-01-23 01:51:40'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-01-23 01:51:40','2024-01-23 01:51:40');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','3e45f588eb7b22a9dd6506c3122d2d7b',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','92ce16ece35359dbb6b88d2fb802cb31',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','fcfd8a2e2f186bf65c95bff5c953ca88',3,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(4,'en_US','46bf4544f8ba5f6cb5afadd9786cfee4',4,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(5,'en_US','69faf39495d971f1e28c324851a3df08',5,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(6,'en_US','213294c5d0d029537363e328ee6becbd',6,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(7,'en_US','1b2b716141c2be5302047b8133b56e20',7,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(8,'en_US','fdcc7788b5d4c2555ef6874b0c30ca41',1,'Botble\\Menu\\Models\\MenuLocation'),(9,'en_US','fad62cd9205517c3229bff4fd3414281',1,'Botble\\Menu\\Models\\Menu'),(10,'en_US','d3e5ea0cbb252852e51440be8dded8ae',2,'Botble\\Menu\\Models\\MenuLocation'),(11,'en_US','eae38777fdd9c660934a2e89799c9d33',2,'Botble\\Menu\\Models\\Menu'),(12,'en_US','3f53422c5c83c30b50588e5eca13c53e',3,'Botble\\Menu\\Models\\Menu'),(13,'en_US','44cd0cdf200ac4915b73ffc9224612e6',4,'Botble\\Menu\\Models\\Menu'),(14,'en_US','2d0746da67f278fb83b526111ffbfded',5,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'icon-1','icon-1',1,'image/png',5306,'product-categories/icon-1.png','[]','2024-01-23 01:51:40','2024-01-23 01:51:40',NULL),(2,0,'icon-10','icon-10',1,'image/png',5306,'product-categories/icon-10.png','[]','2024-01-23 01:51:40','2024-01-23 01:51:40',NULL),(3,0,'icon-11','icon-11',1,'image/png',5306,'product-categories/icon-11.png','[]','2024-01-23 01:51:40','2024-01-23 01:51:40',NULL),(4,0,'icon-12','icon-12',1,'image/png',5306,'product-categories/icon-12.png','[]','2024-01-23 01:51:40','2024-01-23 01:51:40',NULL),(5,0,'icon-13','icon-13',1,'image/png',5306,'product-categories/icon-13.png','[]','2024-01-23 01:51:40','2024-01-23 01:51:40',NULL),(6,0,'icon-14','icon-14',1,'image/png',5306,'product-categories/icon-14.png','[]','2024-01-23 01:51:40','2024-01-23 01:51:40',NULL),(7,0,'icon-2','icon-2',1,'image/png',5306,'product-categories/icon-2.png','[]','2024-01-23 01:51:40','2024-01-23 01:51:40',NULL),(8,0,'icon-3','icon-3',1,'image/png',5306,'product-categories/icon-3.png','[]','2024-01-23 01:51:40','2024-01-23 01:51:40',NULL),(9,0,'icon-4','icon-4',1,'image/png',5306,'product-categories/icon-4.png','[]','2024-01-23 01:51:41','2024-01-23 01:51:41',NULL),(10,0,'icon-5','icon-5',1,'image/png',5306,'product-categories/icon-5.png','[]','2024-01-23 01:51:41','2024-01-23 01:51:41',NULL),(11,0,'icon-6','icon-6',1,'image/png',5306,'product-categories/icon-6.png','[]','2024-01-23 01:51:41','2024-01-23 01:51:41',NULL),(12,0,'icon-7','icon-7',1,'image/png',5306,'product-categories/icon-7.png','[]','2024-01-23 01:51:41','2024-01-23 01:51:41',NULL),(13,0,'icon-8','icon-8',1,'image/png',5306,'product-categories/icon-8.png','[]','2024-01-23 01:51:41','2024-01-23 01:51:41',NULL),(14,0,'icon-9','icon-9',1,'image/png',5306,'product-categories/icon-9.png','[]','2024-01-23 01:51:41','2024-01-23 01:51:41',NULL),(15,0,'image-1','image-1',1,'image/png',5306,'product-categories/image-1.png','[]','2024-01-23 01:51:41','2024-01-23 01:51:41',NULL),(16,0,'image-10','image-10',1,'image/png',5306,'product-categories/image-10.png','[]','2024-01-23 01:51:41','2024-01-23 01:51:41',NULL),(17,0,'image-11','image-11',1,'image/png',5306,'product-categories/image-11.png','[]','2024-01-23 01:51:41','2024-01-23 01:51:41',NULL),(18,0,'image-12','image-12',1,'image/png',5306,'product-categories/image-12.png','[]','2024-01-23 01:51:41','2024-01-23 01:51:41',NULL),(19,0,'image-13','image-13',1,'image/png',5306,'product-categories/image-13.png','[]','2024-01-23 01:51:41','2024-01-23 01:51:41',NULL),(20,0,'image-14','image-14',1,'image/png',5306,'product-categories/image-14.png','[]','2024-01-23 01:51:41','2024-01-23 01:51:41',NULL),(21,0,'image-15','image-15',1,'image/png',5306,'product-categories/image-15.png','[]','2024-01-23 01:51:41','2024-01-23 01:51:41',NULL),(22,0,'image-2','image-2',1,'image/png',5306,'product-categories/image-2.png','[]','2024-01-23 01:51:41','2024-01-23 01:51:41',NULL),(23,0,'image-3','image-3',1,'image/png',5306,'product-categories/image-3.png','[]','2024-01-23 01:51:41','2024-01-23 01:51:41',NULL),(24,0,'image-4','image-4',1,'image/png',5306,'product-categories/image-4.png','[]','2024-01-23 01:51:41','2024-01-23 01:51:41',NULL),(25,0,'image-5','image-5',1,'image/png',5306,'product-categories/image-5.png','[]','2024-01-23 01:51:41','2024-01-23 01:51:41',NULL),(26,0,'image-6','image-6',1,'image/png',5306,'product-categories/image-6.png','[]','2024-01-23 01:51:41','2024-01-23 01:51:41',NULL),(27,0,'image-7','image-7',1,'image/png',5306,'product-categories/image-7.png','[]','2024-01-23 01:51:41','2024-01-23 01:51:41',NULL),(28,0,'image-8','image-8',1,'image/png',5306,'product-categories/image-8.png','[]','2024-01-23 01:51:42','2024-01-23 01:51:42',NULL),(29,0,'image-9','image-9',1,'image/png',5306,'product-categories/image-9.png','[]','2024-01-23 01:51:42','2024-01-23 01:51:42',NULL),(30,0,'1-1','1-1',2,'image/jpeg',9730,'products/1-1.jpg','[]','2024-01-23 01:51:42','2024-01-23 01:51:42',NULL),(31,0,'1','1',2,'image/jpeg',9730,'products/1.jpg','[]','2024-01-23 01:51:42','2024-01-23 01:51:42',NULL),(32,0,'10-1','10-1',2,'image/jpeg',9730,'products/10-1.jpg','[]','2024-01-23 01:51:42','2024-01-23 01:51:42',NULL),(33,0,'10','10',2,'image/jpeg',9730,'products/10.jpg','[]','2024-01-23 01:51:42','2024-01-23 01:51:42',NULL),(34,0,'11-1','11-1',2,'image/jpeg',9730,'products/11-1.jpg','[]','2024-01-23 01:51:42','2024-01-23 01:51:42',NULL),(35,0,'11','11',2,'image/jpeg',9730,'products/11.jpg','[]','2024-01-23 01:51:42','2024-01-23 01:51:42',NULL),(36,0,'12-1','12-1',2,'image/jpeg',9730,'products/12-1.jpg','[]','2024-01-23 01:51:42','2024-01-23 01:51:42',NULL),(37,0,'12','12',2,'image/jpeg',9730,'products/12.jpg','[]','2024-01-23 01:51:42','2024-01-23 01:51:42',NULL),(38,0,'13-1','13-1',2,'image/jpeg',9730,'products/13-1.jpg','[]','2024-01-23 01:51:42','2024-01-23 01:51:42',NULL),(39,0,'13','13',2,'image/jpeg',9730,'products/13.jpg','[]','2024-01-23 01:51:43','2024-01-23 01:51:43',NULL),(40,0,'14-1','14-1',2,'image/jpeg',9730,'products/14-1.jpg','[]','2024-01-23 01:51:43','2024-01-23 01:51:43',NULL),(41,0,'14','14',2,'image/jpeg',9730,'products/14.jpg','[]','2024-01-23 01:51:43','2024-01-23 01:51:43',NULL),(42,0,'15-1','15-1',2,'image/jpeg',9730,'products/15-1.jpg','[]','2024-01-23 01:51:43','2024-01-23 01:51:43',NULL),(43,0,'15','15',2,'image/jpeg',9730,'products/15.jpg','[]','2024-01-23 01:51:43','2024-01-23 01:51:43',NULL),(44,0,'16-1','16-1',2,'image/jpeg',9730,'products/16-1.jpg','[]','2024-01-23 01:51:43','2024-01-23 01:51:43',NULL),(45,0,'16-2','16-2',2,'image/jpeg',9730,'products/16-2.jpg','[]','2024-01-23 01:51:43','2024-01-23 01:51:43',NULL),(46,0,'16-3','16-3',2,'image/jpeg',9730,'products/16-3.jpg','[]','2024-01-23 01:51:43','2024-01-23 01:51:43',NULL),(47,0,'16-4','16-4',2,'image/jpeg',9730,'products/16-4.jpg','[]','2024-01-23 01:51:43','2024-01-23 01:51:43',NULL),(48,0,'16-5','16-5',2,'image/jpeg',9730,'products/16-5.jpg','[]','2024-01-23 01:51:43','2024-01-23 01:51:43',NULL),(49,0,'16-6','16-6',2,'image/jpeg',9730,'products/16-6.jpg','[]','2024-01-23 01:51:43','2024-01-23 01:51:43',NULL),(50,0,'16','16',2,'image/jpeg',9730,'products/16.jpg','[]','2024-01-23 01:51:43','2024-01-23 01:51:43',NULL),(51,0,'17-1','17-1',2,'image/jpeg',9730,'products/17-1.jpg','[]','2024-01-23 01:51:43','2024-01-23 01:51:43',NULL),(52,0,'17','17',2,'image/jpeg',9730,'products/17.jpg','[]','2024-01-23 01:51:43','2024-01-23 01:51:43',NULL),(53,0,'18-1','18-1',2,'image/jpeg',9730,'products/18-1.jpg','[]','2024-01-23 01:51:43','2024-01-23 01:51:43',NULL),(54,0,'18','18',2,'image/jpeg',9730,'products/18.jpg','[]','2024-01-23 01:51:43','2024-01-23 01:51:43',NULL),(55,0,'19-1','19-1',2,'image/jpeg',9730,'products/19-1.jpg','[]','2024-01-23 01:51:44','2024-01-23 01:51:44',NULL),(56,0,'19','19',2,'image/jpeg',9730,'products/19.jpg','[]','2024-01-23 01:51:44','2024-01-23 01:51:44',NULL),(57,0,'2-1','2-1',2,'image/jpeg',9730,'products/2-1.jpg','[]','2024-01-23 01:51:44','2024-01-23 01:51:44',NULL),(58,0,'2','2',2,'image/jpeg',9730,'products/2.jpg','[]','2024-01-23 01:51:44','2024-01-23 01:51:44',NULL),(59,0,'20-1','20-1',2,'image/jpeg',9730,'products/20-1.jpg','[]','2024-01-23 01:51:44','2024-01-23 01:51:44',NULL),(60,0,'20','20',2,'image/jpeg',9730,'products/20.jpg','[]','2024-01-23 01:51:44','2024-01-23 01:51:44',NULL),(61,0,'21-1','21-1',2,'image/jpeg',9730,'products/21-1.jpg','[]','2024-01-23 01:51:44','2024-01-23 01:51:44',NULL),(62,0,'21','21',2,'image/jpeg',9730,'products/21.jpg','[]','2024-01-23 01:51:44','2024-01-23 01:51:44',NULL),(63,0,'22-1','22-1',2,'image/jpeg',9730,'products/22-1.jpg','[]','2024-01-23 01:51:44','2024-01-23 01:51:44',NULL),(64,0,'22','22',2,'image/jpeg',9730,'products/22.jpg','[]','2024-01-23 01:51:44','2024-01-23 01:51:44',NULL),(65,0,'23-1','23-1',2,'image/jpeg',9730,'products/23-1.jpg','[]','2024-01-23 01:51:44','2024-01-23 01:51:44',NULL),(66,0,'23','23',2,'image/jpeg',9730,'products/23.jpg','[]','2024-01-23 01:51:44','2024-01-23 01:51:44',NULL),(67,0,'24-1','24-1',2,'image/jpeg',9730,'products/24-1.jpg','[]','2024-01-23 01:51:44','2024-01-23 01:51:44',NULL),(68,0,'24','24',2,'image/jpeg',9730,'products/24.jpg','[]','2024-01-23 01:51:44','2024-01-23 01:51:44',NULL),(69,0,'3-1','3-1',2,'image/jpeg',9730,'products/3-1.jpg','[]','2024-01-23 01:51:44','2024-01-23 01:51:44',NULL),(70,0,'3','3',2,'image/jpeg',9730,'products/3.jpg','[]','2024-01-23 01:51:45','2024-01-23 01:51:45',NULL),(71,0,'4-1','4-1',2,'image/jpeg',9730,'products/4-1.jpg','[]','2024-01-23 01:51:45','2024-01-23 01:51:45',NULL),(72,0,'4','4',2,'image/jpeg',9730,'products/4.jpg','[]','2024-01-23 01:51:45','2024-01-23 01:51:45',NULL),(73,0,'5-1','5-1',2,'image/jpeg',9730,'products/5-1.jpg','[]','2024-01-23 01:51:45','2024-01-23 01:51:45',NULL),(74,0,'5','5',2,'image/jpeg',9730,'products/5.jpg','[]','2024-01-23 01:51:45','2024-01-23 01:51:45',NULL),(75,0,'6-1','6-1',2,'image/jpeg',9730,'products/6-1.jpg','[]','2024-01-23 01:51:45','2024-01-23 01:51:45',NULL),(76,0,'6','6',2,'image/jpeg',9730,'products/6.jpg','[]','2024-01-23 01:51:45','2024-01-23 01:51:45',NULL),(77,0,'7-1','7-1',2,'image/jpeg',9730,'products/7-1.jpg','[]','2024-01-23 01:51:45','2024-01-23 01:51:45',NULL),(78,0,'7','7',2,'image/jpeg',9730,'products/7.jpg','[]','2024-01-23 01:51:45','2024-01-23 01:51:45',NULL),(79,0,'8-1','8-1',2,'image/jpeg',9730,'products/8-1.jpg','[]','2024-01-23 01:51:45','2024-01-23 01:51:45',NULL),(80,0,'8','8',2,'image/jpeg',9730,'products/8.jpg','[]','2024-01-23 01:51:45','2024-01-23 01:51:45',NULL),(81,0,'9-1','9-1',2,'image/jpeg',9730,'products/9-1.jpg','[]','2024-01-23 01:51:45','2024-01-23 01:51:45',NULL),(82,0,'9','9',2,'image/jpeg',9730,'products/9.jpg','[]','2024-01-23 01:51:45','2024-01-23 01:51:45',NULL),(83,0,'1','1',3,'image/jpeg',9730,'customers/1.jpg','[]','2024-01-23 01:51:48','2024-01-23 01:51:48',NULL),(84,0,'10','10',3,'image/jpeg',9730,'customers/10.jpg','[]','2024-01-23 01:51:48','2024-01-23 01:51:48',NULL),(85,0,'2','2',3,'image/jpeg',9730,'customers/2.jpg','[]','2024-01-23 01:51:48','2024-01-23 01:51:48',NULL),(86,0,'3','3',3,'image/jpeg',9730,'customers/3.jpg','[]','2024-01-23 01:51:48','2024-01-23 01:51:48',NULL),(87,0,'4','4',3,'image/jpeg',9730,'customers/4.jpg','[]','2024-01-23 01:51:48','2024-01-23 01:51:48',NULL),(88,0,'5','5',3,'image/jpeg',9730,'customers/5.jpg','[]','2024-01-23 01:51:48','2024-01-23 01:51:48',NULL),(89,0,'6','6',3,'image/jpeg',9730,'customers/6.jpg','[]','2024-01-23 01:51:48','2024-01-23 01:51:48',NULL),(90,0,'7','7',3,'image/jpeg',9730,'customers/7.jpg','[]','2024-01-23 01:51:48','2024-01-23 01:51:48',NULL),(91,0,'8','8',3,'image/jpeg',9730,'customers/8.jpg','[]','2024-01-23 01:51:48','2024-01-23 01:51:48',NULL),(92,0,'9','9',3,'image/jpeg',9730,'customers/9.jpg','[]','2024-01-23 01:51:48','2024-01-23 01:51:48',NULL),(93,0,'1','1',4,'image/png',17734,'flash-sales/1.png','[]','2024-01-23 01:51:51','2024-01-23 01:51:51',NULL),(94,0,'2','2',4,'image/png',12245,'flash-sales/2.png','[]','2024-01-23 01:51:51','2024-01-23 01:51:51',NULL),(95,0,'3','3',4,'image/png',12245,'flash-sales/3.png','[]','2024-01-23 01:51:51','2024-01-23 01:51:51',NULL),(96,0,'4','4',4,'image/png',12245,'flash-sales/4.png','[]','2024-01-23 01:51:52','2024-01-23 01:51:52',NULL),(97,0,'5','5',4,'image/png',12245,'flash-sales/5.png','[]','2024-01-23 01:51:52','2024-01-23 01:51:52',NULL),(98,0,'1-1','1-1',5,'image/png',28937,'sliders/1-1.png','[]','2024-01-23 01:51:52','2024-01-23 01:51:52',NULL),(99,0,'1-2','1-2',5,'image/png',28937,'sliders/1-2.png','[]','2024-01-23 01:51:52','2024-01-23 01:51:52',NULL),(100,0,'2-1','2-1',5,'image/png',15605,'sliders/2-1.png','[]','2024-01-23 01:51:52','2024-01-23 01:51:52',NULL),(101,0,'2-2','2-2',5,'image/png',15605,'sliders/2-2.png','[]','2024-01-23 01:51:52','2024-01-23 01:51:52',NULL),(102,0,'3-1','3-1',5,'image/png',28937,'sliders/3-1.png','[]','2024-01-23 01:51:52','2024-01-23 01:51:52',NULL),(103,0,'3-2','3-2',5,'image/png',28937,'sliders/3-2.png','[]','2024-01-23 01:51:52','2024-01-23 01:51:52',NULL),(104,0,'4-1','4-1',5,'image/png',28937,'sliders/4-1.png','[]','2024-01-23 01:51:52','2024-01-23 01:51:52',NULL),(105,0,'4-2','4-2',5,'image/png',28937,'sliders/4-2.png','[]','2024-01-23 01:51:53','2024-01-23 01:51:53',NULL),(106,0,'5-1','5-1',5,'image/png',23845,'sliders/5-1.png','[]','2024-01-23 01:51:53','2024-01-23 01:51:53',NULL),(107,0,'5-2','5-2',5,'image/png',23845,'sliders/5-2.png','[]','2024-01-23 01:51:53','2024-01-23 01:51:53',NULL),(108,0,'banner-1','banner-1',5,'image/png',104000,'sliders/banner-1.png','[]','2024-01-23 01:51:53','2024-01-23 01:51:53',NULL),(109,0,'thumbnail-1','thumbnail-1',5,'image/jpeg',9730,'sliders/thumbnail-1.jpg','[]','2024-01-23 01:51:53','2024-01-23 01:51:53',NULL),(110,0,'thumbnail-2','thumbnail-2',5,'image/jpeg',9730,'sliders/thumbnail-2.jpg','[]','2024-01-23 01:51:53','2024-01-23 01:51:53',NULL),(111,0,'thumbnail-3','thumbnail-3',5,'image/jpeg',9730,'sliders/thumbnail-3.jpg','[]','2024-01-23 01:51:53','2024-01-23 01:51:53',NULL),(112,0,'thumbnail-4','thumbnail-4',5,'image/jpeg',9730,'sliders/thumbnail-4.jpg','[]','2024-01-23 01:51:53','2024-01-23 01:51:53',NULL),(113,0,'thumbnail-5','thumbnail-5',5,'image/jpeg',9730,'sliders/thumbnail-5.jpg','[]','2024-01-23 01:51:53','2024-01-23 01:51:53',NULL),(114,0,'thumbnail-6','thumbnail-6',5,'image/jpeg',9730,'sliders/thumbnail-6.jpg','[]','2024-01-23 01:51:54','2024-01-23 01:51:54',NULL),(115,0,'1','1',6,'image/png',9730,'news/1.png','[]','2024-01-23 01:51:54','2024-01-23 01:51:54',NULL),(116,0,'10','10',6,'image/png',9730,'news/10.png','[]','2024-01-23 01:51:54','2024-01-23 01:51:54',NULL),(117,0,'11','11',6,'image/png',9730,'news/11.png','[]','2024-01-23 01:51:54','2024-01-23 01:51:54',NULL),(118,0,'2','2',6,'image/png',9730,'news/2.png','[]','2024-01-23 01:51:54','2024-01-23 01:51:54',NULL),(119,0,'3','3',6,'image/png',9730,'news/3.png','[]','2024-01-23 01:51:54','2024-01-23 01:51:54',NULL),(120,0,'4','4',6,'image/png',9730,'news/4.png','[]','2024-01-23 01:51:54','2024-01-23 01:51:54',NULL),(121,0,'5','5',6,'image/png',9730,'news/5.png','[]','2024-01-23 01:51:54','2024-01-23 01:51:54',NULL),(122,0,'6','6',6,'image/png',9730,'news/6.png','[]','2024-01-23 01:51:54','2024-01-23 01:51:54',NULL),(123,0,'7','7',6,'image/png',9730,'news/7.png','[]','2024-01-23 01:51:54','2024-01-23 01:51:54',NULL),(124,0,'8','8',6,'image/png',9730,'news/8.png','[]','2024-01-23 01:51:54','2024-01-23 01:51:54',NULL),(125,0,'9','9',6,'image/png',9730,'news/9.png','[]','2024-01-23 01:51:54','2024-01-23 01:51:54',NULL),(128,0,'1','1',8,'image/png',11507,'promotion/1.png','[]','2024-01-23 01:51:55','2024-01-23 01:51:55',NULL),(129,0,'10','10',8,'image/png',7862,'promotion/10.png','[]','2024-01-23 01:51:55','2024-01-23 01:51:55',NULL),(130,0,'11','11',8,'image/png',7862,'promotion/11.png','[]','2024-01-23 01:51:56','2024-01-23 01:51:56',NULL),(131,0,'12','12',8,'image/png',7862,'promotion/12.png','[]','2024-01-23 01:51:56','2024-01-23 01:51:56',NULL),(132,0,'2','2',8,'image/png',11507,'promotion/2.png','[]','2024-01-23 01:51:56','2024-01-23 01:51:56',NULL),(133,0,'3','3',8,'image/png',11507,'promotion/3.png','[]','2024-01-23 01:51:56','2024-01-23 01:51:56',NULL),(134,0,'4','4',8,'image/png',13921,'promotion/4.png','[]','2024-01-23 01:51:56','2024-01-23 01:51:56',NULL),(135,0,'5','5',8,'image/png',26249,'promotion/5.png','[]','2024-01-23 01:51:56','2024-01-23 01:51:56',NULL),(136,0,'6','6',8,'image/png',26249,'promotion/6.png','[]','2024-01-23 01:51:56','2024-01-23 01:51:56',NULL),(137,0,'7','7',8,'image/png',14369,'promotion/7.png','[]','2024-01-23 01:51:56','2024-01-23 01:51:56',NULL),(138,0,'8','8',8,'image/png',7007,'promotion/8.png','[]','2024-01-23 01:51:56','2024-01-23 01:51:56',NULL),(139,0,'9','9',8,'image/png',7862,'promotion/9.png','[]','2024-01-23 01:51:56','2024-01-23 01:51:56',NULL),(140,0,'app-store','app-store',9,'image/jpeg',1907,'general/app-store.jpg','[]','2024-01-23 01:51:56','2024-01-23 01:51:56',NULL),(141,0,'category-1','category-1',9,'image/png',1033,'general/category-1.png','[]','2024-01-23 01:51:57','2024-01-23 01:51:57',NULL),(142,0,'clock','clock',9,'image/png',5056,'general/clock.png','[]','2024-01-23 01:51:57','2024-01-23 01:51:57',NULL),(143,0,'credit-card','credit-card',9,'image/png',1716,'general/credit-card.png','[]','2024-01-23 01:51:57','2024-01-23 01:51:57',NULL),(144,0,'facebook','facebook',9,'image/png',646,'general/facebook.png','[]','2024-01-23 01:51:57','2024-01-23 01:51:57',NULL),(145,0,'favicon','favicon',9,'image/png',3890,'general/favicon.png','[]','2024-01-23 01:51:57','2024-01-23 01:51:57',NULL),(146,0,'google-play','google-play',9,'image/jpeg',1907,'general/google-play.jpg','[]','2024-01-23 01:51:57','2024-01-23 01:51:57',NULL),(147,0,'header-bg','header-bg',9,'image/png',16995,'general/header-bg.png','[]','2024-01-23 01:51:57','2024-01-23 01:51:57',NULL),(148,0,'home-6','home-6',9,'image/jpeg',799491,'general/home-6.jpeg','[]','2024-01-23 01:51:57','2024-01-23 01:51:57',NULL),(149,0,'icon-1','icon-1',9,'image/png',2024,'general/icon-1.png','[]','2024-01-23 01:51:57','2024-01-23 01:51:57',NULL),(150,0,'icon-2','icon-2',9,'image/png',3531,'general/icon-2.png','[]','2024-01-23 01:51:57','2024-01-23 01:51:57',NULL),(151,0,'icon-3','icon-3',9,'image/png',2344,'general/icon-3.png','[]','2024-01-23 01:51:57','2024-01-23 01:51:57',NULL),(152,0,'icon-4','icon-4',9,'image/png',2314,'general/icon-4.png','[]','2024-01-23 01:51:57','2024-01-23 01:51:57',NULL),(153,0,'icon-5','icon-5',9,'image/png',2853,'general/icon-5.png','[]','2024-01-23 01:51:57','2024-01-23 01:51:57',NULL),(154,0,'instagram','instagram',9,'image/png',2586,'general/instagram.png','[]','2024-01-23 01:51:57','2024-01-23 01:51:57',NULL),(155,0,'loading','loading',9,'image/gif',25062,'general/loading.gif','[]','2024-01-23 01:51:57','2024-01-23 01:51:57',NULL),(156,0,'login-1','login-1',9,'image/png',20670,'general/login-1.png','[]','2024-01-23 01:51:57','2024-01-23 01:51:57',NULL),(157,0,'logo','logo',9,'image/png',16457,'general/logo.png','[]','2024-01-23 01:51:57','2024-01-23 01:51:57',NULL),(158,0,'newsletter-background-image','newsletter-background-image',9,'image/png',28409,'general/newsletter-background-image.png','[]','2024-01-23 01:51:58','2024-01-23 01:51:58',NULL),(159,0,'newsletter-image','newsletter-image',9,'image/png',14158,'general/newsletter-image.png','[]','2024-01-23 01:51:58','2024-01-23 01:51:58',NULL),(160,0,'open-graph-image','open-graph-image',9,'image/png',436809,'general/open-graph-image.png','[]','2024-01-23 01:51:58','2024-01-23 01:51:58',NULL),(161,0,'paper-plane','paper-plane',9,'image/png',5119,'general/paper-plane.png','[]','2024-01-23 01:51:58','2024-01-23 01:51:58',NULL),(162,0,'payment-methods','payment-methods',9,'image/png',455,'general/payment-methods.png','[]','2024-01-23 01:51:58','2024-01-23 01:51:58',NULL),(163,0,'pinterest','pinterest',9,'image/png',2128,'general/pinterest.png','[]','2024-01-23 01:51:58','2024-01-23 01:51:58',NULL),(164,0,'twitter','twitter',9,'image/png',1759,'general/twitter.png','[]','2024-01-23 01:51:58','2024-01-23 01:51:58',NULL),(165,0,'youtube','youtube',9,'image/png',1083,'general/youtube.png','[]','2024-01-23 01:51:58','2024-01-23 01:51:58',NULL),(166,0,'1','1',10,'image/png',5306,'stores/1.png','[]','2024-01-23 01:51:58','2024-01-23 01:51:58',NULL),(167,0,'10','10',10,'image/png',5306,'stores/10.png','[]','2024-01-23 01:51:58','2024-01-23 01:51:58',NULL),(168,0,'11','11',10,'image/png',5306,'stores/11.png','[]','2024-01-23 01:51:58','2024-01-23 01:51:58',NULL),(169,0,'12','12',10,'image/png',5306,'stores/12.png','[]','2024-01-23 01:51:58','2024-01-23 01:51:58',NULL),(170,0,'13','13',10,'image/png',5306,'stores/13.png','[]','2024-01-23 01:51:58','2024-01-23 01:51:58',NULL),(171,0,'14','14',10,'image/png',5306,'stores/14.png','[]','2024-01-23 01:51:58','2024-01-23 01:51:58',NULL),(172,0,'15','15',10,'image/png',5306,'stores/15.png','[]','2024-01-23 01:51:58','2024-01-23 01:51:58',NULL),(173,0,'16','16',10,'image/png',5306,'stores/16.png','[]','2024-01-23 01:51:59','2024-01-23 01:51:59',NULL),(174,0,'17','17',10,'image/png',5306,'stores/17.png','[]','2024-01-23 01:51:59','2024-01-23 01:51:59',NULL),(175,0,'2','2',10,'image/png',5306,'stores/2.png','[]','2024-01-23 01:51:59','2024-01-23 01:51:59',NULL),(176,0,'3','3',10,'image/png',5306,'stores/3.png','[]','2024-01-23 01:51:59','2024-01-23 01:51:59',NULL),(177,0,'4','4',10,'image/png',5306,'stores/4.png','[]','2024-01-23 01:51:59','2024-01-23 01:51:59',NULL),(178,0,'5','5',10,'image/png',5306,'stores/5.png','[]','2024-01-23 01:51:59','2024-01-23 01:51:59',NULL),(179,0,'6','6',10,'image/png',5306,'stores/6.png','[]','2024-01-23 01:51:59','2024-01-23 01:51:59',NULL),(180,0,'7','7',10,'image/png',5306,'stores/7.png','[]','2024-01-23 01:51:59','2024-01-23 01:51:59',NULL),(181,0,'8','8',10,'image/png',5306,'stores/8.png','[]','2024-01-23 01:51:59','2024-01-23 01:51:59',NULL),(182,0,'9','9',10,'image/png',5306,'stores/9.png','[]','2024-01-23 01:51:59','2024-01-23 01:51:59',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'product-categories',NULL,'product-categories',0,'2024-01-23 01:51:40','2024-01-23 01:51:40',NULL),(2,0,'products',NULL,'products',0,'2024-01-23 01:51:42','2024-01-23 01:51:42',NULL),(3,0,'customers',NULL,'customers',0,'2024-01-23 01:51:48','2024-01-23 01:51:48',NULL),(4,0,'flash-sales',NULL,'flash-sales',0,'2024-01-23 01:51:51','2024-01-23 01:51:51',NULL),(5,0,'sliders',NULL,'sliders',0,'2024-01-23 01:51:52','2024-01-23 01:51:52',NULL),(6,0,'news',NULL,'news',0,'2024-01-23 01:51:54','2024-01-23 01:51:54',NULL),(8,0,'promotion',NULL,'promotion',0,'2024-01-23 01:51:55','2024-01-23 01:51:55',NULL),(9,0,'general',NULL,'general',0,'2024-01-23 01:51:56','2024-01-23 01:51:56',NULL),(10,0,'stores',NULL,'stores',0,'2024-01-23 01:51:58','2024-01-23 01:51:58',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-01-23 01:52:00','2024-01-23 01:52:00'),(2,2,'header-navigation','2024-01-23 01:52:00','2024-01-23 01:52:00');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/','fi-rs-home',0,'Home',NULL,'_self',1,'2024-01-23 01:52:00','2024-01-23 01:52:00'),(2,1,1,1,'Botble\\Page\\Models\\Page','/',NULL,0,'Home 1',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(3,1,1,2,'Botble\\Page\\Models\\Page','/homepage-2',NULL,0,'Home 2',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(4,1,1,3,'Botble\\Page\\Models\\Page','/homepage-3',NULL,0,'Home 3',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(5,1,1,4,'Botble\\Page\\Models\\Page','/homepage-4',NULL,0,'Home 4',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(6,1,1,16,'Botble\\Page\\Models\\Page','/homepage-5',NULL,0,'Home 5',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(7,1,1,17,'Botble\\Page\\Models\\Page','/homepage-6',NULL,0,'Home 6',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2024-01-23 01:52:00','2024-01-23 01:52:00'),(9,1,8,NULL,NULL,'/products',NULL,0,'Shop Grid - Full Width',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:00'),(10,1,8,NULL,NULL,'/products?layout=product-right-sidebar',NULL,0,'Shop Grid - Right Sidebar',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:00'),(11,1,8,NULL,NULL,'/products?layout=product-left-sidebar',NULL,0,'Shop Grid - Left Sidebar',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:00'),(12,1,8,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Products Of Category',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(13,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',1,'2024-01-23 01:52:00','2024-01-23 01:52:00'),(14,1,13,NULL,NULL,'/stores',NULL,0,'Stores - Grid',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:00'),(15,1,13,NULL,NULL,'/stores?layout=stores-list',NULL,0,'Stores - List',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:00'),(16,1,13,NULL,NULL,'/stores/gopro',NULL,0,'Store - Detail',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:00'),(17,1,0,NULL,NULL,'/products/seeds-of-change-organic-quinoe-digital',NULL,0,'Product',NULL,'_self',1,'2024-01-23 01:52:00','2024-01-23 01:52:00'),(18,1,17,NULL,NULL,'/products/seeds-of-change-organic-quinoe-digital',NULL,0,'Product Right Sidebar',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:00'),(19,1,17,NULL,NULL,'/products/all-natural-italian-style-chicken-meatballs',NULL,0,'Product Left Sidebar',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:00'),(20,1,17,NULL,NULL,'/products/angies-boomchickapop-sweet-salty-kettle-corn',NULL,0,'Product Full Width',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:00'),(21,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(22,1,21,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog Grid',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(23,1,21,13,'Botble\\Page\\Models\\Page','/blog-list',NULL,0,'Blog List',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(24,1,21,14,'Botble\\Page\\Models\\Page','/blog-big',NULL,0,'Blog Big',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(25,1,21,15,'Botble\\Page\\Models\\Page','/blog-wide',NULL,0,'Blog Wide',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(26,1,21,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post',NULL,'_self',1,'2024-01-23 01:52:00','2024-01-23 01:52:00'),(27,1,26,NULL,NULL,'/blog/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Single Post Right Sidebar',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:00'),(28,1,26,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Single Post Left Sidebar',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:00'),(29,1,26,NULL,NULL,'/blog/the-top-2020-handbag-trends-to-know',NULL,0,'Single Post Full Width',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:00'),(30,1,26,NULL,NULL,'/blog/how-to-match-the-color-of-your-handbag-with-an-outfit',NULL,0,'Single Post with Product Listing',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:00'),(31,1,0,18,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(32,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(33,2,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(34,2,0,NULL,NULL,'/orders/tracking',NULL,0,'Order Tracking',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:00'),(35,3,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/milks-and-dairies',NULL,0,'Men',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(36,3,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/clothing-beauty',NULL,0,'Women',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(37,3,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/pet-toy',NULL,0,'Accessories',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(38,3,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/baking-material',NULL,0,'Shoes',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(39,3,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/fresh-fruit',NULL,0,'Denim',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(40,3,0,6,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/wines-drinks',NULL,0,'Dress',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(41,4,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact Us',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(42,4,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(43,4,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Cookie Policy',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(44,4,0,9,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2024-01-23 01:52:00','2024-01-23 01:52:01'),(45,4,0,10,'Botble\\Page\\Models\\Page','/returns-exchanges',NULL,0,'Returns & Exchanges',NULL,'_self',0,'2024-01-23 01:52:01','2024-01-23 01:52:01'),(46,4,0,11,'Botble\\Page\\Models\\Page','/shipping-delivery',NULL,0,'Shipping & Delivery',NULL,'_self',0,'2024-01-23 01:52:01','2024-01-23 01:52:01'),(47,4,0,12,'Botble\\Page\\Models\\Page','/privacy-policy',NULL,0,'Privacy Policy',NULL,'_self',0,'2024-01-23 01:52:01','2024-01-23 01:52:01'),(48,5,0,7,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2024-01-23 01:52:01','2024-01-23 01:52:01'),(49,5,0,NULL,NULL,'#',NULL,0,'Affiliate',NULL,'_self',0,'2024-01-23 01:52:01','2024-01-23 01:52:01'),(50,5,0,NULL,NULL,'#',NULL,0,'Career',NULL,'_self',0,'2024-01-23 01:52:01','2024-01-23 01:52:01'),(51,5,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2024-01-23 01:52:01','2024-01-23 01:52:01');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-01-23 01:52:00','2024-01-23 01:52:00'),(2,'Header menu','header-menu','published','2024-01-23 01:52:00','2024-01-23 01:52:00'),(3,'Product categories','product-categories','published','2024-01-23 01:52:00','2024-01-23 01:52:00'),(4,'Information','information','published','2024-01-23 01:52:00','2024-01-23 01:52:00'),(5,'Company','company','published','2024-01-23 01:52:01','2024-01-23 01:52:01');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'background_color','[\"#F2FCE4\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-23 01:51:42','2024-01-23 01:51:42'),(2,'background_color','[\"#FFFCEB\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-23 01:51:42','2024-01-23 01:51:42'),(3,'background_color','[\"#ECFFEC\"]',3,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-23 01:51:42','2024-01-23 01:51:42'),(4,'background_color','[\"#FEEFEA\"]',4,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-23 01:51:42','2024-01-23 01:51:42'),(5,'background_color','[\"#FFF3EB\"]',5,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-23 01:51:42','2024-01-23 01:51:42'),(6,'background_color','[\"#FFF3FF\"]',6,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-23 01:51:42','2024-01-23 01:51:42'),(7,'background_color','[\"#F2FCE4\"]',7,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-23 01:51:42','2024-01-23 01:51:42'),(8,'background_color','[\"#FFFCEB\"]',8,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-23 01:51:42','2024-01-23 01:51:42'),(9,'background_color','[\"#ECFFEC\"]',9,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-23 01:51:42','2024-01-23 01:51:42'),(10,'background_color','[\"#FEEFEA\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-23 01:51:42','2024-01-23 01:51:42'),(11,'background_color','[\"#FFF3EB\"]',11,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-23 01:51:42','2024-01-23 01:51:42'),(12,'background_color','[\"#FFF3FF\"]',12,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-23 01:51:42','2024-01-23 01:51:42'),(13,'background_color','[\"#F2FCE4\"]',13,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-23 01:51:42','2024-01-23 01:51:42'),(14,'background_color','[\"#FFFCEB\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2024-01-23 01:51:42','2024-01-23 01:51:42'),(15,'layout','[\"product-right-sidebar\"]',1,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:45','2024-01-23 01:51:45'),(16,'faq_ids','[[8,3,7,6,4]]',1,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:45','2024-01-23 01:51:45'),(17,'layout','[\"product-left-sidebar\"]',2,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(18,'is_popular','[\"1\"]',2,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(19,'faq_ids','[[7,5,6,3,9]]',2,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(20,'layout','[\"product-full-width\"]',3,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(21,'faq_ids','[[5,4,1,7,3]]',3,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(22,'is_popular','[\"1\"]',4,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(23,'faq_ids','[[10,6,9,3,2]]',4,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(24,'faq_ids','[[6,7,10,8,9]]',5,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(25,'is_popular','[\"1\"]',6,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(26,'faq_ids','[[3,5,8,9,1]]',6,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(27,'faq_ids','[[10,7,6,4,8]]',7,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(28,'is_popular','[\"1\"]',8,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(29,'faq_ids','[[7,10,5,2,8]]',8,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(30,'faq_ids','[[4,2,9,5,10]]',9,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(31,'is_popular','[\"1\"]',10,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(32,'faq_ids','[[8,9,2,7,5]]',10,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(33,'faq_ids','[[3,1,9,2,7]]',11,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(34,'is_popular','[\"1\"]',12,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(35,'faq_ids','[[5,7,1,3,10]]',12,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(36,'faq_ids','[[7,6,10,9,3]]',13,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(37,'is_popular','[\"1\"]',14,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(38,'faq_ids','[[6,1,5,9,10]]',14,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(39,'faq_ids','[[6,3,8,7,2]]',15,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(40,'is_popular','[\"1\"]',16,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(41,'faq_ids','[[4,8,2,5,1]]',16,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(42,'faq_ids','[[8,9,2,4,1]]',17,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(43,'is_popular','[\"1\"]',18,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(44,'faq_ids','[[4,1,5,10,8]]',18,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(45,'faq_ids','[[7,8,6,3,2]]',19,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(46,'is_popular','[\"1\"]',20,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(47,'faq_ids','[[7,6,2,4,5]]',20,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(48,'faq_ids','[[5,3,10,1,9]]',21,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(49,'is_popular','[\"1\"]',22,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(50,'faq_ids','[[7,10,4,9,6]]',22,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(51,'faq_ids','[[8,1,5,7,2]]',23,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(52,'is_popular','[\"1\"]',24,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(53,'faq_ids','[[7,1,9,6,3]]',24,'Botble\\Ecommerce\\Models\\Product','2024-01-23 01:51:46','2024-01-23 01:51:46'),(54,'image','[\"flash-sales\\/1.png\"]',1,'Botble\\Ecommerce\\Models\\FlashSale','2024-01-23 01:51:52','2024-01-23 01:51:52'),(55,'image','[\"flash-sales\\/2.png\"]',2,'Botble\\Ecommerce\\Models\\FlashSale','2024-01-23 01:51:52','2024-01-23 01:51:52'),(56,'image','[\"flash-sales\\/3.png\"]',3,'Botble\\Ecommerce\\Models\\FlashSale','2024-01-23 01:51:52','2024-01-23 01:51:52'),(57,'image','[\"flash-sales\\/4.png\"]',4,'Botble\\Ecommerce\\Models\\FlashSale','2024-01-23 01:51:52','2024-01-23 01:51:52'),(58,'image','[\"flash-sales\\/5.png\"]',5,'Botble\\Ecommerce\\Models\\FlashSale','2024-01-23 01:51:52','2024-01-23 01:51:52'),(59,'simple_slider_style','[\"style-4\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-01-23 01:51:54','2024-01-23 01:51:54'),(60,'simple_slider_style','[\"style-2\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-01-23 01:51:54','2024-01-23 01:51:54'),(61,'simple_slider_style','[\"style-3\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-01-23 01:51:54','2024-01-23 01:51:54'),(62,'simple_slider_style','[\"style-1\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-01-23 01:51:54','2024-01-23 01:51:54'),(63,'simple_slider_style','[\"style-5\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-01-23 01:51:54','2024-01-23 01:51:54'),(64,'simple_slider_style','[\"style-6\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-01-23 01:51:54','2024-01-23 01:51:54'),(65,'simple_slider_style','[\"style-1\"]',7,'Botble\\SimpleSlider\\Models\\SimpleSlider','2024-01-23 01:51:54','2024-01-23 01:51:54'),(66,'header_style','[\"header-style-5\"]',16,'Botble\\Page\\Models\\Page','2024-01-23 01:51:55','2024-01-23 01:51:55'),(67,'header_style','[\"header-style-5\"]',17,'Botble\\Page\\Models\\Page','2024-01-23 01:51:55','2024-01-23 01:51:55'),(68,'button_text','[\"Shop now\"]',1,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(69,'subtitle','[\"Everyday Fresh & \\nClean with Our \\nProducts\"]',1,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(70,'button_text','[\"Shop now\"]',2,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(71,'subtitle','[\"Make your Breakfast Healthy and Easy\"]',2,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(72,'button_text','[\"Shop now\"]',3,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(73,'subtitle','[\"The best Organic Products Online\"]',3,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(74,'button_text','[\"Shop now\"]',4,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(75,'subtitle','[\"Bring nature into your home\"]',4,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(76,'button_text','[\"Shop now\"]',5,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(77,'subtitle','[\"Delivered to your home\"]',5,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(78,'button_text','[\"Shop now\"]',6,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(79,'subtitle','[\"Save 17% <br \\/>on Oganic <br \\/>Juice\"]',6,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(80,'button_text','[\"Shop now\"]',7,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(81,'subtitle','[\"Everyday Fresh & Clean with Our Products\"]',7,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(82,'button_text','[\"Shop now\"]',8,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(83,'subtitle','[\"The best Organic Products Online\"]',8,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(84,'button_text','[\"Go to supplier\"]',9,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(85,'subtitle','[\"Everyday Fresh with\\n Our Products\"]',9,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(86,'button_text','[\"Go to supplier\"]',10,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(87,'subtitle','[\"100% guaranteed all\\n Fresh items\"]',10,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(88,'button_text','[\"Go to supplier\"]',11,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(89,'subtitle','[\"Special grocery sale\\n off this month\"]',11,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(90,'button_text','[\"Go to supplier\"]',12,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(91,'subtitle','[\"Enjoy 15% OFF for all\\n vegetable and fruit\"]',12,'Botble\\Ads\\Models\\Ads','2024-01-23 01:51:56','2024-01-23 01:51:56'),(92,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',1,'Botble\\Marketplace\\Models\\Store','2024-01-23 01:52:00','2024-01-23 01:52:00'),(93,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',2,'Botble\\Marketplace\\Models\\Store','2024-01-23 01:52:00','2024-01-23 01:52:00'),(94,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',3,'Botble\\Marketplace\\Models\\Store','2024-01-23 01:52:00','2024-01-23 01:52:00'),(95,'social_links','[{\"facebook\":\"botble\",\"twitter\":\"botble\"}]',4,'Botble\\Marketplace\\Models\\Store','2024-01-23 01:52:00','2024-01-23 01:52:00');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(28,'2023_08_21_090810_make_page_content_nullable',1),(29,'2023_09_14_021936_update_index_for_slugs_table',1),(30,'2023_12_06_100448_change_random_hash_for_media',1),(31,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(32,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(33,'2024_01_07_072057_update_theme_option_for_login_page',1),(34,'2020_11_18_150916_ads_create_ads_table',2),(35,'2021_12_02_035301_add_ads_translations_table',2),(36,'2023_04_17_062645_add_open_in_new_tab',2),(37,'2023_11_07_023805_add_tablet_mobile_image',2),(38,'2015_06_29_025744_create_audit_history',3),(39,'2023_11_14_033417_change_request_column_in_table_audit_histories',3),(40,'2015_06_18_033822_create_blog_table',4),(41,'2021_02_16_092633_remove_default_value_for_author_type',4),(42,'2021_12_03_030600_create_blog_translations',4),(43,'2022_04_19_113923_add_index_to_table_posts',4),(44,'2023_08_29_074620_make_column_author_id_nullable',4),(45,'2016_06_17_091537_create_contacts_table',5),(46,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',5),(47,'2020_03_05_041139_create_ecommerce_tables',6),(48,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(49,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(50,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(51,'2021_02_18_073505_update_table_ec_reviews',6),(52,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(53,'2021_03_10_025153_change_column_tax_amount',6),(54,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(55,'2021_04_28_074008_ecommerce_create_product_label_table',6),(56,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(57,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(58,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(59,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(60,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(61,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(62,'2021_11_23_071403_correct_languages_for_product_variations',6),(63,'2021_11_28_031808_add_product_tags_translations',6),(64,'2021_12_01_031123_add_featured_image_to_ec_products',6),(65,'2022_01_01_033107_update_table_ec_shipments',6),(66,'2022_02_16_042457_improve_product_attribute_sets',6),(67,'2022_03_22_075758_correct_product_name',6),(68,'2022_04_19_113334_add_index_to_ec_products',6),(69,'2022_04_28_144405_remove_unused_table',6),(70,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(71,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(72,'2022_06_16_095633_add_index_to_some_tables',6),(73,'2022_06_30_035148_create_order_referrals_table',6),(74,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(75,'2022_08_14_032836_create_ec_order_returns_table',6),(76,'2022_08_14_033554_create_ec_order_return_items_table',6),(77,'2022_08_15_040324_add_billing_address',6),(78,'2022_08_30_091114_support_digital_products_table',6),(79,'2022_09_13_095744_create_options_table',6),(80,'2022_09_13_104347_create_option_value_table',6),(81,'2022_10_05_163518_alter_table_ec_order_product',6),(82,'2022_10_12_041517_create_invoices_table',6),(83,'2022_10_12_142226_update_orders_table',6),(84,'2022_10_13_024916_update_table_order_returns',6),(85,'2022_10_21_030830_update_columns_in_ec_shipments_table',6),(86,'2022_10_28_021046_update_columns_in_ec_shipments_table',6),(87,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',6),(88,'2022_11_19_041643_add_ec_tax_product_table',6),(89,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',6),(90,'2022_12_17_041532_fix_address_in_order_invoice',6),(91,'2022_12_26_070329_create_ec_product_views_table',6),(92,'2023_01_04_033051_fix_product_categories',6),(93,'2023_01_09_050400_add_ec_global_options_translations_table',6),(94,'2023_01_10_093754_add_missing_option_value_id',6),(95,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',6),(96,'2023_01_26_021854_add_ec_customer_used_coupons_table',6),(97,'2023_02_08_015900_update_options_column_in_ec_order_product_table',6),(98,'2023_02_27_095752_remove_duplicate_reviews',6),(99,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',6),(100,'2023_04_21_082427_create_ec_product_categorizables_table',6),(101,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',6),(102,'2023_05_17_025812_fix_invoice_issue',6),(103,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',6),(104,'2023_05_27_144611_fix_exchange_rate_setting',6),(105,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',6),(106,'2023_06_30_042512_create_ec_order_tax_information_table',6),(107,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',6),(108,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',6),(109,'2023_08_15_064505_create_ec_tax_rules_table',6),(110,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',6),(111,'2023_08_22_094114_drop_unique_for_barcode',6),(112,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',6),(113,'2023_09_07_094312_add_index_to_product_sku_and_translations',6),(114,'2023_09_19_024955_create_discount_product_categories_table',6),(115,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',6),(116,'2023_11_22_154643_add_unique_in_table_ec_products_variations',6),(117,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',6),(118,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',6),(119,'2023_12_25_040604_ec_create_review_replies_table',6),(120,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',6),(121,'2024_01_16_070706_fix_translation_tables',6),(122,'2018_07_09_221238_create_faq_table',7),(123,'2021_12_03_082134_create_faq_translations',7),(124,'2023_11_17_063408_add_description_column_to_faq_categories_table',7),(125,'2016_10_03_032336_create_languages_table',8),(126,'2023_09_14_022423_add_index_for_language_table',8),(127,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(128,'2021_12_03_075608_create_page_translations',9),(129,'2023_07_06_011444_create_slug_translations_table',9),(130,'2019_11_18_061011_create_country_table',10),(131,'2021_12_03_084118_create_location_translations',10),(132,'2021_12_03_094518_migrate_old_location_data',10),(133,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(134,'2022_01_16_085908_improve_plugin_location',10),(135,'2022_08_04_052122_delete_location_backup_tables',10),(136,'2023_04_23_061847_increase_state_translations_abbreviation_column',10),(137,'2023_07_26_041451_add_more_columns_to_location_table',10),(138,'2023_07_27_041451_add_more_columns_to_location_translation_table',10),(139,'2023_08_15_073307_drop_unique_in_states_cities_translations',10),(140,'2023_10_21_065016_make_state_id_in_table_cities_nullable',10),(141,'2021_07_06_030002_create_marketplace_table',11),(142,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',11),(143,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',11),(144,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',11),(145,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',11),(146,'2021_12_06_031304_update_table_mp_customer_revenues',11),(147,'2022_10_19_152916_add_columns_to_mp_stores_table',11),(148,'2022_10_20_062849_create_mp_category_sale_commissions_table',11),(149,'2022_11_02_071413_add_more_info_for_store',11),(150,'2022_11_02_080444_add_tax_info',11),(151,'2023_02_01_062030_add_store_translations',11),(152,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',11),(153,'2023_02_17_023648_fix_store_prefix',11),(154,'2017_10_24_154832_create_newsletter_table',12),(155,'2017_05_18_080441_create_payment_tables',13),(156,'2021_03_27_144913_add_customer_type_into_table_payments',13),(157,'2021_05_24_034720_make_column_currency_nullable',13),(158,'2021_08_09_161302_add_metadata_column_to_payments_table',13),(159,'2021_10_19_020859_update_metadata_field',13),(160,'2022_06_28_151901_activate_paypal_stripe_plugin',13),(161,'2022_07_07_153354_update_charge_id_in_table_payments',13),(162,'2017_07_11_140018_create_simple_slider_table',14),(163,'2016_10_07_193005_create_translations_table',15),(164,'2023_12_12_105220_drop_translations_table',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,5,5,375.00,0.00,375.00,0.00,'USD',NULL,'2024-01-21 13:52:12','2024-01-21 13:52:12',0,'add-amount'),(2,8,14,228.00,0.00,228.00,0.00,'USD',NULL,'2024-01-19 07:52:12','2024-01-19 07:52:12',0,'add-amount'),(3,5,15,348.00,0.00,348.00,375.00,'USD',NULL,'2024-01-15 01:52:13','2024-01-15 01:52:13',0,'add-amount'),(4,5,18,87.00,0.00,87.00,723.00,'USD',NULL,'2024-01-15 03:52:13','2024-01-15 03:52:13',0,'add-amount'),(5,5,24,117.00,0.00,117.00,810.00,'USD',NULL,'2024-01-16 19:52:14','2024-01-16 19:52:14',0,'add-amount'),(6,9,25,598.00,0.00,598.00,0.00,'USD',NULL,'2024-01-16 13:52:14','2024-01-16 13:52:14',0,'add-amount'),(7,8,35,726.00,0.00,726.00,228.00,'USD',NULL,'2023-12-27 01:52:15','2023-12-27 01:52:15',0,'add-amount'),(8,5,36,261.00,0.00,261.00,927.00,'USD',NULL,'2024-01-10 17:52:15','2024-01-10 17:52:15',0,'add-amount'),(9,8,42,121.00,0.00,121.00,954.00,'USD',NULL,'2023-12-25 09:52:16','2023-12-25 09:52:16',0,'add-amount'),(10,9,43,616.00,0.00,616.00,598.00,'USD',NULL,'2024-01-08 09:52:17','2024-01-08 09:52:17',0,'add-amount'),(11,5,45,212.00,0.00,212.00,1188.00,'USD',NULL,'2023-12-31 01:52:17','2023-12-31 01:52:17',0,'add-amount');
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,5,0.00,122.00,1400.00,'USD','','{\"name\":\"Mr. Edgar Lockman I\",\"number\":\"+17436704297\",\"full_name\":\"Prof. Icie Huels\",\"description\":\"Prof. Connie Ward\"}',NULL,0,'completed',NULL,'2024-01-23 01:52:18','2024-01-23 01:52:18',NULL),(2,5,0.00,172.00,1278.00,'USD','','{\"name\":\"Mr. Edgar Lockman I\",\"number\":\"+17436704297\",\"full_name\":\"Prof. Icie Huels\",\"description\":\"Prof. Connie Ward\"}',NULL,0,'completed',NULL,'2024-01-23 01:52:18','2024-01-23 01:52:18',NULL),(3,5,0.00,355.00,1106.00,'USD','','{\"name\":\"Mr. Edgar Lockman I\",\"number\":\"+17436704297\",\"full_name\":\"Prof. Icie Huels\",\"description\":\"Prof. Connie Ward\"}',NULL,0,'pending',NULL,'2024-01-23 01:52:19','2024-01-23 01:52:19',NULL),(4,8,0.00,93.00,1075.00,'USD','','{\"name\":\"Prof. Jennie Rice Jr.\",\"number\":\"+19038512695\",\"full_name\":\"Marisa Connelly\",\"description\":\"Jaquelin Daniel\"}',NULL,0,'pending',NULL,'2024-01-23 01:52:19','2024-01-23 01:52:19',NULL),(5,8,0.00,140.00,982.00,'USD','','{\"name\":\"Prof. Jennie Rice Jr.\",\"number\":\"+19038512695\",\"full_name\":\"Marisa Connelly\",\"description\":\"Jaquelin Daniel\"}',NULL,0,'completed',NULL,'2024-01-23 01:52:20','2024-01-23 01:52:20',NULL),(6,8,0.00,73.00,842.00,'USD','','{\"name\":\"Prof. Jennie Rice Jr.\",\"number\":\"+19038512695\",\"full_name\":\"Marisa Connelly\",\"description\":\"Jaquelin Daniel\"}',NULL,0,'completed',NULL,'2024-01-23 01:52:20','2024-01-23 01:52:20',NULL),(7,8,0.00,133.00,769.00,'USD','','{\"name\":\"Prof. Jennie Rice Jr.\",\"number\":\"+19038512695\",\"full_name\":\"Marisa Connelly\",\"description\":\"Jaquelin Daniel\"}',NULL,0,'processing',NULL,'2024-01-23 01:52:20','2024-01-23 01:52:20',NULL),(8,9,0.00,234.00,1214.00,'USD','','{\"name\":\"Mariela Little\",\"number\":\"+12817418732\",\"full_name\":\"Krystina Ondricka\",\"description\":\"Savanah Kihn MD\"}',NULL,0,'pending',NULL,'2024-01-23 01:52:21','2024-01-23 01:52:21',NULL),(9,9,0.00,198.00,980.00,'USD','','{\"name\":\"Mariela Little\",\"number\":\"+12817418732\",\"full_name\":\"Krystina Ondricka\",\"description\":\"Savanah Kihn MD\"}',NULL,0,'pending',NULL,'2024-01-23 01:52:21','2024-01-23 01:52:21',NULL),(10,9,0.00,195.00,782.00,'USD','','{\"name\":\"Mariela Little\",\"number\":\"+12817418732\",\"full_name\":\"Krystina Ondricka\",\"description\":\"Savanah Kihn MD\"}',NULL,0,'pending',NULL,'2024-01-23 01:52:22','2024-01-23 01:52:22',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','becker.margarete@example.org','+13602321561','8073 Lavinia Meadow Apt. 940','SX','New York','New Floridahaven',2,'stores/1.png','In libero maxime eos inventore temporibus.','Quis non optio tenetur optio tempora fuga. Rem nesciunt ea at. Eos aperiam hic magnam ea. Vel exercitationem quidem culpa tempora.','published',NULL,'2024-01-23 01:52:00','2024-01-23 01:52:00',NULL,NULL),(2,'Global Office','marlen.konopelski@example.com','+19718251571','669 Molly Via Apt. 893','VE','Alaska','East Emmanuel',5,'stores/2.png','Velit reprehenderit eos quia rerum.','Cumque qui nulla et consectetur et fuga. Dolorum officiis beatae voluptatibus dolorem aut dolorem. Unde porro quia repudiandae incidunt.','published',NULL,'2024-01-23 01:52:00','2024-01-23 01:52:00',NULL,NULL),(3,'Young Shop','heidenreich.cullen@example.net','+13479621086','9778 Schultz Union Suite 675','KN','Alabama','Sanfordburgh',8,'stores/3.png','Magni qui magni dolorum maxime accusantium.','Laboriosam quae ratione nemo ex sed voluptas ex. Mollitia ipsam et eos aspernatur eos optio quo.','published',NULL,'2024-01-23 01:52:00','2024-01-23 01:52:00',NULL,NULL),(4,'Global Store','fluettgen@example.org','+14586461426','930 Francesca Station','CF','Kentucky','North Luz',9,'stores/4.png','Et voluptas est non iure consequatur accusamus.','Eaque suscipit nemo iure ea rerum et veritatis qui. Voluptatem magnam expedita possimus. Aliquam voluptas at non architecto dolorem tenetur.','published',NULL,'2024-01-23 01:52:00','2024-01-23 01:52:00',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$LHcjtTZ0DQZDA1TklJxWyee/Ig0Bwxb9eObtLjyIcduogV3VWr3RS','{\"name\":\"Dr. Antonina Waelchi\",\"number\":\"+14586818261\",\"full_name\":\"Prof. Ezra Bradtke\",\"description\":\"Raoul Stoltenberg\"}','2024-01-23 01:51:59','2024-01-23 01:51:59','bank_transfer',NULL),(2,5,751.00,0.00,1400.00,'$2y$12$B1e9jruOnyS8H.pfsTJer.xB6Z80BPo9oNn.J8ERQ6JSIwkJTB6Ky','{\"name\":\"Mr. Edgar Lockman I\",\"number\":\"+17436704297\",\"full_name\":\"Prof. Icie Huels\",\"description\":\"Prof. Connie Ward\"}','2024-01-23 01:52:00','2024-01-23 01:52:19','bank_transfer',NULL),(3,8,636.00,0.00,1075.00,'$2y$12$uZGyy4K7EJ4gAP4wViNJB.onHnSgQZc6.3jmPTHclfVDK3.A4kWU.','{\"name\":\"Prof. Jennie Rice Jr.\",\"number\":\"+19038512695\",\"full_name\":\"Marisa Connelly\",\"description\":\"Jaquelin Daniel\"}','2024-01-23 01:52:00','2024-01-23 01:52:21','bank_transfer',NULL),(4,9,587.00,0.00,1214.00,'$2y$12$i4Nav7lEvKefqRNu2udcdet4vsIEwnqCaJrWocY4QIj5Wacm05E0O','{\"name\":\"Mariela Little\",\"number\":\"+12817418732\",\"full_name\":\"Krystina Ondricka\",\"description\":\"Savanah Kihn MD\"}','2024-01-23 01:52:00','2024-01-23 01:52:22','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"5\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2024-01-23 01:51:55','2024-01-23 01:51:55'),(2,'Homepage 2','<div>[simple-slider key=\"home-slider-2\" ads_1=\"IZ6WU8KUALYH\" show_newsletter_form=\"yes\" cover_image=\"sliders/banner-1.png\"][/simple-slider]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"5\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div>',1,NULL,'homepage',NULL,'published','2024-01-23 01:51:55','2024-01-23 01:51:55'),(3,'Homepage 3','<div>[simple-slider key=\"home-slider-1\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2024-01-23 01:51:55','2024-01-23 01:51:55'),(4,'Homepage 4','<div>[simple-slider key=\"home-slider-4\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[product-categories title=\"Shop by Categories\"][/product-categories]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2024-01-23 01:51:55','2024-01-23 01:51:55'),(5,'Blog','<p>---</p>',1,NULL,'blog-grid',NULL,'published','2024-01-23 01:51:55','2024-01-23 01:51:55'),(6,'Contact','<p>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</p><p>[our-offices][/our-offices]</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',NULL,'published','2024-01-23 01:51:55','2024-01-23 01:51:55'),(7,'About us','<p>This speech caused a remarkable sensation among the leaves, which she concluded that it was a body to cut it off from: that he had come to an end! \'I wonder how many hours a day did you call it sad?\' And she began looking at them with the words came very queer to ME.\' \'You!\' said the Queen, turning purple. \'I won\'t!\' said Alice. \'I\'m glad they don\'t seem to have changed since her swim in the direction it pointed to, without trying to make SOME change in my own tears! That WILL be a LITTLE.</p><p>Caterpillar, and the others all joined in chorus, \'Yes, please do!\' but the Hatter hurriedly left the court, \'Bring me the list of the cattle in the pool was getting very sleepy; \'and they drew all manner of things--everything that begins with an important air, \'are you all ready? This is the capital of Paris, and Paris is the capital of Paris, and Paris is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must go and live in that soup!\' Alice said very politely, \'if I had it.</p><p>Duchess; \'I never thought about it,\' added the Gryphon; and then sat upon it.) \'I\'m glad I\'ve seen that done,\' thought Alice. \'I\'m glad they don\'t give birthday presents like that!\' said Alice angrily. \'It wasn\'t very civil of you to set them free, Exactly as we were. My notion was that she wanted to send the hedgehog had unrolled itself, and was suppressed. \'Come, that finished the first day,\' said the Hatter: \'I\'m on the door began sneezing all at once. \'Give your evidence,\' the King.</p><p>I don\'t know,\' he went on all the time she went on, spreading out the proper way of expecting nothing but a pack of cards, after all. \"--SAID I COULD NOT SWIM--\" you can\'t help that,\' said the Hatter, with an air of great curiosity. \'Soles and eels, of course,\' he said in a sulky tone, as it was very hot, she kept fanning herself all the first minute or two she walked up towards it rather timidly, saying to herself \'This is Bill,\' she gave a sudden burst of tears, until there was enough of it.</p>',1,NULL,'right-sidebar',NULL,'published','2024-01-23 01:51:55','2024-01-23 01:51:55'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2024-01-23 01:51:55','2024-01-23 01:51:55'),(9,'Terms &amp; Conditions','<p>Be off, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Dormouse: \'not in that poky little house, on the glass table and the Queen said to herself. (Alice had been found and handed them round as prizes. There was a bright idea came into her face. \'Very,\' said Alice: \'three inches is such a nice soft thing to get in?\' she repeated, aloud. \'I shall sit here,\' he said, \'on and off, for days and days.\' \'But what am I then? Tell me that first, and then, and holding it to make.</p><p>Gryphon; and then unrolled the parchment scroll, and read as follows:-- \'The Queen will hear you! You see, she came in sight of the month, and doesn\'t tell what o\'clock it is!\' \'Why should it?\' muttered the Hatter. \'You might just as if nothing had happened. \'How am I to do?\' said Alice. \'It must be Mabel after all, and I never knew so much surprised, that for the Dormouse,\' thought Alice; \'I can\'t remember things as I tell you, you coward!\' and at last she stretched her arms round it as a.</p><p>King. The White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' he said to the other, and growing sometimes taller and sometimes she scolded herself so severely as to go on. \'And so these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, who felt ready to agree to everything that was trickling down his brush, and had been wandering, when a cry of \'The trial\'s beginning!\' was heard in the distance, screaming with passion. She had already heard her sentence three.</p><p>When she got to go on till you come and join the dance?\"\' \'Thank you, sir, for your interesting story,\' but she thought it had made. \'He took me for asking! No, it\'ll never do to come down the chimney close above her: then, saying to herself, \'Which way? Which way?\', holding her hand again, and she crossed her hands on her lap as if he were trying to invent something!\' \'I--I\'m a little recovered from the roof. There were doors all round the court with a bound into the sea, some children.</p>',1,NULL,'default',NULL,'published','2024-01-23 01:51:55','2024-01-23 01:51:55'),(10,'Returns &amp; Exchanges','<p>I give you fair warning,\' shouted the Queen furiously, throwing an inkstand at the great wonder is, that there\'s any one left alive!\' She was walking by the way of expressing yourself.\' The baby grunted again, and all the party were placed along the sea-shore--\' \'Two lines!\' cried the Gryphon. \'The reason is,\' said the Hatter, \'when the Queen was close behind it was quite silent for a moment like a stalk out of the busy farm-yard--while the lowing of the window, and some \'unimportant.\' Alice.</p><p>Hatter. \'Does YOUR watch tell you my history, and you\'ll understand why it is right?\' \'In my youth,\' said his father, \'I took to the porpoise, \"Keep back, please: we don\'t want to go! Let me see: I\'ll give them a railway station.) However, she soon made out the Fish-Footman was gone, and, by the officers of the officers: but the Rabbit noticed Alice, as the game was going to say,\' said the Gryphon. \'We can do without lobsters, you know. Which shall sing?\' \'Oh, YOU sing,\' said the Rabbit was no.</p><p>Beautiful, beautiful Soup!\' CHAPTER XI. Who Stole the Tarts? The King laid his hand upon her arm, and timidly said \'Consider, my dear: she is of yours.\"\' \'Oh, I BEG your pardon!\' cried Alice hastily, afraid that it felt quite strange at first; but she stopped hastily, for the fan and the pool was getting quite crowded with the words \'DRINK ME\' beautifully printed on it were nine o\'clock in the sky. Alice went on for some minutes. Alice thought decidedly uncivil. \'But perhaps he can\'t help it,\'.</p><p>Mouse to Alice for some way of speaking to it,\' she thought, \'and hand round the court with a bound into the darkness as hard as it was talking in a VERY good opportunity for showing off a bit hurt, and she went slowly after it: \'I never thought about it,\' added the Dormouse, who seemed ready to agree to everything that Alice said; but was dreadfully puzzled by the prisoner to--to somebody.\' \'It must be the right size, that it felt quite unhappy at the Mouse\'s tail; \'but why do you call it.</p>',1,NULL,'default',NULL,'published','2024-01-23 01:51:55','2024-01-23 01:51:55'),(11,'Shipping &amp; Delivery','<p>Dinah, if I shall think nothing of the ground.\' So she set to work throwing everything within her reach at the sudden change, but very politely: \'Did you speak?\' \'Not I!\' he replied. \'We quarrelled last March--just before HE went mad, you know--\' \'What did they live at the Hatter, and, just as well say,\' added the Hatter, and, just as I do,\' said the Mouse, who seemed too much of a good deal: this fireplace is narrow, to be almost out of its little eyes, but it had been, it suddenly appeared.</p><p>Duchess sang the second thing is to do such a hurry to get in?\' she repeated, aloud. \'I must be getting home; the night-air doesn\'t suit my throat!\' and a bright brass plate with the Lory, who at last she spread out her hand, watching the setting sun, and thinking of little pebbles came rattling in at the Cat\'s head began fading away the moment she felt that she did so, and giving it a minute or two, looking for eggs, as it settled down in a very difficult game indeed. The players all played.</p><p>Alice in a hoarse growl, \'the world would go through,\' thought poor Alice, \'it would have done just as I get it home?\' when it grunted again, so that they must be growing small again.\' She got up and saying, \'Thank you, it\'s a set of verses.\' \'Are they in the kitchen that did not get hold of this remark, and thought it had VERY long claws and a scroll of parchment in the sea. The master was an uncomfortably sharp chin. However, she got used to say.\' \'So he did, so he did,\' said the Queen.</p><p>Mouse, who seemed ready to ask any more HERE.\' \'But then,\' thought Alice, \'shall I NEVER get any older than you, and don\'t speak a word till I\'ve finished.\' So they got thrown out to be beheaded!\' \'What for?\' said the King said to Alice. \'Nothing,\' said Alice. \'Call it what you like,\' said the Mouse was speaking, and this Alice would not open any of them. \'I\'m sure I\'m not looking for the rest of it appeared. \'I don\'t think they play at all for any of them. \'I\'m sure those are not attending!\'.</p>',1,NULL,'default',NULL,'published','2024-01-23 01:51:55','2024-01-23 01:51:55'),(12,'Privacy Policy','<p>I vote the young lady to see it trot away quietly into the Dormouse\'s place, and Alice was beginning to feel a little timidly, \'why you are painting those roses?\' Five and Seven said nothing, but looked at the frontispiece if you like,\' said the Hatter: \'let\'s all move one place on.\' He moved on as he could go. Alice took up the little magic bottle had now had its full effect, and she drew herself up on tiptoe, and peeped over the fire, licking her paws and washing her face--and she is only a.</p><p>Bill, I fancy--Who\'s to go through next walking about at the other ladder?--Why, I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather curious, you know, this sort in her face, with such sudden violence that Alice said; \'there\'s a large ring, with the tea,\' the Hatter said, tossing his head sadly. \'Do I look like one, but it all seemed quite dull and stupid for life to go nearer till she was out of his teacup and bread-and-butter, and then added them up, and there they lay.</p><p>I know!\' exclaimed Alice, who always took a minute or two, looking for it, you may nurse it a very decided tone: \'tell her something about the whiting!\' \'Oh, as to prevent its undoing itself,) she carried it off. * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * \'Come, my head\'s free at last!\' said Alice to herself. At this moment the King, \'and don\'t look at all comfortable, and it set to work throwing everything within her reach.</p><p>King. \'Nearly two miles high,\' added the Gryphon, \'that they WOULD go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first was in the middle. Alice kept her waiting!\' Alice felt a little girl she\'ll think me for a rabbit! I suppose you\'ll be telling me next that you couldn\'t cut off a bit hurt, and she sat down with her head was so ordered about by mice and rabbits. I almost think I could, if I know all sorts of things, and she, oh! she knows such a nice soft.</p>',1,NULL,'default',NULL,'published','2024-01-23 01:51:55','2024-01-23 01:51:55'),(13,'Blog List','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-list',NULL,'published','2024-01-23 01:51:55','2024-01-23 01:51:55'),(14,'Blog Big','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-big',NULL,'published','2024-01-23 01:51:55','2024-01-23 01:51:55'),(15,'Blog Wide','<p>[blog-posts paginate=\"12\"][/blog-posts]</p>',1,NULL,'blog-wide',NULL,'published','2024-01-23 01:51:55','2024-01-23 01:51:55'),(16,'Homepage 5','<div>[simple-slider key=\"home-slider-5\" ads_1=\"IZ6WU8KUALYJ\" ads_2=\"IZ6WU8KUALYK\" show_newsletter_form=\"yes\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYD\" ads_2=\"ILSFJVYFGCPZ\" ads_3=\"ILSDKVYFGXPH\"][/theme-ads]</div><div>[popular-products title=\"Popular Products\" per_row=\"4\" limit=\"8\"][/popular-products]</div><div>[theme-ads ads_1=\"IZ6WU8KUALYL\" ads_2=\"IZ6WU8KUALYM\" ads_3=\"IZ6WU8KUALYN\" ads_4=\"IZ6WU8KUALYO\" style=\"style-5\"][/theme-ads]</div><div>[best-flash-sale title=\"Daily Best Sells\" flash_sale_id=\"5\" ads=\"IZ6WU8KUALYG\"][/best-flash-sale]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2024-01-23 01:51:55','2024-01-23 01:51:55'),(17,'Homepage 6','<div>[big-banner cover_image=\"general/home-6.jpeg\" show_newsletter_form=\"yes\" number_display_featured_categories=\"4\" title=\"What are you looking for?\"][/big-banner]</div><div>[trending-products title=\"Trending items\" limit=\"20\"][/trending-products]</div><div>[flash-sale flash_sale_1=\"1\" flash_sale_2=\"2\" flash_sale_3=\"3\" flash_sale_4=\"4\" title=\"Deals Of The Day\" flash_sale_popup_id=\"1\"][/flash-sale]</div><div>[top-products-group tabs=\"top-selling,trending-products,recent-added,top-rated\" top_selling_in_days=\"365\"][/top-products-group]</div>',1,NULL,'homepage',NULL,'published','2024-01-23 01:51:55','2024-01-23 01:51:55'),(18,'Faq','<div>[faqs][/faqs]</div>',1,NULL,'default',NULL,'published','2024-01-23 01:51:55','2024-01-23 01:51:55');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'KLTJFKBFGS','sslcommerz',NULL,42.00,1,'completed','confirm',7,NULL,NULL,'2024-01-23 01:52:01','2024-01-23 01:52:01','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'OJELVO0W5J','mollie',NULL,375.00,2,'completed','confirm',7,NULL,NULL,'2024-01-23 01:52:01','2024-01-23 01:52:01','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'O6LF34ULB6','razorpay',NULL,375.00,3,'completed','confirm',7,NULL,NULL,'2024-01-23 01:52:01','2024-01-23 01:52:01','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'ULCQYMEBRK','bank_transfer',NULL,1296.00,4,'pending','confirm',1,NULL,NULL,'2024-01-23 01:52:02','2024-01-23 01:52:02','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'IITUDH9WJ9','sslcommerz',NULL,375.00,5,'completed','confirm',1,NULL,NULL,'2024-01-23 01:52:02','2024-01-23 01:52:02','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'PUIODYCCJG','bank_transfer',NULL,476.00,6,'pending','confirm',1,NULL,NULL,'2024-01-23 01:52:02','2024-01-23 01:52:02','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'FMPJA2C4SE','cod',NULL,778.00,7,'pending','confirm',3,NULL,NULL,'2024-01-23 01:52:02','2024-01-23 01:52:02','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'TQWRGYSWOT','paypal',NULL,342.00,8,'completed','confirm',3,NULL,NULL,'2024-01-23 01:52:03','2024-01-23 01:52:03','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'LFK3FUZTBR','stripe',NULL,299.00,9,'completed','confirm',3,NULL,NULL,'2024-01-23 01:52:03','2024-01-23 01:52:03','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'ZQZRBO6PT8','sslcommerz',NULL,126.00,10,'completed','confirm',3,NULL,NULL,'2024-01-23 01:52:03','2024-01-23 01:52:03','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'USVUKDJW5T','cod',NULL,126.00,11,'pending','confirm',7,NULL,NULL,'2024-01-23 01:52:03','2024-01-23 01:52:03','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'JQ4QHRVHE5','bank_transfer',NULL,229.00,12,'pending','confirm',7,NULL,NULL,'2024-01-23 01:52:04','2024-01-23 01:52:04','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'6FFYXJGNWC','razorpay',NULL,1121.00,13,'completed','confirm',7,NULL,NULL,'2024-01-23 01:52:04','2024-01-23 01:52:04','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'1X1FMHGSXI','paystack',NULL,228.00,14,'completed','confirm',7,NULL,NULL,'2024-01-23 01:52:04','2024-01-23 01:52:04','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'VLUXNMVJA3','stripe',NULL,348.00,15,'completed','confirm',6,NULL,NULL,'2024-01-23 01:52:04','2024-01-23 01:52:04','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'P1GATB4QBB','stripe',NULL,114.00,16,'completed','confirm',6,NULL,NULL,'2024-01-23 01:52:05','2024-01-23 01:52:05','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'ANMBKQSNLO','cod',NULL,333.00,17,'pending','confirm',6,NULL,NULL,'2024-01-23 01:52:05','2024-01-23 01:52:05','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'7EJ706MI8Q','stripe',NULL,87.00,18,'completed','confirm',1,NULL,NULL,'2024-01-23 01:52:05','2024-01-23 01:52:05','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'NJOEBZHJOP','sslcommerz',NULL,42.00,19,'completed','confirm',1,NULL,NULL,'2024-01-23 01:52:05','2024-01-23 01:52:05','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'WT444YAMUX','razorpay',NULL,315.00,20,'completed','confirm',7,NULL,NULL,'2024-01-23 01:52:05','2024-01-23 01:52:05','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'1OVMQPDEVK','sslcommerz',NULL,111.00,21,'completed','confirm',7,NULL,NULL,'2024-01-23 01:52:06','2024-01-23 01:52:06','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'DKMTDLRRUU','cod',NULL,705.00,22,'pending','confirm',1,NULL,NULL,'2024-01-23 01:52:06','2024-01-23 01:52:06','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'L6MASCXKRW','sslcommerz',NULL,114.00,23,'completed','confirm',1,NULL,NULL,'2024-01-23 01:52:06','2024-01-23 01:52:06','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'85KGZMHWV8','sslcommerz',NULL,117.00,24,'completed','confirm',1,NULL,NULL,'2024-01-23 01:52:06','2024-01-23 01:52:06','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'XIDOTMGADZ','sslcommerz',NULL,598.00,25,'completed','confirm',1,NULL,NULL,'2024-01-23 01:52:06','2024-01-23 01:52:06','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'BRTJHCJ62N','paystack',NULL,718.00,26,'completed','confirm',1,NULL,NULL,'2024-01-23 01:52:07','2024-01-23 01:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'SPW1RMP7OZ','bank_transfer',NULL,121.00,27,'pending','confirm',1,NULL,NULL,'2024-01-23 01:52:07','2024-01-23 01:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'8XHY1WGZQ2','razorpay',NULL,115.00,28,'completed','confirm',1,NULL,NULL,'2024-01-23 01:52:07','2024-01-23 01:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'EGIIPGYTCA','stripe',NULL,234.00,29,'completed','confirm',1,NULL,NULL,'2024-01-23 01:52:07','2024-01-23 01:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'CSOLP6NXZU','cod',NULL,1038.00,30,'pending','confirm',3,NULL,NULL,'2024-01-23 01:52:07','2024-01-23 01:52:07','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'HHQTUHL2XP','mollie',NULL,250.00,31,'completed','confirm',3,NULL,NULL,'2024-01-23 01:52:08','2024-01-23 01:52:08','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'XSJRPYWKHL','bank_transfer',NULL,363.00,32,'pending','confirm',3,NULL,NULL,'2024-01-23 01:52:08','2024-01-23 01:52:08','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'JWGM9H5PYB','razorpay',NULL,240.00,33,'completed','confirm',3,NULL,NULL,'2024-01-23 01:52:08','2024-01-23 01:52:08','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'M9K0CT69MZ','stripe',NULL,121.00,34,'completed','confirm',1,NULL,NULL,'2024-01-23 01:52:08','2024-01-23 01:52:08','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'1XH7U1XMS2','paystack',NULL,726.00,35,'completed','confirm',1,NULL,NULL,'2024-01-23 01:52:09','2024-01-23 01:52:09','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'PRL21EK7KH','paypal',NULL,261.00,36,'completed','confirm',3,NULL,NULL,'2024-01-23 01:52:09','2024-01-23 01:52:09','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'J79OMHBX5Q','paystack',NULL,348.00,37,'completed','confirm',3,NULL,NULL,'2024-01-23 01:52:09','2024-01-23 01:52:09','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'JOLTVEMQ9G','paypal',NULL,333.00,38,'completed','confirm',3,NULL,NULL,'2024-01-23 01:52:09','2024-01-23 01:52:09','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'OLSQHN4W6M','cod',NULL,540.00,39,'pending','confirm',1,NULL,NULL,'2024-01-23 01:52:10','2024-01-23 01:52:10','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'ZWGUE18OAD','sslcommerz',NULL,240.00,40,'completed','confirm',1,NULL,NULL,'2024-01-23 01:52:10','2024-01-23 01:52:10','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'MRV8LBQ5YK','cod',NULL,118.00,41,'pending','confirm',3,NULL,NULL,'2024-01-23 01:52:10','2024-01-23 01:52:10','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'XOGQ26CJUC','sslcommerz',NULL,121.00,42,'completed','confirm',3,NULL,NULL,'2024-01-23 01:52:10','2024-01-23 01:52:10','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'WRLJUOZFU5','paystack',NULL,616.00,43,'completed','confirm',4,NULL,NULL,'2024-01-23 01:52:10','2024-01-23 01:52:10','Botble\\Ecommerce\\Models\\Customer',NULL),(44,'USD',0,'WGZ69NXYEI','mollie',NULL,726.00,44,'completed','confirm',4,NULL,NULL,'2024-01-23 01:52:11','2024-01-23 01:52:11','Botble\\Ecommerce\\Models\\Customer',NULL),(45,'USD',0,'3AO0RCOWWS','razorpay',NULL,212.00,45,'completed','confirm',10,NULL,NULL,'2024-01-23 01:52:11','2024-01-23 01:52:11','Botble\\Ecommerce\\Models\\Customer',NULL),(46,'USD',0,'LCYHCP34YS','paypal',NULL,252.00,46,'completed','confirm',10,NULL,NULL,'2024-01-23 01:52:11','2024-01-23 01:52:11','Botble\\Ecommerce\\Models\\Customer',NULL),(47,'USD',0,'TA9ACGUIWP','paypal',NULL,242.00,47,'completed','confirm',10,NULL,NULL,'2024-01-23 01:52:11','2024-01-23 01:52:11','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (2,1),(4,1),(1,2),(3,2),(2,3),(3,3),(2,4),(3,4),(2,5),(4,5),(2,6),(3,6),(2,7),(4,7),(2,8),(3,8),(1,9),(3,9),(1,10),(4,10),(1,11),(3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/1.png',1724,NULL,'2024-01-23 01:51:55','2024-01-23 01:51:55'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/2.png',1622,NULL,'2024-01-23 01:51:55','2024-01-23 01:51:55'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/3.png',2037,NULL,'2024-01-23 01:51:55','2024-01-23 01:51:55'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n[featured-products title=\"Shop The Look\" limit=\"6\"][/featured-products]\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/4.png',384,NULL,'2024-01-23 01:51:55','2024-01-23 01:51:55'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/5.png',1183,NULL,'2024-01-23 01:51:55','2024-01-23 01:51:55'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/6.png',1801,NULL,'2024-01-23 01:51:55','2024-01-23 01:51:55'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/7.png',2296,NULL,'2024-01-23 01:51:55','2024-01-23 01:51:55'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/8.png',685,NULL,'2024-01-23 01:51:55','2024-01-23 01:51:55'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/9.png',263,NULL,'2024-01-23 01:51:55','2024-01-23 01:51:55'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',1,'news/10.png',2236,NULL,'2024-01-23 01:51:55','2024-01-23 01:51:55'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.png\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.png\" /></p>\n\n<p>&nbsp;</p>\n','published',NULL,'Botble\\ACL\\Models\\User',0,'news/11.png',907,NULL,'2024-01-23 01:51:55','2024-01-23 01:51:55');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"extensions.index\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.cronjob\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"plugins.captcha\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.settings\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"shipping_methods.index\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.general\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.settings\":true,\"marketplace.reports\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}','Admin users role',1,2,2,'2024-01-23 01:51:55','2024-01-23 01:51:55');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','3dc144c9156d4d240ba36804a478961c',NULL,'2024-01-23 01:51:58'),(2,'api_enabled','0',NULL,'2024-01-23 01:51:58'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"bottom-bar-menu\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\"]',NULL,'2024-01-23 01:51:58'),(6,'theme','nest',NULL,'2024-01-23 01:51:58'),(7,'show_admin_bar','1',NULL,'2024-01-23 01:51:58'),(8,'language_hide_default','1',NULL,'2024-01-23 01:51:58'),(9,'language_switcher_display','dropdown',NULL,'2024-01-23 01:51:58'),(10,'language_display','all',NULL,'2024-01-23 01:51:58'),(11,'language_hide_languages','[]',NULL,'2024-01-23 01:51:58'),(12,'ecommerce_store_name','Nest',NULL,NULL),(13,'ecommerce_store_phone','18006268',NULL,NULL),(14,'ecommerce_store_address','North Link Building, 10 Admiralty Street',NULL,NULL),(15,'ecommerce_store_state','Singapore',NULL,NULL),(16,'ecommerce_store_city','Singapore',NULL,NULL),(17,'ecommerce_store_country','SG',NULL,NULL),(18,'payment_cod_status','1',NULL,'2024-01-23 01:51:58'),(19,'payment_bank_transfer_status','1',NULL,'2024-01-23 01:51:58'),(20,'admin_favicon','general/favicon.png',NULL,'2024-01-23 01:51:58'),(21,'admin_logo','general/logo.png',NULL,'2024-01-23 01:51:58'),(22,'permalink-botble-blog-models-post','blog',NULL,'2024-01-23 01:51:58'),(23,'permalink-botble-blog-models-category','blog',NULL,'2024-01-23 01:51:58'),(24,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-01-23 01:51:58'),(25,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-01-23 01:51:58'),(26,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-01-23 01:51:58'),(27,'plugins_ecommerce_customer_new_order_status','0',NULL,'2024-01-23 01:51:58'),(28,'plugins_ecommerce_admin_new_order_status','0',NULL,'2024-01-23 01:51:58'),(29,'ecommerce_is_enabled_support_digital_products','1',NULL,'2024-01-23 01:51:58'),(30,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2024-01-23 01:51:58'),(31,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2024-01-23 01:51:58'),(32,'ecommerce_product_sku_format','NST-2443-[%S]',NULL,'2024-01-23 01:51:58'),(33,'theme-nest-site_title','Nest - Laravel Multipurpose eCommerce Script',NULL,NULL),(34,'theme-nest-seo_description','Nest is an attractive Laravel multivendor eCommerce script specially designed for the multipurpose shops like mega store, grocery store, supermarket, organic shop, and online stores selling products like beverages, vegetables, fruits, ice creams, paste, herbs, juice, meat, cold drinks, sausages, cocktails, soft drinks, cookies…',NULL,NULL),(35,'theme-nest-copyright','Copyright © 2024 Nest all rights reserved. Powered by Botble.',NULL,NULL),(36,'theme-nest-favicon','general/favicon.png',NULL,NULL),(37,'theme-nest-logo','general/logo.png',NULL,NULL),(38,'theme-nest-seo_og_image','general/open-graph-image.png',NULL,NULL),(39,'theme-nest-address','562 Wellington Road, Street 32, San Francisco',NULL,NULL),(40,'theme-nest-hotline','1900 - 888',NULL,NULL),(41,'theme-nest-phone','+01 2222 365 /(+91) 01 2345 6789',NULL,NULL),(42,'theme-nest-working_hours','10:00 - 18:00, Mon - Sat',NULL,NULL),(43,'theme-nest-homepage_id','1',NULL,NULL),(44,'theme-nest-blog_page_id','5',NULL,NULL),(45,'theme-nest-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(46,'theme-nest-cookie_consent_learn_more_url','https://nest.test/cookie-policy',NULL,NULL),(47,'theme-nest-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(48,'theme-nest-payment_methods','general/payment-methods.png',NULL,NULL),(49,'theme-nest-number_of_cross_sale_product','4',NULL,NULL),(50,'theme-nest-mobile-header-message','<span>Grand opening, <strong>up to 15%</strong> off all items. Only <strong>3 days</strong> left</span>',NULL,NULL),(51,'theme-nest-blog_page_background','general/header-bg.png',NULL,NULL),(52,'theme-nest-blog_page_icon','general/category-1.png',NULL,NULL),(53,'theme-nest-login_background','general/login-1.png',NULL,NULL),(54,'theme-nest-number_of_products_per_page','12',NULL,NULL),(55,'theme-nest-preloader_enabled','yes',NULL,NULL),(56,'theme-nest-preloader_version','v2',NULL,NULL),(57,'theme-nest-preloader_image','general/loading.gif',NULL,NULL),(58,'theme-nest-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"general\\/facebook.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"general\\/twitter.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"general\\/instagram.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Pinterest\"},{\"key\":\"social-icon\",\"value\":\"general\\/pinterest.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.pinterest.com\\/\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"general\\/youtube.png\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]',NULL,NULL),(59,'theme-nest-header_messages','[[{\"key\":\"icon\",\"value\":\"fi-rs-bell\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-success\\\"> Trendy 25<\\/b> silver jewelry, save up 35% off today\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"Shop now\"}],[{\"key\":\"icon\",\"value\":\"fi-rs-asterisk\"},{\"key\":\"message\",\"value\":\"<b class=\\\"text-danger\\\">Super Value Deals<\\/b> - Save more with coupons\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":null}],[{\"key\":\"icon\",\"value\":\"fi-rs-angle-double-right\"},{\"key\":\"message\",\"value\":\"Get great devices up to 50% off\"},{\"key\":\"link\",\"value\":\"\\/products\"},{\"key\":\"link_text\",\"value\":\"View details\"}]]',NULL,NULL),(60,'theme-nest-contact_info_boxes','[[{\"key\":\"name\",\"value\":\"Head Office\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"office@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Studio\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"studio@botble.com\"}],[{\"key\":\"name\",\"value\":\"Our Shop\"},{\"key\":\"address\",\"value\":\"205 North Michigan Avenue, Suite 810, Chicago, 60601, USA\"},{\"key\":\"phone\",\"value\":\"(+01) 234 567\"},{\"key\":\"email\",\"value\":\"shop@botble.com\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Don’t miss amazing<br> grocery deals','sliders/1-1.png','/products','Sign up for the daily newsletter',1,'2024-01-23 01:51:54','2024-01-23 01:51:54'),(2,1,'Fresh Vegetables<br>\n										Big discount','sliders/1-2.png','/products','Save up to 50% off on your first order',2,'2024-01-23 01:51:54','2024-01-23 01:51:54'),(3,2,'Don’t miss amazing<br> grocery deals','sliders/2-1.png','/products','Sign up for the daily newsletter',1,'2024-01-23 01:51:54','2024-01-23 01:51:54'),(4,2,'Fresh Vegetables<br>\n										Big discount','sliders/2-2.png','/products','Save up to 50% off on your first order',2,'2024-01-23 01:51:54','2024-01-23 01:51:54'),(5,3,'Don’t miss amazing<br> grocery deals','sliders/3-1.png','/products','Sign up for the daily newsletter',1,'2024-01-23 01:51:54','2024-01-23 01:51:54'),(6,3,'Fresh Vegetables<br>\n										Big discount','sliders/3-2.png','/products','Save up to 50% off on your first order',2,'2024-01-23 01:51:54','2024-01-23 01:51:54'),(7,4,'Don’t miss amazing<br> grocery deals','sliders/4-1.png','/products','Sign up for the daily newsletter',1,'2024-01-23 01:51:54','2024-01-23 01:51:54'),(8,4,'Fresh Vegetables<br>\n										Big discount','sliders/4-2.png','/products','Save up to 50% off on your first order',2,'2024-01-23 01:51:54','2024-01-23 01:51:54'),(9,5,'Don’t miss amazing<br> grocery deals','sliders/5-1.png','/products','Sign up for the daily newsletter',1,'2024-01-23 01:51:54','2024-01-23 01:51:54'),(10,5,'Fresh Vegetables<br>\n										Big discount','sliders/5-2.png','/products','Save up to 50% off on your first order',2,'2024-01-23 01:51:54','2024-01-23 01:51:54'),(11,6,'Don’t miss amazing<br> grocery deals','sliders/6-1.png','/products','Sign up for the daily newsletter',1,'2024-01-23 01:51:54','2024-01-23 01:51:54'),(12,7,NULL,'sliders/thumbnail-1.jpg',NULL,NULL,1,'2024-01-23 01:51:54','2024-01-23 01:51:54'),(13,7,NULL,'sliders/thumbnail-2.jpg',NULL,NULL,2,'2024-01-23 01:51:54','2024-01-23 01:51:54'),(14,7,NULL,'sliders/thumbnail-3.jpg',NULL,NULL,3,'2024-01-23 01:51:54','2024-01-23 01:51:54'),(15,7,NULL,'sliders/thumbnail-4.jpg',NULL,NULL,4,'2024-01-23 01:51:54','2024-01-23 01:51:54'),(16,7,NULL,'sliders/thumbnail-5.jpg',NULL,NULL,5,'2024-01-23 01:51:54','2024-01-23 01:51:54'),(17,7,NULL,'sliders/thumbnail-6.jpg',NULL,NULL,6,'2024-01-23 01:51:54','2024-01-23 01:51:54');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider 1','home-slider-1',NULL,'published','2024-01-23 01:51:54','2024-01-23 01:51:54'),(2,'Home slider 2','home-slider-2',NULL,'published','2024-01-23 01:51:54','2024-01-23 01:51:54'),(3,'Home slider 3','home-slider-3',NULL,'published','2024-01-23 01:51:54','2024-01-23 01:51:54'),(4,'Home slider 4','home-slider-4',NULL,'published','2024-01-23 01:51:54','2024-01-23 01:51:54'),(5,'Home slider 5','home-slider-5',NULL,'published','2024-01-23 01:51:54','2024-01-23 01:51:54'),(6,'Home slider 6','home-slider-6',NULL,'published','2024-01-23 01:51:54','2024-01-23 01:51:54'),(7,'Blog slider 1','blog-slider-1',NULL,'published','2024-01-23 01:51:54','2024-01-23 01:51:54');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'perxsion',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-01-23 01:51:40','2024-01-23 01:51:40'),(2,'hiching',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-01-23 01:51:40','2024-01-23 01:51:40'),(3,'kepslo',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-01-23 01:51:40','2024-01-23 01:51:40'),(4,'groneba',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-01-23 01:51:40','2024-01-23 01:51:40'),(5,'babian',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-01-23 01:51:40','2024-01-23 01:51:40'),(6,'valorant',6,'Botble\\Ecommerce\\Models\\Brand','brands','2024-01-23 01:51:40','2024-01-23 01:51:40'),(7,'pure',7,'Botble\\Ecommerce\\Models\\Brand','brands','2024-01-23 01:51:40','2024-01-23 01:51:40'),(8,'milks-and-dairies',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-23 01:51:42','2024-01-23 01:51:42'),(9,'clothing-beauty',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-23 01:51:42','2024-01-23 01:51:42'),(10,'pet-toy',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-23 01:51:42','2024-01-23 01:51:42'),(11,'baking-material',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-23 01:51:42','2024-01-23 01:51:42'),(12,'fresh-fruit',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-23 01:51:42','2024-01-23 01:51:42'),(13,'wines-drinks',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-23 01:51:42','2024-01-23 01:51:42'),(14,'fresh-seafood',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-23 01:51:42','2024-01-23 01:51:42'),(15,'fast-food',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-23 01:51:42','2024-01-23 01:51:42'),(16,'vegetables',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-23 01:51:42','2024-01-23 01:51:42'),(17,'bread-and-juice',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-23 01:51:42','2024-01-23 01:51:42'),(18,'cake-milk',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-23 01:51:42','2024-01-23 01:51:42'),(19,'coffee-teas',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-23 01:51:42','2024-01-23 01:51:42'),(20,'pet-foods',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-23 01:51:42','2024-01-23 01:51:42'),(21,'diet-foods',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-01-23 01:51:42','2024-01-23 01:51:42'),(22,'wallet',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-01-23 01:51:42','2024-01-23 01:51:42'),(23,'bags',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-01-23 01:51:42','2024-01-23 01:51:42'),(24,'shoes',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-01-23 01:51:42','2024-01-23 01:51:42'),(25,'clothes',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-01-23 01:51:42','2024-01-23 01:51:42'),(26,'hand-bag',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-01-23 01:51:42','2024-01-23 01:51:42'),(27,'seeds-of-change-organic-quinoe-digital',1,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:45','2024-01-23 01:51:45'),(28,'all-natural-italian-style-chicken-meatballs',2,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:46','2024-01-23 01:51:46'),(29,'angies-boomchickapop-sweet-salty-kettle-corn',3,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:46','2024-01-23 01:51:46'),(30,'foster-farms-takeout-crispy-classic',4,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:46','2024-01-23 01:51:46'),(31,'blue-diamond-almonds-lightly-digital',5,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:46','2024-01-23 01:51:46'),(32,'chobani-complete-vanilla-greek',6,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:46','2024-01-23 01:51:46'),(33,'canada-dry-ginger-ale-2-l-bottle',7,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:46','2024-01-23 01:51:46'),(34,'encore-seafoods-stuffed-alaskan',8,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:46','2024-01-23 01:51:46'),(35,'gortons-beer-battered-fish-fillets-digital',9,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:46','2024-01-23 01:51:46'),(36,'haagen-dazs-caramel-cone-ice-cream',10,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:46','2024-01-23 01:51:46'),(37,'nestle-original-coffee-mate-coffee-creamer',11,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:46','2024-01-23 01:51:46'),(38,'naturally-flavored-cinnamon-vanilla-light-roast-coffee',12,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:46','2024-01-23 01:51:46'),(39,'pepperidge-farm-farmhouse-hearty-white-bread-digital',13,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:46','2024-01-23 01:51:46'),(40,'organic-frozen-triple-berry-blend',14,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:46','2024-01-23 01:51:46'),(41,'oroweat-country-buttermilk-bread',15,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:46','2024-01-23 01:51:46'),(42,'foster-farms-takeout-crispy-classic-buffalo-wings',16,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:46','2024-01-23 01:51:46'),(43,'angies-boomchickapop-sweet-salty-kettle-corn-digital',17,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:46','2024-01-23 01:51:46'),(44,'all-natural-italian-style-chicken-meatballs',18,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:46','2024-01-23 01:51:46'),(45,'simply-lemonade-with-raspberry-juice',19,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:46','2024-01-23 01:51:46'),(46,'perdue-simply-smart-organics-gluten-free',20,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:46','2024-01-23 01:51:46'),(47,'chen-watermelon-digital',21,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:46','2024-01-23 01:51:46'),(48,'organic-cage-free-grade-a-large-brown-eggs',22,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:46','2024-01-23 01:51:46'),(49,'colorful-banana',23,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:46','2024-01-23 01:51:46'),(50,'signature-wood-fired-mushroom-and-caramelized',24,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:51:46','2024-01-23 01:51:46'),(51,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2024-01-23 01:51:55','2024-01-23 01:51:55'),(52,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-01-23 01:51:55','2024-01-23 01:51:55'),(53,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-01-23 01:51:55','2024-01-23 01:51:55'),(54,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-01-23 01:51:55','2024-01-23 01:51:55'),(55,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-01-23 01:51:55','2024-01-23 01:51:55'),(56,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-01-23 01:51:55','2024-01-23 01:51:55'),(57,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-01-23 01:51:55','2024-01-23 01:51:55'),(58,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-01-23 01:51:55','2024-01-23 01:51:55'),(59,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-01-23 01:51:55','2024-01-23 01:51:55'),(60,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-01-23 01:51:55','2024-01-23 01:51:55'),(61,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-01-23 01:51:55','2024-01-23 01:51:55'),(62,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-01-23 01:51:55','2024-01-23 01:51:55'),(63,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-01-23 01:51:55','2024-01-23 01:51:55'),(64,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-01-23 01:51:55','2024-01-23 01:51:55'),(65,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-01-23 01:51:55','2024-01-23 01:51:55'),(66,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-01-23 01:51:55','2024-01-23 01:51:55'),(67,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-01-23 01:51:55','2024-01-23 01:51:55'),(68,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-01-23 01:51:55','2024-01-23 01:51:55'),(69,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-01-23 01:51:55','2024-01-23 01:51:55'),(70,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-01-23 01:51:55','2024-01-23 01:51:55'),(71,'homepage',1,'Botble\\Page\\Models\\Page','','2024-01-23 01:51:55','2024-01-23 01:51:55'),(72,'homepage-2',2,'Botble\\Page\\Models\\Page','','2024-01-23 01:51:55','2024-01-23 01:51:55'),(73,'homepage-3',3,'Botble\\Page\\Models\\Page','','2024-01-23 01:51:55','2024-01-23 01:51:55'),(74,'homepage-4',4,'Botble\\Page\\Models\\Page','','2024-01-23 01:51:55','2024-01-23 01:51:55'),(75,'blog',5,'Botble\\Page\\Models\\Page','','2024-01-23 01:51:55','2024-01-23 01:51:55'),(76,'contact',6,'Botble\\Page\\Models\\Page','','2024-01-23 01:51:55','2024-01-23 01:51:55'),(77,'about-us',7,'Botble\\Page\\Models\\Page','','2024-01-23 01:51:55','2024-01-23 01:51:55'),(78,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2024-01-23 01:51:55','2024-01-23 01:51:55'),(79,'terms-conditions',9,'Botble\\Page\\Models\\Page','','2024-01-23 01:51:55','2024-01-23 01:51:55'),(80,'returns-exchanges',10,'Botble\\Page\\Models\\Page','','2024-01-23 01:51:55','2024-01-23 01:51:55'),(81,'shipping-delivery',11,'Botble\\Page\\Models\\Page','','2024-01-23 01:51:55','2024-01-23 01:51:55'),(82,'privacy-policy',12,'Botble\\Page\\Models\\Page','','2024-01-23 01:51:55','2024-01-23 01:51:55'),(83,'blog-list',13,'Botble\\Page\\Models\\Page','','2024-01-23 01:51:55','2024-01-23 01:51:55'),(84,'blog-big',14,'Botble\\Page\\Models\\Page','','2024-01-23 01:51:55','2024-01-23 01:51:55'),(85,'blog-wide',15,'Botble\\Page\\Models\\Page','','2024-01-23 01:51:55','2024-01-23 01:51:55'),(86,'homepage-5',16,'Botble\\Page\\Models\\Page','','2024-01-23 01:51:55','2024-01-23 01:51:55'),(87,'homepage-6',17,'Botble\\Page\\Models\\Page','','2024-01-23 01:51:55','2024-01-23 01:51:55'),(88,'faq',18,'Botble\\Page\\Models\\Page','','2024-01-23 01:51:55','2024-01-23 01:51:55'),(89,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2024-01-23 01:52:00','2024-01-23 01:52:00'),(90,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2024-01-23 01:52:00','2024-01-23 01:52:00'),(91,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2024-01-23 01:52:00','2024-01-23 01:52:00'),(92,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2024-01-23 01:52:00','2024-01-23 01:52:00'),(93,'seeds-of-change-organic-quinoe-digital',25,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(94,'seeds-of-change-organic-quinoe-digital',26,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(95,'seeds-of-change-organic-quinoe-digital',27,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(96,'all-natural-italian-style-chicken-meatballs',28,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(97,'all-natural-italian-style-chicken-meatballs',29,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(98,'angies-boomchickapop-sweet-salty-kettle-corn',30,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(99,'foster-farms-takeout-crispy-classic',31,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(100,'foster-farms-takeout-crispy-classic',32,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(101,'foster-farms-takeout-crispy-classic',33,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(102,'foster-farms-takeout-crispy-classic',34,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(103,'blue-diamond-almonds-lightly-digital',35,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(104,'blue-diamond-almonds-lightly-digital',36,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(105,'blue-diamond-almonds-lightly-digital',37,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(106,'chobani-complete-vanilla-greek',38,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(107,'chobani-complete-vanilla-greek',39,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(108,'chobani-complete-vanilla-greek',40,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(109,'canada-dry-ginger-ale-2-l-bottle',41,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(110,'canada-dry-ginger-ale-2-l-bottle',42,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(111,'encore-seafoods-stuffed-alaskan',43,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(112,'encore-seafoods-stuffed-alaskan',44,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(113,'encore-seafoods-stuffed-alaskan',45,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(114,'gortons-beer-battered-fish-fillets-digital',46,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(115,'haagen-dazs-caramel-cone-ice-cream',47,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(116,'haagen-dazs-caramel-cone-ice-cream',48,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(117,'haagen-dazs-caramel-cone-ice-cream',49,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(118,'nestle-original-coffee-mate-coffee-creamer',50,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(119,'nestle-original-coffee-mate-coffee-creamer',51,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(120,'naturally-flavored-cinnamon-vanilla-light-roast-coffee',52,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(121,'naturally-flavored-cinnamon-vanilla-light-roast-coffee',53,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(122,'pepperidge-farm-farmhouse-hearty-white-bread-digital',54,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(123,'pepperidge-farm-farmhouse-hearty-white-bread-digital',55,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(124,'pepperidge-farm-farmhouse-hearty-white-bread-digital',56,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(125,'pepperidge-farm-farmhouse-hearty-white-bread-digital',57,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(126,'organic-frozen-triple-berry-blend',58,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(127,'oroweat-country-buttermilk-bread',59,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(128,'oroweat-country-buttermilk-bread',60,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(129,'oroweat-country-buttermilk-bread',61,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(130,'oroweat-country-buttermilk-bread',62,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(131,'oroweat-country-buttermilk-bread',63,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(132,'foster-farms-takeout-crispy-classic-buffalo-wings',64,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(133,'foster-farms-takeout-crispy-classic-buffalo-wings',65,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(134,'angies-boomchickapop-sweet-salty-kettle-corn-digital',66,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(135,'angies-boomchickapop-sweet-salty-kettle-corn-digital',67,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(136,'all-natural-italian-style-chicken-meatballs',68,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(137,'all-natural-italian-style-chicken-meatballs',69,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(138,'all-natural-italian-style-chicken-meatballs',70,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(139,'all-natural-italian-style-chicken-meatballs',71,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(140,'simply-lemonade-with-raspberry-juice',72,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(141,'perdue-simply-smart-organics-gluten-free',73,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(142,'chen-watermelon-digital',74,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(143,'chen-watermelon-digital',75,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(144,'chen-watermelon-digital',76,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(145,'chen-watermelon-digital',77,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(146,'organic-cage-free-grade-a-large-brown-eggs',78,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(147,'organic-cage-free-grade-a-large-brown-eggs',79,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(148,'colorful-banana',80,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(149,'colorful-banana',81,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(150,'colorful-banana',82,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(151,'signature-wood-fired-mushroom-and-caramelized',83,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(152,'signature-wood-fired-mushroom-and-caramelized',84,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(153,'signature-wood-fired-mushroom-and-caramelized',85,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23'),(154,'signature-wood-fired-mushroom-and-caramelized',86,'Botble\\Ecommerce\\Models\\Product','products','2024-01-23 01:52:23','2024-01-23 01:52:23');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',NULL,'Botble\\ACL\\Models\\User','','published','2024-01-23 01:51:55','2024-01-23 01:51:55'),(2,'Design',NULL,'Botble\\ACL\\Models\\User','','published','2024-01-23 01:51:55','2024-01-23 01:51:55'),(3,'Fashion',NULL,'Botble\\ACL\\Models\\User','','published','2024-01-23 01:51:55','2024-01-23 01:51:55'),(4,'Branding',NULL,'Botble\\ACL\\Models\\User','','published','2024-01-23 01:51:55','2024-01-23 01:51:55'),(5,'Modern',NULL,'Botble\\ACL\\Models\\User','','published','2024-01-23 01:51:55','2024-01-23 01:51:55');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mose.osinski@schoen.com',NULL,'$2y$12$LcS.s9gksjHUno1bEAD4o..J/AZeapC.imtOaxhE9YzUgnN9DYF0S',NULL,'2024-01-23 01:51:55','2024-01-23 01:51:55','Waldo','Sawayn','botble',NULL,1,1,NULL,NULL),(2,'waters.iliana@hintz.com',NULL,'$2y$12$FH9odfwiR/tqKvGooxzW/O1fD6aTKv7qr3fHqFiPnJjWlHH0P9hT6',NULL,'2024-01-23 01:51:55','2024-01-23 01:51:55','Jayne','Feeney','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_sidebar','nest',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Site information\",\"about\":\"Awesome grocery store website template\",\"phone\":\"(+91) - 540-025-124553\",\"address\":\"5171 W Campbell Ave undefined Kent, Utah 53127 United States\",\"email\":\"sale@Nest.com\",\"working_hours\":\"10:00 - 18:00, Mon - Sat\"}','2024-01-23 01:51:56','2024-01-23 01:51:56'),(2,'CustomMenuWidget','footer_sidebar','nest',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2024-01-23 01:51:56','2024-01-23 01:51:56'),(3,'CustomMenuWidget','footer_sidebar','nest',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"product-categories\"}','2024-01-23 01:51:56','2024-01-23 01:51:56'),(4,'CustomMenuWidget','footer_sidebar','nest',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2024-01-23 01:51:56','2024-01-23 01:51:56'),(5,'InstallAppWidget','footer_sidebar','nest',3,'{\"id\":\"InstallAppWidget\",\"name\":\"Install App\",\"apps_description\":\"From App Store or Google Play\",\"ios_app_url\":\"#\",\"ios_app_image\":\"general\\/app-store.jpg\",\"android_app_url\":\"#\",\"android_app_image\":\"general\\/google-play.jpg\",\"payment_gateway_description\":\"Secured Payment Gateways\",\"payment_gateway_image\":\"general\\/payment-methods.png\"}','2024-01-23 01:51:56','2024-01-23 01:51:56'),(6,'BlogSearchWidget','primary_sidebar','nest',0,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2024-01-23 01:51:56','2024-01-23 01:51:56'),(7,'ProductCategoriesWidget','primary_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2024-01-23 01:51:56','2024-01-23 01:51:56'),(8,'TrendingProductsWidget','primary_sidebar','nest',2,'{\"id\":\"TrendingProductsWidget\",\"name\":\"Trending Now\",\"number_display\":4}','2024-01-23 01:51:56','2024-01-23 01:51:56'),(9,'GalleryWidget','primary_sidebar','nest',3,'{\"id\":\"GalleryWidget\",\"name\":\"Gallery\",\"slider_key\":\"slider-blog-1\"}','2024-01-23 01:51:56','2024-01-23 01:51:56'),(10,'TagsWidget','primary_sidebar','nest',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2024-01-23 01:51:56','2024-01-23 01:51:56'),(11,'AdsWidget','primary_sidebar','nest',5,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2024-01-23 01:51:56','2024-01-23 01:51:56'),(12,'ProductCategoriesWidget','product_sidebar','nest',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Categories\"}','2024-01-23 01:51:56','2024-01-23 01:51:56'),(13,'NewProductsWidget','product_sidebar','nest',3,'{\"id\":\"NewProductsWidget\",\"name\":\"New products\"}','2024-01-23 01:51:56','2024-01-23 01:51:56'),(14,'AdsWidget','product_sidebar','nest',4,'{\"id\":\"AdsWidget\",\"name\":\"Oganic\",\"ads_key\":\"IZ6WU8KUALYI\"}','2024-01-23 01:51:56','2024-01-23 01:51:56'),(15,'NewsletterWidget','pre_footer_sidebar','nest',0,'{\"id\":\"NewsletterWidget\",\"title\":\"Stay home & get your daily <br \\/>needs from our shop\",\"subtitle\":\"Start Your Daily Shopping with <span>Nest Mart<\\/span>\",\"image\":\"general\\/newsletter-image.png\",\"background_image\":\"general\\/newsletter-background-image.png\"}','2024-01-23 01:51:56','2024-01-23 01:51:56'),(16,'SiteFeaturesWidget','pre_footer_sidebar','nest',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-1.png\",\"title\":\"Best prices & offers\",\"subtitle\":\"Orders $50 or more\"},\"2\":{\"icon\":\"general\\/icon-2.png\",\"title\":\"Free delivery\",\"subtitle\":\"24\\/7 amazing services\"},\"3\":{\"icon\":\"general\\/icon-3.png\",\"title\":\"Great daily deal\",\"subtitle\":\"When you sign up\"},\"4\":{\"icon\":\"general\\/icon-4.png\",\"title\":\"Wide assortment\",\"subtitle\":\"Mega Discounts\"},\"5\":{\"icon\":\"general\\/icon-5.png\",\"title\":\"Easy returns\",\"subtitle\":\"Within 30 days\"}}}','2024-01-23 01:51:56','2024-01-23 01:51:56');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-23 15:52:24
