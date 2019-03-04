-- MySQL dump 10.13  Distrib 5.5.53, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: shop
-- ------------------------------------------------------
-- Server version	5.5.53

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `number` int(11) NOT NULL,
  `ctime` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `goods_prices` varchar(20) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (39,28,'15670507992',3,1551333733,2,'2.00');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `cate_id` int(3) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(13) NOT NULL,
  `cate_show` varchar(12) NOT NULL,
  `cate_navshow` varchar(13) NOT NULL,
  `pid` int(3) NOT NULL,
  `level` varchar(19) NOT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'家用电器','1','1',0,'1'),(2,'手机','1','1',0,'1'),(3,'电脑','1','1',0,'1'),(4,'男装','1','1',104,'2'),(5,'电视','1','1',1,'2'),(6,'空调','1','1',1,'2'),(7,'洗衣机','1','1',1,'2'),(8,'手机通讯','1','1',2,'2'),(9,'手机配件','1','1',2,'2'),(10,'笔记本','1','1',105,'3'),(11,'游戏本','1','1',105,'3'),(12,'平板电脑','1','1',105,'3'),(13,'T恤','1','1',4,'3'),(14,'牛仔裤','1','1',4,'3'),(15,'羽绒服','1','1',4,'3'),(16,'曲面电视','1','1',5,'3'),(17,'超薄电视机','1','1',5,'3'),(18,'手机','1','1',8,'3'),(19,'游戏手机','1','1',8,'3'),(38,'图书','1','1',0,'1'),(23,'网络电视','1','1',5,'3'),(24,'衬衫','1','1',4,'2'),(41,'滚筒洗衣机','1','1',7,'3'),(40,'中央空调','1','1',6,'3'),(39,'壁挂式空调','1','1',6,'3'),(37,'食品','1','1',0,'1'),(53,'零食','1','1',48,'3'),(43,'联想笔记本','1','1',53,'3'),(44,'女鞋','1','1',94,'2'),(45,'帆布鞋','1','1',44,'3'),(46,'休闲鞋','1','1',44,'3'),(47,'新鲜水果','1','1',37,'2'),(48,'进口食品','1','1',37,'2'),(49,'苹果','1','1',47,'3'),(50,'香蕉','1','1',47,'3'),(51,'牛奶','1','1',48,'3'),(52,'巧克力','1','1',48,'3'),(54,'文学','1','1',38,'2'),(55,'童书','1','1',38,'2'),(56,'教材教辅','1','1',38,'2'),(57,'励志','1','1',38,'2'),(58,'小说','1','1',54,'3'),(59,'散文随笔','1','1',54,'3'),(60,'青春文学','1','1',54,'3'),(61,'0-2岁','1','1',55,'3'),(62,'3-4岁','1','1',55,'3'),(63,'5-10岁','1','1',55,'3'),(64,'绘本','1','1',55,'3'),(65,'中小学教辅','1','1',56,'3'),(66,'考试','1','1',56,'3'),(67,'外语学习','1','1',56,'3'),(68,'字典词典','1','1',56,'3'),(69,'管理','1','1',57,'3'),(70,'金融','1','1',57,'3'),(71,'经济','1','1',57,'3'),(72,'市场营销','1','1',57,'3'),(73,'领导力','1','1',57,'3'),(74,'股票','1','1',57,'3'),(75,'男鞋','1','1',94,'2'),(76,'正装鞋','1','1',44,'3'),(77,'妈妈鞋','1','1',44,'3'),(78,'雪地靴','1','1',44,'3'),(79,'豆豆鞋','1','1',44,'3'),(80,'中跟鞋','1','1',44,'3'),(81,'高跟鞋','1','1',44,'3'),(82,'皮鞋','1','1',75,'3'),(83,'雨鞋','1','1',75,'3'),(84,'增高鞋','1','1',75,'3'),(85,'精选肉类','1','1',37,'2'),(86,'猪肉','1','1',85,'3'),(87,'牛肉','1','1',85,'3'),(88,'鸡肉','1','1',85,'3'),(89,'鸭肉','1','1',85,'3'),(90,'冷鲜肉','1','1',85,'3'),(91,'4k超清电视','1','1',5,'3'),(92,'中央空调','1','1',6,'3'),(93,'变频空调','1','1',6,'3'),(94,'鞋类','1','1',0,'1'),(95,'手机壳','1','1',9,'3'),(96,'贴膜','1','1',9,'3'),(97,'充电器','1','1',9,'3'),(98,'蓝牙耳机','1','1',9,'3'),(99,'手机挂饰','1','1',9,'3'),(100,'苹果周边','1','1',9,'3'),(101,'手机支架','1','1',8,'3'),(102,'移动电源','1','1',8,'3'),(103,'充电宝','1','1',8,'3'),(104,'服装','1','1',0,'1'),(105,'电脑整机','1','1',3,'2'),(106,'玩具','1','1',0,'1');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `code`
