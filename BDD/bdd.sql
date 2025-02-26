-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour diggit.me
CREATE DATABASE IF NOT EXISTS `diggit.me` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `diggit.me`;

-- Listage de la structure de table diggit.me. adresse
CREATE TABLE IF NOT EXISTS `adresse` (
  `id_adresse` varchar(50) NOT NULL DEFAULT 'AUTO_INCREMENT',
  `Rue` varchar(50) DEFAULT NULL,
  `codepostal` varchar(50) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_adresse`),
  CONSTRAINT `FK__users` FOREIGN KEY (`id_adresse`) REFERENCES `users` (`mailu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table diggit.me.adresse : ~8 rows (environ)
INSERT INTO `adresse` (`id_adresse`, `Rue`, `codepostal`, `ville`) VALUES
	('a@gmail.com', '54 dsgf', '4455', 'sdfkqsdkf'),
	('admin@diggit.fr', '25 rue du four', '44380', 'Nantes'),
	('davd.g@gmail.com', '25 rue du vieux four', '44380', 'saint-léger'),
	('djsnake@gmail.com', '25 rue du vieux four', '78442', 'Paris'),
	('fdkgklm@gmail.com', 'fgh', '7545', 'SAint mars de coutain'),
	('guigui@gmail.Com', '25 rue du four', '44380', 'Montpellier'),
	('jesuisunclient@gmail.com', '25 rue du vieux four', '78442', 'chauray'),
	('tu@gmail.com', '25 rue du vieux four', '79255', 'saint-léger');

-- Listage de la structure de table diggit.me. client
CREATE TABLE IF NOT EXISTS `client` (
  `mailc` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mdp` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `statut` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mailc`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table diggit.me.client : ~8 rows (environ)
INSERT INTO `client` (`mailc`, `mdp`, `statut`) VALUES
	('a@gmail.com', 'f4f263e439cf40925e6a412387a9472a6773c2580212a4fb50d224d3a817de17', 'C'),
	('admin@diggit.fr', 'f4f263e439cf40925e6a412387a9472a6773c2580212a4fb50d224d3a817de17', 'A'),
	('davd.g@gmail.com', 'f4f263e439cf40925e6a412387a9472a6773c2580212a4fb50d224d3a817de17', 'C'),
	('djsnake@gmail.com', 'f4f263e439cf40925e6a412387a9472a6773c2580212a4fb50d224d3a817de17', 'C'),
	('fdkgklm@gmail.com', 'f4f263e439cf40925e6a412387a9472a6773c2580212a4fb50d224d3a817de17', 'C'),
	('guigui@gmail.Com', 'f4f263e439cf40925e6a412387a9472a6773c2580212a4fb50d224d3a817de17', 'C'),
	('jesuisunclient@gmail.com', 'f4f263e439cf40925e6a412387a9472a6773c2580212a4fb50d224d3a817de17', 'C'),
	('tu@gmail.com', 'f4f263e439cf40925e6a412387a9472a6773c2580212a4fb50d224d3a817de17', 'C');

-- Listage de la structure de table diggit.me. composants_alim
CREATE TABLE IF NOT EXISTS `composants_alim` (
  `id_comp` int NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) NOT NULL,
  `rating` tinyint(1) DEFAULT NULL,
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `is_modulable` int DEFAULT NULL,
  `wattage` int DEFAULT NULL,
  `is_selected` int DEFAULT NULL,
  PRIMARY KEY (`id_comp`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Listage des données de la table diggit.me.composants_alim : ~3 rows (environ)
INSERT INTO `composants_alim` (`id_comp`, `price`, `rating`, `brand`, `name`, `img`, `is_available`, `is_modulable`, `wattage`, `is_selected`) VALUES
	(2, 669.95, 5, 'Corsair', 'Corsair AX1600i 80PLUS Titanium', 'https://drive.google.com/uc?export=view&id=1S5y7x3P73Rp_kMoQQh3533VhWu4OUdU9', 1, 2, 1600, 1),
	(3, 259.94, 5, 'Seasonic', 'Seasonic PRIME TX-750', 'https://drive.google.com/uc?export=view&id=1vXR_Qnzl-YCgB3Gl2iEwfjdkEhiAYvSk', 1, 2, 750, 1);

-- Listage de la structure de table diggit.me. composants_board
CREATE TABLE IF NOT EXISTS `composants_board` (
  `id_comp` int NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) NOT NULL,
  `rating` tinyint(1) DEFAULT NULL,
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `ram` int DEFAULT NULL,
  `socket` varchar(50) DEFAULT NULL,
  `is_selected` int DEFAULT NULL,
  PRIMARY KEY (`id_comp`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Listage des données de la table diggit.me.composants_board : ~4 rows (environ)
INSERT INTO `composants_board` (`id_comp`, `price`, `rating`, `brand`, `name`, `img`, `is_available`, `ram`, `socket`, `is_selected`) VALUES
	(18, 200.00, 4, 'MSI', 'MPG Z490 Gaming Edge WiFi', 'https://drive.google.com/uc?export=view&id=1pKXDy3s9xTu7Ahk8DxF6G4ExgAvb9Fyw', 1, 16, 'LGA 1200', 1),
	(19, 400.00, 5, 'Gigabyte', 'AORUS X570 Master', 'https://drive.google.com/uc?export=view&id=1FXQmgEbQlrHgMavGvw3JCw-lUS5MB-6Q', 1, 32, 'AM4', 1),
	(20, 200.00, 5, 'ASUS', 'ROG Strix B550-F Gaming (Wi-Fi 6)', 'https://drive.google.com/uc?export=view&id=1IoXjrw14_hDvbBr9OdaE9fJnMPZFl3NI', 1, 16, 'AM4', 0),
	(21, 100.00, 4, 'ASRock', 'B450M Pro4', 'https://drive.google.com/uc?export=view&id=19HDX3F4EP47jqNxAggRh6lKrsEaJOgaQ', 1, 8, 'AM4', 1);

-- Listage de la structure de table diggit.me. composants_boitier
CREATE TABLE IF NOT EXISTS `composants_boitier` (
  `id_comp` int NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) NOT NULL,
  `rating` tinyint(1) DEFAULT NULL,
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `is_selected` int DEFAULT NULL,
  PRIMARY KEY (`id_comp`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Listage des données de la table diggit.me.composants_boitier : ~4 rows (environ)
INSERT INTO `composants_boitier` (`id_comp`, `price`, `rating`, `brand`, `name`, `img`, `is_available`, `type`, `is_selected`) VALUES
	(1, 104.99, 4, 'Corsair', '4000D Airflow', 'https://drive.google.com/uc?export=view&id=1fpbOgFRmIfknbrwj9VYlUzRwuWvhiwcz', 1, 'ATX Mid Tower', 0),
	(2, 129.99, 5, 'Corsair', 'iCUE 4000X RGB', 'https://drive.google.com/uc?export=view&id=1aTG6fzOgvXkfLwUKuu_iKayreqiaUwsd', 1, 'ATX Mid Tower', 1),
	(3, 89.99, 5, 'NZXT', 'H510 Flow', 'https://drive.google.com/uc?export=view&id=1GtJ99Esono9hzyB9riMo-S4rHLzinfGo', 0, 'ATX Mid Tower', 1),
	(4, 89.99, 5, 'NZXT', 'H510 Flow White', 'https://drive.google.com/uc?export=view&id=1pVKb0oi8w14WIobXZSM10TCDf7V4zGJf', 1, 'ATX Mid Tower', 1);

-- Listage de la structure de table diggit.me. composants_cooler
CREATE TABLE IF NOT EXISTS `composants_cooler` (
  `id_comp` int NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) NOT NULL,
  `rating` tinyint(1) DEFAULT NULL,
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `taille` varchar(50) DEFAULT NULL,
  `son` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `speed` varchar(50) DEFAULT NULL,
  `is_selected` int DEFAULT NULL,
  PRIMARY KEY (`id_comp`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Listage des données de la table diggit.me.composants_cooler : ~3 rows (environ)
INSERT INTO `composants_cooler` (`id_comp`, `price`, `rating`, `brand`, `name`, `is_available`, `img`, `taille`, `son`, `type`, `speed`, `is_selected`) VALUES
	(1, 44.95, 5, 'Be Quiet !', 'be quiet! Pure Rock 2 Black', 1, 'https://drive.google.com/uc?export=view&id=1R2zIJiksP9l9T8JlZ0xdbE5KH5iA6w05', '120 mm', '26.8 dB', 'VentiRad', '1500 RPM', 1),
	(2, 97.95, 5, 'Be Quiet !', 'be quiet! Dark Rock PRO 4', 1, 'https://drive.google.com/uc?export=view&id=1YFfdv4knuOB3bzMKwDikgLr_YteNvyKh', '135 mm', '24.3 dB', 'VentiRad', '1500 RPM', 1),
	(3, 299.95, 4, 'MSI', 'MSI MEG CORELIQUID S360', 1, 'https://drive.google.com/uc?export=view&id=1kIOyZJ35D1spIwKFGrGF7eRuixoXEmDa', '120 mm', '22.7 dB', 'waterC', '200 RPM', 1);

-- Listage de la structure de table diggit.me. composants_cpu
CREATE TABLE IF NOT EXISTS `composants_cpu` (
  `id_comp` int NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) NOT NULL,
  `rating` tinyint(1) DEFAULT NULL,
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `wattage` int DEFAULT NULL,
  `nbcore` int DEFAULT NULL,
  `puissance` float DEFAULT NULL,
  `is_selected` int DEFAULT NULL,
  PRIMARY KEY (`id_comp`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Listage des données de la table diggit.me.composants_cpu : ~6 rows (environ)
INSERT INTO `composants_cpu` (`id_comp`, `price`, `rating`, `brand`, `name`, `img`, `is_available`, `wattage`, `nbcore`, `puissance`, `is_selected`) VALUES
	(1, 209.38, 5, 'AMD', 'Ryzen 5 5600X', 'https://drive.google.com/uc?export=view&id=1Ok1FoNKMwdzJQYy9tU9fqr6Co9nI6vPX', 1, 65, 6, 3.7, 0),
	(2, 134.84, 5, 'AMD', 'Ryzen 5 5600', 'https://drive.google.com/uc?export=view&id=1-A-b3yAZdF_ltquko_L-8wOc7Yv1SWe4', 1, 65, 6, 3.5, 1),
	(3, 319.99, 5, 'Intel', 'Core i5-13600K', 'https://drive.google.com/uc?export=view&id=1WdWEfgM65kTm9l--fwFN-OlxhzSQLybB', 1, 125, 14, 3.5, 0),
	(4, 594.99, 5, 'Intel', 'Core i9-13900K', 'https://drive.google.com/uc?export=view&id=1CEELu8BfODdIUYp9ztTHy-V3SlHl88O3', 1, 125, 24, 3.3, 0),
	(5, 450.00, 5, 'Intel', 'Core i7-9700K', 'https://drive.google.com/uc?export=view&id=1xm0tCg3eQjRadlko2EUS0D3Cmuz4qBmj', 1, 95, 8, 3.6, 1),
	(6, 8390.00, 5, 'AMD', 'Threadripper 3990X', 'https://drive.google.com/uc?export=view&id=1RwcrOEYWcrdT7jICodUf5HKYNid6hJ5z', 1, 280, 64, 2.9, 1);

-- Listage de la structure de table diggit.me. composants_gpu
CREATE TABLE IF NOT EXISTS `composants_gpu` (
  `id_comp` int NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) NOT NULL,
  `rating` tinyint(1) DEFAULT NULL,
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ram` int DEFAULT NULL,
  `clock` int DEFAULT NULL,
  `is_available` tinyint(1) NOT NULL,
  `is_selected` int DEFAULT NULL,
  PRIMARY KEY (`id_comp`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Listage des données de la table diggit.me.composants_gpu : ~6 rows (environ)
INSERT INTO `composants_gpu` (`id_comp`, `price`, `rating`, `brand`, `name`, `img`, `ram`, `clock`, `is_available`, `is_selected`) VALUES
	(1, 500.00, 4, 'Aorus', 'Gigabyte GTX 1080Ti', ' https://drive.google.com/uc?export=view&id=13jueBPF680fgvWnK2JImyf13PhgjsFBS', 11, 1607, 1, 1),
	(2, 700.00, 5, 'NVIDIA', ' GeForce RTX 3080', ' https://drive.google.com/uc?export=view&id=1G15uq7aSegWRMeY3IEesiv-Kkf7nUddY', 10, 1440, 1, 0),
	(3, 751.00, 4, 'AMD', ' Radeon RX 6800 XT', ' https://drive.google.com/uc?export=view&id=1G15uq7aSegWRMeY3IEesiv-Kkf7nUddY', 16, 1812, 1, 1),
	(4, 300.00, 4, 'NVIDIA', ' GeForce GTX 1660 Ti', ' https://drive.google.com/uc?export=view&id=1OsD8R0Zvm2wGgezJeoj1bN3M4pF_PA6F', 6, 1500, 1, 1),
	(5, 432.00, 4, 'AMD', ' Radeon RX 5700 XT', ' https://drive.google.com/uc?export=view&id=1yISIheYIGKs0QExWuAExO9-UMVv33fPc', 11, 1605, 0, 0),
	(6, 200.00, 3, 'INTEL', 'Iris Xe', ' https://drive.google.com/uc?export=view&id=1OCjgzz5LcxZ7OkH1gl6h_OvUjjj3zsfb', 4, 1200, 1, 0);

-- Listage de la structure de table diggit.me. composants_ram
CREATE TABLE IF NOT EXISTS `composants_ram` (
  `id_comp` int NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) NOT NULL,
  `rating` tinyint(1) DEFAULT NULL,
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `modules` varchar(50) DEFAULT NULL,
  `capacite` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `speed` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_selected` int DEFAULT NULL,
  PRIMARY KEY (`id_comp`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Listage des données de la table diggit.me.composants_ram : ~2 rows (environ)
INSERT INTO `composants_ram` (`id_comp`, `price`, `rating`, `brand`, `name`, `img`, `is_available`, `modules`, `capacite`, `speed`, `is_selected`) VALUES
	(1, 130.96, 5, 'Asus', 'TUF GAMING B550-PLUS', 'https://drive.google.com/uc?export=view&id=1fJRYDdCvMWNFVd-w-qe9-j3c-_xYOYMV', 1, 'DDR4', '32', '3200', 1),
	(2, 72.95, 5, 'Kingston', ' FURY Beast', 'https://drive.google.com/uc?export=view&id=1OJDqNmFOgLyzuANgyQDVOSuCu4fijTff', 1, 'DDR4', '16', '3200 ', 1);

-- Listage de la structure de table diggit.me. composants_stockage
CREATE TABLE IF NOT EXISTS `composants_stockage` (
  `id_comp` int NOT NULL AUTO_INCREMENT,
  `price` decimal(10,2) NOT NULL,
  `rating` tinyint(1) DEFAULT NULL,
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'LASt INSERT_ID()+''Images''',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `capacite` varchar(50) DEFAULT NULL,
  `type_comp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `speed` varchar(50) DEFAULT NULL,
  `is_available` tinyint(1) NOT NULL,
  `is_selected` int DEFAULT NULL,
  PRIMARY KEY (`id_comp`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Listage des données de la table diggit.me.composants_stockage : ~2 rows (environ)
INSERT INTO `composants_stockage` (`id_comp`, `price`, `rating`, `brand`, `img`, `name`, `capacite`, `type_comp`, `speed`, `is_available`, `is_selected`) VALUES
	(3, 99.99, 5, 'AORUS', 'https://drive.google.com/uc?export=view&id=1y1LQFG6atyLdQFQhdnOKYBwaXYUd1dzf', 'AORUS NVMe Gen4 SSD', '500', 'SSD', '5000', 1, 1),
	(4, 274.99, 5, 'AORUS', 'https://drive.google.com/uc?export=view&id=1y1LQFG6atyLdQFQhdnOKYBwaXYUd1dzf', 'Aorus 1 To - PCI Express 3.0x4 NVMe 1.3', '1000', 'SSD', '5000', 1, 1);

-- Listage de la structure de vue diggit.me. config
-- Création d'une table temporaire pour palier aux erreurs de dépendances de VIEW
CREATE TABLE `config` (
	`nomconfig` VARCHAR(50) NULL COLLATE 'utf8mb4_0900_ai_ci',
	`is_selected` INT(10) NULL
) ENGINE=MyISAM;

-- Listage de la structure de table diggit.me. configurations
CREATE TABLE IF NOT EXISTS `configurations` (
  `id_config` int NOT NULL AUTO_INCREMENT,
  `id_client` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `nomconfig` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_config`) USING BTREE,
  KEY `FK_configurations_client` (`id_client`),
  CONSTRAINT `FK_configurations_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`mailc`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table diggit.me.configurations : ~5 rows (environ)
INSERT INTO `configurations` (`id_config`, `id_client`, `date`, `nomconfig`) VALUES
	(5, 'djsnake@gmail.com', '2023-01-13 21:20:24', 'Predator'),
	(6, 'jesuisunclient@gmail.com', '2023-01-13 21:20:24', 'Hyper x'),
	(7, 'davd.g@gmail.com', '2023-01-13 21:20:24', 'Corsair'),
	(8, 'guigui@gmail.Com', '2023-01-13 21:20:24', 'Asus'),
	(9, 'admin@diggit.fr', '2023-01-20 00:50:29', 'Nvidia');

-- Listage de la structure de table diggit.me. configurationsuser
CREATE TABLE IF NOT EXISTS `configurationsuser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `prix` int DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table diggit.me.configurationsuser : ~9 rows (environ)
INSERT INTO `configurationsuser` (`id`, `nom`, `prix`, `type`) VALUES
	(27, 'test', 1, NULL),
	(28, 'test', 1, NULL),
	(29, 'test', 1, NULL),
	(30, 'test', 1, NULL),
	(31, 'test', 1, NULL),
	(32, 'test', 1, NULL),
	(33, 'test', 1, NULL),
	(34, 'test', 1, NULL),
	(35, 'test', 1, NULL);

-- Listage de la structure de table diggit.me. likes
CREATE TABLE IF NOT EXISTS `likes` (
  `id_config` int NOT NULL,
  `id_client` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_config`,`id_client`) USING BTREE,
  KEY `FK__client` (`id_client`),
  CONSTRAINT `FK__client` FOREIGN KEY (`id_client`) REFERENCES `client` (`mailc`),
  CONSTRAINT `FK__configurations` FOREIGN KEY (`id_config`) REFERENCES `configurations` (`id_config`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table diggit.me.likes : ~12 rows (environ)
INSERT INTO `likes` (`id_config`, `id_client`) VALUES
	(5, 'a@gmail.com'),
	(6, 'a@gmail.com'),
	(9, 'a@gmail.com'),
	(5, 'admin@diggit.fr'),
	(6, 'admin@diggit.fr'),
	(7, 'admin@diggit.fr'),
	(8, 'admin@diggit.fr'),
	(9, 'admin@diggit.fr'),
	(9, 'davd.g@gmail.com'),
	(9, 'fdkgklm@gmail.com'),
	(5, 'tu@gmail.com'),
	(9, 'tu@gmail.com');

-- Listage de la structure de table diggit.me. tj_config_comp
CREATE TABLE IF NOT EXISTS `tj_config_comp` (
  `id_config` int NOT NULL AUTO_INCREMENT,
  `id_alim` int DEFAULT NULL,
  `id_board` int DEFAULT NULL,
  `id_boitier` int DEFAULT NULL,
  `id_cooler` int DEFAULT NULL,
  `id_cpu` int DEFAULT NULL,
  `id_gpu` int DEFAULT NULL,
  `id_stockage` int DEFAULT NULL,
  `id_ram` int DEFAULT NULL,
  `is_selected` int DEFAULT NULL,
  PRIMARY KEY (`id_config`) USING BTREE,
  KEY `FK_tj_config_comp_composants_alim` (`id_alim`),
  KEY `FK_tj_config_comp_composants_board` (`id_board`),
  KEY `FK_tj_config_comp_composants_boitier` (`id_boitier`),
  KEY `FK_tj_config_comp_composants_cooler` (`id_cooler`),
  KEY `FK_tj_config_comp_composants_cpu` (`id_cpu`),
  KEY `FK_tj_config_comp_composants_gpu` (`id_gpu`),
  KEY `FK_tj_config_comp_composants_stockage` (`id_stockage`),
  KEY `FK_tj_config_comp_composants_ram` (`id_ram`),
  CONSTRAINT `FK_configurations_copy_configurations` FOREIGN KEY (`id_config`) REFERENCES `configurations` (`id_config`),
  CONSTRAINT `FK_tj_config_comp_composants_alim` FOREIGN KEY (`id_alim`) REFERENCES `composants_alim` (`id_comp`),
  CONSTRAINT `FK_tj_config_comp_composants_board` FOREIGN KEY (`id_board`) REFERENCES `composants_board` (`id_comp`),
  CONSTRAINT `FK_tj_config_comp_composants_boitier` FOREIGN KEY (`id_boitier`) REFERENCES `composants_boitier` (`id_comp`),
  CONSTRAINT `FK_tj_config_comp_composants_cooler` FOREIGN KEY (`id_cooler`) REFERENCES `composants_cooler` (`id_comp`),
  CONSTRAINT `FK_tj_config_comp_composants_cpu` FOREIGN KEY (`id_cpu`) REFERENCES `composants_cpu` (`id_comp`),
  CONSTRAINT `FK_tj_config_comp_composants_gpu` FOREIGN KEY (`id_gpu`) REFERENCES `composants_gpu` (`id_comp`),
  CONSTRAINT `FK_tj_config_comp_composants_ram` FOREIGN KEY (`id_ram`) REFERENCES `composants_ram` (`id_comp`),
  CONSTRAINT `FK_tj_config_comp_composants_stockage` FOREIGN KEY (`id_stockage`) REFERENCES `composants_stockage` (`id_comp`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- Listage des données de la table diggit.me.tj_config_comp : ~5 rows (environ)
INSERT INTO `tj_config_comp` (`id_config`, `id_alim`, `id_board`, `id_boitier`, `id_cooler`, `id_cpu`, `id_gpu`, `id_stockage`, `id_ram`, `is_selected`) VALUES
	(5, 2, 19, 4, 1, 1, 1, 3, 1, 0),
	(6, 2, 19, 1, 1, 1, 1, 3, 1, 3),
	(7, 2, 19, 2, 1, 1, 1, 3, 1, 2),
	(8, 2, 19, 3, 1, 3, 1, 3, 1, 1),
	(9, 3, 20, 4, 3, 2, 3, 3, 2, 0);

-- Listage de la structure de table diggit.me. users
CREATE TABLE IF NOT EXISTS `users` (
  `mailu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `pseudo` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mailu`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table diggit.me.users : ~8 rows (environ)
INSERT INTO `users` (`mailu`, `pseudo`, `prenom`, `nom`, `telephone`) VALUES
	('a@gmail.com', 'pseudo', 'pre', 'nom', '015'),
	('admin@diggit.fr', 'Admin', 'admin', 'admin', '07844545454'),
	('davd.g@gmail.com', 'davidGuetta', 'David', 'Guetta', '07828954654'),
	('djsnake@gmail.com', 'DJsnake', 'snake', 'Dj', '078456756'),
	('fdkgklm@gmail.com', 'psuedo', 'pre', 'om', '45'),
	('guigui@gmail.Com', 'guigui79', 'gringe', 'guillaume', '0871545465'),
	('jesuisunclient@gmail.com', 'titi78', 'Martin', 'Garix', '07852235'),
	('tu@gmail.com', 'psuedo', 'prenom', 'nom', '078293258');

-- Listage de la structure de vue diggit.me. config
-- Suppression de la table temporaire et création finale de la structure d'une vue
DROP TABLE IF EXISTS `config`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `config` AS select `configurations`.`nomconfig` AS `nomconfig`,`tj_config_comp`.`is_selected` AS `is_selected` from (`configurations` join `tj_config_comp` on((`tj_config_comp`.`id_config` = `configurations`.`id_config`)));

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
