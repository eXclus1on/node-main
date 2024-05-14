# ************************************************************
# Sequel Ace SQL dump
# Version 20066
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: localhost (MySQL 8.1.0)
# Database: n2_authentication
# Generation Time: 2024-05-07 20:32:08 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table notes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notes`;

CREATE TABLE `notes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;

INSERT INTO `notes` (`id`, `user_id`, `note`, `created_at`, `updated_at`)
VALUES
	(1,68,'Hello','2024-05-07 22:20:57','2024-05-07 22:20:57'),
	(2,68,'Goodbye','2024-05-07 22:21:07','2024-05-07 22:21:07'),
	(3,74,'Ola','2024-05-07 22:21:26','2024-05-07 22:21:26'),
	(4,74,'Bom dia','2024-05-07 22:21:33','2024-05-07 22:21:33'),
	(5,74,'Essa vidinha?','2024-05-07 22:21:47','2024-05-07 22:21:47');

/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;


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
	(31,'helder56@qqcoisa.com','$argon2id$v=19$m=65536,t=3,p=4$sAGbJMaLC9jOWjobxTaRtQ$7Jk4rWuhOsFDSTiHc9cE5+N9hrYI1uYlVyOn9/v6+2A','2024-05-02 22:46:17','2024-05-02 22:46:17'),
	(32,'helder57@qqcoisa.com','$argon2id$v=19$m=65536,t=3,p=4$uQV9u5Bwqv0i92A1WU9DXw$2FeUUrnxjcMBuxwjk2lShWA23bTagYQZ2s+pxwG+gh4','2024-05-02 22:46:38','2024-05-02 22:46:38'),
	(34,'helder@qqcoisa.com','$argon2id$v=19$m=65536,t=3,p=4$o/TiSCKN/RNmXG5GaC8WEw$PNvmfWIgAwlweAal6ZsFLa3Xd0qwRZqASWZtwUTC+C4','2024-05-02 22:59:44','2024-05-02 22:59:44'),
	(35,'jogh@mail.com','$argon2id$v=19$m=65536,t=3,p=4$KatFOA2IFYBynI1bH0d7vQ$3f1MBwXrdzXIPQfV7/Z/LGcvqmA5PDg8x8Ihjedamd4','2024-05-04 11:21:29','2024-05-04 11:21:29'),
	(37,'jogh12@mail.com','$argon2id$v=19$m=65536,t=3,p=4$KJ8SmIkdZTPwhMXi6I7b2w$SdZXanMGUAs/lBqPPd0eAROa5MRtF1W403waH2I0euI','2024-05-04 11:21:42','2024-05-04 11:21:42'),
	(48,'joe@mail.com','$argon2id$v=19$m=65536,t=3,p=4$5nODdym9/egYc22LuwF0Hw$4KvfSm+Qsj5FM4cjWtQMVi1z3/bDFPKjFnfTjix7U/Y','2024-05-04 11:59:32','2024-05-04 11:59:32'),
	(57,'jogh14@mail.com','$argon2id$v=19$m=65536,t=3,p=4$BVkIjxe07EBRMNVz9TnQpA$V1qVsrKWK/wT5jTdlay4Ni1ngCv/a+FpJTY840IRQHM','2024-05-04 12:10:53','2024-05-04 12:10:53'),
	(60,'joe500@mail.com','$argon2id$v=19$m=65536,t=3,p=4$363vgTXD+l6PJJH/yVHqNg$b/STywqAbX9KU/H5bGyfLIFUjBr2QCUXkoRKJoIXbOY','2024-05-04 12:20:44','2024-05-04 12:20:44'),
	(62,'teste@mail.com','$argon2id$v=19$m=65536,t=3,p=4$btsMrI8+/A/QaqGB5xBMDg$nnj8nCW3Eg3Rqd9fOJCDsy6AT2pAzRyqf+32SNrdNK8','2024-05-04 12:23:25','2024-05-04 12:23:25'),
	(63,'helder@teste.com','$argon2id$v=19$m=65536,t=3,p=4$gEbGa6ckS0Qt7APIEvppjw$US8GEZf7Sog+0C0NgOdubMtX9VlkNticJiuPFzqoonA','2024-05-04 12:33:52','2024-05-04 12:33:52'),
	(65,'helder2@teste.com','$argon2id$v=19$m=65536,t=3,p=4$CMxCAP1QGFI4Dil60vJltg$BKQPmZi1nZyOOyKsHFZ5ugRqQ1oOjpaMuzH+bBQzVNE','2024-05-04 13:04:19','2024-05-04 13:04:19'),
	(66,'helder3@teste.com','$argon2id$v=19$m=65536,t=3,p=4$artSOVm8x4NrOwQLSMuNZw$LtERdXutUq41jc+V8JvLjZZCnZvY1qYNgkW8O3tKqGE','2024-05-04 13:10:51','2024-05-04 13:10:51'),
	(67,'lalala@teste.com','$argon2id$v=19$m=65536,t=3,p=4$j0qzHzpIPbLOaO0uIZjgOg$sXB2Kh/X1c/tB9r22osKOnZh9suHUFDoXC/IG7jEjL0','2024-05-04 13:20:23','2024-05-04 13:20:23'),
	(68,'teste@teste.com','$argon2id$v=19$m=65536,t=3,p=4$i6qSyq/pl0PHoWzkz0rocg$haJYL6m/ygZDf0KEjPsK/QRV4ZT+6+UUuF7pYWrmgsU','2024-05-04 13:21:43','2024-05-04 13:21:43'),
	(71,'teste2@teste.com','$argon2id$v=19$m=65536,t=3,p=4$BZM1A/XNRVIi/7u3Np1Ubg$UyApqRrdD4OUzOomOXzTL7TaPqZnF/xgYqb1fhfL/E8','2024-05-04 13:21:54','2024-05-04 13:21:54'),
	(74,'teste3@teste.com','$argon2id$v=19$m=65536,t=3,p=4$Va35V+SZ08EkTwVjUGgjoQ$3sav4cWCINSrlfjItfAMctpbGXJGgRUKwV1/kdins5c','2024-05-07 20:14:52','2024-05-07 20:14:52'),
	(76,'teste4@teste.com','$argon2id$v=19$m=65536,t=3,p=4$d1SQdHTeMXduUNt34IEUZA$YMv0AfYIUrxgBO/cfK8BmmDDCvVpiVw9nXBbtZK6vQ0','2024-05-07 20:49:33','2024-05-07 20:49:33');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
