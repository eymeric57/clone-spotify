-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: api_symfony
-- ------------------------------------------------------
-- Server version	5.7.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES UTF8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `release_date` date NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_39986E43B7970CF8` (`artist_id`),
  CONSTRAINT `FK_39986E43B7970CF8` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,4,'Mauvais oeil','upload_621_phpqv2xle.jpg',1719391377,NULL,'2001-02-16',1),(2,1,'Little Armageddon','upload_708_phpowjOgi.jpg',1719391410,NULL,'2015-07-10',1),(3,5,'Love me back to life','upload_924_phpV7RX7c.jpg',1719391440,NULL,'2014-08-14',1),(4,3,'Suprême NTM','upload_893_phpaDvMIf.jpg',1719391479,NULL,'2001-11-09',1),(5,2,'Soundkail - A toutes les racailles','upload_639_phpscfWRc.jpg',1719391509,NULL,'2007-07-03',1),(6,3,'Paris sous les bombes','upload_393_phpitTIsh.jpg',1719391556,NULL,'2000-05-09',1);
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_genre`
--

DROP TABLE IF EXISTS `album_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album_genre` (
  `album_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`album_id`,`genre_id`),
  KEY `IDX_F5E879DE1137ABCF` (`album_id`),
  KEY `IDX_F5E879DE4296D31F` (`genre_id`),
  CONSTRAINT `FK_F5E879DE1137ABCF` FOREIGN KEY (`album_id`) REFERENCES `album` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_F5E879DE4296D31F` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_genre`
--

LOCK TABLES `album_genre` WRITE;
/*!40000 ALTER TABLE `album_genre` DISABLE KEYS */;
INSERT INTO `album_genre` VALUES (1,4),(1,6),(2,1),(2,2),(3,3),(4,6),(5,5),(5,6),(6,4),(6,6);
/*!40000 ALTER TABLE `album_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biography` longtext COLLATE utf8mb4_unicode_ci,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES (1,'Skip The Use','<div>Le groupe est composé de cinq anciens membres du groupe de punk Carving. Ils jouent un rock énergique, emmenés par leur chanteur Mat Bastard, de son vrai nom, Mathieu-Emmanuel Monnaert, né le 7 novembre 1979 à Bruxelles. Le premier album éponyme est coproduit par Calysta et NPE ; NPE s\'occupe également de leur première tournée en France (avec quelques dates à l\'étranger). Ils sont sélectionnés par l\'Adami pour le projet « détours », ce qui les propulse rapidement dans des festivals internationaux. Ils se produisent en première partie du groupe Trust puis de Rage Against the Machine.<br><br>Leur premier album, enregistré au studio YellowSub avec Yves Jaget et Manu Guiot membre de NPE, sort en octobre 2009. Après le tournage du clip de leur titre Give me your life, une première tournée les emmène partout en France, mais aussi au Canada, en Suisse, en Belgique, en Allemagne, en Hongrie, en Lettonie. Ils se font également remarquer dans quelques festivals renommés comme le Printemps de Bourges (qui les a propulsés) le Main Square Festival, les Solidays en 2010 et 2011.</div>','upload_667bd38a29d9b_php9ESVUi.jpg'),(2,'Soundkail','<div>Dragon Davy croise la route d’Artikal Mehdi sur les bancs de l\'école. Ces deux \"gars du 94\" vont vite se trouver une passion commune pour le micro et ne le lâcheront plus. 1995, 1996, le Rap, le Reggae, la déferlante Dancehall connaissent une période dorée en France, encadrés par NTM ou IAM qui ouvrent la voie à toute une génération de dignes porte-paroles du \"ghetto system\" comme Raggasonic ou Tonton David pour ne citer qu\'eux. Dragon Davy et Artikal Mehdi baptisent leur duo SOUNDKAIL... Pour ne rien gâcher, ils ont leur son, leur flow et se font systématiquement remarquer par leurs apparitions, notamment sur des compilations historiques comme \"Sachons Dire Non\" I et II ou autre \"L\'Univers Des Lascars\".<br><br>Premier maxi \"Attentat\" le 6 juin 2000 et franc succès commercial pour très vite livrer un premier album officiel \"Racaille Sound System\" qui sortira le 19 octobre 2000. Soundkaïl s’attaque aux salles de concerts et enchaine alors les dates partout en France ! Garance Reggae Festival en 2000, 1ères parties des Neg\'Marrons (pour la tournée \"Le Bilan\") et ils iront même jusqu\'en Pologne. Après le tourbillon de ce premier album, le groupe est indéniablement une valeur sûre à l’énergie scénique communicative. Ils multiplient logiquement les featurings et participations à divers projets et travaillent aux cotés d\'Akhenaton ou encore de Rohff.</div>','upload_667bd3df46389_phpYUHNya.jpg'),(3,'NTM','<div>Originaire du département de la Seine-Saint-Denis et composé principalement de deux rappeurs, Joeystarr (Didier Morville) et Kool Shen (Bruno Lopes), le groupe marque les débuts du rap des années 1990 en FranceN 1. Formé en 19891 et dissous en 2001, il se reforme en 2008 (célébrant les vingt ans du groupe) et en 2018 (pour les trente ans), sans annoncer de nouvel album et pour une tournée événement nationaleN 2. Le groupe est considéré, avec IAM, comme le premier groupe de rap français ayant marqué le hip-hop français avec un succès à portée nationale et une large médiatisation2.<br><br>Les deux rappeurs Joeystarr et Kool Shen revendiquent leurs origines banlieusardes du département 93, c\'est-à-dire, de jeunes ayant vécu dans un milieu défavoriséN 3. Appartenant à un groupe de graffeurs, le groupe s\'appelle à ses débuts 93 NTM, identité représentative de leurs origines3,N 4. Si NTM est connu avant 1998 pour son hostilité à l\'égard de la police, des paroles virulentes4,N 5 et une bataille juridique avec les autorités françaises, le groupe est aussi réputé pour ses paroles ouvertement critiques du racisme et des inégalités de classe dans la société française, portant un constat d\'urgence sur l\'état des banlieues5</div>','upload_667bd4036cffd_phpqYSVRi.jpg'),(4,'Lunatic','<div>Lunatic est un duo de hip-hop français, originaire des Hauts-de-Seine. Le groupe se forme en 1994 par Booba (Boulogne-Billancourt) et Ali (Issy-les-Moulineaux) y débute avec Coup d\'État Phonique. À la suite de problèmes internes, Lunatic rejoint le collectif Beat de Boul et affinent leur style lors des freestyles en compagnie du collectif. Il quitte le collectif pour se joindre à celui de Time Bomb en compagnie des X-Men, d\'Oxmo Puccino, Pit Baccardi et des Ghetto Diplomats (devenus la Famille Haussmann).<br><br>Lunatic publie son premier album studio, Mauvais œil, en octobre 2000, souvent considéré comme l\'un des plus grands albums de l\'histoire du rap français. Il se sépare en 20031, et leur label, 45 Scientific publie un dernier projet du groupe en 2006, intitulé Black Album, avec des titres déjà existants et des remixes, accompagnés de deux titres inédits : Tony Coulibaly, solo de Booba, et Récolte c\'que tu sèmes d\'Ali. Lunatic est souvent considéré comme l\'un des grands groupes de l\'histoire du rap français.</div>','upload_667bd4261dd93_php7WJCOc.jpg'),(5,'Céline Dion','<div>Céline Dion, née le 30 mars 1968 à Charlemagne (Québec), est une chanteuse canadienne.<br><br>Dernière d\'une famille de quatorze enfants, elle connaît un succès presque immédiat dans sa province d\'origine, le Québec, dès 1981 avec la chanson Ce n\'était qu\'un rêve. Une série d\'albums francophones, dans les années 1980, consolide sa popularité, alors que le titre D\'amour ou d\'amitié (1983) lui vaut une première exposition en France. Elle étend sa renommée en gagnant le Concours Eurovision de la chanson en 1988 durant lequel elle représente la Suisse avec la chanson Ne partez pas sans moi.<br><br>Elle apprend ensuite l\'anglais, change de style vestimentaire et signe un contrat chez Epic Records aux États-Unis. Son album anglophone, Unison, sort en 1990 et l\'établit comme une artiste pop importante sur les marchés nord-américains et anglo-saxons.</div>','upload_667bd4466adeb_phpP3WCXh.webp');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avatar`
--

DROP TABLE IF EXISTS `avatar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avatar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avatar`
--

LOCK TABLES `avatar` WRITE;
/*!40000 ALTER TABLE `avatar` DISABLE KEYS */;
INSERT INTO `avatar` VALUES (1,'avatar1.jpg',1),(2,'avatar2.jpg',1),(3,'avatar3.jpg',1),(4,'avatar4.jpg',1),(5,'avatar5.jpg',1),(6,'avatar6.jpg',1),(7,'avatar7.jpg',1),(8,'avatar8.jpg',1),(9,'avatar9.jpg',1),(10,'avatar10.jpg',1),(11,'avatar11.jpg',1),(12,'avatar12.jpg',1),(13,'avatar13.jpg',1),(14,'avatar14.jpg',1),(15,'upload_292_phphI41Hr.png',1);
/*!40000 ALTER TABLE `avatar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20240219205402','2024-06-26 08:04:44',229);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Electro'),(2,'Rock'),(3,'Variété'),(4,'Classic'),(5,'Autre'),(6,'Rap');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_messages`
--

LOCK TABLES `messenger_messages` WRITE;
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D782112DA76ED395` (`user_id`),
  CONSTRAINT `FK_D782112DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist_song`
--

DROP TABLE IF EXISTS `playlist_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playlist_song` (
  `playlist_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  PRIMARY KEY (`playlist_id`,`song_id`),
  KEY `IDX_93F4D9C36BBD148` (`playlist_id`),
  KEY `IDX_93F4D9C3A0BDB2F3` (`song_id`),
  CONSTRAINT `FK_93F4D9C36BBD148` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_93F4D9C3A0BDB2F3` FOREIGN KEY (`song_id`) REFERENCES `song` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist_song`
--

LOCK TABLES `playlist_song` WRITE;
/*!40000 ALTER TABLE `playlist_song` DISABLE KEYS */;
/*!40000 ALTER TABLE `playlist_song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_33EDEEA11137ABCF` (`album_id`),
  CONSTRAINT `FK_33EDEEA11137ABCF` FOREIGN KEY (`album_id`) REFERENCES `album` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (1,4,'On est encore la','03-ntm-on-est-encore-la-i-on-est-encore-la-ii-63d146421053a907586609.mp3',255),(2,4,'Laisse pas trainer ton fils','upload_6523c3ad6a280_phpB8F.tmp.mp3',238),(3,1,'La lettre','upload_6523c3c0b9485_php5711.tmp.mp3',290),(4,1,'Pas l\'temps pour les regrets','upload_6523c3dd9d4f3_phpC7FE.tmp.mp3',258),(5,6,'Ma benz','upload_6523c3e5c2de7_phpE7DC.tmp.mp3',247),(6,2,'Little Armageddon','upload_6523c3f04e806_php1110.tmp.mp3',185),(7,2,'Second to none','upload_6523c36b11c92_php871.tmp.mp3',186),(8,2,'Gone Away','upload_6523c40cc2a20_php8028.tmp.mp3',188),(9,3,'Incredible','upload_6523c3a517f8e_phpEB25.tmp.m4a',236),(10,1,'92 i feat Malekal Morte','upload_6523c3f9d0f97_php363C.tmp.mp3',347),(11,1,'Pas l\'temps pour les regrets','upload_6523c38e43b83_php91F7.tmp.mp3',281),(12,3,'Somebody love somebody','upload_6523c382dddee_php6597.tmp.m4a',222),(13,4,'Back dans les bacs','upload_6523c397d0f43_phpB753.tmp.mp3',197),(14,6,'Pose ton gun','upload_6523c402bc8d0_php5907.tmp.mp3',176),(15,3,'Love me back to life','upload_6523c37772818_php38D9.tmp.m4a',230),(16,5,'Bandits','upload_6523c3b695bb1_php2F54.tmp.mp3',280),(17,5,'Freestyle Dragon Davy','upload_6523c3c9ae130_php7A2B.tmp.mp3',88),(18,5,'Freestyle Medhi Mesrine','upload_6523c3d58b500_phpA87F.tmp.mp3',47),(23,4,'On est encore la 2','upload_669e5753f063a_669e5753f0624_03-ntm-on-est-encore-la-i-on-est-encore-la-ii-63d146421053a907586609.mp3',255);
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar_id` int(11) DEFAULT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  KEY `IDX_8D93D64986383B10` (`avatar_id`),
  CONSTRAINT `FK_8D93D64986383B10` FOREIGN KEY (`avatar_id`) REFERENCES `avatar` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,'admin@admin.com','[\"ROLE_ADMIN\"]','$2y$13$oXquD07dNnx.bXHlubaxCOvMd21bFV7wlI4ZU6KylLj6YDsp/Uvve','Administrateur',1720681573),(2,NULL,'user@user.com','[]','$2y$13$toWA6/zB8x320hMCBlepd.1Zxdi6NFZx0TI4cB1Ub6mgyGXmR3Aje','Utilisateur',1720682691),(3,NULL,'user2@user.com','[]','$2y$13$36TZidaYlOaeTE/jVgKue./uW590QTMFI69vF7BrYmF0ZZfgbCe8a','User 2',1720683132);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_album`
--

DROP TABLE IF EXISTS `user_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_album` (
  `user_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`album_id`),
  KEY `IDX_DB5A951BA76ED395` (`user_id`),
  KEY `IDX_DB5A951B1137ABCF` (`album_id`),
  CONSTRAINT `FK_DB5A951B1137ABCF` FOREIGN KEY (`album_id`) REFERENCES `album` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_DB5A951BA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_album`
--

LOCK TABLES `user_album` WRITE;
/*!40000 ALTER TABLE `user_album` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_album` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-22 13:05:35
