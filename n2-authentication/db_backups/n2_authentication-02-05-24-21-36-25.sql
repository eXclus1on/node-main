# ************************************************************
# Sequel Ace SQL dump
# Version 20066
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: localhost (MySQL 8.1.0)
# Database: n2_authentication
# Generation Time: 2024-05-02 19:36:25 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `password`, `created_at`, `updated_at`)
VALUES
	(1,'lalala@teste.com','4059itkg','2024-05-02 20:31:24','2024-05-02 20:31:34'),
	(2,'joe@mal.com','1234567','2024-05-02 20:40:31','2024-05-02 20:40:31'),
	(4,'helder@qqcoisa.com','1234567','2024-05-02 21:09:15','2024-05-02 21:09:15'),
	(6,'helder2@qqcoisa.com','1234567','2024-05-02 21:12:19','2024-05-02 21:12:19'),
	(9,'helder3@qqcoisa.com','1234567','2024-05-02 21:13:40','2024-05-02 21:13:40'),
	(11,'helder4@qqcoisa.com','1234567','2024-05-02 21:14:00','2024-05-02 21:14:00'),
	(12,'helder32@qqcoisa.com','1234567','2024-05-02 21:27:36','2024-05-02 21:27:36'),
	(13,'helder34@qqcoisa.com','1234567','2024-05-02 21:33:59','2024-05-02 21:33:59'),
	(15,'helder24@qqcoisa.com','1234567','2024-05-02 21:34:06','2024-05-02 21:34:06');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
