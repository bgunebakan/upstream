CREATE DATABASE  IF NOT EXISTS `upstream` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `upstream`;
-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: upstream
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

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
-- Table structure for table `auditlog_logentry`
--

DROP TABLE IF EXISTS `auditlog_logentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditlog_logentry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_pk` varchar(255) NOT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_repr` longtext NOT NULL,
  `action` smallint(5) unsigned NOT NULL,
  `changes` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `actor_id` int(11) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `remote_addr` char(39) DEFAULT NULL,
  `additional_data` longtext,
  PRIMARY KEY (`id`),
  KEY `auditlog_logentry_actor_id_959271d2_fk_auth_user_id` (`actor_id`),
  KEY `auditlog_logentry_content_type_id_75830218_fk_django_co` (`content_type_id`),
  KEY `auditlog_logentry_object_id_09c2eee8` (`object_id`),
  KEY `auditlog_logentry_object_pk_6e3219c0` (`object_pk`(191)),
  CONSTRAINT `auditlog_logentry_actor_id_959271d2_fk_auth_user_id` FOREIGN KEY (`actor_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auditlog_logentry_content_type_id_75830218_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditlog_logentry`
--

LOCK TABLES `auditlog_logentry` WRITE;
/*!40000 ALTER TABLE `auditlog_logentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditlog_logentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can change config',2,'change_config'),(5,'Can add group',3,'add_group'),(6,'Can change group',3,'change_group'),(7,'Can delete group',3,'delete_group'),(8,'Can add permission',4,'add_permission'),(9,'Can change permission',4,'change_permission'),(10,'Can delete permission',4,'delete_permission'),(11,'Can add user',5,'add_user'),(12,'Can change user',5,'change_user'),(13,'Can delete user',5,'delete_user'),(14,'Can add content type',6,'add_contenttype'),(15,'Can change content type',6,'change_contenttype'),(16,'Can delete content type',6,'delete_contenttype'),(17,'Can add session',7,'add_session'),(18,'Can change session',7,'change_session'),(19,'Can delete session',7,'delete_session'),(20,'Can add site',8,'add_site'),(21,'Can change site',8,'change_site'),(22,'Can delete site',8,'delete_site'),(23,'Can add source',9,'add_source'),(24,'Can change source',9,'change_source'),(25,'Can delete source',9,'delete_source'),(26,'Can add thumbnail',10,'add_thumbnail'),(27,'Can change thumbnail',10,'change_thumbnail'),(28,'Can delete thumbnail',10,'delete_thumbnail'),(29,'Can add thumbnail dimensions',11,'add_thumbnaildimensions'),(30,'Can change thumbnail dimensions',11,'change_thumbnaildimensions'),(31,'Can delete thumbnail dimensions',11,'delete_thumbnaildimensions'),(32,'Can add E-mail message',12,'add_message'),(33,'Can change E-mail message',12,'change_message'),(34,'Can delete E-mail message',12,'delete_message'),(35,'Can add Message attachment',13,'add_messageattachment'),(36,'Can change Message attachment',13,'change_messageattachment'),(37,'Can delete Message attachment',13,'delete_messageattachment'),(38,'Can add Mailbox',14,'add_mailbox'),(39,'Can change Mailbox',14,'change_mailbox'),(40,'Can delete Mailbox',14,'delete_mailbox'),(41,'Can add file',15,'add_file'),(42,'Can change file',15,'change_file'),(43,'Can delete file',15,'delete_file'),(44,'Can add Folder',16,'add_folder'),(45,'Can change Folder',16,'change_folder'),(46,'Can delete Folder',16,'delete_folder'),(47,'Can use directory listing',16,'can_use_directory_listing'),(48,'Can add thumbnail option',17,'add_thumbnailoption'),(49,'Can change thumbnail option',17,'change_thumbnailoption'),(50,'Can delete thumbnail option',17,'delete_thumbnailoption'),(51,'Can add clipboard item',18,'add_clipboarditem'),(52,'Can change clipboard item',18,'change_clipboarditem'),(53,'Can delete clipboard item',18,'delete_clipboarditem'),(54,'Can add clipboard',19,'add_clipboard'),(55,'Can change clipboard',19,'change_clipboard'),(56,'Can delete clipboard',19,'delete_clipboard'),(57,'Can add folder permission',20,'add_folderpermission'),(58,'Can change folder permission',20,'change_folderpermission'),(59,'Can delete folder permission',20,'delete_folderpermission'),(60,'Can add image',21,'add_image'),(61,'Can change image',21,'change_image'),(62,'Can delete image',21,'delete_image'),(63,'Can add constance',22,'add_constance'),(64,'Can change constance',22,'change_constance'),(65,'Can delete constance',22,'delete_constance'),(66,'Can add menu_item',23,'add_menu_item'),(67,'Can change menu_item',23,'change_menu_item'),(68,'Can delete menu_item',23,'delete_menu_item'),(69,'Can add category',24,'add_category'),(70,'Can change category',24,'change_category'),(71,'Can delete category',24,'delete_category'),(72,'Can add setting',25,'add_setting'),(73,'Can change setting',25,'change_setting'),(74,'Can delete setting',25,'delete_setting'),(75,'Can add post',26,'add_post'),(76,'Can change post',26,'change_post'),(77,'Can delete post',26,'delete_post'),(78,'Can add İhale',27,'add_tender'),(79,'Can change İhale',27,'change_tender'),(80,'Can delete İhale',27,'delete_tender'),(81,'Can add Tedarikçi',28,'add_supplier'),(82,'Can change Tedarikçi',28,'change_supplier'),(83,'Can delete Tedarikçi',28,'delete_supplier'),(84,'Can add log',29,'add_log'),(85,'Can change log',29,'change_log'),(86,'Can delete log',29,'delete_log'),(87,'Can add Unit',30,'add_unit'),(88,'Can change Unit',30,'change_unit'),(89,'Can delete Unit',30,'delete_unit'),(90,'Can add İhale durumu',31,'add_tenderstatus'),(91,'Can change İhale durumu',31,'change_tenderstatus'),(92,'Can delete İhale durumu',31,'delete_tenderstatus'),(93,'Can add Döviz Kuru',32,'add_currency'),(94,'Can change Döviz Kuru',32,'change_currency'),(95,'Can delete Döviz Kuru',32,'delete_currency'),(96,'Can add iş teslim tarihi',33,'add_tender_end_date'),(97,'Can change iş teslim tarihi',33,'change_tender_end_date'),(98,'Can delete iş teslim tarihi',33,'delete_tender_end_date'),(99,'Can add Alım türü',34,'add_tendercontent'),(100,'Can change Alım türü',34,'change_tendercontent'),(101,'Can delete Alım türü',34,'delete_tendercontent'),(102,'Can add Alım türü',35,'add_tendertype'),(103,'Can change Alım türü',35,'change_tendertype'),(104,'Can delete Alım türü',35,'delete_tendertype'),(105,'Can add User type',36,'add_personnel_type'),(106,'Can change User type',36,'change_personnel_type'),(107,'Can delete User type',36,'delete_personnel_type'),(108,'Can add User',37,'add_personnel'),(109,'Can change User',37,'change_personnel'),(110,'Can delete User',37,'delete_personnel'),(111,'Can add tasktype',38,'add_tasktype'),(112,'Can change tasktype',38,'change_tasktype'),(113,'Can delete tasktype',38,'delete_tasktype'),(114,'Can add comment',39,'add_comment'),(115,'Can change comment',39,'change_comment'),(116,'Can delete comment',39,'delete_comment'),(117,'Can add project',40,'add_project'),(118,'Can change project',40,'change_project'),(119,'Can delete project',40,'delete_project'),(120,'Can add log',41,'add_log'),(121,'Can change log',41,'change_log'),(122,'Can delete log',41,'delete_log'),(123,'Can add task',42,'add_task'),(124,'Can change task',42,'change_task'),(125,'Can delete task',42,'delete_task'),(126,'Can add statustype',43,'add_statustype'),(127,'Can change statustype',43,'change_statustype'),(128,'Can delete statustype',43,'delete_statustype'),(129,'Can add permission',44,'add_permission'),(130,'Can change permission',44,'change_permission'),(131,'Can delete permission',44,'delete_permission'),(132,'Can add Controller',45,'add_controller'),(133,'Can change Controller',45,'change_controller'),(134,'Can delete Controller',45,'delete_controller'),(135,'Can add door',46,'add_door'),(136,'Can change door',46,'change_door'),(137,'Can delete door',46,'delete_door'),(138,'Can view doors',46,'view_door'),(139,'Can add action_type',47,'add_action_type'),(140,'Can change action_type',47,'change_action_type'),(141,'Can delete action_type',47,'delete_action_type'),(142,'Can add door_group',48,'add_door_group'),(143,'Can change door_group',48,'change_door_group'),(144,'Can delete door_group',48,'delete_door_group'),(145,'Can view door groups',48,'view_door_groups'),(146,'Can add action',49,'add_action'),(147,'Can change action',49,'change_action'),(148,'Can delete action',49,'delete_action'),(149,'Can add identifier',50,'add_identifier'),(150,'Can change identifier',50,'change_identifier'),(151,'Can delete identifier',50,'delete_identifier'),(152,'Can view identifiers',50,'view_identifier'),(153,'Can add Inventory',51,'add_inventory'),(154,'Can change Inventory',51,'change_inventory'),(155,'Can delete Inventory',51,'delete_inventory'),(156,'Can add Location',52,'add_location'),(157,'Can change Location',52,'change_location'),(158,'Can delete Location',52,'delete_location'),(159,'Can add item type',53,'add_itemtype'),(160,'Can change item type',53,'change_itemtype'),(161,'Can delete item type',53,'delete_itemtype'),(162,'Can add Item',54,'add_item'),(163,'Can change Item',54,'change_item'),(164,'Can delete Item',54,'delete_item'),(165,'Can add log',55,'add_log'),(166,'Can change log',55,'change_log'),(167,'Can delete log',55,'delete_log'),(168,'Can add Category',56,'add_category'),(169,'Can change Category',56,'change_category'),(170,'Can delete Category',56,'delete_category'),(171,'Can add Supplier',57,'add_supplier'),(172,'Can change Supplier',57,'change_supplier'),(173,'Can delete Supplier',57,'delete_supplier'),(174,'Can add object position',58,'add_objectposition'),(175,'Can change object position',58,'change_objectposition'),(176,'Can delete object position',58,'delete_objectposition'),(177,'Can add menu',59,'add_menu'),(178,'Can change menu',59,'change_menu'),(179,'Can delete menu',59,'delete_menu'),(180,'Can add menu item',60,'add_menuitem'),(181,'Can change menu item',60,'change_menuitem'),(182,'Can delete menu item',60,'delete_menuitem'),(183,'Can add log entry',61,'add_logentry'),(184,'Can change log entry',61,'change_logentry'),(185,'Can delete log entry',61,'delete_logentry'),(186,'Can add import model',62,'add_importmodel'),(187,'Can change import model',62,'change_importmodel'),(188,'Can delete import model',62,'delete_importmodel'),(189,'Can add csv import',63,'add_csvimport'),(190,'Can change csv import',63,'change_csvimport'),(191,'Can delete csv import',63,'delete_csvimport'),(192,'Can see available user',5,'view_user'),(193,'Can see available personnel',37,'view_personnel'),(194,'Can see available personnel_type',36,'view_personnel_type'),(195,'Can see available tender',27,'view_tender'),(196,'Can see available controller',45,'view_controller'),(197,'Can see available project',40,'view_project'),(198,'Can see available task',42,'view_task'),(199,'Can see available tender_end_date',33,'view_tender_end_date'),(200,'Can see available tendercontent',34,'view_tendercontent'),(201,'Can see available door_group_doors',64,'view_door_group_doors'),(202,'Can see available door_group',48,'view_door_group'),(203,'Can see available action',49,'view_action'),(204,'Can see available action_type',47,'view_action_type'),(205,'Can see available permission',44,'view_permission');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `constance_config`
--