--

DROP TABLE IF EXISTS `code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(6) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `timeout` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `code`
--

LOCK TABLES `code` WRITE;
/*!40000 ALTER TABLE `code` DISABLE KEYS */;
INSERT INTO `code` VALUES (6,'4327','15670507992',1550801870,1);
/*!40000 ALTER TABLE `code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `goods_id` int(3) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(34) NOT NULL,
  `goods_img` varchar(250) NOT NULL,
  `goods_price` decimal(13,2) NOT NULL,
  `goods_marketprice` varchar(255) NOT NULL COMMENT '市场价格',
  `goods_desc` varchar(225) NOT NULL COMMENT '详情',
  `goods_score` int(13) NOT NULL COMMENT '积分',
  `goods_pnum` int(13) NOT NULL,
  `goods_imgs` varchar(225) NOT NULL,
  `goods_hot` varchar(225) NOT NULL COMMENT '推荐',
  `is_sell` varchar(21) NOT NULL,
  `brand_id` int(3) NOT NULL,
  `cate_id` int(3) NOT NULL,
  `goods_new` varchar(32) NOT NULL,
  `goods_thumb` varchar(255) NOT NULL,
  `goods_sn` varchar(30) NOT NULL,
  `goods_img_desc` varchar(255) NOT NULL,
  `editorValue` varchar(255) NOT NULL,
  `is_tell` varchar(2) NOT NULL,
  `is_hot` varchar(21) NOT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=173 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (27,'超薄24k电视','20181221\\ef41e478edc56c97af0f0df8871ba6a3.jpg',1.00,'2121','',2121,21212,'','新品,热卖','1',37,17,'2','','','','','2','1'),(28,'网络超级电视大屏幕','20181221\\61064cbdc0dd3d021d5cc706776018dd.jpg',2.00,'1212','',121212,7,'','新品,精品','1',37,23,'2','','','','','1','1'),(26,'联想曲面电视机','20181221\\a355136922c68d99a2be58908629c98a.jpg',3.00,'1212','',212,3,'','新品','1',37,16,'2','','','','','1','1'),(25,'超薄4K电视（枪色）','20181221\\65b3c8e514d9424d3f2981c36693a99b.jpg',4.00,'2121','',1212,212,'','新品','1',33,17,'2','','','','','1','1'),(24,'4K电视金属机身（枪色）','20181221\\1d396585b02c31d7ffb0dd2ec6939a76.jpg',5.00,'2332','',32,32,'','新品','1',38,23,'2','','','','','1','2'),(23,' 55英寸32核人工智能 ','20181221\\6f873c45e4303566f0a699b0d167f1b7.jpg',2121.00,'2233','',3232,232,'','新品,精品','1',33,16,'2','','','','','1','2'),(22,'人工智能遥控','20181221\\8dce9acddd4d5f7ae6ce2a4b31728436.jpg',2333.00,'2222','',2222,2222,'','新品,精品','1',37,17,'2','','','','','1','2'),(21,'TCL 55A950C 55英寸32核人工智能 HDR曲面超薄4K电','20181221\\5983dc94941919515edfddfa896a98c4.jpg',3299.00,'3300','',2212,13333,'','新品,精品,热卖','1',38,16,'2','','','','','1','2'),(29,'Ipone XsMax','20181221\\81eada78c391914007950988ecd4b9fa.jpg',9999.00,'9999','<img src=\"/uploads/20181221\\cb14bf4360ab8243856d44be305d9437.jpg\" alt=\"富文本上传文件\">',6666,66,'','新品,精品,热卖','1',34,19,'2','','','','','1','2'),(30,'OppoR15','20181221\\f8277acd337501e6cce340b4cbd7230f.jpg',2121.00,'2121','',21212,212,'','新品,精品,热卖','1',35,18,'1','','','','','1','2'),(31,'oppo r15热卖手机精品','20181221\\9493813286e6e6e8bf36b61802d94758.jpg',1212.00,'2121','',12121,1212,'','新品,精品,热卖','1',35,18,'1','','','','','1','2'),(32,'耐用电源','20181221\\06438b861facd6bdd9c965e34abfb98a.jpg',1212.00,'2121','',2121,1212,'','新品,精品','1',35,102,'1','','','','','1','2'),(33,'大容量','20181221\\620f850c0a657e9138326c7418fb4740.jpg',1212.00,'2121','',212,212,'','新品,精品,热卖','1',36,97,'1','','','','','1','2'),(34,'超大容量充电宝','20181221\\9ea1efe400027d716a808594e80cfa14.jpg',212.00,'212','',212,2121,'','新品,精品','1',33,103,'1','','','','','1','2'),(35,'苹果屏保','20181221\\68ea95e5b492a71453d26ee852decde3.jpg',19.00,'12','',12,21,'','新品','1',34,100,'1','','','','','1','2'),(36,'手机壳苹果','20181221\\669805be11c45652abf60de17870fca7.jpg',121.00,'212','',212,212,'','新品','1',34,9,'1','','','','','1','2'),(37,'联想笔记本游戏本','20181221\\af9968eb6ce823bfc5b2987b29e8e6a8.jpg',7999.00,'488','',232,333,'','精品','1',37,11,'1','','','','','1','2'),(38,'华为大内存电脑商务','20181221\\2947e61df6d5eef47c210da6b29a7e3c.jpg',2333.00,'222','',222,222,'','热卖','1',33,10,'1','','','','','1','2'),(39,'苹果新版本电脑','20181221\\e3872e0c4f939a5b843a26a5dce8fca4.jpg',1223.00,'222','',111,1111,'','新品,精品,热卖','1',34,2,'1','','','','','1','2'),(40,'笔记本5G运行','20181221\\f394368bb87f6aa07c166a81bfe1d40f.jpg',4444.00,'4444','',222,2222,'','新品,精品','1',37,43,'1','','','','','1','2'),(41,'大内存 4G运行','20181221\\a4d5d9e96d3d13d0e41d29b80c68103c.jpg',222.00,'222','',22,222,'','新品','1',33,10,'1','','','','','1','2'),(42,'二手电脑','20181221\\0890d7470596f59bafd8871a8e145d5e.jpg',122.00,'111','',1,1,'','新品','1',37,11,'1','','','','','1','2'),(43,'平板新品电脑','20181221\\9fa74392971c29a86acc6b23764ce6c5.jpg',444.00,'333','',22,122,'','新品','1',38,12,'1','','','','','1','2'),(44,'小型电脑','20181221\\acbb5a42894445fa26815d574f7f8822.jpg',888.00,'444','',88,888,'','新品,精品','1',37,43,'1','','','','','1','2'),(45,'火龙果','20181221\\f86f11ea977ee6cc9d8cb1c11e699c72.PNG',212.00,'212','',212,212,'','新品,热卖','1',40,47,'1','','','','','1','2'),(46,'盒装巧克力德芙','20181221\\a707e3f02e40fa1609e48f57e2684c40.PNG',33.00,'33','',33,33,'','新品','1',39,52,'1','','','','','1','2'),(47,'礼盒装','20181221\\ee0d6994b23c709715c60967382247df.PNG',455.00,'555','',55,555,'','新品,精品','1',39,52,'1','','','','','1','2'),(48,'生日礼物巧克力','20181221\\4695c398656b5a7008512a57815d2352.PNG',322.00,'223','',2,22,'','新品','1',39,52,'1','','','','','1','2'),(49,'情人节巧克力情人','20181221\\ae42aa5f0cffb5057f97ae652b6f357b.PNG',323.00,'234','',32,32,'','新品,精品','1',0,52,'1','','','','','1','2'),(80,'','',0.00,'','',0,0,'','','',0,3,'','','','','','1','2'),(81,'','',0.00,'','',0,0,'','','',0,4,'','','','','','1','2'),(51,'233','20181221\\31270f2165a75914aa45fe2e55a03a01.PNG',32.00,'323','',323,23,'','新品','1',34,47,'1','','','','','1','2'),(52,'礼物巧克力盒装','20181221\\41b6d6e9a3d75f5d1b79b79b9c4d5d71.PNG',212.00,'212','',121,12,'','新品,精品','1',39,52,'1','','','','','1','2'),(53,'格林童话','20181221\\b69f65f7685d73d74673a2b71239141c.PNG',44.00,'55','',55,55,'','新品','1',37,63,'1','','','','','1','2'),(54,'我想去看海','20181221\\b839ceed631c4a084fbc8f277994db49.PNG',211.00,'212','',21,21,'','新品,热卖','1',37,64,'1','','','','','1','2'),(55,'爸爸的池塘','20181221\\6fcc8d49c699fe87b9b0301287729511.PNG',323.00,'23','',32,32,'','新品,热卖','1',37,63,'1','','','','','1','2'),(56,'童话绘本','20181221\\3a02a6596b6fcf69f6635022f02abbd6.PNG',333.00,'33','',33,33,'','精品','1',37,64,'1','','','','','1','2'),(57,'这个东西能吃吗','20181221\\72a4a151120646713d0d1ea55ff9e0f4.PNG',55.00,'55','',5,5,'','新品,精品','1',37,64,'1','','','','','1','2'),(58,'心理','20181221\\6802115398fcd4e698c2043d53bdfb1a.PNG',53.00,'44','',55,55,'','新品,精品','1',37,60,'1','','','','','1','2'),(59,'好好吃饭','20181221\\00440503105976cbb9710994268e0608.PNG',23.00,'32','',32,32,'','新品','1',37,62,'2','','','','','1','2'),(60,'那一年','20181221\\8c83d7a357c86e082392198530bb9a88.PNG',44.00,'44','',44,44,'','新品','1',37,56,'2','','','','','1','2'),(61,'阿迪正品','20181221\\33ec8630cd136c0dc866c1d9f6444bbf.jpg',333.00,'333','',333,333,'','新品','1',26,46,'2','','','','','1','2'),(62,'彪马正品','20181221\\66f130e232b9edee2282c272a8bcb967.jpg',444.00,'444','',444,444,'','新品,热卖','1',24,46,'2','','','','','1','2'),(63,'彪马男','20181221\\30f5f1e6faeec6e16b1cebeaf078fb11.jpg',3434.00,'3434','',434,434,'','新品','1',24,84,'2','','','','','1','2'),(64,'乔丹旗舰店正品','20181221\\38cff4512f69d889cac892f96034083d.jpg',445.00,'545','',34,545,'','新品,热卖','1',23,75,'2','','','','','1','2'),(65,'豆豆鞋男皮','20181221\\ef7d5f53752663fa363f091d426e1765.jpg',323.00,'32','',32,32,'','新品,精品','1',26,79,'2','','','','','1','2'),(66,'正装鞋','20181221\\da54b67d331b558be097f38f0aef6dbb.jpg',3232.00,'32323','',3223,32,'','新品,精品','1',14,76,'2','','','','','1','2'),(67,'阿迪休闲','20181221\\eea57913ade23d541f6382cf9ac55d5b.jpg',334.00,'444','',4,4,'','精品','1',26,46,'1','','','','','1','2'),(68,'增高乔丹','20181221\\4d8673049eb2d223574cb4c3ff319eaa.jpg',212.00,'212','',212,212,'','新品','1',23,84,'1','','','','','1','2'),(69,'休闲裤','20181221\\03350ed6033c8267217580b8e19a12bd.jpg',77.00,'77','',7,7,'','精品,热卖','1',26,4,'1','','','','','1','2'),(70,'休闲裤清凉','20181221\\9f2f09d7dad7f106996a7fe5b1b4ab02.jpg',333.00,'333','',33,33,'','新品','1',25,4,'2','','','','','1','2'),(71,'裤子','20181221\\4b5bb9a646372202d63ce15a3d41f738.jpg',12221.00,'21212','',21,21,'','精品','1',23,14,'1','','','','','1','2'),(72,'男T','20181221\\99034ba51be2f23ae1b4d6b44261754e.jpg',323.00,'233','',323,332,'','新品','1',24,13,'2','','','','','1','2'),(73,'帅','20181221\\a66113405263c72b6dc6d310abce6230.jpg',323.00,'323','',32,32,'','新品','1',14,24,'1','','','','','1','2'),(74,'超高大上衬衫','20181221\\4fb97cc84cac1381f17817291b9fe357.jpg',323.00,'323','',32,23,'','新品','1',23,24,'1','','','','','1','2'),(75,'baiT','20181221\\c0910dc1e6519a6b53e7c2a675f3b819.jpg',121.00,'21','',21,21,'','新品','1',27,13,'1','','','','','1','2'),(76,'裤子黑','20181221\\a9bc4a8ca5ee0b8617149aef6e3110fb.jpg',323.00,'23','',32,32,'','新品','1',24,14,'1','','','','','1','2'),(86,'大苹果','20190102\\9f70cfcce79d0837432863558b85d8a7.jpg',2.00,'1','<img src=\"/uploads/20190102\\cc5542a10ef78ee274f0317f2b09de87.jpg\" alt=\"富文本上传文件\">',1,1,'|20190102\\c3db09bb321893c2bdbf867b6a3652d7.jpg|20190102\\a80fed794f27a6b0cb730401267f5776.jpg|20190102\\4393fb532b4c0fd241187771405cc0c7.jpg','新品','1',34,18,'1','','','','','1','2'),(87,'大苹果','20190102\\9f70cfcce79d0837432863558b85d8a7.jpg',2.00,'1','<img src=\"/uploads/20190102\\cc5542a10ef78ee274f0317f2b09de87.jpg\" alt=\"富文本上传文件\">',1,1,'|20190102\\c3db09bb321893c2bdbf867b6a3652d7.jpg|20190102\\a80fed794f27a6b0cb730401267f5776.jpg|20190102\\4393fb532b4c0fd241187771405cc0c7.jpg','新品','1',34,18,'1','','','','','1','2'),(168,'诺基亚N85','20190108\\f4acb085898ddd589587260ac88b9507.jpg',100.00,'','',0,0,'','','',37,2,'','20190108\\92cc5b9b0796560f78937410d816526f.jpg','SN2019010800168','','','1','2'),(169,'计算机','20190109\\7671f499fcbbf8d58d5e81d7823c160d.jpg',1000.00,'','',23,4,'','新品','1',37,5,'','20190109\\d244b0eb4aef3ea84eb10514633802d8.jpg','SN2019010900169','','<p><img src=\"/ueditor/php/upload/image/20190109/1547001745357034.jpg\" title=\"1547001745357034.jpg\" alt=\"59e42823N6ab33bf2.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20190109/1547001757899622.jpg\" title=\"1547001757899622.jpg\"/></p><p><img src=\"/uedit','1','2'),(170,'eeeeeeeee','20190109\\eea5d6a7cf2a030f15d9e8646bdb40a3.jpg',0.00,'','',0,0,'','','1',37,5,'','20190109\\35eefaedf63f6f3c621aedf08a25b06a.jpg','SN2019010900170','','','1','2'),(171,'eeeeeeeee','20190109\\5eb4eb4b3055911e22dbc397875cb79a.jpg',0.00,'','',0,0,'','','1',37,5,'','20190109\\38604fc3f26993906bd9ffc644b2be9f.jpg','SN2019010900171','','','1','2'),(172,'新品苹果手机','20190109\\43eab978d5dd4dcfa958f51e03a84a56.jpg',19.00,'','',2,4,'','','1',37,5,'','20190109\\a11ae1119971171887dd1febd75221da.jpg','SN2019010900172','','<p><img src=\"/ueditor/php/upload/image/20190109/1547003085100048.jpg\" title=\"1547003085100048.jpg\" alt=\"59e42823N6ab33bf2.jpg\"/><img src=\"/ueditor/php/upload/image/20190109/1547003089469562.jpg\" title=\"1547003089469562.jpg\" alt=\"59e42830N9da56c41.jpg\"/></','1','2'),(165,'诺基亚N85','20190107\\0c1b328a9eb859d5f94c362162a01dc9.jpg',1414.00,'232','',12,1,'','新品','1',24,2,'1','20190107\\ed2040c99523e6f8b3e3cd848ee678ff.jpg','SN2019010700165','','20190107\\ed2040c99523e6f8b3e3cd848ee678ff.jpg','1','2'),(166,'诺基亚N85','20190107\\cf4b8960df2747cd6b4c39e099ac6f89.jpg',144.00,'23323','',211,400,'','新品','1',24,2,'1','20190107\\638c1a36b3bb8ed8694caa13e9bc8f66.jpg$this->assign(\'attrInfo\',20190107\\ed2040c99523e6f8b3e3cd848ee678ff.jpg','SN2019010700166','','20190107\\ed2040c99523e6f8b3e3cd848ee678ff.jpg','1','2'),(167,'诺基亚N85','',4114.00,'323','',121,400,'','新品','1',24,2,'1','20190107\\638c1a36b3bb8ed8694caa13e9bc8f66.jpg20190107\\638c1a36b3bb8ed8694caa13e9bc8f66.jpg','SN2019010700167','','20190107\\ed2040c99523e6f8b3e3cd848ee678ff.jpg','1','2');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order`
--

DROP TABLE IF EXISTS `shop_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` char(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_amount` decimal(10,0) NOT NULL,
  `order_pay_type` tinyint(4) NOT NULL,
  `pay_status` tinyint(4) NOT NULL,
  `pay_way` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `ctime` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order`
--

LOCK TABLES `shop_order` WRITE;
/*!40000 ALTER TABLE `shop_order` DISABLE KEYS */;
INSERT INTO `shop_order` VALUES (52,'201902280546401270',24,2,1,2,2,1,1551332800),(53,'201902280602316247',24,2,1,2,2,1,1551333751);
/*!40000 ALTER TABLE `shop_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order_address`
--

DROP TABLE IF EXISTS `shop_order_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_receive_name` varchar(20) NOT NULL,
  `receive_phone` varchar(12) NOT NULL,
  `city_id` varchar(20) NOT NULL DEFAULT '1',
  `receive_address` varchar(255) NOT NULL,
  `ctime` int(11) NOT NULL,
  `is_default` varchar(11) NOT NULL,
  `is_del` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order_address`
