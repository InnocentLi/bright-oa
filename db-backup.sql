-- MySQL dump 10.13  Distrib 8.0.28, for macos12.2 (arm64)
--
-- Host: database-1.cnb34ffzvsm7.ap-northeast-1.rds.amazonaws.com    Database: shopdb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` varchar(64) NOT NULL,
  `entity_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户\\商店\\订单的id',
  `address_line1` varchar(100) DEFAULT NULL,
  `address_line2` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `postal_code` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `prefecture` varchar(100) DEFAULT NULL,
  `ward` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `building_and_unit_number` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entity_id` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES ('40288b90821fcf3601821fd007480000','user1658391102376',NULL,NULL,NULL,'33',NULL,NULL,1,'2022-07-21 17:11:43','2022-07-22 10:14:14','22','22',NULL,'22'),('add_20220720','shop_20220720','dfasdfas','df','dfsdfa','11',NULL,NULL,1,'2022-07-20 13:23:13','2022-07-25 05:57:42',NULL,NULL,NULL,NULL),('add_20220721','shop_20220721','tokyo','df','dfsdfa','11',NULL,NULL,1,'2022-07-20 13:23:13','2022-07-25 05:57:42',NULL,NULL,NULL,NULL),('add_20220722','shop_20220722','tokyo','2','2222','2222',NULL,NULL,1,'2022-07-20 13:23:13','2022-07-25 05:57:42',NULL,'22','2','22'),('ff808081821f95fb01821f9764640000','user1658387386256',NULL,NULL,NULL,'11',NULL,NULL,1,'2022-07-21 16:09:52','2022-07-25 05:57:35','11','11',NULL,'11'),('ff808081822516320182254b43210001','testaccountss72011658300611795',NULL,NULL,NULL,'1610033',NULL,NULL,1,'2022-07-22 18:44:26','2022-07-25 05:59:31','Tokyo','Shinjuku','123123','1231231111'),('ff808081822516320182254cdaa80002','testaccountss72011658300611795',NULL,NULL,NULL,'1524543',NULL,NULL,1,'2022-07-22 18:46:10','2022-07-25 05:58:15','Tokyo','Shinjuku','123123','123123'),('ff80808182251632018232f5f45a000c','testaccountss72011658300611795',NULL,NULL,NULL,'111111',NULL,NULL,0,'2022-07-25 10:25:56','2022-07-26 08:03:51','Tokyo','Shinjuku','morning','morning'),('ff80808182251632018232face89000d','testaccountss72011658300611795',NULL,NULL,NULL,'1310022',NULL,NULL,0,'2022-07-25 10:31:14','2022-07-25 03:09:39','東京都','新宿区下落合','1-11-11','住宅101'),('ff8080818225163201823329660e000e','user1658715727349',NULL,NULL,NULL,'333333',NULL,NULL,1,'2022-07-25 11:22:07','2022-07-26 05:40:38','東京都','新宿区下落合','123123','２４１111'),('ff80808182251632018233f3aa2c000f','user1658728983054',NULL,NULL,NULL,'sada',NULL,NULL,1,'2022-07-25 15:03:03','2022-07-25 06:03:11','asdasd','asdasd','asdas','asdasdasd'),('ff80808182251632018233f426af0010','user1658729014938',NULL,NULL,NULL,'sadasdasd',NULL,NULL,1,'2022-07-25 15:03:35','2022-07-25 06:03:44','asdasdsad','asdasdasd','sadasd','asdasda'),('ff80808182251632018233f94da60011','user1658729352594',NULL,NULL,NULL,'sadas',NULL,NULL,1,'2022-07-25 15:09:13','2022-07-25 06:09:16','asdasd','asdasd','asdasas','asdasd'),('ff80808182251632018233fac6260012','user1658729448981',NULL,NULL,NULL,'asdasdas',NULL,NULL,1,'2022-07-25 15:10:49','2022-07-25 06:10:52','asdasdsa','asdasdsa','assdasd','asdasdasd'),('ff80808182251632018233fd958b0013','user1658729633142',NULL,NULL,NULL,'asdasd',NULL,NULL,1,'2022-07-25 15:13:53','2022-07-25 06:14:40','asdasd','asdasd','asdasd','asdasda'),('ff80808182251632018234027d220014','user1658729954573',NULL,NULL,NULL,'sdfsdfsdfd1111',NULL,NULL,1,'2022-07-25 15:19:15','2022-07-25 06:19:31','sdfsdfds','sdfsdf111','sdfsdf','sdfsdfsd'),('ff8080818225163201823440f2fa0015','user1658734047966',NULL,NULL,NULL,'asdasd',NULL,NULL,1,'2022-07-25 16:27:28','2022-07-25 07:27:31','asdasd','asdasda','sdasd','asdasasd'),('ff8080818225163201823441a2bb0016','user1658734092963',NULL,NULL,NULL,'asdasdas',NULL,NULL,1,'2022-07-25 16:28:13','2022-07-25 07:28:16','dasda','asdasda','dasdasd','asdasdasd'),('ff808081822516320182344200260017','user1658734116878',NULL,NULL,NULL,'dsfsd',NULL,NULL,1,'2022-07-25 16:28:37','2022-07-25 07:28:40','sdfsd','sdfsdf','sdfsdf','sdfsdf'),('ff8080818225163201823442c7a20018','user1658734167947',NULL,NULL,NULL,'asdas',NULL,NULL,1,'2022-07-25 16:29:28','2022-07-25 07:29:31','asdasdas','asdasd','asdasdasd','asdasdas'),('ff808081822516320182344338150019','user1658734196733',NULL,NULL,NULL,'asdad',NULL,NULL,1,'2022-07-25 16:29:57','2022-07-25 07:52:44','asdasd','sadasd','asdasd','asdasd'),('ff80808182251632018234436e06001a','user1658734210542',NULL,NULL,NULL,'asd',NULL,NULL,1,'2022-07-25 16:30:11','2022-07-25 07:52:50','asdasd','asdasd','asdasdas','dasd'),('ff80808182251632018234a495d8001b','user1658740577728',NULL,NULL,NULL,'dsfsdf',NULL,NULL,1,'2022-07-25 18:16:18','2022-07-25 09:19:31','asdasda','sdasdsad','asdasdsadas','asdasdasdasd'),('ff80808182251632018234a4b20e001c','user1658740584955',NULL,NULL,NULL,'asdasdasd',NULL,NULL,0,'2022-07-25 18:16:25','2022-07-25 18:16:25','asdasdasd','adasdasd','asdasdsad','asdasdasda'),('ff80808182251632018234bb5d29001d','user1658742070547',NULL,NULL,NULL,'asdasd',NULL,NULL,1,'2022-07-25 18:41:11','2022-07-25 09:42:20','asdasdsa','asdasdas','asdasd','dasd');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id` varchar(64) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `question` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `answer` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES ('1',NULL,'ログインできない','ログインするには、登録した「メールアドレス」又は「携帯電話番号」と「パスワード」をご入力いただく必要がございます。',0,'2022-07-29 03:01:28','2022-07-29 03:01:28'),('123456',NULL,'123','456',0,'2022-07-29 02:29:19','2022-07-29 02:29:19'),('2',NULL,'会員情報の確認・変更','サイトでは画面右上、アプリではマイページにある「会員情報」にて変更できます。',0,'2022-07-29 03:01:53','2022-07-29 03:01:53'),('3',NULL,'注文履歴の確認はどこでする','サイトでは画面右上、アプリでは下部にある「注文履歴」よりご確認いただけます。',0,'2022-07-29 03:02:17','2022-07-29 03:02:17');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faverite_product`
--

DROP TABLE IF EXISTS `faverite_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faverite_product` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品名',
  `category_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `subcategory_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `shop_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` int NOT NULL,
  `inventory_quantity` int NOT NULL DEFAULT '0' COMMENT '在库量',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `status` tinyint NOT NULL DEFAULT '0',
  `user_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `product_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`) USING BTREE,
  KEY `shop_id` (`shop_id`) USING BTREE,
  KEY `subcategory_id` (`subcategory_id`) USING BTREE,
  CONSTRAINT `products_ibfk_1_copy` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `products_ibfk_2_copy` FOREIGN KEY (`subcategory_id`) REFERENCES `product_subcategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `products_ibfk_3_copy` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faverite_product`
--