DROP TABLE IF EXISTS `constance_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `constance_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constance_config`
--

LOCK TABLES `constance_config` WRITE;
/*!40000 ALTER TABLE `constance_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `constance_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csvimport_csvimport`
--

DROP TABLE IF EXISTS `csvimport_csvimport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csvimport_csvimport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model_name` varchar(255) NOT NULL,
  `field_list` longtext NOT NULL,
  `upload_file` varchar(100) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `encoding` varchar(32) NOT NULL,
  `upload_method` varchar(50) NOT NULL,
  `error_log` longtext NOT NULL,
  `import_date` date NOT NULL,
  `import_user` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csvimport_csvimport`
--

LOCK TABLES `csvimport_csvimport` WRITE;
/*!40000 ALTER TABLE `csvimport_csvimport` DISABLE KEYS */;
/*!40000 ALTER TABLE `csvimport_csvimport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csvimport_importmodel`
--

DROP TABLE IF EXISTS `csvimport_importmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csvimport_importmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numeric_id` int(10) unsigned NOT NULL,
  `natural_key` varchar(100) NOT NULL,
  `csvimport_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `csvimport_importmode_csvimport_id_5a422b1c_fk_csvimport` (`csvimport_id`),
  CONSTRAINT `csvimport_importmode_csvimport_id_5a422b1c_fk_csvimport` FOREIGN KEY (`csvimport_id`) REFERENCES `csvimport_csvimport` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csvimport_importmodel`
--

LOCK TABLES `csvimport_importmodel` WRITE;
/*!40000 ALTER TABLE `csvimport_importmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `csvimport_importmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(61,'auditlog','logentry'),(3,'auth','group'),(4,'auth','permission'),(5,'auth','user'),(2,'constance','config'),(6,'contenttypes','contenttype'),(63,'csvimport','csvimport'),(62,'csvimport','importmodel'),(22,'database','constance'),(14,'django_mailbox','mailbox'),(12,'django_mailbox','message'),(13,'django_mailbox','messageattachment'),(9,'easy_thumbnails','source'),(10,'easy_thumbnails','thumbnail'),(11,'easy_thumbnails','thumbnaildimensions'),(19,'filer','clipboard'),(18,'filer','clipboarditem'),(15,'filer','file'),(16,'filer','folder'),(20,'filer','folderpermission'),(21,'filer','image'),(17,'filer','thumbnailoption'),(58,'generic_positions','objectposition'),(24,'homepage','category'),(23,'homepage','menu_item'),(26,'homepage','post'),(25,'homepage','setting'),(56,'inventory','category'),(51,'inventory','inventory'),(54,'inventory','item'),(53,'inventory','itemtype'),(52,'inventory','location'),(55,'inventory','log'),(57,'inventory','supplier'),(59,'menu','menu'),(60,'menu','menuitem'),(37,'personnel','personnel'),(36,'personnel','personnel_type'),(49,'portunes','action'),(47,'portunes','action_type'),(45,'portunes','controller'),(46,'portunes','door'),(48,'portunes','door_group'),(64,'portunes','door_group_doors'),(50,'portunes','identifier'),(44,'portunes','permission'),(32,'procurement','currency'),(29,'procurement','log'),(28,'procurement','supplier'),(27,'procurement','tender'),(34,'procurement','tendercontent'),(31,'procurement','tenderstatus'),(35,'procurement','tendertype'),(33,'procurement','tender_end_date'),(30,'procurement','unit'),(39,'project','comment'),(41,'project','log'),(40,'project','project'),(43,'project','statustype'),(42,'project','task'),(38,'project','tasktype'),(7,'sessions','session'),(8,'sites','site');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_mailbox_mailbox`
--

