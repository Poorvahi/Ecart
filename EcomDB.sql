-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,1,'macbook air 2',150000.000,'mac-1.png',1,NULL,NULL),(2,2015,'noise colorfit pro 4 ',2500.000,'rachit-tank-2cFZ_FB08UM-unsplash.jpg',1,NULL,NULL),(10,1,'macbook air 2',150000.000,'mac-1.png',-2,-300000,'dev@gmail.com'),(15,2017,'JBL Tune 760NC',4500.000,'JBL_JR 310BT_Product Image_Hero_Skyblue.png',1,4500,'null'),(16,2017,'JBL Tune 760NC',4500.000,'JBL_JR 310BT_Product Image_Hero_Skyblue.png',1,4500,'null'),(17,2015,'noise colorfit pro 4 ',2500.000,'rachit-tank-2cFZ_FB08UM-unsplash.jpg',1,2500,'null'),(18,2017,'JBL Tune 760NC',4500.000,'JBL_JR 310BT_Product Image_Hero_Skyblue.png',1,4500,'null'),(22,2015,'noise colorfit pro 4 ',2500.000,'rachit-tank-2cFZ_FB08UM-unsplash.jpg',1,2500,'null'),(23,2015,'noise colorfit pro 4 ',2500.000,'rachit-tank-2cFZ_FB08UM-unsplash.jpg',1,2500,'null'),(26,1,'macbook air 2',150000.000,'mac-1.png',1,150000,'null'),(27,1,'macbook air 2',150000.000,'mac-1.png',1,150000,'null'),(34,2017,'JBL Tune 760NC',4500.000,'JBL_JR 310BT_Product Image_Hero_Skyblue.png',1,4500,'shivanshi@gmail.com'),(35,2016,'airdopes 141',3000.000,'archer-allstars-MtOxWtXBhEg-unsplash.jpg',1,3000,'shivanshi@gmail.com');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'mobile'),(2,'laptop'),(3,'tv'),(4,'washing machine'),(5,'earbuds'),(6,'Camera'),(8,'Fridge');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES ('dev@gmail.com','excellent');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'mac','dev@gmail.com','good',5,'yes','excellent','excellent','good'),(2,'Poorvahi Kadwe','poorvahikadwe@gmail.com','excellent',4,'yes','good','excellent','no');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('poorvahi','12345678','user','poorvahikadwe@gmail.com',9285246391),('lakki','l123','user','lakshita.kadwe@queenscollegeindore.org',NULL),('lakki','l123','user','lakshita.kadwe@queenscollegeindore.org',NULL),('rishi','123','user','hi@123gmail.com',NULL),('shivi','1111','user','shivanshi@gmail.com',NULL),('dev12','12345678','User','devansh1234@gmail.com',NULL),('pihu','111','Admin','pihusingh@gmail.com',NULL),('khushi','2222','admin','khushijain@gmail.com',NULL),('jiya','jiya','admin','jiyayadav@gmail.com',NULL),('niti','123','admin','nitishas@gmail.com',NULL),('kirti','123','user','kirtijain@gmail.com',NULL),('kirti','123','user','kirtijain@gmail.com',NULL),('dev12','12345678','user','dev@gmail.com',NULL),('dev14','12345678','user','dev@gmail.com',NULL),('hina','hina12','user','hinakhan12@gmail.com',NULL),('Poorvi','poorvi','user','poorvahik@gmail.com',NULL),('piku','123456','user','poorvahikadwe@gmail.com',NULL),('preeti','123456','user','poorvahikadwe@gmail.com',NULL);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'pay_RlVCS5LI4zSZFz',150000.00,'poorvahikadwe@gmail.com',1,'macbook air 2','2025-11-29 14:45:53','mac-1.png'),(2,'pay_RlVKLsYmmaF5ZD',60000.00,'poorvahikadwe@gmail.com',2014,'whirlpool freshcare','2025-11-29 14:51:07','raychan-vkpVPcIBU5U-unsplash.jpg'),(3,'pay_RlVNSIaWKkZrqr',500000.00,'poorvahikadwe@gmail.com',2013,'LG Television 400','2025-11-29 14:54:03','kam-idris-L9-sfN04jdk-unsplash.jpg'),(4,'pay_Rm3CNgZ9dLrEmn',25000.00,'poorvahikadwe@gmail.com',2023,'MI phone','2025-11-30 23:59:09','christian-wiediger-70ku6P7kgmc-unsplash.jpg'),(5,'pay_Rn5t4X4jkq7uTU',2500.00,'poorvahikadwe@gmail.com',2015,'noise colorfit pro 4 ','2025-12-03 15:18:45','rachit-tank-2cFZ_FB08UM-unsplash.jpg'),(6,'pay_Rn5t4X4jkq7uTU',3400.00,'poorvahikadwe@gmail.com',2020,'Noise Two Wireless','2025-12-03 15:18:45','JBL_E55BT_KEY_RED_6063_FS_x1-1605x1605px.webp'),(7,'pay_RnSDpwwxTic5lX',2500.00,'poorvahikadwe@gmail.com',2015,'noise colorfit pro 4 ','2025-12-04 13:06:51','rachit-tank-2cFZ_FB08UM-unsplash.jpg'),(8,'pay_RnSDpwwxTic5lX',4500.00,'poorvahikadwe@gmail.com',2017,'JBL Tune 760NC','2025-12-04 13:06:51','JBL_JR 310BT_Product Image_Hero_Skyblue.png'),(9,'pay_RnSDpwwxTic5lX',19000.00,'poorvahikadwe@gmail.com',2019,'Samsung Ecobubble','2025-12-04 13:06:51','planetcare-5cpBWEl6y6c-unsplash.jpg'),(10,'pay_RnWsN54gguA5v8',15000.00,'poorvahikadwe@gmail.com',2026,'headphones','2025-12-04 17:40:06','JBL_Quantum_400_Product Image_Hero 02.png'),(11,'pay_RpVgBztZCdoqD4',2500.00,'poorvahikadwe@gmail.com',2015,'noise colorfit pro 4 ','2025-12-09 17:47:49','rachit-tank-2cFZ_FB08UM-unsplash.jpg'),(12,'pay_RpVgBztZCdoqD4',3000.00,'poorvahikadwe@gmail.com',2016,'airdopes 141','2025-12-09 17:47:49','archer-allstars-MtOxWtXBhEg-unsplash.jpg');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'macbook air 2',150000.00,'laptop','built with Apple, liquid retina display, ultra-thin, and portable','apple',5,750000.00,750000.00,'mac-1.png'),(2013,'LG Television 400',500000.00,'TV','Display: 4K Ultra HD, Built-in WebOS platform with Netflix, Slim, modern bezels','LG',10,5000000.00,5000000.00,'kam-idris-L9-sfN04jdk-unsplash.jpg'),(2014,'whirlpool freshcare',60000.00,'whirlpool','Multiple modes, 6-7Kgs, digital controls, durable drum','Whirlpool',3,180000.00,180000.00,'raychan-vkpVPcIBU5U-unsplash.jpg'),(2015,'noise colorfit pro 4 ',2500.00,'watch','100+ sports modes, Up to 7 days on a single charge, Bluetooth calling, notifications, weather updates, and music control','Noise',10,25000.00,25000.00,'rachit-tank-2cFZ_FB08UM-unsplash.jpg'),(2016,'airdopes 141',3000.00,'Earbuds','deep bass, lightweight, and IPX4 water resistance','boat',6,18000.00,18000.00,'archer-allstars-MtOxWtXBhEg-unsplash.jpg'),(2017,'JBL Tune 760NC',4500.00,'Headphones','Deep, punchy bass and crystal-clear audio,50 hours of playtime','JBL',3,13500.00,13500.00,'JBL_JR 310BT_Product Image_Hero_Skyblue.png'),(2018,'Samsung flipbook',75000.00,'laptop','Full HD / 4K resolution, 24W speakers, Google Assistant, Chromecast built-in, and voice remote','samsung',2,150000.00,150000.00,'flip.jpeg'),(2019,'Samsung Ecobubble',19000.00,'LG','creates bubbles that penetrate fabric faster for effective stain removal','samsung',6,114000.00,114000.00,'planetcare-5cpBWEl6y6c-unsplash.jpg'),(2020,'Noise Two Wireless',3400.00,'Earbuds','Lightweight, foldable, and cushioned earcups for all-day comfort','Noise',3,10200.00,10200.00,'JBL_E55BT_KEY_RED_6063_FS_x1-1605x1605px.webp'),(2021,'Washing Machine M2',20000.00,'washing machine','top loaded','LG',2,40000.00,40000.00,'planetcare-5cpBWEl6y6c-unsplash.jpg'),(2022,'Iphone',100000.00,'mobile','high-quality Apple-designed chips offering smooth performance, and a focus on user privacy and security','apple',1,100000.00,100000.00,'14-1.png'),(2023,'MI phone',25000.00,'mobile','Large batteries + fast charging Multiple cameras / advanced camera systems Strong hardware','xiaomi',4,100000.00,100000.00,'christian-wiediger-70ku6P7kgmc-unsplash.jpg'),(2025,'Samsung flipbook',50000.00,'laptop','laptop','samsung',2,100000.00,100000.00,'flip.jpeg'),(2026,'headphones',15000.00,'Headphones','200hz sound quality','JBL',2,30000.00,30000.00,'JBL_Quantum_400_Product Image_Hero 02.png'),(2027,'camera',54000.00,'camera','1000mpx','canon',1,54000.00,54000.00,'conor-luddy-IVaKksEZmZA-unsplash.jpg'),(2028,'boAt Storm X',2500.00,'watch','display with customizable watch faces, it tracks your heart rate, blood oxygen , sleep patterns, and daily activities.','boat',5,12500.00,12500.00,'boat.jpg'),(2029,'LG FrostFree',50000.00,'Fridge','Auto Defrost, balance crisper, bottle storage, LED lighting','LG',3,150000.00,150000.00,'alex-tyson-IjfDxaiM6bE-unsplash.jpg'),(2030,'Whirlpool FP',70000.00,'Fridge','Whirlpool FP 263D PRO Side-by-Side Refrigerator blends elegance with cutting-edge technology. Its 6th Sense Intellifresh Technology','Whirlpool',2,140000.00,140000.00,'fridge.jpeg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES ('dev12','devansh','barod','12345678','devansh1234@gmail.com',88176717,'male','2025-07-24','silicon','Gujarat','Bhopal',453331,'User'),('dev14','devansh','barod','12345678','dev@gmail.com',8817671707,'male','2025-08-07','silicon','Madhya Pradesh','Indore',453331,'user'),('hina','hina','khan','hina12','hinakhan12@gmail.com',8947388823,'female','2025-09-16','shiv city','Madhya Pradesh','Indore',452022,'user'),('jiya','jiya','yadav','jiya','jiyayadav@gmail.com',9999999999,'female','2025-07-04','abcde','Madhya Pradesh','ratlam',452012,'admin'),('khushi','khushi','jain','2222','khushijain@gmail.com',6397600617,'female','2025-07-25','nasik','Madhya Pradesh','indore',53600,'admin'),('kirti','kirti','jain','123','kirtijain@gmail.com',89374483923,'female','2025-08-06','rajendranagar','Madhya Pradesh','Indore',452011,'user'),('lakki','lakshita','kadwe','l123','lakshita.kadwe@queenscollegeindore.org',8743762398,'female','2025-07-09','indore','Madhya Pradesh','Indore',452012,'user'),('niti','nitisha','Singh','123','nitishas@gmail.com',9800458293,'female','2006-06-05','vijaynagar','Madhya Pradesh','Dewas',43899,'admin'),('pihu','pihu','singh','111','pihusingh@gmail.com',8974638893,'female','2025-07-02','abcdef','Maharashtra','Satna',9433,'Admin'),('piku','piku','sharma','123456','poorvahikadwe@gmail.com',8956784456,'female','2025-10-17','abcd','Madhya Pradesh','Ujjain',45022,'user'),('poorvahi','Poorvahi','Kadwe','12345678','poorvahikadwe@gmail.com',9285246391,'female','2004-08-20','siliconcity','Madhya Pradesh','Indore',4520144,'user'),('Poorvi','Poorvi','Kumari','poorvi','poorvahik@gmail.com',8976352212,'female','2004-08-20','indore','Madhya Pradesh','Indore',4520122,'user'),('preeti','preeti','kadwe','123456','poorvahikadwe@gmail.com',8790765567,'female','1992-06-10','silicon','Madhya Pradesh','Bhopal',786557,'user'),('rishi','Rishi','Singh','123','hi@123gmail.com',8746992383,'male','2025-08-01','vijaynagar','Gujarat','Sagar',453341,'user'),('shivi','shivanshi','jain','1111','shivanshi@gmail.com',98780035400,'female','2025-07-16','abcd','Gujarat','Satna',45022,'user');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (12,'apple',1,'mobile'),(13,'oppo',1,'mobile'),(14,'samsung',2,'laptop'),(15,'apple',2,'laptop'),(19,'NOISE',5,'earbuds'),(20,'JBL',5,'earbuds'),(21,'canon',6,'camera'),(22,'whirlpool',4,'washing machine'),(23,'LG',4,'washing machine'),(24,'LG',8,'fridge'),(25,'whirlpool',8,'fridge'),(26,'samsung',8,'Fridge'),(27,'LG',3,'tv');
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-09 19:08:03