LOCK TABLES `faverite_product` WRITE;
/*!40000 ALTER TABLE `faverite_product` DISABLE KEYS */;
INSERT INTO `faverite_product` VALUES ('402883a882815a490182815cfd5e0000','666','product_c20220720','product_subc20220720','shop_20220722',666,666,0,'2022-08-09 06:48:51','2022-08-12 08:10:34',NULL,'666',0,'40288b9d821a5c3701821a6b3dd80000','402883a8827ce4ec01827cfd2fa60000'),('ff8080818290ae96018291be3cb40002','weqw','product_c20220720','product_subc20220720','shop_20220720',0,0,1,'2022-08-12 11:09:00','2022-08-15 11:48:51','https://shop-service-2022.s3.ap-northeast-1.amazonaws.com/product-images/40288388826698410182677faf2d0000.png','sdasd',0,'40288b9d821a5c3701821a6b3dd80000','40288388826698410182677faf2d0000'),('ff8080818290ae96018291bf66370003','product202207202','product_c20220720','product_subc20220720','shop_20220720',888,12,0,'2022-08-12 11:10:16','2022-08-12 11:10:16','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png','tes production 3',0,'40288b9d821a5c3701821a6b3dd80000','product202207202'),('ff8080818290ae96018291ceed650004','weqw','product_c20220720','product_subc20220720','shop_20220720',0,0,1,'2022-08-12 11:27:14','2022-08-12 20:28:05','https://shop-service-2022.s3.ap-northeast-1.amazonaws.com/product-images/40288388826698410182677faf2d0000.png','sdasd',0,'40288b9d821a5c3701821a6b3dd80000','ff8080818290ae96018291be3cb40002'),('ff8080818290ae96018291d3ced50005','666','product_c20220720','product_subc20220720','shop_20220722',666,666,1,'2022-08-12 11:32:34','2022-08-12 20:32:35',NULL,'666',0,'40288b9d821a5c3701821a6b3dd80000','402883a882815a490182815cfd5e0000'),('ff808081829f4e7101829f682d940000','product202207202','product_c20220720','product_subc20220720','shop_20220720',888,12,0,'2022-08-15 02:49:42','2022-08-15 02:49:42','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png','tes production 3',0,'40288b9d821a5c3701821a6b3dd80000','ff8080818290ae96018291bf66370003');
/*!40000 ALTER TABLE `faverite_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` varchar(64) NOT NULL,
  `owner_id` varchar(64) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='存储各种图片的地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `id` varchar(64) NOT NULL,
  `order_id` varchar(64) NOT NULL COMMENT '与订单表多对一',
  `product_id` varchar(64) NOT NULL,
  `quantity` int NOT NULL COMMENT '购买数量',
  `price` int NOT NULL COMMENT '单价',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_name` varchar(100) DEFAULT NULL,
  `product_desc` text NOT NULL COMMENT '商品描述',
  `product_img` varchar(100) DEFAULT NULL COMMENT '商品图片',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单商品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES ('4028818b823983c601823986861a001a','4028818b823983c60182398685760019','product202207201',3,500,0,'2022-07-26 17:01:34','2022-07-26 17:01:34','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('4028818b823983c601823986867a001b','4028818b823983c60182398685760019','product20220720',3,11666,0,'2022-07-26 17:01:34','2022-07-26 17:01:34','product20220720','tes production 1','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('4028818b823983c60182398694a3001e','4028818b823983c6018239869415001d','product202207201',3,500,0,'2022-07-26 17:01:38','2022-07-26 17:01:38','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('4028818b823983c60182398694e5001f','4028818b823983c6018239869415001d','product20220720',3,11666,0,'2022-07-26 17:01:38','2022-07-26 17:01:38','product20220720','tes production 1','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('4028818b823983c60182398858770022','4028818b823983c60182398857730021','product202207201',3,500,0,'2022-07-26 17:03:33','2022-07-26 17:03:33','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('4028818b823983c60182398858e10023','4028818b823983c60182398857730021','product20220720',3,11666,0,'2022-07-26 17:03:33','2022-07-26 17:03:33','product20220720','tes production 1','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('4028818b823983c6018239af541f0032','4028818b823983c6018239af53530031','product202207201',3,500,0,'2022-07-26 17:46:08','2022-07-26 17:46:08','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('4028818b823983c6018239af54720033','4028818b823983c6018239af53530031','product20220720',3,11666,0,'2022-07-26 17:46:08','2022-07-26 17:46:08','product20220720','tes production 1','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('4028818b823983c6018239af71ea0036','4028818b823983c6018239af71310035','product202207201',3,500,0,'2022-07-26 17:46:16','2022-07-26 17:46:16','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('4028818b823983c6018239af72340037','4028818b823983c6018239af71310035','product20220720',3,11666,0,'2022-07-26 17:46:16','2022-07-26 17:46:16','product20220720','tes production 1','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('4028818b823983c6018239af83c4003a','4028818b823983c6018239af83330039','product202207201',3,500,0,'2022-07-26 17:46:20','2022-07-26 17:46:20','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('4028818b823983c6018239af8442003b','4028818b823983c6018239af83330039','product20220720',3,11666,0,'2022-07-26 17:46:20','2022-07-26 17:46:20','product20220720','tes production 1','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('4028818b823983c6018239bb1918003e','4028818b823983c6018239bb182d003d','product202207201',3,500,0,'2022-07-26 17:59:00','2022-07-26 17:59:00','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('4028818b823983c6018239bb19ee003f','4028818b823983c6018239bb182d003d','product20220720',3,11666,0,'2022-07-26 17:59:00','2022-07-26 17:59:00','product20220720','tes production 1','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('4028818b8239e987018239e9f76f0002','4028818b8239e987018239e9f63d0001','product202207201',3,500,0,'2022-07-26 18:50:11','2022-07-26 18:50:11','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('4028818b8239e987018239e9f8060003','4028818b8239e987018239e9f63d0001','product20220720',3,11666,0,'2022-07-26 18:50:11','2022-07-26 18:50:11','product20220720','tes production 1','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('4028818b8239fb3b01823a39edc30004','4028818b8239fb3b01823a39ec3a0003','product202207201',3,500,0,'2022-07-26 20:17:31','2022-07-26 20:17:31','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('4028818b8239fb3b01823a39ee3a0005','4028818b8239fb3b01823a39ec3a0003','product20220720',3,11666,0,'2022-07-26 20:17:31','2022-07-26 20:17:31','product20220720','tes production 1','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff80808182243a1101822443a99d000f','ff80808182243a1101822443a948000e','product202207203',10,6666,0,'2022-07-22 13:56:30','2022-07-22 13:56:30','product202207203','tes production 4','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff80808182243a110182245158d30012','ff80808182243a110182245158840011','product202207203',10,6666,0,'2022-07-22 14:11:27','2022-07-22 14:11:27','product202207203','tes production 4','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff80808182243a11018224517e030015','ff80808182243a11018224517db20014','product202207203',10,6666,0,'2022-07-22 14:11:37','2022-07-22 14:11:37','product202207203','tes production 4','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff8080818239de6a018239eb019f0006','ff8080818239de6a018239eb01560005','product202207201',3,500,0,'2022-07-26 18:51:19','2022-07-26 18:51:19','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff8080818239de6a018239eb01c70007','ff8080818239de6a018239eb01560005','product20220720',3,11666,0,'2022-07-26 18:51:19','2022-07-26 18:51:19','product20220720','tes production 1','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff808081823b741c01823b743a250002','ff808081823b741c01823b74398c0001','product202207201',3,500,0,'2022-07-27 02:00:49','2022-07-27 02:00:49','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff808081823b741c01823b743a6a0003','ff808081823b741c01823b74398c0001','product20220720',3,11666,0,'2022-07-27 02:00:49','2022-07-27 02:00:49','product20220720','tes production 1','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff808081823b741c01823b7484fe0006','ff808081823b741c01823b7484800005','product202207201',3,500,0,'2022-07-27 02:01:08','2022-07-27 02:01:08','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff808081823b741c01823b7485490007','ff808081823b741c01823b7484800005','product20220720',3,11666,0,'2022-07-27 02:01:08','2022-07-27 02:01:08','product20220720','tes production 1','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff808081823b741c01823b7b08dd000a','ff808081823b741c01823b7b08470009','product202207201',3,500,0,'2022-07-27 02:08:15','2022-07-27 02:08:15','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff808081823b741c01823b7b0928000b','ff808081823b741c01823b7b08470009','product20220720',3,11666,0,'2022-07-27 02:08:15','2022-07-27 02:08:15','product20220720','tes production 1','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff808081823b741c01823b7b0d58000e','ff808081823b741c01823b7b0cdd000d','product202207201',3,500,0,'2022-07-27 02:08:16','2022-07-27 02:08:16','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff808081823b741c01823b7b0db9000f','ff808081823b741c01823b7b0cdd000d','product20220720',3,11666,0,'2022-07-27 02:08:16','2022-07-27 02:08:16','product20220720','tes production 1','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff808081823b741c01823b7b11ea0012','ff808081823b741c01823b7b11690011','product202207201',3,500,0,'2022-07-27 02:08:18','2022-07-27 02:08:18','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff808081823b741c01823b7b122b0013','ff808081823b741c01823b7b11690011','product20220720',3,11666,0,'2022-07-27 02:08:18','2022-07-27 02:08:18','product20220720','tes production 1','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff808081823b741c01823b7b19000016','ff808081823b741c01823b7b18860015','product202207201',3,500,0,'2022-07-27 02:08:19','2022-07-27 02:08:19','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff808081823b741c01823b7b19440017','ff808081823b741c01823b7b18860015','product20220720',3,11666,0,'2022-07-27 02:08:19','2022-07-27 02:08:19','product20220720','tes production 1','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff808081823b741c01823b7b1f89001a','ff808081823b741c01823b7b1f100019','product202207201',3,500,0,'2022-07-27 02:08:21','2022-07-27 02:08:21','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff808081823b741c01823b7b1fdd001b','ff808081823b741c01823b7b1f100019','product20220720',3,11666,0,'2022-07-27 02:08:21','2022-07-27 02:08:21','product20220720','tes production 1','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff808081823d402c01823eb613a6001a','ff808081823d402c01823eb613620019','product202207201',2,500,0,'2022-07-27 17:11:36','2022-07-27 17:11:36','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff808081823d402c01823ede9843001d','ff808081823d402c01823ede9808001c','product202207201',1,500,0,'2022-07-27 17:55:52','2022-07-27 17:55:52','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff8080818242483001824280bfde0002','ff8080818242483001824280bf810001','product202207201',1,500,0,'2022-07-28 10:51:50','2022-07-28 10:51:50','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff8080818242483001824280bffe0003','ff8080818242483001824280bf810001','product202207203',1,6666,0,'2022-07-28 10:51:50','2022-07-28 10:51:50','product202207203','tes production 4','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff8080818243f133018244032ff7000a','ff8080818243f13301824402a1650009','product202207201',3,500,0,'2022-07-28 17:54:06','2022-07-28 17:54:06','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff8080818243f13301824403314f000b','ff8080818243f13301824402a1650009','product20220720',3,11666,0,'2022-07-28 17:54:06','2022-07-28 17:54:06','product20220720','tes production 1','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff808081824407060182440dc34a000a','ff808081824407060182440da16c0009','product202207201',3,500,0,'2022-07-28 18:06:40','2022-07-28 18:06:40','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff808081824407060182440dc376000b','ff808081824407060182440da16c0009','product20220720',3,11666,0,'2022-07-28 18:06:40','2022-07-28 18:06:40','product20220720','tes production 1','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff8080818244070601824410297e000e','ff8080818244070601824410291b000d','product202207201',3,500,0,'2022-07-28 18:08:14','2022-07-28 18:08:14','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff808081824407060182441029c0000f','ff8080818244070601824410291b000d','product20220720',3,11666,0,'2022-07-28 18:08:14','2022-07-28 18:08:14','product20220720','tes production 1','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff80808182478465018247be65ad0002','ff80808182478465018247be65410001','product20220720',1,11666,0,'2022-07-29 11:17:17','2022-07-29 11:17:17','product20220720','tes production 1','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff80808182478465018247be65d00003','ff80808182478465018247be65410001','product202207201',1,500,0,'2022-07-29 11:17:17','2022-07-29 11:17:17','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png'),('ff80808182478465018247ccc2d80006','ff80808182478465018247ccc2a50005','product202207201',1,500,0,'2022-07-29 11:32:58','2022-07-29 11:32:58','product202207201','tes production 2','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png');
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `total_price` int NOT NULL COMMENT '总价',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `payment_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '支付详情',
  `address_id` varchar(64) NOT NULL,
  `shop_id` varchar(64) NOT NULL,
  `ship_phone` varchar(100) NOT NULL COMMENT '配送电话',
  `status_code` tinyint NOT NULL COMMENT '下单（未支付），支付，配送中，送达，退货申请，退货确认，拒绝退货，退货成功，退款成功，其他',
  `except_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `address_id` (`address_id`),
  KEY `payment_id` (`payment_id`),
  KEY `user_id` (`user_id`),
  KEY `shop_id` (`shop_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('4028818b823983c60182398685760019','ff808081821ff73a01821ffa82460000',36498,0,'2022-07-26 17:01:34','2022-07-26 17:01:34','4028818b823983c601823986854d0018','ff80808182251632018232f5f45a000c','shop_20220720','123456789',0,NULL),('4028818b823983c6018239869415001d','ff808081821ff73a01821ffa82460000',36498,0,'2022-07-26 17:01:37','2022-07-26 17:01:37','4028818b823983c60182398693d4001c','ff80808182251632018232f5f45a000c','shop_20220720','123456789',0,NULL),('4028818b823983c60182398857730021','ff808081821ff73a01821ffa82460000',36498,0,'2022-07-26 17:03:33','2022-07-26 17:03:33','4028818b823983c60182398857400020','ff80808182251632018232f5f45a000c','shop_20220720','123456789',0,NULL),('4028818b823983c6018239af53530031','ff808081821ff73a01821ffa82460000',36498,0,'2022-07-26 17:46:08','2022-07-26 17:46:08','4028818b823983c6018239af53280030','ff80808182251632018232f5f45a000c','shop_20220720','123456789',0,NULL),('4028818b823983c6018239af71310035','ff808081821ff73a01821ffa82460000',36498,0,'2022-07-26 17:46:15','2022-07-26 17:46:15','4028818b823983c6018239af71070034','ff80808182251632018232f5f45a000c','shop_20220720','123456789',0,NULL),('4028818b823983c6018239af83330039','ff808081821ff73a01821ffa82460000',36498,0,'2022-07-26 17:46:20','2022-07-26 17:46:20','4028818b823983c6018239af83090038','ff80808182251632018232f5f45a000c','shop_20220720','123456789',0,NULL),('4028818b823983c6018239bb182d003d','ff808081821ff73a01821ffa82460000',36498,0,'2022-07-26 17:58:59','2022-07-26 17:58:59','4028818b823983c6018239bb17d3003c','ff80808182251632018232f5f45a000c','shop_20220720','123456789',0,NULL),('4028818b8239e987018239e9f63d0001','ff808081821ff73a01821ffa82460000',36498,0,'2022-07-26 18:50:11','2022-07-26 18:50:11','4028818b8239e987018239e9f5dd0000','ff80808182251632018232f5f45a000c','shop_20220720','123456789',0,NULL),('4028818b8239fb3b01823a39ec3a0003','ff808081821ff73a01821ffa82460000',36498,0,'2022-07-26 20:17:31','2022-07-26 20:17:31','4028818b8239fb3b01823a39ec090002','ff80808182251632018232f5f45a000c','shop_20220720','123456789',0,NULL),('ff80808182243a1101822443a948000e','ff808081821ff73a01821ffa82460000',66660,0,'2022-07-22 13:56:30','2022-07-22 13:56:30','ff80808182243a1101822443a92f000d','ff808081821f95fb01821f9764640000','shop_20220720','123456789',0,NULL),('ff80808182243a110182245158840011','ff808081821ff73a01821ffa82460000',66660,0,'2022-07-22 14:11:27','2022-07-22 14:11:27','ff80808182243a1101822451586f0010','ff808081821f95fb01821f9764640000','shop_20220720','123456789',0,NULL),('ff80808182243a11018224517db20014','ff808081821ff73a01821ffa82460000',66660,0,'2022-07-22 14:11:37','2022-07-22 14:11:37','ff80808182243a11018224517d9b0013','ff808081821f95fb01821f9764640000','shop_20220720','123456789',0,NULL),('ff8080818239de6a018239eb01560005','ff808081821ff73a01821ffa82460000',36498,0,'2022-07-26 18:51:19','2022-07-26 18:51:19','ff8080818239de6a018239eb013e0004','ff80808182251632018232f5f45a000c','shop_20220720','123456789',0,NULL),('ff808081823b741c01823b74398c0001','ff808081823b5f5e01823b619f170000',36498,0,'2022-07-27 02:00:49','2022-07-27 02:00:49','ff808081823b741c01823b7439410000','ff80808182251632018232f5f45a000c','shop_20220720','123456789',0,NULL),('ff808081823b741c01823b7484800005','ff808081823b5f5e01823b619f170000',36498,0,'2022-07-27 02:01:08','2022-07-27 02:01:08','ff808081823b741c01823b74845a0004','ff80808182251632018232f5f45a000c','shop_20220720','123456789',0,NULL),('ff808081823b741c01823b7b08470009','ff808081823b5f5e01823b619f170000',36498,0,'2022-07-27 02:08:15','2022-07-27 02:08:15','ff808081823b741c01823b7b081b0008','ff80808182251632018232f5f45a000c','shop_20220720','123456789',0,NULL),('ff808081823b741c01823b7b0cdd000d','ff808081823b5f5e01823b619f170000',36498,0,'2022-07-27 02:08:16','2022-07-27 02:08:16','ff808081823b741c01823b7b0cba000c','ff80808182251632018232f5f45a000c','shop_20220720','123456789',0,NULL),('ff808081823b741c01823b7b11690011','ff808081823b5f5e01823b619f170000',36498,0,'2022-07-27 02:08:17','2022-07-27 02:08:17','ff808081823b741c01823b7b11420010','ff80808182251632018232f5f45a000c','shop_20220720','123456789',0,NULL),('ff808081823b741c01823b7b18860015','ff808081823b5f5e01823b619f170000',36498,0,'2022-07-27 02:08:19','2022-07-27 02:08:19','ff808081823b741c01823b7b18620014','ff80808182251632018232f5f45a000c','shop_20220720','123456789',0,NULL),('ff808081823b741c01823b7b1f100019','ff808081823b5f5e01823b619f170000',36498,0,'2022-07-27 02:08:21','2022-07-27 02:08:21','ff808081823b741c01823b7b1eed0018','ff80808182251632018232f5f45a000c','shop_20220720','123456789',0,NULL),('ff808081823d402c01823eb613620019','40288b9d821a5c3701821a6b3dd80000',1000,0,'2022-07-27 17:11:36','2022-08-09 23:47:04','ff808081823d402c01823eb613200018','ff80808182251632018232f5f45a000c','shop_20220720','123456789',3,NULL),('ff808081823d402c01823ede9808001c','40288b9d821a5c3701821a6b3dd80000',500,0,'2022-08-08 17:25:52','2022-08-09 23:44:54','ff808081823d402c01823ede97fd001b','ff80808182251632018232f5f45a000c','shop_20220720','123456789',3,NULL),('ff8080818242483001824280bf810001','40288b9d821a5c3701821a6b3dd80000',7166,0,'2022-07-28 10:51:50','2022-08-08 05:18:11','ff8080818242483001824280bf3e0000','ff80808182251632018232f5f45a000c','shop_20220720','123456789',1,NULL),('ff8080818243f13301824402a1650009','40288b9d821a5c3701821a6b3dd80000',36498,0,'2022-07-28 17:53:22','2022-08-08 05:18:11','ff8080818243f133018244026fa60008','ff80808182251632018232f5f45a000c','shop_20220720','123456789',1,NULL),('ff80808182440706018244075e510001','40288b9d821a5c3701821a6b3dd80000',36498,0,'2022-07-28 17:58:30','2022-07-28 17:58:30','ff80808182440706018244075ddf0000','ff80808182251632018232f5f45a000c','shop_20220720','123456789',0,NULL),('ff8080818244070601824407bea20003','40288b9d821a5c3701821a6b3dd80000',36498,0,'2022-07-28 17:58:55','2022-07-28 17:58:55','ff8080818244070601824407be890002','ff80808182251632018232f5f45a000c','shop_20220720','123456789',0,NULL),('ff808081824407060182440da16c0009','40288b9d821a5c3701821a6b3dd80000',36498,0,'2022-07-28 18:05:20','2022-07-28 18:05:20','ff808081824407060182440da14c0008','ff80808182251632018232f5f45a000c','shop_20220720','123456789',0,NULL),('ff8080818244070601824410291b000d','40288b9d821a5c3701821a6b3dd80000',36498,0,'2022-07-28 18:08:06','2022-08-08 05:18:11','ff808081824407060182441028ff000c','ff80808182251632018232f5f45a000c','shop_20220720','123456789',3,NULL),('ff80808182478465018247be65410001','40288b9d821a5c3701821a6b3dd80000',12166,0,'2022-07-29 11:17:16','2022-08-08 05:18:18','ff80808182478465018247be651b0000','ff80808182251632018232f5f45a000c','shop_20220720','123456789',5,NULL),('ff80808182478465018247ccc2a50005','40288b9d821a5c3701821a6b3dd80000',500,0,'2022-07-29 11:32:58','2022-07-29 11:32:58','ff80808182478465018247ccc29c0004','ff80808182251632018232f5f45a000c','shop_20220720','123456789',0,NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` varchar(64) NOT NULL,
  `order_id` varchar(64) DEFAULT NULL,
  `provider_id` varchar(64) NOT NULL COMMENT '支付手段',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_code` tinyint NOT NULL COMMENT '支付状态',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='支付订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES ('4028818b823983c601823986854d0018','4028818b823983c60182398685760019','VISA','2022-07-26 08:01:34',0,0,'2022-07-26 17:01:34'),('4028818b823983c60182398693d4001c','4028818b823983c6018239869415001d','VISA','2022-07-26 08:01:38',0,0,'2022-07-26 17:01:37'),('4028818b823983c60182398857400020','4028818b823983c60182398857730021','VISA','2022-07-26 08:03:33',0,0,'2022-07-26 17:03:33'),('4028818b823983c6018239af53280030','4028818b823983c6018239af53530031','VISA','2022-07-26 08:46:08',0,0,'2022-07-26 17:46:08'),('4028818b823983c6018239af71070034','4028818b823983c6018239af71310035','VISA','2022-07-26 08:46:16',0,0,'2022-07-26 17:46:15'),('4028818b823983c6018239af83090038','4028818b823983c6018239af83330039','VISA','2022-07-26 08:46:21',0,0,'2022-07-26 17:46:20'),('4028818b823983c6018239bb17d3003c','4028818b823983c6018239bb182d003d','VISA','2022-07-26 08:59:00',0,0,'2022-07-26 17:58:59'),('4028818b8239e987018239e9f5dd0000','4028818b8239e987018239e9f63d0001','VISA','2022-07-26 09:50:11',0,0,'2022-07-26 18:50:10'),('4028818b8239fb3b01823a39ec090002','4028818b8239fb3b01823a39ec3a0003','VISA','2022-07-26 11:17:32',0,0,'2022-07-26 20:17:31'),('402883958239f52f01823a4f90290002','402883958239f52f01823a4fa8f00003','VISA','2022-07-26 11:41:17',0,0,'2022-07-26 20:41:17'),('ff80808182243a1101822443a92f000d','ff80808182243a1101822443a948000e','VISA','2022-07-22 04:56:30',0,0,'2022-07-22 13:56:30'),('ff80808182243a1101822451586f0010','ff80808182243a110182245158840011','VISA','2022-07-22 05:11:27',0,0,'2022-07-22 14:11:27'),('ff80808182243a11018224517d9b0013','ff80808182243a11018224517db20014','VISA','2022-07-22 05:11:37',0,0,'2022-07-22 14:11:37'),('ff8080818239de6a018239eb013e0004','ff8080818239de6a018239eb01560005','VISA','2022-07-26 09:51:19',0,0,'2022-07-26 18:51:19'),('ff808081823b5f5e01823b6331ce0001','ff808081823b5f5e01823b6332060002','VISA','2022-07-26 16:42:14',0,0,'2022-07-27 01:42:13'),('ff808081823b5f5e01823b633cbc0005','ff808081823b5f5e01823b633ce80006','VISA','2022-07-26 16:42:17',0,0,'2022-07-27 01:42:16'),('ff808081823b5f5e01823b6444560009','ff808081823b5f5e01823b644481000a','VISA','2022-07-26 16:43:25',0,0,'2022-07-27 01:43:23'),('ff808081823b5f5e01823b644ee3000d','ff808081823b5f5e01823b644f0b000e','VISA','2022-07-26 16:43:27',0,0,'2022-07-27 01:43:26'),('ff808081823b5f5e01823b645d070011','ff808081823b5f5e01823b645d340012','VISA','2022-07-26 16:43:31',0,0,'2022-07-27 01:43:29'),('ff808081823b5f5e01823b64647c0015','ff808081823b5f5e01823b6464a20016','VISA','2022-07-26 16:43:33',0,0,'2022-07-27 01:43:31'),('ff808081823b5f5e01823b64b6830019','ff808081823b5f5e01823b64b6a8001a','VISA','2022-07-26 16:43:54',0,0,'2022-07-27 01:43:52'),('ff808081823b5f5e01823b64bc02001d','ff808081823b5f5e01823b64bc29001e','VISA','2022-07-26 16:43:55',0,0,'2022-07-27 01:43:54'),('ff808081823b5f5e01823b64bf6e0021','ff808081823b5f5e01823b64bf980022','VISA','2022-07-26 16:43:56',0,0,'2022-07-27 01:43:55'),('ff808081823b5f5e01823b64bfd40023','ff808081823b5f5e01823b64bff50024','VISA','2022-07-26 16:43:56',0,0,'2022-07-27 01:43:55'),('ff808081823b5f5e01823b64dd9b0029','ff808081823b5f5e01823b64ddc5002a','VISA','2022-07-26 16:44:04',0,0,'2022-07-27 01:44:02'),('ff808081823b5f5e01823b64ddd7002b','ff808081823b5f5e01823b64de04002c','VISA','2022-07-26 16:44:04',0,0,'2022-07-27 01:44:02'),('ff808081823b5f5e01823b64e0b20031','ff808081823b5f5e01823b64e0dd0032','VISA','2022-07-26 16:44:05',0,0,'2022-07-27 01:44:03'),('ff808081823b5f5e01823b64e10c0033','ff808081823b5f5e01823b64e1320034','VISA','2022-07-26 16:44:05',0,0,'2022-07-27 01:44:03'),('ff808081823b5f5e01823b64e4bf0039','ff808081823b5f5e01823b64e4e3003a','VISA','2022-07-26 16:44:06',0,0,'2022-07-27 01:44:04'),('ff808081823b5f5e01823b64e504003b','ff808081823b5f5e01823b64e523003c','VISA','2022-07-26 16:44:06',0,0,'2022-07-27 01:44:04'),('ff808081823b5f5e01823b64ecbf0041','ff808081823b5f5e01823b64ecec0042','VISA','2022-07-26 16:44:08',0,0,'2022-07-27 01:44:06'),('ff808081823b5f5e01823b64ed3d0043','ff808081823b5f5e01823b64ed5e0044','VISA','2022-07-26 16:44:08',0,0,'2022-07-27 01:44:06'),('ff808081823b5f5e01823b64f4030049','ff808081823b5f5e01823b64f428004a','VISA','2022-07-26 16:44:10',0,0,'2022-07-27 01:44:08'),('ff808081823b5f5e01823b64f45b004b','ff808081823b5f5e01823b64f481004c','VISA','2022-07-26 16:44:10',0,0,'2022-07-27 01:44:08'),('ff808081823b5f5e01823b64f6f10051','ff808081823b5f5e01823b64f7150052','VISA','2022-07-26 16:44:10',0,0,'2022-07-27 01:44:09'),('ff808081823b5f5e01823b64f74e0053','ff808081823b5f5e01823b64f76f0054','VISA','2022-07-26 16:44:10',0,0,'2022-07-27 01:44:09'),('ff808081823b5f5e01823b6502780059','ff808081823b5f5e01823b65029c005a','VISA','2022-07-26 16:44:13',0,0,'2022-07-27 01:44:12'),('ff808081823b5f5e01823b6502de005b','ff808081823b5f5e01823b6502ff005c','VISA','2022-07-26 16:44:13',0,0,'2022-07-27 01:44:12'),('ff808081823b5f5e01823b65050e0061','ff808081823b5f5e01823b6505320062','VISA','2022-07-26 16:44:14',0,0,'2022-07-27 01:44:12'),('ff808081823b5f5e01823b6505410063','ff808081823b5f5e01823b6505630064','VISA','2022-07-26 16:44:14',0,0,'2022-07-27 01:44:13'),('ff808081823b5f5e01823b6505e40067','ff808081823b5f5e01823b6506000069','VISA','2022-07-26 16:44:14',0,0,'2022-07-27 01:44:13'),('ff808081823b741c01823b7439410000','ff808081823b741c01823b74398c0001','VISA','2022-07-26 17:00:50',0,0,'2022-07-27 02:00:49'),('ff808081823b741c01823b74845a0004','ff808081823b741c01823b7484800005','VISA','2022-07-26 17:01:10',0,0,'2022-07-27 02:01:08'),('ff808081823b741c01823b7b081b0008','ff808081823b741c01823b7b08470009','VISA','2022-07-26 17:08:17',0,0,'2022-07-27 02:08:15'),('ff808081823b741c01823b7b0cba000c','ff808081823b741c01823b7b0cdd000d','VISA','2022-07-26 17:08:18',0,0,'2022-07-27 02:08:16'),('ff808081823b741c01823b7b11420010','ff808081823b741c01823b7b11690011','VISA','2022-07-26 17:08:19',0,0,'2022-07-27 02:08:17'),('ff808081823b741c01823b7b18620014','ff808081823b741c01823b7b18860015','VISA','2022-07-26 17:08:21',0,0,'2022-07-27 02:08:19'),('ff808081823b741c01823b7b1eed0018','ff808081823b741c01823b7b1f100019','VISA','2022-07-26 17:08:22',0,0,'2022-07-27 02:08:21'),('ff808081823d402c01823d48f8740000','ff808081823d402c01823d48f8800001','VISA','2022-07-27 01:32:50',0,0,'2022-07-27 10:32:49'),('ff808081823d402c01823e0b8d840004','ff808081823d402c01823e0b8d850005','VISA','2022-07-27 05:05:22',0,0,'2022-07-27 14:05:21'),('ff808081823d402c01823e121e620006','ff808081823d402c01823e121e630007','VISA','2022-07-27 05:12:32',0,0,'2022-07-27 14:12:31'),('ff808081823d402c01823e15c89b0008','ff808081823d402c01823e15c89b0009','VISA','2022-07-27 05:16:33',0,0,'2022-07-27 14:16:31'),('ff808081823d402c01823e9cbbdc000c','ff808081823d402c01823e9cbbe3000d','VISA','2022-07-27 07:43:56',0,0,'2022-07-27 16:43:55'),('ff808081823d402c01823e9f0ddb000e','ff808081823d402c01823e9f0ddb000f','VISA','2022-07-27 07:46:29',0,0,'2022-07-27 16:46:27'),('ff808081823d402c01823e9fd3430010','ff808081823d402c01823e9fd3440011','VISA','2022-07-27 07:47:19',0,0,'2022-07-27 16:47:18'),('ff808081823d402c01823ea18e980012','ff808081823d402c01823ea18e990013','VISA','2022-07-27 07:49:13',0,0,'2022-07-27 16:49:11'),('ff808081823d402c01823eb291a40014','ff808081823d402c01823eb291a50015','VISA','2022-07-27 08:07:47',0,0,'2022-07-27 17:07:46'),('ff808081823d402c01823eb4dabd0016','ff808081823d402c01823eb4dabf0017','VISA','2022-07-27 08:10:17',0,0,'2022-07-27 17:10:16'),('ff808081823d402c01823eb613200018','ff808081823d402c01823eb613620019','VISA','2022-07-27 08:11:37',0,0,'2022-07-27 17:11:36'),('ff808081823d402c01823ede97fd001b','ff808081823d402c01823ede9808001c','VISA','2022-07-27 08:55:53',0,0,'2022-07-27 17:55:52'),('ff8080818242483001824280bf3e0000','ff8080818242483001824280bf810001','VISA','2022-07-28 01:51:51',0,0,'2022-07-28 10:51:50'),('ff8080818243f133018244026fa60008','ff8080818243f13301824402a1650009','VISA','2022-07-28 08:53:22',0,0,'2022-07-28 17:53:22'),('ff80808182440706018244075ddf0000','ff80808182440706018244075e510001','VISA','2022-07-28 08:58:30',0,0,'2022-07-28 17:58:30'),('ff8080818244070601824407be890002','ff8080818244070601824407bea20003','VISA','2022-07-28 08:58:54',0,0,'2022-07-28 17:58:54'),('ff808081824407060182440da14c0008','ff808081824407060182440da16c0009','VISA','2022-07-28 09:05:20',0,0,'2022-07-28 18:05:20'),('ff808081824407060182441028ff000c','ff8080818244070601824410291b000d','VISA','2022-07-28 09:08:06',0,0,'2022-07-28 18:08:06'),('ff80808182478465018247be651b0000','ff80808182478465018247be65410001','VISA','2022-07-29 02:17:17',0,0,'2022-07-29 11:17:16'),('ff80808182478465018247ccc29c0004','ff80808182478465018247ccc2a50005','VISA','2022-07-29 02:32:58',0,0,'2022-07-29 11:32:58');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` varchar(64) NOT NULL,
  `name` varchar(100) NOT NULL COMMENT '商品名',
  `category_id` varchar(64) NOT NULL,
  `subcategory_id` varchar(64) NOT NULL,
  `shop_id` varchar(64) NOT NULL,
  `price` int NOT NULL,
  `inventory_quantity` int NOT NULL DEFAULT '0' COMMENT '在库量',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `status` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `subcategory_id` (`subcategory_id`),
  KEY `shop_id` (`shop_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`subcategory_id`) REFERENCES `product_subcategory` (`id`),
  CONSTRAINT `products_ibfk_3` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('40288388826698410182677faf2d0000','weqw','product_c20220720','product_subc20220720','shop_20220720',0,0,0,'2022-08-04 15:16:37','2022-08-10 01:25:59','https://shop-service-2022.s3.ap-northeast-1.amazonaws.com/product-images/40288388826698410182677faf2d0000.png','sdasd',0),('402883888266984101826785eedf0001','123213','product_c20220720','product_subc20220720','shop_20220720',0,0,1,'2022-08-04 15:23:27','2022-08-04 15:23:27',NULL,'asdad',0),('4028838882669841018267888a650002','iuyiy','product_c20220720','product_subc20220720','shop_20220720',677,0,1,'2022-08-04 15:26:18','2022-08-04 15:26:18',NULL,'gjhgjhg g hjg jhg gjjh jhgjhg',0),('40288388826698410182680cada90003','rwerwer','product_c20220720','product_subc20220720','shop_20220720',2332,22,1,'2022-08-04 17:50:38','2022-08-04 17:50:38',NULL,'dsdfafdadf',0),('402883a8827ce4ec01827cfd2fa60000','666','product_c20220720','product_subc20220720','shop_20220722',666,666,0,'2022-08-08 10:25:43','2022-08-08 10:25:43',NULL,'666',0),('402883a882815a4901828590e7430001','df','product_c20220720','product_subc20220720','shop_20220722',555,566,0,'2022-08-10 02:24:02','2022-08-10 02:24:02',NULL,'666',0),('402883a882815a490182859621640002','77','product_c20220720','product_subc20220720','shop_20220722',88,99,0,'2022-08-10 02:29:44','2022-08-10 02:29:44',NULL,'',0),('402883a882815a490182859fb5a20003','6','product_c20220720','product_subc20220720','shop_20220722',6,66,0,'2022-08-10 02:40:12','2022-08-10 02:40:12',NULL,'',0),('402883a882815a49018285a20dc80004','88','product_c20220720','product_subc20220720','shop_20220722',88,88,0,'2022-08-10 02:42:46','2022-08-10 02:42:46',NULL,'88',0),('ff8080818261b2b9018261c49b730000','string123123','product_c20220720','product_subc20220720','shop_20220720',700,90,0,'2022-08-04 17:50:38','2022-08-05 04:25:43',NULL,'string',0),('ff8080818261b2b9018261d37cff0001','string','product_c20220720','product_subc20220720','shop_20220720',700,90,1,'2022-08-03 12:50:26','2022-08-03 12:50:26',NULL,'string',0),('ff8080818261b2b9018261e029470002','string','product_c20220720','product_subc20220720','shop_20220720',700,90,1,'2022-08-03 13:04:17','2022-08-03 13:04:17',NULL,'string',0),('ff8080818261b2b9018261e02cfa0003','string','product_c20220720','product_subc20220720','shop_20220720',700,90,1,'2022-08-03 13:04:18','2022-08-03 13:04:18',NULL,'string',0),('ff8080818261b2b9018261e030830004','string','product_c20220720','product_subc20220720','shop_20220720',700,90,1,'2022-08-03 13:04:19','2022-08-03 13:04:19',NULL,'string',0),('ff8080818261b2b9018261e033d10005','string','product_c20220720','product_subc20220720','shop_20220720',700,90,1,'2022-08-03 13:04:20','2022-08-03 13:04:20',NULL,'string',0),('ff8080818262038501826206c4df0000','string','product_c20220720','product_subc20220720','shop_20220720',700,90,1,'2022-08-03 13:46:27','2022-08-03 13:46:27',NULL,'string',0),('ff8080818262038501826231105d0001','string','product_c20220720','product_subc20220720','shop_20220720',800,90,0,'2022-08-03 14:32:39','2022-08-08 07:22:32','','string',0),('ff80808182620385018262389b640002','string','product_c20220720','product_subc20220720','shop_20220720',400,90,1,'2022-08-03 14:40:53','2022-08-08 07:22:32','','string',0),('ff80808182623c7f01826652c4170000','string','product_c20220720','product_subc20220720','shop_20220720',400,90,0,'2022-08-04 09:47:56','2022-08-04 09:47:56','https://shop-service-2022.s3.ap-northeast-1.amazonaws.com/product-images/ff80808182623c7f01826652c4170000.png','string',0),('ff808081826c696301826c7792d70000','string','product_c20220720','product_subc20220720','shop_20220720',0,0,1,'2022-08-05 14:25:52','2022-08-08 07:27:03','string','string',0),('ff808081826cd60b01826cd709b10000','string1P','product_c20220720','product_subc20220720','shop_20220720',8888,22222,0,'2022-08-05 16:10:08','2022-08-05 18:14:02',NULL,'string1P',0),('ff808081826d7fbf01826d87f3490000','string','product_c20220720','product_subc20220720','shop_20220720',400,90,0,'2022-08-05 10:23:22','2022-08-05 10:23:22','string','string',0),('ff808081826d7fbf01826d8af8dc0001','qweqe','product_c20220720','product_subc20220720','shop_20220720',222,111,1,'2022-08-05 10:26:40','2022-08-07 05:12:21',NULL,'sdasddg dg dsfg sd gsd gd',0),('ff808081826d7fbf018276aaccda0002','weqwe','product_c20220720','product_subc20220720','shop_20220720',1213,123,1,'2022-08-07 04:58:02','2022-08-07 05:12:25',NULL,'asdasdaf as fa dfas adf adfa das s da',0),('ff808081826d7fbf018276aca3a70003','123123qwe','product_c20220720','product_subc20220720','shop_20220720',123,123,1,'2022-08-07 05:00:02','2022-08-07 05:12:26',NULL,'asdasdasd',0),('ff808081826d7fbf018276b28f250004','qqqqqqqq','product_c20220720','product_subc20220720','shop_20220720',123,123,1,'2022-08-07 05:06:30','2022-08-07 05:12:28',NULL,'asdasdasd',0),('ff808081826d7fbf018276b851b70005','qqqqqqq','product_c20220720','product_subc20220720','shop_20220720',1232,123123,0,'2022-08-07 05:12:48','2022-08-07 05:12:48',NULL,'asdasdasd',0),('ff808081826d7fbf01827b2b18660006','qqqqqqq','product_c20220720','product_subc20220720','shop_20220720',111,3333,0,'2022-08-08 01:56:38','2022-08-08 01:56:38',NULL,'sdfsdf sdf sdf s s sd sf d',0),('ff808081826d7fbf01827b4e872b0007','aaaaaaaaaaaaaaa','product_c20220720','product_subc20220720','shop_20220720',111,111,0,'2022-08-08 02:35:20','2022-08-08 02:35:20',NULL,'sadasdasd',0),('ff808081826d7fbf01827c623b4c0009','wwwwwwwwwwwwwwww','product_c20220720','product_subc20220720','shop_20220720',111,111,0,'2022-08-08 07:36:28','2022-08-08 07:36:28',NULL,'11adasd',0),('ff808081826d7fbf01827c6559be000a','wwwwww','product_c20220720','product_subc20220720','shop_20220720',111,111,0,'2022-08-08 07:39:52','2022-08-08 07:39:52',NULL,'1111',0),('ff808081826d7fbf01827c66d323000b','qqq','product_c20220720','product_subc20220720','shop_20220720',1111,11,0,'2022-08-08 07:41:29','2022-08-08 07:41:29',NULL,'11',0),('ff808081826d7fbf01827c6ae039000c','222','product_c20220720','product_subc20220720','shop_20220720',111,111,0,'2022-08-08 07:45:54','2022-08-08 07:45:54',NULL,'111',0),('ff808081826d7fbf01827c6f88fc000d','222','product_c20220720','product_subc20220720','shop_20220720',111,11,0,'2022-08-08 07:51:00','2022-08-08 07:51:00',NULL,'1',0),('ff808081826d7fbf0182802f35b70014','ddfdf','product_c20220720','product_subc20220720','shop_20220720',322,22,0,'2022-08-09 01:19:13','2022-08-09 01:19:13',NULL,'sasdasd',0),('ff808081826d7fbf0182807d1bbe0015','qwqw','product_c20220720','product_subc20220720','shop_20220720',1111,111,0,'2022-08-09 02:44:18','2022-08-09 02:44:18',NULL,'1111',0),('ff808081826d7fbf0182859c32800016','qweqweq','product_c20220720','product_subc20220720','shop_20220720',111,111,0,'2022-08-10 02:36:23','2022-08-10 02:36:26','https://shop-service-2022.s3.ap-northeast-1.amazonaws.com/product-images/ff808081826d7fbf0182859c32800016.png','waewqeqwe',0),('ff808081826d7fbf0182859da9d10017','wang','product_c20220720','product_subc20220720','shop_20220720',111,111,0,'2022-08-10 02:37:59','2022-08-10 02:38:02','https://shop-service-2022.s3.ap-northeast-1.amazonaws.com/product-images/ff808081826d7fbf0182859da9d10017.png','111',0),('ff808081827c71be01827c75b3a70000','333','product_c20220720','product_subc20220720','shop_20220720',3333,3333,0,'2022-08-08 07:57:44','2022-08-08 07:57:44',NULL,'33333',0),('ff808081827c71be01827c9334dd0001','dfd','product_c20220720','product_subc20220720','shop_20220720',1111,111,0,'2022-08-08 08:29:58','2022-08-08 08:29:58',NULL,'',0),('ff808081827c71be01827c9c7eb40002','3333','product_c20220720','product_subc20220720','shop_20220720',44444,44444,0,'2022-08-08 08:40:07','2022-08-08 08:40:07',NULL,'4444',0),('ff808081827c71be01827c9f743c0003','dddd','product_c20220720','product_subc20220720','shop_20220720',44455,5555,0,'2022-08-08 08:43:21','2022-08-08 08:43:21',NULL,'',0),('ff808081827c71be01827ca136160004','rrr','product_c20220720','product_subc20220720','shop_20220720',6666,6666,0,'2022-08-08 08:45:16','2022-08-08 08:45:16',NULL,'6666',0),('ff808081827c71be01827ca43a090005','555','product_c20220720','product_subc20220720','shop_20220720',5555,5555,0,'2022-08-08 08:48:33','2022-08-08 08:48:33',NULL,'',0),('ff808081827c71be01827ca57fdf0006','dfsf','product_c20220720','product_subc20220720','shop_20220720',5566,66,0,'2022-08-08 08:49:57','2022-08-08 08:49:57',NULL,'66',0),('ff808081827c71be01827caa1db90007','666','product_c20220720','product_subc20220720','shop_20220720',6666,666,0,'2022-08-08 08:54:59','2022-08-08 08:54:59',NULL,'666',0),('ff808081827c71be01827caf5e870008','666','product_c20220720','product_subc20220720','shop_20220720',666,666,0,'2022-08-08 09:00:44','2022-08-08 09:00:44',NULL,'66',0),('ff808081827c71be01827cb2f8470009','7777','product_c20220720','product_subc20220720','shop_20220720',66666,66666,0,'2022-08-08 09:04:40','2022-08-08 09:04:40',NULL,'',0),('ff808081827c71be01827cb44eb8000a','6666','product_c20220720','product_subc20220720','shop_20220720',6666,6666,0,'2022-08-08 09:06:07','2022-08-08 09:06:07',NULL,'',0),('ff808081827c71be01827cb52845000b','555','product_c20220720','product_subc20220720','shop_20220720',6666,66666,0,'2022-08-08 09:07:03','2022-08-08 09:07:03',NULL,'666',0),('ff808081827c71be01827cb74474000c','666','product_c20220720','product_subc20220720','shop_20220720',6666,666,0,'2022-08-08 09:09:21','2022-08-08 09:09:21',NULL,'',0),('ff808081827c71be01827cb8cce5000d','666','product_c20220720','product_subc20220720','shop_20220720',6666,6666,0,'2022-08-08 09:11:02','2022-08-08 09:11:02',NULL,'',0),('ff808081827c71be01827cba797f000e','dadf','product_c20220720','product_subc20220720','shop_20220720',7776666,6666,0,'2022-08-08 09:12:51','2022-08-08 09:12:51',NULL,'',0),('ff808081827c71be01827cbc419f000f','75757','product_c20220720','product_subc20220720','shop_20220720',6666,6666,0,'2022-08-08 09:14:48','2022-08-08 09:14:48',NULL,'',0),('ff808081827c71be01827cc2dd920010','888','product_c20220720','product_subc20220720','shop_20220720',8888,8888,0,'2022-08-08 09:22:01','2022-08-08 09:22:01',NULL,'',0),('ff808081827c71be01827cc4cb510011','778','product_c20220720','product_subc20220720','shop_20220720',88888,888,0,'2022-08-08 09:24:08','2022-08-08 09:24:08',NULL,'888',0),('ff808081827c71be01827cc7fb200012','8888','product_c20220720','product_subc20220720','shop_20220720',888,888,0,'2022-08-08 09:27:37','2022-08-08 09:27:37',NULL,'',0),('ff808081827c71be01827cca0cee0013','fgdg','product_c20220720','product_subc20220720','shop_20220720',7778,8888,0,'2022-08-08 09:29:52','2022-08-08 09:29:52',NULL,'',0),('ff808081827c71be01827ccf0a7e0014','666','product_c20220720','product_subc20220720','shop_20220720',6666,6666,0,'2022-08-08 09:35:19','2022-08-08 09:35:19',NULL,'',0),('ff808081827c71be01827cd0362e0015','888','product_c20220720','product_subc20220720','shop_20220720',888,8888,0,'2022-08-08 09:36:36','2022-08-08 09:36:36',NULL,'',0),('ff808081827c71be01827cd506ef0016','888','product_c20220720','product_subc20220720','shop_20220720',88,888,0,'2022-08-08 09:41:51','2022-08-08 09:41:51',NULL,'',0),('ff808081827c71be01827cd656d30017','77','product_c20220720','product_subc20220720','shop_20220720',988,888,0,'2022-08-08 09:43:17','2022-08-08 09:43:17',NULL,'',0),('ff808081827cd9a301827cdad5340000','788','product_c20220720','product_subc20220720','shop_20220720',888,888,0,'2022-08-08 09:48:12','2022-08-08 09:48:12',NULL,'',0),('ff808081827ce01601827ce0817b0000','88','product_c20220720','product_subc20220720','shop_20220720',88,888,0,'2022-08-08 09:54:24','2022-08-08 09:54:24',NULL,'',0),('ff8080818285a601018285a665020000','889','product_c20220720','product_subc20220720','shop_20220722',999,999,0,'2022-08-10 02:47:30','2022-08-10 02:47:30',NULL,'999',0),('product20220720','product20220720','product_c20220720','product_subc20220720','shop_20220720',11666,12,0,'2022-07-20 13:23:13','2022-08-08 07:17:22','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png','tes production 1',0),('product202207201','product202207201','product_c20220720','product_subc20220720','shop_20220720',500,12,0,'2022-07-20 13:23:13','2022-08-08 07:17:22','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png','tes production 2',0),('product202207202','product202207202','product_c20220720','product_subc20220720','shop_20220720',888,12,0,'2022-07-20 13:23:13','2022-08-08 07:17:22','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png','tes production 3',0),('product202207203','product202207203','product_c20220720','product_subc20220720','shop_20220720',6666,12,0,'2022-07-20 13:23:13','2022-08-08 07:17:22','https://www.meiji.com/global/food/common/img/yogurt/ogp_yogurt.png','tes production 4',0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `id` varchar(64) NOT NULL,
  `name` varchar(100) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='商品大分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES ('product_c20220720','production C1',0,'2022-07-20 13:06:48','2022-07-20 13:06:48');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_subcategory`
--

DROP TABLE IF EXISTS `product_subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_subcategory` (
  `id` varchar(64) NOT NULL,
  `category_id` varchar(64) NOT NULL COMMENT '属于哪个大分类',
  `name` varchar(256) NOT NULL,
  `deleted_flag` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_subcategory_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='商品小分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_subcategory`
--

LOCK TABLES `product_subcategory` WRITE;
/*!40000 ALTER TABLE `product_subcategory` DISABLE KEYS */;
INSERT INTO `product_subcategory` VALUES ('product_subc20220720','product_c20220720','1',0,'2022-07-20 13:07:50','2022-07-20 13:07:50');
/*!40000 ALTER TABLE `product_subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa`
--

DROP TABLE IF EXISTS `qa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qa` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `contact` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `question` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `answer` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `delete_flag` tinyint(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='地址表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa`
--

LOCK TABLES `qa` WRITE;
/*!40000 ALTER TABLE `qa` DISABLE KEYS */;
INSERT INTO `qa` VALUES ('ff80808182588f7101825d642c860015','289727','hi?','',0,'2022-08-02 16:10:22','2022-08-02 16:10:22','testaccountss7201'),('ff80808182588f7101825d6570da0016','289727','hi?','',0,'2022-08-02 16:11:45','2022-08-02 16:11:45','testaccountss7201'),('ff80808182588f7101825d65797f0017','289727','hi?','',0,'2022-08-02 16:11:48','2022-08-02 16:11:48','testaccountss7201'),('ff80808182588f7101825dc3c7980019','sdfsdf','sdfsdfsafdasf','',0,'2022-08-02 17:54:48','2022-08-02 17:54:48','testaccountss7201'),('ff80808182588f7101825dc7fe37001a','sasdasd','asdasdas','',0,'2022-08-02 17:59:24','2022-08-02 17:59:24','testaccountss7201');
/*!40000 ALTER TABLE `qa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refund`
--

DROP TABLE IF EXISTS `refund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refund` (
  `id` varchar(64) NOT NULL,
  `shop_id` varchar(64) NOT NULL,
  `order_id` varchar(64) NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_code` tinyint NOT NULL,
  `payment_id` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `shop_id` (`shop_id`),
  KEY `refunds_ibfk_3` (`payment_id`),
  CONSTRAINT `refunds_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `refunds_ibfk_2` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`),
  CONSTRAINT `refunds_ibfk_3` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='退货';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refund`
--

LOCK TABLES `refund` WRITE;
/*!40000 ALTER TABLE `refund` DISABLE KEYS */;
/*!40000 ALTER TABLE `refund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop` (
  `id` varchar(64) NOT NULL,
  `name` varchar(100) NOT NULL,
  `company_id` varchar(64) NOT NULL,
  `description` text COMMENT '店铺简介',
  `address_id` varchar(64) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` varchar(64) NOT NULL COMMENT '老板id',
  `banner_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shops_ibfk_1` (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES ('ff808081826d7fbf01827bcf80e40008','string111111111','shop0808','string','ff808081822516320182254b43210001','string',1,'2022-08-08 04:56:12','2022-08-08 05:03:33','ff8080818261e9420182625c0f840002',NULL),('ff808081827ba21501827baa53730000','life','onew_2022','life shop','ff80808182251632018234bb5d29001d','string',0,'2022-08-08 04:15:36','2022-08-08 04:20:08','ff808081827ba21501827bae232b0001',NULL),('shop_20220720','LifeShop','shop_20220720','C\'est la vie','add_20220720','09090',0,'2022-07-20 13:25:57','2022-08-10 14:47:38','ff808081823d423a01823d5629970000',NULL),('shop_20220721','shop_20220721','shop_20220721','test shop 2','add_20220721',NULL,0,'2022-07-20 13:25:57','2022-08-05 05:34:13','ff8080818261e9420182625c0f840002',NULL),('shop_20220722','shop_20220722','shop_20220722','test shop 3','add_20220722','12345678',0,'2022-07-20 13:25:57','2022-08-05 05:34:13','ff808081821a080c01821a0e95e40000',NULL);
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `role_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '角色（权限）',
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` varchar(64) NOT NULL,
  `address_id` varchar(64) DEFAULT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL,
  `profile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '头像url',
  `status` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `user_email_uindex` (`email`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('4028818b828662360182866263ca0000','string233',NULL,NULL,'$2a$10$UzupVp7ldmGuQeHufTfoT.aEovi6wJ0ioahBEdPb/NgUSLE4EHxR.','string','string',NULL,'2022-08-10 15:12:51','2022-08-13 08:18:12','string233',NULL,1,'string233',NULL,0),('402883958216482501821648e18b0000',NULL,NULL,NULL,'$2a$10$aZGuz1wUy66PcAtT1XJlsOFXJT60EzTkuvzPZV4UeCSpl7m3fS9JK','123312312','CUSTOMER',NULL,'2022-07-19 20:47:32','2022-08-13 08:20:02','testaccountss3321658231251076',NULL,1,'abc1@ac.com',NULL,0),('40288b8f821966990182196902be0000',NULL,NULL,NULL,'$2a$10$yPlsitqKHMCLcQQhS1cGzOHlqwaIHq0JN6p/MvPiR3kW2KctW0TW2','8021217682','CUSTOMER',NULL,'2022-07-20 11:21:29','2022-08-13 08:21:10','null1658283688614',NULL,1,'2@ac.com',NULL,0),('40288b8f821966990182197e183d0001','awrqwqw22',NULL,NULL,'$2a$10$OWtqlPMpm3nlPHpRH3HQLel3PZerhIBL4fdmW0FxCOsFeHtgM0S7q','11','CUSTOMER',NULL,'2022-07-20 11:44:30','2022-08-13 17:52:36','qweqwe1321658285070389',NULL,0,'3@ac.comdd',NULL,0),('40288b8f821a569201821a6712540000','poipoipoi',NULL,NULL,'$2a$10$mc4XgAWt8zvdQqpVC95GeebPXN9IDb8x1FuxwXWJ8nYd83rvJ3rUe','8021217682','CUSTOMER',NULL,'2022-07-20 15:58:59','2022-08-13 17:53:38','qweqweqwe1658300338719',NULL,0,'4@ac.comeew',NULL,0),('40288b8f821a569201821a691c930001','qweqwasasd',NULL,NULL,'Qwe123123#','8021217682','CUSTOMER',NULL,'2022-07-20 16:01:12','2022-08-04 06:36:23','qweqwasasd1658300472454',NULL,0,'5@ac.com',NULL,0),('40288b8f821a569201821a6aebd80002','123',NULL,NULL,'Qwe123123#','123','CUSTOMER',NULL,'2022-07-20 16:03:11','2022-08-04 06:36:23','qweqeqwqwxx1658300591055',NULL,0,'6@ac.com',NULL,0),('40288b8f821f3cca01821f6e87b70000','qweqweqweqew',NULL,NULL,'$2a$10$k.IAEHGm/UlfaOTGHax/CeGYw/CIN.bSvQy/sW849O6FwnrV4fPvi','8021217682','CUSTOMER',NULL,'2022-07-21 15:25:14','2022-08-04 06:36:23','qweqweqweqew1658384713623',NULL,0,'7@ac.com',NULL,0),('40288b9d821a5c3701821a6b3dd80000','testaccountss7201',NULL,NULL,'$2a$10$mbpvlMWBLJIXCbz0jNuKzODS9.maLQnYkmEVjdkpqrwg.RcFNEBN6','111112222sdad','CUSTOMER',NULL,'2022-07-20 16:03:32','2022-08-04 08:45:14','testaccountss72011658300611795',NULL,0,'333333@!!!!!>coms',NULL,0),('ff80808182161a560182162099c90000','123string',NULL,NULL,'$2a$10$2gtMg3FggOZd0qKXDwaDYOndXyNeIQUCzg0lLsqyhW1E0FMt1naae','string','CUSTOMER',NULL,'2022-07-19 20:03:32','2022-08-04 06:36:23','123string1658228611492',NULL,0,'8@ac.com',NULL,0),('ff808081821a080c01821a0e95e40000','testaccountss720',NULL,NULL,'$2a$10$5Y3OXBW5updzy6oNSCEzpu/7.aYa3Fr.pxE9OPQRQ2y8xVBr8dici','12345678','SHOPOWNER',NULL,'2022-07-20 14:22:20','2022-08-05 02:53:37','testaccountss7201658294539149',NULL,0,'10@ac.com',NULL,0),('ff808081821e19ed01821e2831b40000','liutest',NULL,NULL,'$2a$10$jPyXNEzb9FBfKQ2rCtzHj.LrpY1DnRnuPNkL6Q17RGbL654ptJOS2','07033333333','CUSTOMER',NULL,'2022-07-21 09:28:47','2022-08-04 06:36:23','liutest1658363326785',NULL,0,'5@ac1.com',NULL,0),('ff808081821ff73a01821ffa82460000','shopadmin',NULL,NULL,'$2a$10$aNxf7/Nz2rIL2Jwyf21/0./ATBFBkS6FgBMb1us.yOR0dIT5f/B06','12345678','ADMIN',NULL,'2022-07-21 17:58:07','2022-08-04 08:55:01','testaccountss72021658393887059',NULL,0,'5@ac2.com',NULL,0),('ff808081822516320182251834570000','',NULL,NULL,'$2a$10$QobBzSYQtQmRL7m6qpmv7eg8O6OCPgH28.aJYe5s9qrpBIGAdLVMy','','CUSTOMER',NULL,'2022-07-22 17:48:40','2022-07-27 02:41:12','testwang1658479719484',NULL,0,'5@ac3.com',NULL,0),('ff80808182380169018238465e100000','test0726',NULL,NULL,'$2a$10$TTd8kC/mqAzMCN17MKY8eeaIsxsxTP7/.DZxPVNCouFS9L/k1QjGO','0774444444','CUSTOMER',NULL,'2022-07-26 11:11:52','2022-07-27 06:13:12','test07261658801511869',NULL,0,'5@ac4.com',NULL,0),('ff8080818238f8a30182391bfb610000','testaccountss726',NULL,NULL,'$2a$10$cdNqTitTk5bF4BLSI8gVkuZwwg1sMNkSQ38w5pzPxiFLxBMpuoUc.','12345678','CUSTOMER',NULL,'2022-07-26 15:05:12','2022-07-27 02:41:12','testaccountss7261658815511126',NULL,0,'5@ac5.com',NULL,0),('ff808081823b5f5e01823b619f170000','string',NULL,NULL,'$2a$10$2mvySBvtpAXForTb7DC2ZO1eiIdW6JdUCbl1VsC3fYYyuzJj57PX2','string','SHOPOWNER',NULL,'2022-07-27 01:40:30','2022-08-08 04:18:28','string1658853629690',NULL,0,'5@ac6.com',NULL,0),('ff808081823d2f5601823d3e6ef40000','test0727liu',NULL,NULL,'$2a$10$SL0v5bsF.ymqFDQIgqIV6OV37E7YSiDb23KVh34KGa6NnyfakJLya','076666666','CUSTOMER',NULL,'2022-07-27 10:21:18','2022-07-27 02:41:12','test0727liu1658884877859',NULL,0,'5@ac7.com',NULL,0),('ff808081823d423a01823d5629970000','string1',NULL,NULL,'$2a$10$QHA9iSL0nS3ETkyO2PhlhOfBBIqxtAT1.USVz1Kz3wdSF.mC5W9re','string','SHOPOWNER',NULL,'2022-07-27 10:47:13','2022-08-03 02:56:37','string11658886433150',NULL,0,'5@ac8.com',NULL,0),('ff8080818261e9420182625c0f840002','string2',NULL,NULL,'$2a$10$nixPWhp.5RFpz6a4iHEP7ucazuCSl/9y6bpiqeAHdfSwzBzmRbAcO','string','SHOPOWNER',NULL,'2022-08-03 15:19:37','2022-08-03 06:25:26','string21659507576693',NULL,0,'string',NULL,0),('ff808081826d7fbf018286d0146d0018','wang',NULL,NULL,'$2a$10$d2RcRPLrRmu3.DoVD3K0geoDHfH0C/t6haslF41GgZXvsSolTj//u',NULL,'CUSTOMER',NULL,'2022-08-10 17:12:40','2022-08-10 17:12:40','wang',NULL,0,'wyh190033@live.com',NULL,0),('ff808081826d7fbf018286d301490019','yanhe',NULL,NULL,'$2a$10$rli5tMRBAiAqu4szFT4Sg.0We/8AaiV3iFbEEVn3sc.Sfsqb31cyC',NULL,'CUSTOMER',NULL,'2022-08-10 17:15:52','2022-08-10 17:15:52','yanhe',NULL,0,'wyh190ww033@live.com',NULL,0),('ff808081827b4c4301827b96f3250000','admin',NULL,NULL,'$2a$10$rEiaVxN5aaE0TZQNMpYhy.9Gy8kuatiHPQRuZ3.xz1MDF5cogMaVG','string','ADMIN',NULL,'2022-08-08 12:54:26','2022-08-17 13:12:16','admin1659930866443',NULL,0,'1173359575zmn@gmail.com',NULL,0),('ff808081827ba21501827bae232b0001','owner1',NULL,NULL,'$2a$10$lnXuzD9cZ1fFJKN/EFDknu705l/wJX3NlW4of4DiReaJY2iej9hV6','string','SHOPOWNER',NULL,'2022-08-08 13:19:46','2022-08-08 04:20:21','owner11659932386073',NULL,0,'owner1@owner',NULL,0),('ff80808182863f410182865a85ba0002','string23',NULL,NULL,'$2a$10$HrMkWxXW7biTzP.7gCj19.sHVwoQYuBMd5BoxtD.vosAFxJDp2pHm','string1','CUSTOMER',NULL,'2022-08-10 15:04:16','2022-08-17 12:11:30','string23',NULL,0,'string2',NULL,0),('ff80808182a9c73b0182a9cb90780000','string111',NULL,NULL,'$2a$10$2TEK/vahZwxYGLONCzw3aOcdZtYPYiir5HN0P5YzWtAZYIEkS4xBm','string','string',NULL,'2022-08-17 12:14:27','2022-08-17 12:14:27','string111',NULL,0,'string11',NULL,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_token`
--

DROP TABLE IF EXISTS `user_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_token` (
  `id` varchar(64) NOT NULL,
  `token` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `expiry_date` timestamp NOT NULL DEFAULT ((now() + interval 30 minute)),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_token_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_token`
--

LOCK TABLES `user_token` WRITE;
/*!40000 ALTER TABLE `user_token` DISABLE KEYS */;
INSERT INTO `user_token` VALUES ('ff80808182479bff018247c148000002','8f7470a7-a61a-4181-8468-4cd0021acb27','ff80808182380169018238465e100000','2022-07-29 11:50:25'),('ff80808182aa21510182aa223c450000','1404d0ef-e779-435e-a666-d8599eb8a3c0','ff808081827b4c4301827b96f3250000','2022-08-17 14:19:07');
/*!40000 ALTER TABLE `user_token` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-17 14:19:02