DROP TABLE IF EXISTS `django_mailbox_mailbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_mailbox_mailbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `from_email` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `last_polling` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_mailbox_mailbox`
--

LOCK TABLES `django_mailbox_mailbox` WRITE;
/*!40000 ALTER TABLE `django_mailbox_mailbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_mailbox_mailbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_mailbox_message`
--

DROP TABLE IF EXISTS `django_mailbox_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_mailbox_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `message_id` varchar(255) NOT NULL,
  `from_header` varchar(255) NOT NULL,
  `to_header` longtext NOT NULL,
  `outgoing` tinyint(1) NOT NULL,
  `body` longtext NOT NULL,
  `encoded` tinyint(1) NOT NULL,
  `processed` datetime(6) NOT NULL,
  `read` datetime(6) DEFAULT NULL,
  `in_reply_to_id` int(11) DEFAULT NULL,
  `mailbox_id` int(11) NOT NULL,
  `eml` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `django_mailbox_messa_in_reply_to_id_296753b5_fk_django_ma` (`in_reply_to_id`),
  KEY `django_mailbox_messa_mailbox_id_d60c2b04_fk_django_ma` (`mailbox_id`),
  CONSTRAINT `django_mailbox_messa_in_reply_to_id_296753b5_fk_django_ma` FOREIGN KEY (`in_reply_to_id`) REFERENCES `django_mailbox_message` (`id`),
  CONSTRAINT `django_mailbox_messa_mailbox_id_d60c2b04_fk_django_ma` FOREIGN KEY (`mailbox_id`) REFERENCES `django_mailbox_mailbox` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_mailbox_message`
--

LOCK TABLES `django_mailbox_message` WRITE;
/*!40000 ALTER TABLE `django_mailbox_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_mailbox_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_mailbox_messageattachment`
--

DROP TABLE IF EXISTS `django_mailbox_messageattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_mailbox_messageattachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `headers` longtext,
  `document` varchar(100) NOT NULL,
  `message_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `django_mailbox_messa_message_id_3f4d2dee_fk_django_ma` (`message_id`),
  CONSTRAINT `django_mailbox_messa_message_id_3f4d2dee_fk_django_ma` FOREIGN KEY (`message_id`) REFERENCES `django_mailbox_message` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_mailbox_messageattachment`
--

LOCK TABLES `django_mailbox_messageattachment` WRITE;
/*!40000 ALTER TABLE `django_mailbox_messageattachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_mailbox_messageattachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-03-27 10:13:44.222881'),(2,'auth','0001_initial','2018-03-27 10:13:45.577354'),(3,'admin','0001_initial','2018-03-27 10:13:45.836251'),(4,'admin','0002_logentry_remove_auto_add','2018-03-27 10:13:45.858062'),(5,'auditlog','0001_initial','2018-03-27 10:13:46.148234'),(6,'auditlog','0002_auto_support_long_primary_keys','2018-03-27 10:13:46.262557'),(7,'auditlog','0003_logentry_remote_addr','2018-03-27 10:13:46.356123'),(8,'auditlog','0004_logentry_detailed_object_repr','2018-03-27 10:13:46.478801'),(9,'auditlog','0005_logentry_additional_data_verbose_name','2018-03-27 10:13:46.501200'),(10,'auditlog','0006_object_pk_index','2018-03-27 10:13:46.641948'),(11,'auditlog','0007_object_pk_type','2018-03-27 10:13:46.659339'),(12,'contenttypes','0002_remove_content_type_name','2018-03-27 10:13:46.844388'),(13,'auth','0002_alter_permission_name_max_length','2018-03-27 10:13:46.952925'),(14,'auth','0003_alter_user_email_max_length','2018-03-27 10:13:47.059832'),(15,'auth','0004_alter_user_username_opts','2018-03-27 10:13:47.077303'),(16,'auth','0005_alter_user_last_login_null','2018-03-27 10:13:47.168688'),(17,'auth','0006_require_contenttypes_0002','2018-03-27 10:13:47.174720'),(18,'auth','0007_alter_validators_add_error_messages','2018-03-27 10:13:47.193897'),(19,'auth','0008_alter_user_username_max_length','2018-03-27 10:13:47.284783'),(20,'csvimport','0001_initial','2018-03-27 10:13:47.497103'),(21,'csvimport','0002_test_models','2018-03-27 10:13:48.132244'),(22,'csvimport','0003_auto_20180323_1729','2018-03-27 10:13:48.441398'),(23,'database','0001_initial','2018-03-27 10:16:20.945473'),(24,'django_mailbox','0001_initial','2018-03-27 10:16:21.401592'),(25,'django_mailbox','0002_add_eml_to_message','2018-03-27 10:16:21.476438'),(26,'django_mailbox','0003_auto_20150409_0316','2018-03-27 10:16:21.496755'),(27,'django_mailbox','0004_bytestring_to_unicode','2018-03-27 10:16:21.520317'),(28,'django_mailbox','0005_auto_20160523_2240','2018-03-27 10:16:21.534858'),(29,'django_mailbox','0006_mailbox_last_polling','2018-03-27 10:16:21.585528'),(30,'django_mailbox','0007_auto_20180323_1729','2018-03-27 10:16:21.609091'),(31,'easy_thumbnails','0001_initial','2018-03-27 10:16:21.919464'),(32,'easy_thumbnails','0002_thumbnaildimensions','2018-03-27 10:16:22.086075'),(33,'filer','0001_initial','2018-03-27 10:16:24.075058'),(34,'filer','0002_auto_20150606_2003','2018-03-27 10:16:24.201591'),(35,'filer','0003_thumbnailoption','2018-03-27 10:16:24.271942'),(36,'filer','0004_auto_20160328_1434','2018-03-27 10:16:24.357881'),(37,'filer','0005_auto_20160623_1425','2018-03-27 10:16:24.802609'),(38,'filer','0006_auto_20160623_1627','2018-03-27 10:16:24.923237'),(39,'filer','0007_auto_20161016_1055','2018-03-27 10:16:24.944385'),(40,'generic_positions','0001_initial','2018-03-27 10:16:25.097812'),(41,'homepage','0001_initial','2018-03-27 10:16:25.649974'),(42,'personnel','0001_initial','2018-03-27 10:16:26.210960'),(43,'inventory','0001_initial','2018-03-27 10:16:27.949609'),(44,'menu','0001_initial','2018-03-27 10:16:28.133331'),(45,'menu','0002_booleandefaults','2018-03-27 10:16:28.160644'),(46,'personnel','0002_personnel_file','2018-03-27 10:16:28.234658'),(47,'personnel','0003_delete_personnel_file','2018-03-27 10:16:28.257383'),(48,'personnel','0004_auto_20180323_1759','2018-03-27 10:16:28.617795'),(49,'personnel','0005_auto_20180323_2004','2018-03-27 10:16:28.653915'),(50,'personnel','0006_auto_20180326_0154','2018-03-27 10:16:28.968920'),(51,'personnel','0007_auto_20180326_0157','2018-03-27 10:16:29.133866'),(52,'personnel','0008_auto_20180326_0157','2018-03-27 10:16:29.167732'),(53,'personnel','0009_auto_20180326_0158','2018-03-27 10:16:29.470436'),(54,'personnel','0010_auto_20180326_0202','2018-03-27 10:16:29.782227'),(55,'personnel','0011_auto_20180326_0227','2018-03-27 10:16:30.093245'),(56,'portunes','0001_initial','2018-03-27 10:16:31.841618'),(57,'procurement','0001_initial','2018-03-27 10:16:33.603916'),(58,'procurement','0002_auto_20180323_2004','2018-03-27 10:16:33.708002'),(59,'procurement','0003_auto_20180323_2015','2018-03-27 10:16:34.313527'),(60,'procurement','0004_auto_20180323_2018','2018-03-27 10:16:34.561371'),(61,'procurement','0005_auto_20180323_2019','2018-03-27 10:16:34.671239'),(62,'project','0001_initial','2018-03-27 10:16:36.483144'),(63,'project','0002_auto_20180326_1421','2018-03-27 10:16:37.910358'),(64,'project','0003_auto_20180326_1435','2018-03-27 10:16:38.033402'),(65,'project','0004_auto_20180326_1443','2018-03-27 10:16:38.314492'),(66,'sessions','0001_initial','2018-03-27 10:16:38.380321'),(67,'sites','0001_initial','2018-03-27 10:16:38.439160'),(68,'sites','0002_alter_domain_unique','2018-03-27 10:16:38.478610');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_source`
--

DROP TABLE IF EXISTS `easy_thumbnails_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_source_storage_hash_name_481ce32d_uniq` (`storage_hash`,`name`),
  KEY `easy_thumbnails_source_storage_hash_946cbcc9` (`storage_hash`),
  KEY `easy_thumbnails_source_name_5fe0edc6` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_source`
--

LOCK TABLES `easy_thumbnails_source` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnail`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `source_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq` (`storage_hash`,`name`,`source_id`),
  KEY `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` (`source_id`),
  KEY `easy_thumbnails_thumbnail_storage_hash_f1435f49` (`storage_hash`),
  KEY `easy_thumbnails_thumbnail_name_b5882c31` (`name`),
  CONSTRAINT `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnail`
--

LOCK TABLES `easy_thumbnails_thumbnail` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnaildimensions`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnaildimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnaildimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail_id` int(11) NOT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `thumbnail_id` (`thumbnail_id`),
  CONSTRAINT `easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnaildimensions`
--

LOCK TABLES `easy_thumbnails_thumbnaildimensions` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_clipboard`
--

DROP TABLE IF EXISTS `filer_clipboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_clipboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_clipboard`
--

LOCK TABLES `filer_clipboard` WRITE;
/*!40000 ALTER TABLE `filer_clipboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_clipboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_clipboarditem`
--

DROP TABLE IF EXISTS `filer_clipboarditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_clipboarditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clipboard_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` (`clipboard_id`),
  KEY `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` (`file_id`),
  CONSTRAINT `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` FOREIGN KEY (`clipboard_id`) REFERENCES `filer_clipboard` (`id`),
  CONSTRAINT `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` FOREIGN KEY (`file_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_clipboarditem`
--

LOCK TABLES `filer_clipboarditem` WRITE;
/*!40000 ALTER TABLE `filer_clipboarditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_clipboarditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_file`
--

DROP TABLE IF EXISTS `filer_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(255) DEFAULT NULL,
  `_file_size` int(11) DEFAULT NULL,
  `sha1` varchar(40) NOT NULL,
  `has_all_mandatory_data` tinyint(1) NOT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `uploaded_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `polymorphic_ctype_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_file_folder_id_af803bbb_fk_filer_folder_id` (`folder_id`),
  KEY `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` (`polymorphic_ctype_id`),
  KEY `filer_file_owner_id_b9e32671_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `filer_file_folder_id_af803bbb_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  CONSTRAINT `filer_file_owner_id_b9e32671_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` FOREIGN KEY (`polymorphic_ctype_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_file`
--

LOCK TABLES `filer_file` WRITE;
/*!40000 ALTER TABLE `filer_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_folder`
--

DROP TABLE IF EXISTS `filer_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_folder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rght` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filer_folder_parent_id_name_bc773258_uniq` (`parent_id`,`name`),
  KEY `filer_folder_lft_2c2b69f1` (`lft`),
  KEY `filer_folder_rght_34946267` (`rght`),
  KEY `filer_folder_tree_id_b016223c` (`tree_id`),
  KEY `filer_folder_level_b631d28a` (`level`),
  KEY `filer_folder_owner_id_be530fb4_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `filer_folder_owner_id_be530fb4_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `filer_folder_parent_id_308aecda_fk_filer_folder_id` FOREIGN KEY (`parent_id`) REFERENCES `filer_folder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_folder`
--

LOCK TABLES `filer_folder` WRITE;
/*!40000 ALTER TABLE `filer_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_folderpermission`
--

DROP TABLE IF EXISTS `filer_folderpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_folderpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL,
  `everybody` tinyint(1) NOT NULL,
  `can_edit` smallint(6) DEFAULT NULL,
  `can_read` smallint(6) DEFAULT NULL,
  `can_add_children` smallint(6) DEFAULT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` (`folder_id`),
  KEY `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` (`group_id`),
  KEY `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  CONSTRAINT `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_folderpermission`
--

LOCK TABLES `filer_folderpermission` WRITE;
/*!40000 ALTER TABLE `filer_folderpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_folderpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_image`
--

DROP TABLE IF EXISTS `filer_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_image` (
  `file_ptr_id` int(11) NOT NULL,
  `_height` int(11) DEFAULT NULL,
  `_width` int(11) DEFAULT NULL,
  `date_taken` datetime(6) DEFAULT NULL,
  `default_alt_text` varchar(255) DEFAULT NULL,
  `default_caption` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `must_always_publish_author_credit` tinyint(1) NOT NULL,
  `must_always_publish_copyright` tinyint(1) NOT NULL,
  `subject_location` varchar(64) NOT NULL,
  PRIMARY KEY (`file_ptr_id`),
  CONSTRAINT `filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id` FOREIGN KEY (`file_ptr_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_image`
--

LOCK TABLES `filer_image` WRITE;
/*!40000 ALTER TABLE `filer_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_thumbnailoption`
--

DROP TABLE IF EXISTS `filer_thumbnailoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_thumbnailoption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `crop` tinyint(1) NOT NULL,
  `upscale` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_thumbnailoption`
--

LOCK TABLES `filer_thumbnailoption` WRITE;
/*!40000 ALTER TABLE `filer_thumbnailoption` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_thumbnailoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generic_positions_objectposition`
--

DROP TABLE IF EXISTS `generic_positions_objectposition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generic_positions_objectposition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `generic_positions_ob_content_type_id_a7f1fa19_fk_django_co` (`content_type_id`),
  CONSTRAINT `generic_positions_ob_content_type_id_a7f1fa19_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generic_positions_objectposition`
--

LOCK TABLES `generic_positions_objectposition` WRITE;
/*!40000 ALTER TABLE `generic_positions_objectposition` DISABLE KEYS */;
/*!40000 ALTER TABLE `generic_positions_objectposition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homepage_category`
--

DROP TABLE IF EXISTS `homepage_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homepage_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homepage_category`
--

LOCK TABLES `homepage_category` WRITE;
/*!40000 ALTER TABLE `homepage_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `homepage_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homepage_menu_item`
--

DROP TABLE IF EXISTS `homepage_menu_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homepage_menu_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `url` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `menu_type` int(11) NOT NULL,
  `top_menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `url` (`url`),
  UNIQUE KEY `icon` (`icon`),
  KEY `homepage_menu_item_top_menu_id_7f997b46_fk_homepage_menu_item_id` (`top_menu_id`),
  CONSTRAINT `homepage_menu_item_top_menu_id_7f997b46_fk_homepage_menu_item_id` FOREIGN KEY (`top_menu_id`) REFERENCES `homepage_menu_item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homepage_menu_item`
--

LOCK TABLES `homepage_menu_item` WRITE;
/*!40000 ALTER TABLE `homepage_menu_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `homepage_menu_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homepage_post`
--

DROP TABLE IF EXISTS `homepage_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homepage_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `text` longtext,
  `keywords` varchar(200) DEFAULT NULL,
  `post_image` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `keywords` (`keywords`),
  KEY `homepage_post_category_id_1f24ecf2_fk_homepage_category_id` (`category_id`),
  KEY `homepage_post_owner_id_3237d2a6_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `homepage_post_category_id_1f24ecf2_fk_homepage_category_id` FOREIGN KEY (`category_id`) REFERENCES `homepage_category` (`id`),
  CONSTRAINT `homepage_post_owner_id_3237d2a6_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homepage_post`
--

LOCK TABLES `homepage_post` WRITE;
/*!40000 ALTER TABLE `homepage_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `homepage_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homepage_setting`
--

DROP TABLE IF EXISTS `homepage_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homepage_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `value` varchar(100) DEFAULT NULL,
  `int_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homepage_setting`
--

LOCK TABLES `homepage_setting` WRITE;
/*!40000 ALTER TABLE `homepage_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `homepage_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_category`
--

DROP TABLE IF EXISTS `inventory_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `description` longtext,
  `top_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_category_top_category_id_5b59f995_fk_inventory` (`top_category_id`),
  CONSTRAINT `inventory_category_top_category_id_5b59f995_fk_inventory` FOREIGN KEY (`top_category_id`) REFERENCES `inventory_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_category`
--

LOCK TABLES `inventory_category` WRITE;
/*!40000 ALTER TABLE `inventory_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_inventory`
--

DROP TABLE IF EXISTS `inventory_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` longtext,
  `created_date` datetime(6) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_inventory_location_id_a8a0866e_fk_inventory` (`location_id`),
  CONSTRAINT `inventory_inventory_location_id_a8a0866e_fk_inventory` FOREIGN KEY (`location_id`) REFERENCES `inventory_location` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_inventory`
--

LOCK TABLES `inventory_inventory` WRITE;
/*!40000 ALTER TABLE `inventory_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_item`
--

DROP TABLE IF EXISTS `inventory_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `brand` varchar(32) DEFAULT NULL,
  `model` varchar(32) DEFAULT NULL,
  `part_number` varchar(32) DEFAULT NULL,
  `notes` longtext,
  `created_date` datetime(6) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `inventory_id` int(11) DEFAULT NULL,
  `item_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_item_category_id_44f2108d_fk_inventory_category_id` (`category_id`),
  KEY `inventory_item_inventory_id_acdc8abd_fk_inventory_inventory_id` (`inventory_id`),
  KEY `inventory_item_item_type_id_a3d5d01c_fk_inventory_itemtype_id` (`item_type_id`),
  KEY `inventory_item_user_id_f563f0c1_fk_personnel_personnel_id` (`user_id`),
  CONSTRAINT `inventory_item_category_id_44f2108d_fk_inventory_category_id` FOREIGN KEY (`category_id`) REFERENCES `inventory_category` (`id`),
  CONSTRAINT `inventory_item_inventory_id_acdc8abd_fk_inventory_inventory_id` FOREIGN KEY (`inventory_id`) REFERENCES `inventory_inventory` (`id`),
  CONSTRAINT `inventory_item_item_type_id_a3d5d01c_fk_inventory_itemtype_id` FOREIGN KEY (`item_type_id`) REFERENCES `inventory_itemtype` (`id`),
  CONSTRAINT `inventory_item_user_id_f563f0c1_fk_personnel_personnel_id` FOREIGN KEY (`user_id`) REFERENCES `personnel_personnel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_item`
--

LOCK TABLES `inventory_item` WRITE;
/*!40000 ALTER TABLE `inventory_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_item_suppliers`
--

DROP TABLE IF EXISTS `inventory_item_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_item_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inventory_item_suppliers_item_id_supplier_id_d547b1d9_uniq` (`item_id`,`supplier_id`),
  KEY `inventory_item_suppl_supplier_id_f15695b2_fk_inventory` (`supplier_id`),
  CONSTRAINT `inventory_item_suppl_supplier_id_f15695b2_fk_inventory` FOREIGN KEY (`supplier_id`) REFERENCES `inventory_supplier` (`id`),
  CONSTRAINT `inventory_item_suppliers_item_id_7febd3e7_fk_inventory_item_id` FOREIGN KEY (`item_id`) REFERENCES `inventory_item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_item_suppliers`
--

LOCK TABLES `inventory_item_suppliers` WRITE;
/*!40000 ALTER TABLE `inventory_item_suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_item_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_itemtype`
--

DROP TABLE IF EXISTS `inventory_itemtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_itemtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `code` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_itemtype`
--

LOCK TABLES `inventory_itemtype` WRITE;
/*!40000 ALTER TABLE `inventory_itemtype` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_itemtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_location`
--

DROP TABLE IF EXISTS `inventory_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` longtext,
  `phone_number1` varchar(32) DEFAULT NULL,
  `phone_number2` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_location`
--

LOCK TABLES `inventory_location` WRITE;
/*!40000 ALTER TABLE `inventory_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_log`
--

DROP TABLE IF EXISTS `inventory_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timedate` datetime(6) NOT NULL,
  `action` varchar(32) NOT NULL,
  `description` longtext,
  `item_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inventory_log_item_id_5eb0c958_fk_inventory_item_id` (`item_id`),
  KEY `inventory_log_user_id_2cc066ab_fk_personnel_personnel_id` (`user_id`),
  CONSTRAINT `inventory_log_item_id_5eb0c958_fk_inventory_item_id` FOREIGN KEY (`item_id`) REFERENCES `inventory_item` (`id`),
  CONSTRAINT `inventory_log_user_id_2cc066ab_fk_personnel_personnel_id` FOREIGN KEY (`user_id`) REFERENCES `personnel_personnel` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_log`
--

LOCK TABLES `inventory_log` WRITE;
/*!40000 ALTER TABLE `inventory_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_supplier`
--

DROP TABLE IF EXISTS `inventory_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` longtext,
  `phone_number1` varchar(32) DEFAULT NULL,
  `web` varchar(32) DEFAULT NULL,
  `notes` longtext,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_supplier`
--

LOCK TABLES `inventory_supplier` WRITE;
/*!40000 ALTER TABLE `inventory_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_menu`
--

DROP TABLE IF EXISTS `menu_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `base_url` varchar(100) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`),
  KEY `menu_menu_slug_98939c4e` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_menu`
--

LOCK TABLES `menu_menu` WRITE;
/*!40000 ALTER TABLE `menu_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_menuitem`
--

DROP TABLE IF EXISTS `menu_menuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_menuitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order` int(11) NOT NULL,
  `link_url` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `login_required` tinyint(1) NOT NULL,
  `anonymous_only` tinyint(1) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_menuitem_menu_id_f466b139_fk_menu_menu_id` (`menu_id`),
  CONSTRAINT `menu_menuitem_menu_id_f466b139_fk_menu_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `menu_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_menuitem`
--

LOCK TABLES `menu_menuitem` WRITE;
/*!40000 ALTER TABLE `menu_menuitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_menuitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnel_personnel`
--

DROP TABLE IF EXISTS `personnel_personnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personnel_personnel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `country` varchar(2),
  `nat_id` varchar(12) NOT NULL,
  `gender` int(11) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `job` varchar(30) DEFAULT NULL,
  `phone_number1` varchar(30) DEFAULT NULL,
  `phone_number2` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` longtext,
  `marital_status` int(11) NOT NULL,
  `drive_licence` int(11) NOT NULL,
  `health_status` varchar(100) DEFAULT NULL,
  `profile_picture` varchar(100),
  `user_file` varchar(100) DEFAULT NULL,
  `notes` longtext,
  `cv` longtext,
  `total_workday` int(11) NOT NULL,
  `total_workhour` int(11) NOT NULL,
  `total_dose` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `personnel_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `extra_file1` varchar(100) DEFAULT NULL,
  `extra_file2` varchar(100) DEFAULT NULL,
  `extra_file3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nat_id` (`nat_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `personnel_personnel_personnel_type_id_ceb935ac_fk_personnel` (`personnel_type_id`),
  CONSTRAINT `personnel_personnel_personnel_type_id_ceb935ac_fk_personnel` FOREIGN KEY (`personnel_type_id`) REFERENCES `personnel_personnel_type` (`id`),
  CONSTRAINT `personnel_personnel_user_id_2994bf5c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnel_personnel`
--

LOCK TABLES `personnel_personnel` WRITE;
/*!40000 ALTER TABLE `personnel_personnel` DISABLE KEYS */;
/*!40000 ALTER TABLE `personnel_personnel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnel_personnel_type`
--

DROP TABLE IF EXISTS `personnel_personnel_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personnel_personnel_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `slug` varchar(30) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `total` int(11) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnel_personnel_type`
--

LOCK TABLES `personnel_personnel_type` WRITE;
/*!40000 ALTER TABLE `personnel_personnel_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `personnel_personnel_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portunes_action`
--

DROP TABLE IF EXISTS `portunes_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portunes_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_date` datetime(6) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `action_type_id` int(11) DEFAULT NULL,
  `door_id` int(11) DEFAULT NULL,
  `identifier_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `portunes_action_action_type_id_22364aef_fk_portunes_` (`action_type_id`),
  KEY `portunes_action_door_id_59b65ff3_fk_portunes_door_id` (`door_id`),
  KEY `portunes_action_identifier_id_9566fdd6_fk_portunes_identifier_id` (`identifier_id`),
  KEY `portunes_action_user_id_05cb8e74_fk_auth_user_id` (`user_id`),
  CONSTRAINT `portunes_action_action_type_id_22364aef_fk_portunes_` FOREIGN KEY (`action_type_id`) REFERENCES `portunes_action_type` (`id`),
  CONSTRAINT `portunes_action_door_id_59b65ff3_fk_portunes_door_id` FOREIGN KEY (`door_id`) REFERENCES `portunes_door` (`id`),
  CONSTRAINT `portunes_action_identifier_id_9566fdd6_fk_portunes_identifier_id` FOREIGN KEY (`identifier_id`) REFERENCES `portunes_identifier` (`id`),
  CONSTRAINT `portunes_action_user_id_05cb8e74_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portunes_action`
--

LOCK TABLES `portunes_action` WRITE;
/*!40000 ALTER TABLE `portunes_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `portunes_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portunes_action_type`
--

DROP TABLE IF EXISTS `portunes_action_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portunes_action_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_type` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portunes_action_type`
--

LOCK TABLES `portunes_action_type` WRITE;
/*!40000 ALTER TABLE `portunes_action_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `portunes_action_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portunes_controller`
--

DROP TABLE IF EXISTS `portunes_controller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portunes_controller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `mac` varchar(17) NOT NULL,
  `ip_address` char(39) NOT NULL,
  `health` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `mac` (`mac`),
  UNIQUE KEY `ip_address` (`ip_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portunes_controller`
--

LOCK TABLES `portunes_controller` WRITE;
/*!40000 ALTER TABLE `portunes_controller` DISABLE KEYS */;
/*!40000 ALTER TABLE `portunes_controller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portunes_door`
--

DROP TABLE IF EXISTS `portunes_door`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portunes_door` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `entrance_controller_pin` int(11) NOT NULL,
  `antipassback` tinyint(1) NOT NULL,
  `enter` tinyint(1) NOT NULL,
  `description` longtext,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `entrance_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `portunes_door_entrance_id_e6f996c6_fk_portunes_controller_id` (`entrance_id`),
  CONSTRAINT `portunes_door_entrance_id_e6f996c6_fk_portunes_controller_id` FOREIGN KEY (`entrance_id`) REFERENCES `portunes_controller` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portunes_door`
--

LOCK TABLES `portunes_door` WRITE;
/*!40000 ALTER TABLE `portunes_door` DISABLE KEYS */;
/*!40000 ALTER TABLE `portunes_door` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portunes_door_group`
--

DROP TABLE IF EXISTS `portunes_door_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portunes_door_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portunes_door_group`
--

LOCK TABLES `portunes_door_group` WRITE;
/*!40000 ALTER TABLE `portunes_door_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `portunes_door_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portunes_door_group_doors`
--

DROP TABLE IF EXISTS `portunes_door_group_doors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portunes_door_group_doors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `door_group_id` int(11) NOT NULL,
  `door_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `portunes_door_group_doors_door_group_id_door_id_92584475_uniq` (`door_group_id`,`door_id`),
  KEY `portunes_door_group_doors_door_id_71479360_fk_portunes_door_id` (`door_id`),
  CONSTRAINT `portunes_door_group__door_group_id_2c70b534_fk_portunes_` FOREIGN KEY (`door_group_id`) REFERENCES `portunes_door_group` (`id`),
  CONSTRAINT `portunes_door_group_doors_door_id_71479360_fk_portunes_door_id` FOREIGN KEY (`door_id`) REFERENCES `portunes_door` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portunes_door_group_doors`
--

LOCK TABLES `portunes_door_group_doors` WRITE;
/*!40000 ALTER TABLE `portunes_door_group_doors` DISABLE KEYS */;
/*!40000 ALTER TABLE `portunes_door_group_doors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portunes_identifier`
--

DROP TABLE IF EXISTS `portunes_identifier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portunes_identifier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `key` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `identifier_type` int(11) DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portunes_identifier`
--

LOCK TABLES `portunes_identifier` WRITE;
/*!40000 ALTER TABLE `portunes_identifier` DISABLE KEYS */;
/*!40000 ALTER TABLE `portunes_identifier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portunes_permission`
--

DROP TABLE IF EXISTS `portunes_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portunes_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_date` datetime(6) DEFAULT NULL,
  `end_date` datetime(6) DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `door_id` int(11) DEFAULT NULL,
  `personnel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `portunes_permission_door_id_f883294e_fk_portunes_door_id` (`door_id`),
  KEY `portunes_permission_personnel_id_1dd80209_fk_auth_user_id` (`personnel_id`),
  CONSTRAINT `portunes_permission_door_id_f883294e_fk_portunes_door_id` FOREIGN KEY (`door_id`) REFERENCES `portunes_door` (`id`),
  CONSTRAINT `portunes_permission_personnel_id_1dd80209_fk_auth_user_id` FOREIGN KEY (`personnel_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portunes_permission`
--

LOCK TABLES `portunes_permission` WRITE;
/*!40000 ALTER TABLE `portunes_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `portunes_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procurement_currency`
--

DROP TABLE IF EXISTS `procurement_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procurement_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `short_name` varchar(5) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procurement_currency`
--

LOCK TABLES `procurement_currency` WRITE;
/*!40000 ALTER TABLE `procurement_currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `procurement_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procurement_log`
--

DROP TABLE IF EXISTS `procurement_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procurement_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timedate` datetime(6) NOT NULL,
  `action` varchar(32) NOT NULL,
  `description` longtext,
  `item_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `procurement_log_item_id_f884b78a_fk_procurement_tender_id` (`item_id`),
  KEY `procurement_log_user_id_480380be_fk_auth_user_id` (`user_id`),
  CONSTRAINT `procurement_log_item_id_f884b78a_fk_procurement_tender_id` FOREIGN KEY (`item_id`) REFERENCES `procurement_tender` (`id`),
  CONSTRAINT `procurement_log_user_id_480380be_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procurement_log`
--

LOCK TABLES `procurement_log` WRITE;
/*!40000 ALTER TABLE `procurement_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `procurement_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procurement_supplier`
--

DROP TABLE IF EXISTS `procurement_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procurement_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` longtext,
  `phone_number1` varchar(32) DEFAULT NULL,
  `web` varchar(32) DEFAULT NULL,
  `notes` longtext,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procurement_supplier`
--

LOCK TABLES `procurement_supplier` WRITE;
/*!40000 ALTER TABLE `procurement_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `procurement_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procurement_tender`
--

DROP TABLE IF EXISTS `procurement_tender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procurement_tender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `no` varchar(32) DEFAULT NULL,
  `approximate_price` double DEFAULT NULL,
  `apply_date` datetime(6) DEFAULT NULL,
  `auction_date` date DEFAULT NULL,
  `auction_time` time(6) DEFAULT NULL,
  `auction_price` double DEFAULT NULL,
  `auction_no` varchar(32) DEFAULT NULL,
  `contract_date` date DEFAULT NULL,
  `notes` longtext,
  `created_date` datetime(6) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `tender_status_id` int(11) DEFAULT NULL,
  `tender_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `procurement_tender_currency_id_e985b5e8_fk_procureme` (`currency_id`),
  KEY `procurement_tender_supplier_id_a44c2269_fk_procureme` (`supplier_id`),
  KEY `procurement_tender_tender_status_id_38bc49e1_fk_procureme` (`tender_status_id`),
  KEY `procurement_tender_tender_type_id_34a462ee_fk_procureme` (`tender_type_id`),
  KEY `procurement_tender_user_id_b4693a46_fk_auth_user_id` (`user_id`),
  CONSTRAINT `procurement_tender_currency_id_e985b5e8_fk_procureme` FOREIGN KEY (`currency_id`) REFERENCES `procurement_currency` (`id`),
  CONSTRAINT `procurement_tender_supplier_id_a44c2269_fk_procureme` FOREIGN KEY (`supplier_id`) REFERENCES `procurement_supplier` (`id`),
  CONSTRAINT `procurement_tender_tender_status_id_38bc49e1_fk_procureme` FOREIGN KEY (`tender_status_id`) REFERENCES `procurement_tenderstatus` (`id`),
  CONSTRAINT `procurement_tender_tender_type_id_34a462ee_fk_procureme` FOREIGN KEY (`tender_type_id`) REFERENCES `procurement_tendertype` (`id`),
  CONSTRAINT `procurement_tender_user_id_b4693a46_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procurement_tender`
--

LOCK TABLES `procurement_tender` WRITE;
/*!40000 ALTER TABLE `procurement_tender` DISABLE KEYS */;
/*!40000 ALTER TABLE `procurement_tender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procurement_tender_end_date`
--

DROP TABLE IF EXISTS `procurement_tender_end_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procurement_tender_end_date` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timedate` date NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `tender_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `procurement_tender_e_tender_id_de39f1ae_fk_procureme` (`tender_id`),
  CONSTRAINT `procurement_tender_e_tender_id_de39f1ae_fk_procureme` FOREIGN KEY (`tender_id`) REFERENCES `procurement_tender` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procurement_tender_end_date`
--

LOCK TABLES `procurement_tender_end_date` WRITE;
/*!40000 ALTER TABLE `procurement_tender_end_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `procurement_tender_end_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procurement_tendercontent`
--

DROP TABLE IF EXISTS `procurement_tendercontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procurement_tendercontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `quantity` double NOT NULL,
  `price` double NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `tender_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `procurement_tenderco_currency_id_56bc6faf_fk_procureme` (`currency_id`),
  KEY `procurement_tenderco_tender_id_c1c426b2_fk_procureme` (`tender_id`),
  KEY `procurement_tenderco_unit_id_15cc98f9_fk_procureme` (`unit_id`),
  CONSTRAINT `procurement_tenderco_currency_id_56bc6faf_fk_procureme` FOREIGN KEY (`currency_id`) REFERENCES `procurement_currency` (`id`),
  CONSTRAINT `procurement_tenderco_tender_id_c1c426b2_fk_procureme` FOREIGN KEY (`tender_id`) REFERENCES `procurement_tender` (`id`),
  CONSTRAINT `procurement_tenderco_unit_id_15cc98f9_fk_procureme` FOREIGN KEY (`unit_id`) REFERENCES `procurement_unit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procurement_tendercontent`
--

LOCK TABLES `procurement_tendercontent` WRITE;
/*!40000 ALTER TABLE `procurement_tendercontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `procurement_tendercontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procurement_tenderstatus`
--

DROP TABLE IF EXISTS `procurement_tenderstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procurement_tenderstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `bgcolor` varchar(20) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procurement_tenderstatus`
--

LOCK TABLES `procurement_tenderstatus` WRITE;
/*!40000 ALTER TABLE `procurement_tenderstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `procurement_tenderstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procurement_tendertype`
--

DROP TABLE IF EXISTS `procurement_tendertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procurement_tendertype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procurement_tendertype`
--

LOCK TABLES `procurement_tendertype` WRITE;
/*!40000 ALTER TABLE `procurement_tendertype` DISABLE KEYS */;
/*!40000 ALTER TABLE `procurement_tendertype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procurement_unit`
--

DROP TABLE IF EXISTS `procurement_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procurement_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `short_name` varchar(5) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procurement_unit`
--

LOCK TABLES `procurement_unit` WRITE;
/*!40000 ALTER TABLE `procurement_unit` DISABLE KEYS */;
/*!40000 ALTER TABLE `procurement_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_comment`
--

DROP TABLE IF EXISTS `project_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext,
  `date` datetime(6) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_comment_task_id_bbd7e651_fk_project_task_id` (`task_id`),
  KEY `project_comment_user_id_9c918fb5_fk_auth_user_id` (`user_id`),
  CONSTRAINT `project_comment_task_id_bbd7e651_fk_project_task_id` FOREIGN KEY (`task_id`) REFERENCES `project_task` (`id`),
  CONSTRAINT `project_comment_user_id_9c918fb5_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_comment`
--

LOCK TABLES `project_comment` WRITE;
/*!40000 ALTER TABLE `project_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_log`
--

DROP TABLE IF EXISTS `project_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timedate` datetime(6) NOT NULL,
  `action` varchar(32) NOT NULL,
  `description` longtext,
  `user_id` int(11) DEFAULT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_log_user_id_05a00c0a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `project_log_user_id_05a00c0a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_log`
--

LOCK TABLES `project_log` WRITE;
/*!40000 ALTER TABLE `project_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_project`
--

DROP TABLE IF EXISTS `project_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `description` longtext,
  `group_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `top_project_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_project_group_id_f8368922_fk_auth_group_id` (`group_id`),
  KEY `project_project_owner_id_d43b0a83_fk_auth_user_id` (`owner_id`),
  KEY `project_project_top_project_id_d20cd792_fk_project_project_id` (`top_project_id`),
  CONSTRAINT `project_project_group_id_f8368922_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `project_project_owner_id_d43b0a83_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `project_project_top_project_id_d20cd792_fk_project_project_id` FOREIGN KEY (`top_project_id`) REFERENCES `project_project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_project`
--

LOCK TABLES `project_project` WRITE;
/*!40000 ALTER TABLE `project_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_statustype`
--

DROP TABLE IF EXISTS `project_statustype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_statustype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `color` varchar(20) NOT NULL,
  `icon` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_statustype`
--

LOCK TABLES `project_statustype` WRITE;
/*!40000 ALTER TABLE `project_statustype` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_statustype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task`
--

DROP TABLE IF EXISTS `project_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `start_date` datetime(6) NOT NULL,
  `end_date` datetime(6) NOT NULL,
  `percent_done` smallint(5) unsigned DEFAULT NULL,
  `description` longtext,
  `group_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `task_type_id` int(11) DEFAULT NULL,
  `top_task_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_task_group_id_fbf57d7d_fk_auth_group_id` (`group_id`),
  KEY `project_task_owner_id_9e653de8_fk_auth_user_id` (`owner_id`),
  KEY `project_task_project_id_a8ab06ac_fk_project_project_id` (`project_id`),
  KEY `project_task_status_id_fab94135_fk_project_statustype_id` (`status_id`),
  KEY `project_task_task_type_id_c1808ad1_fk_project_tasktype_id` (`task_type_id`),
  KEY `project_task_top_task_id_4dacb77b_fk_project_task_id` (`top_task_id`),
  CONSTRAINT `project_task_group_id_fbf57d7d_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `project_task_owner_id_9e653de8_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `project_task_project_id_a8ab06ac_fk_project_project_id` FOREIGN KEY (`project_id`) REFERENCES `project_project` (`id`),
  CONSTRAINT `project_task_status_id_fab94135_fk_project_statustype_id` FOREIGN KEY (`status_id`) REFERENCES `project_statustype` (`id`),
  CONSTRAINT `project_task_task_type_id_c1808ad1_fk_project_tasktype_id` FOREIGN KEY (`task_type_id`) REFERENCES `project_tasktype` (`id`),
  CONSTRAINT `project_task_top_task_id_4dacb77b_fk_project_task_id` FOREIGN KEY (`top_task_id`) REFERENCES `project_task` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task`
--

LOCK TABLES `project_task` WRITE;
/*!40000 ALTER TABLE `project_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_tasktype`
--

DROP TABLE IF EXISTS `project_tasktype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_tasktype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `color` varchar(20) NOT NULL,
  `icon` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_tasktype`
--

LOCK TABLES `project_tasktype` WRITE;
/*!40000 ALTER TABLE `project_tasktype` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_tasktype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-27 13:21:22