--

LOCK TABLES `shop_order_address` WRITE;
/*!40000 ALTER TABLE `shop_order_address` DISABLE KEYS */;
INSERT INTO `shop_order_address` VALUES (14,53,24,'郜婧辛','156707986','121','1212',1551333797,'0',1),(13,52,24,'qqq','212','12','212',1551333344,'0',2);
/*!40000 ALTER TABLE `shop_order_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_order_detail`
--

DROP TABLE IF EXISTS `shop_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_no` char(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `goods_name` varchar(255) NOT NULL,
  `buy_number` int(11) NOT NULL,
  `goods_image` varchar(255) NOT NULL,
  `goods_price` varchar(20) NOT NULL,
  `comnent_status` tinyint(4) NOT NULL,
  `status` int(11) NOT NULL,
  `ctime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_order_detail`
--

LOCK TABLES `shop_order_detail` WRITE;
/*!40000 ALTER TABLE `shop_order_detail` DISABLE KEYS */;
INSERT INTO `shop_order_detail` VALUES (70,53,'201902280602316247',24,28,'网络超级电视大屏幕',3,'20181221\\61064cbdc0dd3d021d5cc706776018dd.jpg','2.00',1,1,1551333751),(69,52,'201902280546401270',24,28,'网络超级电视大屏幕',4,'20181221\\61064cbdc0dd3d021d5cc706776018dd.jpg','2.00',1,1,1551332800);
/*!40000 ALTER TABLE `shop_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(11) NOT NULL,
  `pwd` varchar(34) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (24,'15670507992','96e79218965eb72c92a549dd5a330112');
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

-- Dump completed on 2019-03-02 10:33:05
