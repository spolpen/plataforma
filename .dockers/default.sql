-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: plataforma
-- ------------------------------------------------------
-- Server version	5.5.54-0+deb8u1

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
-- Table structure for table `elgg_access_collection_membership`
--

DROP TABLE IF EXISTS `elgg_access_collection_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_access_collection_membership` (
  `user_guid` int(11) NOT NULL,
  `access_collection_id` int(11) NOT NULL,
  PRIMARY KEY (`user_guid`,`access_collection_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_access_collection_membership`
--

LOCK TABLES `elgg_access_collection_membership` WRITE;
/*!40000 ALTER TABLE `elgg_access_collection_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_access_collection_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_access_collections`
--

DROP TABLE IF EXISTS `elgg_access_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_access_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_access_collections`
--

LOCK TABLES `elgg_access_collections` WRITE;
/*!40000 ALTER TABLE `elgg_access_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_access_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_annotations`
--

DROP TABLE IF EXISTS `elgg_annotations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_annotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_annotations`
--

LOCK TABLES `elgg_annotations` WRITE;
/*!40000 ALTER TABLE `elgg_annotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_annotations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_api_users`
--

DROP TABLE IF EXISTS `elgg_api_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_api_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_guid` bigint(20) unsigned DEFAULT NULL,
  `api_key` varchar(40) DEFAULT NULL,
  `secret` varchar(40) NOT NULL,
  `active` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_key` (`api_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_api_users`
--

LOCK TABLES `elgg_api_users` WRITE;
/*!40000 ALTER TABLE `elgg_api_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_api_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_config`
--

DROP TABLE IF EXISTS `elgg_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `site_guid` int(11) NOT NULL,
  PRIMARY KEY (`name`,`site_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_config`
--

LOCK TABLES `elgg_config` WRITE;
/*!40000 ALTER TABLE `elgg_config` DISABLE KEYS */;
INSERT INTO `elgg_config` VALUES ('view','s:7:\"default\";',1),('language','s:2:\"en\";',1),('default_access','s:1:\"2\";',1),('allow_registration','b:1;',1),('walled_garden','b:0;',1),('allow_user_default_access','s:0:\"\";',1),('default_limit','i:10;',1),('search_ft_min_word_len','s:1:\"4\";',1),('search_ft_max_word_len','s:2:\"84\";',1);
/*!40000 ALTER TABLE `elgg_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_datalists`
--

DROP TABLE IF EXISTS `elgg_datalists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_datalists` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_datalists`
--

LOCK TABLES `elgg_datalists` WRITE;
/*!40000 ALTER TABLE `elgg_datalists` DISABLE KEYS */;
INSERT INTO `elgg_datalists` VALUES ('installed','1488810965'),('dataroot','/data/'),('default_site','1'),('version','2015041400'),('simplecache_enabled','1'),('system_cache_enabled','1'),('simplecache_lastupdate','1488811530'),('path','/app/'),('processed_upgrades','a:62:{i:0;s:14:\"2008100701.php\";i:1;s:14:\"2008101303.php\";i:2;s:14:\"2009022701.php\";i:3;s:14:\"2009041701.php\";i:4;s:14:\"2009070101.php\";i:5;s:14:\"2009102801.php\";i:6;s:14:\"2010010501.php\";i:7;s:14:\"2010033101.php\";i:8;s:14:\"2010040201.php\";i:9;s:14:\"2010052601.php\";i:10;s:14:\"2010060101.php\";i:11;s:14:\"2010060401.php\";i:12;s:14:\"2010061501.php\";i:13;s:14:\"2010062301.php\";i:14;s:14:\"2010062302.php\";i:15;s:14:\"2010070301.php\";i:16;s:14:\"2010071001.php\";i:17;s:14:\"2010071002.php\";i:18;s:14:\"2010111501.php\";i:19;s:14:\"2010121601.php\";i:20;s:14:\"2010121602.php\";i:21;s:14:\"2010121701.php\";i:22;s:14:\"2010123101.php\";i:23;s:14:\"2011010101.php\";i:24;s:61:\"2011021800-1.8_svn-goodbye_walled_garden-083121a656d06894.php\";i:25;s:61:\"2011022000-1.8_svn-custom_profile_fields-390ac967b0bb5665.php\";i:26;s:60:\"2011030700-1.8_svn-blog_status_metadata-4645225d7b440876.php\";i:27;s:51:\"2011031300-1.8_svn-twitter_api-12b832a5a7a3e1bd.php\";i:28;s:57:\"2011031600-1.8_svn-datalist_grows_up-0b8aec5a55cc1e1c.php\";i:29;s:61:\"2011032000-1.8_svn-widgets_arent_plugins-61836261fa280a5c.php\";i:30;s:59:\"2011032200-1.8_svn-admins_like_widgets-7f19d2783c1680d3.php\";i:31;s:14:\"2011052801.php\";i:32;s:60:\"2011061200-1.8b1-sites_need_a_site_guid-6d9dcbf46c0826cc.php\";i:33;s:62:\"2011092500-1.8.0.1-forum_reply_river_view-5758ce8d86ac56ce.php\";i:34;s:54:\"2011123100-1.8.2-fix_friend_river-b17e7ff8345c2269.php\";i:35;s:53:\"2011123101-1.8.2-fix_blog_status-b14c2a0e7b9e7d55.php\";i:36;s:50:\"2012012000-1.8.3-ip_in_syslog-87fe0f068cf62428.php\";i:37;s:50:\"2012012100-1.8.3-system_cache-93100e7d55a24a11.php\";i:38;s:59:\"2012041800-1.8.3-dont_filter_passwords-c0ca4a18b38ae2bc.php\";i:39;s:58:\"2012041801-1.8.3-multiple_user_tokens-852225f7fd89f6c5.php\";i:40;s:59:\"2013010200-1.9.0_dev-river_target_guid-66cbcae057cfa3ad.php\";i:41;s:62:\"2013010400-1.9.0_dev-comments_to_entities-faba94768b055b08.php\";i:42;s:61:\"2013021000-1.9.0_dev-web_services_plugin-85a61b4884b9b9e3.php\";i:43;s:60:\"2013022000-1.9.0-datadir_dates_to_guids-efb02ff11b9d6444.php\";i:44;s:59:\"2013030600-1.8.13-update_user_location-8999eb8bf1bdd9a3.php\";i:45;s:62:\"2013051700-1.8.15-add_missing_group_index-52a63a3a3ffaced2.php\";i:46;s:53:\"2013052900-1.8.15-ipv6_in_syslog-f5c2cc0196e9e731.php\";i:47;s:50:\"2013060900-1.8.15-site_secret-404fc165cf9e0ac9.php\";i:48;s:63:\"2013062200-1.9.0_dev-new_remember_me_table-da1bfc6f36c7952e.php\";i:49;s:54:\"2013062700-1.9.0_dev-add_db_queue-e6af82afc6d3eee3.php\";i:50;s:50:\"2014012000-1.8.18-remember_me-9a8a433685cf7be9.php\";i:51;s:61:\"2014031100-1.9.0_dev-elgg_upgrade_object-5577af53c93abd1a.php\";i:52;s:55:\"2014032200-1.9.0_dev-tinymce_to_ck-bbd2daa1912deaef.php\";i:53;s:60:\"2014042500-1.9.0_dev-site-notifications-0aae171afb7a00d8.php\";i:54;s:61:\"2014050600-1.9.0_dev-replies_to_entities-094ea0e36bc027d3.php\";i:55;s:60:\"2014070600-1.9.0_rc.3-river_enabled_col-bef9e6f0533ac338.php\";i:56;s:60:\"2014090900-1.9.0-fix_processed_upgrades-183ad189c71872d8.php\";i:57;s:62:\"2014111600-1.9.4-recheck_comments_upgrade-9da270072a5b0cad.php\";i:58;s:58:\"2014111800-1.10.0-add_new_hash_column-536087bbb2dbc82b.php\";i:59;s:56:\"2014130300-1.10.0-add_default_limit-fcef9e7ce01e26a4.php\";i:60;s:62:\"2015031300-1.11.0_dev-comment-access-sync-50c9764e5845315c.php\";i:61;s:59:\"2015041400-1.11.0_dev-trim_metastrings-d9a9fdfa28a981a3.php\";}'),('admin_registered','1'),('__site_secret__','z8wXKeQIXalX0REo-OGIM4IPfa9CVPv_');
/*!40000 ALTER TABLE `elgg_datalists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entities`
--

DROP TABLE IF EXISTS `elgg_entities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_entities` (
  `guid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` int(11) DEFAULT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `container_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `time_updated` int(11) NOT NULL,
  `last_action` int(11) NOT NULL DEFAULT '0',
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`guid`),
  KEY `type` (`type`),
  KEY `subtype` (`subtype`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`),
  KEY `container_guid` (`container_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `time_updated` (`time_updated`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_entities`
--

LOCK TABLES `elgg_entities` WRITE;
/*!40000 ALTER TABLE `elgg_entities` DISABLE KEYS */;
INSERT INTO `elgg_entities` VALUES (1,'site',0,0,1,0,2,1488810965,1488810965,1488810965,'yes'),(2,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(3,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(4,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(5,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(6,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(7,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(8,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(9,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(10,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(11,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(12,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(13,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(14,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(15,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(16,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(17,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(18,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(19,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(20,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(21,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(22,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(23,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(24,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(25,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(26,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(27,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(28,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(29,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(30,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(31,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(32,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(33,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(34,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(35,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(36,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(37,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(38,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(39,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(40,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(41,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(42,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(43,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(44,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(45,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(46,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(47,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(48,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(49,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(50,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(51,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(52,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(53,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(54,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(55,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(56,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(57,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(58,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(59,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(60,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(61,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(62,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(63,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(64,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(65,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(66,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(67,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(68,'object',1,1,1,1,2,1488810965,1488810965,1488810965,'yes'),(69,'user',0,0,1,0,2,1488810986,1488810986,1488810986,'yes'),(70,'object',3,69,1,69,0,1488810986,1488810986,1488810986,'yes'),(71,'object',3,69,1,69,0,1488810986,1488810986,1488810986,'yes'),(72,'object',3,69,1,69,0,1488810986,1488810986,1488810986,'yes'),(73,'object',3,69,1,69,0,1488810986,1488810986,1488810986,'yes'),(74,'object',3,69,1,69,0,1488810986,1488810986,1488810986,'yes');
/*!40000 ALTER TABLE `elgg_entities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entity_relationships`
--

DROP TABLE IF EXISTS `elgg_entity_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_entity_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid_one` bigint(20) unsigned NOT NULL,
  `relationship` varchar(50) NOT NULL,
  `guid_two` bigint(20) unsigned NOT NULL,
  `time_created` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guid_one` (`guid_one`,`relationship`,`guid_two`),
  KEY `relationship` (`relationship`),
  KEY `guid_two` (`guid_two`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_entity_relationships`
--

LOCK TABLES `elgg_entity_relationships` WRITE;
/*!40000 ALTER TABLE `elgg_entity_relationships` DISABLE KEYS */;
INSERT INTO `elgg_entity_relationships` VALUES (30,57,'active_plugin',1,1488811155),(2,6,'active_plugin',1,1488810966),(3,7,'active_plugin',1,1488810966),(4,9,'active_plugin',1,1488810966),(5,18,'active_plugin',1,1488810966),(6,23,'active_plugin',1,1488810966),(7,25,'active_plugin',1,1488810966),(8,28,'active_plugin',1,1488810966),(9,30,'active_plugin',1,1488810966),(10,31,'active_plugin',1,1488810966),(11,33,'active_plugin',1,1488810966),(12,34,'active_plugin',1,1488810966),(13,36,'active_plugin',1,1488810966),(14,37,'active_plugin',1,1488810966),(15,39,'active_plugin',1,1488810966),(16,40,'active_plugin',1,1488810966),(17,41,'active_plugin',1,1488810966),(18,42,'active_plugin',1,1488810966),(19,43,'active_plugin',1,1488810966),(20,44,'active_plugin',1,1488810966),(21,46,'active_plugin',1,1488810966),(22,50,'active_plugin',1,1488810966),(23,60,'active_plugin',1,1488810966),(24,61,'active_plugin',1,1488810966),(25,66,'active_plugin',1,1488810966),(26,68,'active_plugin',1,1488810966),(27,69,'member_of_site',1,1488810986),(28,3,'active_plugin',1,1488811135),(29,53,'active_plugin',1,1488811141),(31,62,'active_plugin',1,1488811163),(32,63,'active_plugin',1,1488811167),(33,56,'active_plugin',1,1488811173),(34,51,'active_plugin',1,1488811179),(35,55,'active_plugin',1,1488811183),(36,58,'active_plugin',1,1488811185),(37,59,'active_plugin',1,1488811188),(38,48,'active_plugin',1,1488811198),(39,27,'active_plugin',1,1488811227),(40,26,'active_plugin',1,1488811230),(41,24,'active_plugin',1,1488811386),(42,20,'active_plugin',1,1488811392),(43,22,'active_plugin',1,1488811397),(44,19,'active_plugin',1,1488811403),(45,16,'active_plugin',1,1488811410),(46,14,'active_plugin',1,1488811416),(47,8,'active_plugin',1,1488811424),(48,11,'active_plugin',1,1488811429),(49,10,'active_plugin',1,1488811439),(50,5,'active_plugin',1,1488811460),(51,49,'active_plugin',1,1488811487),(52,47,'active_plugin',1,1488811500),(53,4,'active_plugin',1,1488811504),(54,45,'active_plugin',1,1488811509);
/*!40000 ALTER TABLE `elgg_entity_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_entity_subtypes`
--

DROP TABLE IF EXISTS `elgg_entity_subtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_entity_subtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`subtype`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_entity_subtypes`
--

LOCK TABLES `elgg_entity_subtypes` WRITE;
/*!40000 ALTER TABLE `elgg_entity_subtypes` DISABLE KEYS */;
INSERT INTO `elgg_entity_subtypes` VALUES (1,'object','plugin','ElggPlugin'),(2,'object','file','ElggFile'),(3,'object','widget','ElggWidget'),(4,'object','comment','ElggComment'),(5,'object','elgg_upgrade','ElggUpgrade'),(6,'object','blog','ElggBlog'),(7,'object','discussion_reply','ElggDiscussionReply'),(8,'object','thewire','ElggWire'),(9,'object','album','TidypicsAlbum'),(10,'object','image','TidypicsImage'),(11,'object','tidypics_batch','TidypicsBatch'),(12,'object','site_notification','SiteNotification'),(13,'object','group_tools_group_mail','GroupMail'),(14,'object','admin_notice',''),(15,'object','assembly','ElggAssembly'),(16,'object','decision','CrudObject'),(17,'object','proposal','CrudObject');
/*!40000 ALTER TABLE `elgg_entity_subtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_geocode_cache`
--

DROP TABLE IF EXISTS `elgg_geocode_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_geocode_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(128) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `long` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `location` (`location`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_geocode_cache`
--

LOCK TABLES `elgg_geocode_cache` WRITE;
/*!40000 ALTER TABLE `elgg_geocode_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_geocode_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_groups_entity`
--

DROP TABLE IF EXISTS `elgg_groups_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_groups_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `name` (`name`(50)),
  KEY `description` (`description`(50)),
  FULLTEXT KEY `name_2` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_groups_entity`
--

LOCK TABLES `elgg_groups_entity` WRITE;
/*!40000 ALTER TABLE `elgg_groups_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_groups_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_hmac_cache`
--

DROP TABLE IF EXISTS `elgg_hmac_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_hmac_cache` (
  `hmac` varchar(255) NOT NULL,
  `ts` int(11) NOT NULL,
  PRIMARY KEY (`hmac`),
  KEY `ts` (`ts`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_hmac_cache`
--

LOCK TABLES `elgg_hmac_cache` WRITE;
/*!40000 ALTER TABLE `elgg_hmac_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_hmac_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_metadata`
--

DROP TABLE IF EXISTS `elgg_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_metadata`
--

LOCK TABLES `elgg_metadata` WRITE;
/*!40000 ALTER TABLE `elgg_metadata` DISABLE KEYS */;
INSERT INTO `elgg_metadata` VALUES (1,1,1,2,'text',0,2,1488810965,'yes'),(2,69,3,4,'text',69,2,1488810986,'yes'),(3,69,5,4,'text',0,2,1488810986,'yes'),(4,69,6,7,'text',0,2,1488810986,'yes');
/*!40000 ALTER TABLE `elgg_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_metastrings`
--

DROP TABLE IF EXISTS `elgg_metastrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_metastrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `string` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `string` (`string`(50))
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_metastrings`
--

LOCK TABLES `elgg_metastrings` WRITE;
/*!40000 ALTER TABLE `elgg_metastrings` DISABLE KEYS */;
INSERT INTO `elgg_metastrings` VALUES (1,'email'),(2,'noreply@develplataforma.org'),(3,'notification:method:email'),(4,'1'),(5,'validated'),(6,'validated_method'),(7,'admin_user'),(8,'toId'),(9,'69'),(10,'readYet'),(11,'0'),(12,'msg'),(13,'admin_notice_id'),(14,'categories_admin_notice_no_categories');
/*!40000 ALTER TABLE `elgg_metastrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_objects_entity`
--

DROP TABLE IF EXISTS `elgg_objects_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_objects_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`guid`),
  FULLTEXT KEY `title` (`title`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_objects_entity`
--

LOCK TABLES `elgg_objects_entity` WRITE;
/*!40000 ALTER TABLE `elgg_objects_entity` DISABLE KEYS */;
INSERT INTO `elgg_objects_entity` VALUES (2,'aalborg_theme',''),(3,'analytics',''),(4,'assemblies',''),(5,'au_subgroups',''),(6,'blog',''),(7,'bookmarks',''),(8,'categories',''),(9,'ckeditor',''),(10,'comment_tracker',''),(11,'crud',''),(12,'custom_index',''),(13,'custom_index_widgets',''),(14,'dashboard',''),(15,'dbvalidator',''),(16,'developers',''),(17,'diagnostics',''),(18,'dokuwiki',''),(19,'elgg_recaptcha',''),(20,'embed',''),(21,'export_users_csv',''),(22,'externalpages',''),(23,'file',''),(24,'file_tools',''),(25,'garbagecollector',''),(26,'group_operators',''),(27,'group_tools',''),(28,'groups',''),(29,'honeypot',''),(30,'htmlawed',''),(31,'invitefriends',''),(32,'legacy_urls',''),(33,'likes',''),(34,'logbrowser',''),(35,'login_as',''),(36,'logrotate',''),(37,'members',''),(38,'mentions',''),(39,'messageboard',''),(40,'messages',''),(41,'metatags',''),(42,'notifications',''),(43,'pages',''),(44,'profile',''),(45,'proposals',''),(46,'reportedcontent',''),(47,'rm_group_autosubscription',''),(48,'rm_group_default_fields',''),(49,'rm_group_reports',''),(50,'search',''),(51,'site_notifications',''),(52,'somenergia-customization',''),(53,'somenergia-theme',''),(54,'somenergia_calendar',''),(55,'somenergia_drive',''),(56,'somenergia_index',''),(57,'somenergia_translations',''),(58,'spam_login_filter',''),(59,'tagcloud',''),(60,'thewire',''),(61,'threads',''),(62,'tidypics',''),(63,'tracker',''),(64,'twitter_api',''),(65,'upgrade-tools',''),(66,'uservalidationbyemail',''),(67,'web_services',''),(68,'zaudio',''),(70,'',''),(71,'',''),(72,'',''),(73,'',''),(74,'','');
/*!40000 ALTER TABLE `elgg_objects_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_private_settings`
--

DROP TABLE IF EXISTS `elgg_private_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_private_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_guid` (`entity_guid`,`name`),
  KEY `name` (`name`),
  KEY `value` (`value`(50))
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_private_settings`
--

LOCK TABLES `elgg_private_settings` WRITE;
/*!40000 ALTER TABLE `elgg_private_settings` DISABLE KEYS */;
INSERT INTO `elgg_private_settings` VALUES (1,2,'elgg:internal:priority','64'),(2,3,'elgg:internal:priority','1'),(3,4,'elgg:internal:priority','45'),(4,5,'elgg:internal:priority','24'),(5,6,'elgg:internal:priority','2'),(6,7,'elgg:internal:priority','3'),(7,8,'elgg:internal:priority','4'),(8,9,'elgg:internal:priority','5'),(9,10,'elgg:internal:priority','6'),(10,11,'elgg:internal:priority','7'),(11,12,'elgg:internal:priority','8'),(12,13,'elgg:internal:priority','9'),(13,14,'elgg:internal:priority','10'),(14,15,'elgg:internal:priority','11'),(15,16,'elgg:internal:priority','12'),(16,17,'elgg:internal:priority','13'),(17,18,'elgg:internal:priority','22'),(18,19,'elgg:internal:priority','14'),(19,20,'elgg:internal:priority','15'),(20,21,'elgg:internal:priority','16'),(21,22,'elgg:internal:priority','17'),(22,23,'elgg:internal:priority','18'),(23,24,'elgg:internal:priority','19'),(24,25,'elgg:internal:priority','20'),(25,26,'elgg:internal:priority','25'),(26,27,'elgg:internal:priority','23'),(27,28,'elgg:internal:priority','21'),(28,29,'elgg:internal:priority','26'),(29,30,'elgg:internal:priority','27'),(30,31,'elgg:internal:priority','28'),(31,32,'elgg:internal:priority','29'),(32,33,'elgg:internal:priority','30'),(33,34,'elgg:internal:priority','31'),(34,35,'elgg:internal:priority','32'),(35,36,'elgg:internal:priority','33'),(36,37,'elgg:internal:priority','34'),(37,38,'elgg:internal:priority','35'),(38,39,'elgg:internal:priority','36'),(39,40,'elgg:internal:priority','37'),(40,41,'elgg:internal:priority','38'),(41,42,'elgg:internal:priority','39'),(42,43,'elgg:internal:priority','40'),(43,44,'elgg:internal:priority','41'),(44,45,'elgg:internal:priority','42'),(45,46,'elgg:internal:priority','43'),(46,47,'elgg:internal:priority','44'),(47,48,'elgg:internal:priority','46'),(48,49,'elgg:internal:priority','47'),(49,50,'elgg:internal:priority','48'),(50,51,'elgg:internal:priority','49'),(51,52,'elgg:internal:priority','67'),(52,53,'elgg:internal:priority','66'),(53,54,'elgg:internal:priority','50'),(54,55,'elgg:internal:priority','51'),(55,56,'elgg:internal:priority','52'),(56,57,'elgg:internal:priority','65'),(57,58,'elgg:internal:priority','53'),(58,59,'elgg:internal:priority','54'),(59,60,'elgg:internal:priority','55'),(60,61,'elgg:internal:priority','56'),(61,62,'elgg:internal:priority','57'),(62,63,'elgg:internal:priority','58'),(63,64,'elgg:internal:priority','59'),(64,65,'elgg:internal:priority','60'),(65,66,'elgg:internal:priority','61'),(66,67,'elgg:internal:priority','62'),(67,68,'elgg:internal:priority','63'),(68,60,'limit','140'),(69,70,'handler','control_panel'),(70,70,'context','admin'),(71,70,'column','1'),(72,70,'order','0'),(73,71,'handler','admin_welcome'),(74,71,'context','admin'),(75,71,'order','10'),(76,71,'column','1'),(77,72,'handler','online_users'),(78,72,'context','admin'),(79,72,'column','2'),(80,72,'order','0'),(81,73,'handler','new_users'),(82,73,'context','admin'),(83,73,'order','10'),(84,73,'column','2'),(85,74,'handler','content_stats'),(86,74,'context','admin'),(87,74,'order','20'),(88,74,'column','2'),(89,62,'tagging',''),(90,62,'restrict_tagging',''),(91,62,'view_count','1'),(92,62,'uploader','1'),(93,62,'exif',''),(94,62,'download_link','1'),(95,62,'slideshow',''),(96,62,'maxfilesize','5'),(97,62,'image_lib','GD'),(98,62,'img_river_view','batch'),(99,62,'album_river_view','cover'),(100,62,'river_comments_thumbnails','none'),(101,62,'river_thumbnails_size','tiny'),(102,62,'notify_interval','86400'),(103,62,'client_resizing',''),(104,62,'remove_exif',''),(105,62,'client_image_width','2000'),(106,62,'client_image_height','2000'),(107,62,'image_sizes','a:9:{s:16:\"tiny_image_width\";i:60;s:17:\"tiny_image_height\";i:60;s:17:\"tiny_image_square\";b:1;s:17:\"small_image_width\";i:153;s:18:\"small_image_height\";i:153;s:18:\"small_image_square\";b:1;s:17:\"large_image_width\";i:600;s:18:\"large_image_height\";i:600;s:18:\"large_image_square\";b:0;}'),(108,58,'protected_pages','register'),(109,19,'version','20150919'),(110,5,'version','20150912');
/*!40000 ALTER TABLE `elgg_private_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_queue`
--

DROP TABLE IF EXISTS `elgg_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `data` mediumblob NOT NULL,
  `timestamp` int(11) NOT NULL,
  `worker` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `retrieve` (`timestamp`,`worker`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_queue`
--

LOCK TABLES `elgg_queue` WRITE;
/*!40000 ALTER TABLE `elgg_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_river`
--

DROP TABLE IF EXISTS `elgg_river`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_river` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(8) NOT NULL,
  `subtype` varchar(32) NOT NULL,
  `action_type` varchar(32) NOT NULL,
  `access_id` int(11) NOT NULL,
  `view` text NOT NULL,
  `subject_guid` int(11) NOT NULL,
  `object_guid` int(11) NOT NULL,
  `target_guid` int(11) NOT NULL,
  `annotation_id` int(11) NOT NULL,
  `posted` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `action_type` (`action_type`),
  KEY `access_id` (`access_id`),
  KEY `subject_guid` (`subject_guid`),
  KEY `object_guid` (`object_guid`),
  KEY `target_guid` (`target_guid`),
  KEY `annotation_id` (`annotation_id`),
  KEY `posted` (`posted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_river`
--

LOCK TABLES `elgg_river` WRITE;
/*!40000 ALTER TABLE `elgg_river` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_river` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_sites_entity`
--

DROP TABLE IF EXISTS `elgg_sites_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_sites_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`guid`),
  UNIQUE KEY `url` (`url`),
  FULLTEXT KEY `name` (`name`,`description`,`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_sites_entity`
--

LOCK TABLES `elgg_sites_entity` WRITE;
/*!40000 ALTER TABLE `elgg_sites_entity` DISABLE KEYS */;
INSERT INTO `elgg_sites_entity` VALUES (1,'Plataforma','','http://localhost:8000/');
/*!40000 ALTER TABLE `elgg_sites_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_system_log`
--

DROP TABLE IF EXISTS `elgg_system_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_system_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `object_class` varchar(50) NOT NULL,
  `object_type` varchar(50) NOT NULL,
  `object_subtype` varchar(50) NOT NULL,
  `event` varchar(50) NOT NULL,
  `performed_by_guid` int(11) NOT NULL,
  `owner_guid` int(11) NOT NULL,
  `access_id` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  `time_created` int(11) NOT NULL,
  `ip_address` varchar(46) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `object_class` (`object_class`),
  KEY `object_type` (`object_type`),
  KEY `object_subtype` (`object_subtype`),
  KEY `event` (`event`),
  KEY `performed_by_guid` (`performed_by_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `river_key` (`object_type`,`object_subtype`,`event`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_system_log`
--

LOCK TABLES `elgg_system_log` WRITE;
/*!40000 ALTER TABLE `elgg_system_log` DISABLE KEYS */;
INSERT INTO `elgg_system_log` VALUES (1,2,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(2,3,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(3,4,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(4,5,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(5,6,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(6,7,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(7,8,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(8,9,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(9,10,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(10,11,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(11,12,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(12,13,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(13,14,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(14,15,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(15,16,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(16,17,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(17,18,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(18,19,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(19,20,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(20,21,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(21,22,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(22,23,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(23,24,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(24,25,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(25,26,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(26,27,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(27,28,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(28,29,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(29,30,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(30,31,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(31,32,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(32,33,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(33,34,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(34,35,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(35,36,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(36,37,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(37,38,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(38,39,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(39,40,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(40,41,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(41,42,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(42,43,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(43,44,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(44,45,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(45,46,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(46,47,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(47,48,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(48,49,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(49,50,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(50,51,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(51,52,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(52,53,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(53,54,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(54,55,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(55,56,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(56,57,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(57,58,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(58,59,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(59,60,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(60,61,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(61,62,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(62,63,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(63,64,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(64,65,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(65,66,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(66,67,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(67,68,'ElggPlugin','object','plugin','create',0,1,2,'yes',1488810965,'172.17.0.1'),(68,1,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(69,2,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(70,3,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(71,4,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(72,5,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(73,6,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(74,7,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(75,8,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(76,9,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(77,10,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(78,11,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(79,12,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(80,13,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(81,14,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(82,15,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(83,16,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(84,17,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(85,18,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(86,19,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(87,20,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(88,21,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(89,22,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(90,23,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(91,24,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(92,25,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(93,26,'ElggRelationship','relationship','active_plugin','create',0,0,2,'yes',1488810966,'172.17.0.1'),(94,27,'ElggRelationship','relationship','member_of_site','create',0,0,2,'yes',1488810986,'172.17.0.1'),(95,69,'ElggUser','user','','create',0,0,2,'yes',1488810986,'172.17.0.1'),(96,2,'ElggMetadata','metadata','notification:method:email','create',0,69,2,'yes',1488810986,'172.17.0.1'),(97,70,'ElggWidget','object','widget','create',0,69,2,'yes',1488810986,'172.17.0.1'),(98,71,'ElggWidget','object','widget','create',0,69,2,'yes',1488810986,'172.17.0.1'),(99,72,'ElggWidget','object','widget','create',0,69,2,'yes',1488810986,'172.17.0.1'),(100,73,'ElggWidget','object','widget','create',0,69,2,'yes',1488810986,'172.17.0.1'),(101,74,'ElggWidget','object','widget','create',0,69,2,'yes',1488810986,'172.17.0.1'),(102,69,'ElggUser','user','','make_admin',0,0,2,'yes',1488810986,'172.17.0.1'),(103,3,'ElggMetadata','metadata','validated','create',0,0,2,'yes',1488810986,'172.17.0.1'),(104,4,'ElggMetadata','metadata','validated_method','create',0,0,2,'yes',1488810986,'172.17.0.1'),(105,69,'ElggUser','user','','login:before',0,0,2,'yes',1488810986,'172.17.0.1'),(106,69,'ElggUser','user','','login',69,0,2,'yes',1488810986,'172.17.0.1'),(107,69,'ElggUser','user','','login:after',69,0,2,'yes',1488810986,'172.17.0.1');
/*!40000 ALTER TABLE `elgg_system_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_apisessions`
--

DROP TABLE IF EXISTS `elgg_users_apisessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_users_apisessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `token` varchar(40) DEFAULT NULL,
  `expires` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_guid` (`user_guid`,`site_guid`),
  KEY `token` (`token`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_users_apisessions`
--

LOCK TABLES `elgg_users_apisessions` WRITE;
/*!40000 ALTER TABLE `elgg_users_apisessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_users_apisessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_entity`
--

DROP TABLE IF EXISTS `elgg_users_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_users_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `username` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT 'Legacy password hashes',
  `salt` varchar(8) NOT NULL DEFAULT '' COMMENT 'Legacy password salts',
  `password_hash` varchar(255) NOT NULL DEFAULT '',
  `email` text NOT NULL,
  `language` varchar(6) NOT NULL DEFAULT '',
  `banned` enum('yes','no') NOT NULL DEFAULT 'no',
  `admin` enum('yes','no') NOT NULL DEFAULT 'no',
  `last_action` int(11) NOT NULL DEFAULT '0',
  `prev_last_action` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `prev_last_login` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  UNIQUE KEY `username` (`username`),
  KEY `password` (`password`),
  KEY `email` (`email`(50)),
  KEY `last_action` (`last_action`),
  KEY `last_login` (`last_login`),
  KEY `admin` (`admin`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `name_2` (`name`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_users_entity`
--

LOCK TABLES `elgg_users_entity` WRITE;
/*!40000 ALTER TABLE `elgg_users_entity` DISABLE KEYS */;
INSERT INTO `elgg_users_entity` VALUES (69,'Admin','admin','','','$2y$10$72wjlnVfbMSGL8fF4yqhfuRMnn0mIm4ab/0T7zlmhUpOHqk.yUwG6','admin@plataforma.org','en','no','yes',1488811542,1488811542,1488810986,0);
/*!40000 ALTER TABLE `elgg_users_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_remember_me_cookies`
--

DROP TABLE IF EXISTS `elgg_users_remember_me_cookies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_users_remember_me_cookies` (
  `code` varchar(32) NOT NULL,
  `guid` bigint(20) unsigned NOT NULL,
  `timestamp` int(11) unsigned NOT NULL,
  PRIMARY KEY (`code`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_users_remember_me_cookies`
--

LOCK TABLES `elgg_users_remember_me_cookies` WRITE;
/*!40000 ALTER TABLE `elgg_users_remember_me_cookies` DISABLE KEYS */;
/*!40000 ALTER TABLE `elgg_users_remember_me_cookies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elgg_users_sessions`
--

DROP TABLE IF EXISTS `elgg_users_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elgg_users_sessions` (
  `session` varchar(255) NOT NULL,
  `ts` int(11) unsigned NOT NULL DEFAULT '0',
  `data` mediumblob,
  PRIMARY KEY (`session`),
  KEY `ts` (`ts`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elgg_users_sessions`
--

LOCK TABLES `elgg_users_sessions` WRITE;
/*!40000 ALTER TABLE `elgg_users_sessions` DISABLE KEYS */;
INSERT INTO `elgg_users_sessions` VALUES ('ifd7qnt9n1s35769vht1qq3o44',1488811542,'_sf2_attributes|a:3:{s:4:\"guid\";i:69;s:3:\"msg\";a:0:{}s:14:\"__elgg_session\";s:22:\"wbiPFyd3VjAqR5pkk1HWdM\";}_sf2_flashes|a:0:{}_sf2_meta|a:3:{s:1:\"u\";i:1488811542;s:1:\"c\";i:1488810986;s:1:\"l\";s:1:\"0\";}');
/*!40000 ALTER TABLE `elgg_users_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'plataforma'
--

--
-- Dumping routines for database 'plataforma'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-06 15:46:39
