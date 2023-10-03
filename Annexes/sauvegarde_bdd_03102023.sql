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


-- Listage de la structure de la base pour lechoppe
CREATE DATABASE IF NOT EXISTS `lechoppe` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lechoppe`;

-- Listage de la structure de table lechoppe. beer_type
CREATE TABLE IF NOT EXISTS `beer_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table lechoppe.beer_type : ~48 rows (environ)
INSERT INTO `beer_type` (`id`, `name`) VALUES
	(1, 'Pils'),
	(2, 'Läger'),
	(3, 'I.P.A.'),
	(4, 'Witbier'),
	(5, 'Ambrée'),
	(6, 'Blonde'),
	(7, 'Blanche'),
	(8, 'Weissbier'),
	(9, 'Gose'),
	(10, 'Stout'),
	(11, 'Pale Ale'),
	(12, 'Rousse'),
	(13, 'Brune'),
	(14, 'Noire'),
	(15, 'Dry'),
	(16, 'Impérial'),
	(17, 'Oatmeal'),
	(18, 'Sweet'),
	(19, 'Porter'),
	(20, 'Robuste'),
	(21, 'Baltic'),
	(22, 'Scotch Ale'),
	(23, 'Smocked'),
	(24, 'Hefeweizen'),
	(25, 'Dunker Weizen'),
	(26, 'Berlinweisse'),
	(27, 'Belgians'),
	(28, 'Flanders'),
	(29, 'Lambic'),
	(30, 'Bière de garde'),
	(31, 'Abbaye/Trappiste'),
	(32, 'Triple'),
	(33, 'Quadrupel'),
	(34, 'Double'),
	(35, 'Dark Lager'),
	(36, 'Schwazbier'),
	(37, 'Helles'),
	(38, 'Dunkel'),
	(39, 'Pilsner'),
	(40, 'India Pale Lager'),
	(41, 'American Light Lager'),
	(42, 'West-Coast'),
	(43, 'Brut IPA'),
	(44, 'Black IPA'),
	(45, 'New-England IPA'),
	(46, 'Session IPA'),
	(47, 'White IPA'),
	(48, 'Rye Ale'),
	(49, 'Irish Red Ale'),
	(50, 'Wee Heavy'),
	(51, 'Old School IPA'),
	(52, 'Smoked Oatmeal'),
	(53, 'Kölsch'),
	(54, 'Red Ale');

-- Listage de la structure de table lechoppe. doctrine_migration_versions
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Listage des données de la table lechoppe.doctrine_migration_versions : ~11 rows (environ)
INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
	('DoctrineMigrations\\Version20230821123009', '2023-08-21 12:30:29', 109),
	('DoctrineMigrations\\Version20230821181133', '2023-08-21 18:11:43', 20),
	('DoctrineMigrations\\Version20230822075844', '2023-08-22 07:59:42', 45),
	('DoctrineMigrations\\Version20230822093908', '2023-08-22 09:39:19', 24),
	('DoctrineMigrations\\Version20230822142033', '2023-08-22 14:20:38', 18),
	('DoctrineMigrations\\Version20230823145322', '2023-08-23 14:53:34', 16),
	('DoctrineMigrations\\Version20230828075614', '2023-08-28 07:56:44', 17),
	('DoctrineMigrations\\Version20230829092255', '2023-08-29 09:23:04', 43),
	('DoctrineMigrations\\Version20230829183739', '2023-08-29 18:38:42', 64),
	('DoctrineMigrations\\Version20230830090853', '2023-08-30 09:09:04', 78),
	('DoctrineMigrations\\Version20230830092849', '2023-08-30 09:28:53', 13),
	('DoctrineMigrations\\Version20230830095116', '2023-08-30 09:51:22', 15),
	('DoctrineMigrations\\Version20230831064652', '2023-08-31 06:47:10', 44),
	('DoctrineMigrations\\Version20230908084928', '2023-09-08 08:49:49', 40),
	('DoctrineMigrations\\Version20230920074648', '2023-09-20 07:47:00', 56),
	('DoctrineMigrations\\Version20230925124146', '2023-09-25 12:42:01', 52),
	('DoctrineMigrations\\Version20230925165659', '2023-09-25 16:57:13', 57),
	('DoctrineMigrations\\Version20230926070927', '2023-09-26 07:09:36', 31),
	('DoctrineMigrations\\Version20230926123627', '2023-09-26 12:36:34', 17),
	('DoctrineMigrations\\Version20231002071059', '2023-10-02 07:11:29', 57),
	('DoctrineMigrations\\Version20231002093728', '2023-10-02 09:37:33', 92),
	('DoctrineMigrations\\Version20231002130744', '2023-10-02 13:07:57', 28),
	('DoctrineMigrations\\Version20231003121347', '2023-10-03 12:13:56', 45),
	('DoctrineMigrations\\Version20231003133958', '2023-10-03 13:40:19', 26);

-- Listage de la structure de table lechoppe. messenger_messages
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table lechoppe.messenger_messages : ~8 rows (environ)
INSERT INTO `messenger_messages` (`id`, `body`, `headers`, `queue_name`, `created_at`, `available_at`, `delivered_at`) VALUES
	(1, 'O:36:\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\":2:{s:44:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\";a:1:{s:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\";a:1:{i:0;O:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\":1:{s:55:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\";s:21:\\"messenger.bus.default\\";}}}s:45:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\";O:51:\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\":2:{s:60:\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\";O:39:\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\":4:{i:0;s:41:\\"registration/confirmation_email.html.twig\\";i:1;N;i:2;a:3:{s:9:\\"signedUrl\\";s:169:\\"http://127.0.0.1:8000/verify/email?expires=1693313662&signature=gSvbFfj4%2F1hduRGVYp5ZxvcwD1sFMyZcbZv6B2fimiE%3D&token=SWrJPMVfpjsDbZ6lpEfnD2tHKv%2BHDp4%2FcOnO0nYOX5I%3D\\";s:19:\\"expiresAtMessageKey\\";s:26:\\"%count% hour|%count% hours\\";s:20:\\"expiresAtMessageData\\";a:1:{s:7:\\"%count%\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\":2:{s:46:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\";a:3:{s:4:\\"from\\";a:1:{i:0;O:47:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:4:\\"From\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:58:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\";a:1:{i:0;O:30:\\"Symfony\\\\Component\\\\Mime\\\\Address\\":2:{s:39:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\";s:17:\\"admin@exemple.com\\";s:36:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\";s:27:\\"Admin - Boutique l\\\'échoppe\\";}}}}s:2:\\"to\\";a:1:{i:0;O:47:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:2:\\"To\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:58:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\";a:1:{i:0;O:30:\\"Symfony\\\\Component\\\\Mime\\\\Address\\":2:{s:39:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\";s:19:\\"monadresse@test.com\\";s:36:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\";s:0:\\"\\";}}}}s:7:\\"subject\\";a:1:{i:0;O:48:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:7:\\"Subject\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:55:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\";s:25:\\"Please Confirm your Email\\";}}}s:49:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\";i:76;}i:1;N;}}}s:61:\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\";N;}}', '[]', 'default', '2023-08-29 11:54:22', '2023-08-29 11:54:22', NULL),
	(2, 'O:36:\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\":2:{s:44:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\";a:1:{s:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\";a:1:{i:0;O:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\":1:{s:55:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\";s:21:\\"messenger.bus.default\\";}}}s:45:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\";O:51:\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\":2:{s:60:\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\";O:39:\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\":4:{i:0;s:41:\\"registration/confirmation_email.html.twig\\";i:1;N;i:2;a:3:{s:9:\\"signedUrl\\";s:167:\\"http://127.0.0.1:8000/verify/email?expires=1693313752&signature=aG4sFdlNRK2Uho9os5Ppee68CGorZcF6dHzyPv2ary8%3D&token=PBSGw%2FL1KNTiTmx2Gjc72qCPRTXcvChVQ0mnTcSGq%2F8%3D\\";s:19:\\"expiresAtMessageKey\\";s:26:\\"%count% hour|%count% hours\\";s:20:\\"expiresAtMessageData\\";a:1:{s:7:\\"%count%\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\":2:{s:46:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\";a:3:{s:4:\\"from\\";a:1:{i:0;O:47:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:4:\\"From\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:58:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\";a:1:{i:0;O:30:\\"Symfony\\\\Component\\\\Mime\\\\Address\\":2:{s:39:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\";s:17:\\"admin@exemple.com\\";s:36:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\";s:27:\\"Admin - Boutique l\\\'échoppe\\";}}}}s:2:\\"to\\";a:1:{i:0;O:47:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:2:\\"To\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:58:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\";a:1:{i:0;O:30:\\"Symfony\\\\Component\\\\Mime\\\\Address\\":2:{s:39:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\";s:19:\\"monadresse@test.com\\";s:36:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\";s:0:\\"\\";}}}}s:7:\\"subject\\";a:1:{i:0;O:48:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:7:\\"Subject\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:55:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\";s:25:\\"Please Confirm your Email\\";}}}s:49:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\";i:76;}i:1;N;}}}s:61:\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\";N;}}', '[]', 'default', '2023-08-29 11:55:52', '2023-08-29 11:55:52', NULL),
	(3, 'O:36:\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\":2:{s:44:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\";a:1:{s:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\";a:1:{i:0;O:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\":1:{s:55:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\";s:21:\\"messenger.bus.default\\";}}}s:45:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\";O:51:\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\":2:{s:60:\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\";O:39:\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\":4:{i:0;s:41:\\"registration/confirmation_email.html.twig\\";i:1;N;i:2;a:3:{s:9:\\"signedUrl\\";s:171:\\"http://127.0.0.1:8000/verify/email?expires=1693314114&signature=XfQbREJG082wh8%2FAoNuRzRWU2GdVkMgqzcFxmEqnKII%3D&token=NI7wasJJ%2Ba96Q2iyyOunYzW9OZqi%2FkE6ov7nlZQeo%2Bc%3D\\";s:19:\\"expiresAtMessageKey\\";s:26:\\"%count% hour|%count% hours\\";s:20:\\"expiresAtMessageData\\";a:1:{s:7:\\"%count%\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\":2:{s:46:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\";a:3:{s:4:\\"from\\";a:1:{i:0;O:47:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:4:\\"From\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:58:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\";a:1:{i:0;O:30:\\"Symfony\\\\Component\\\\Mime\\\\Address\\":2:{s:39:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\";s:17:\\"admin@exemple.com\\";s:36:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\";s:27:\\"Admin - Boutique l\\\'échoppe\\";}}}}s:2:\\"to\\";a:1:{i:0;O:47:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:2:\\"To\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:58:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\";a:1:{i:0;O:30:\\"Symfony\\\\Component\\\\Mime\\\\Address\\":2:{s:39:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\";s:19:\\"monadresse@test.com\\";s:36:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\";s:0:\\"\\";}}}}s:7:\\"subject\\";a:1:{i:0;O:48:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:7:\\"Subject\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:55:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\";s:25:\\"Please Confirm your Email\\";}}}s:49:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\";i:76;}i:1;N;}}}s:61:\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\";N;}}', '[]', 'default', '2023-08-29 12:01:54', '2023-08-29 12:01:54', NULL),
	(4, 'O:36:\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\":2:{s:44:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\";a:1:{s:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\";a:1:{i:0;O:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\":1:{s:55:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\";s:21:\\"messenger.bus.default\\";}}}s:45:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\";O:51:\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\":2:{s:60:\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\";O:39:\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\":4:{i:0;s:41:\\"registration/confirmation_email.html.twig\\";i:1;N;i:2;a:3:{s:9:\\"signedUrl\\";s:169:\\"http://127.0.0.1:8000/verify/email?expires=1693314423&signature=dK%2BlrT5TWDGZG725aBOm93FypiAHTPMbT7bxBdrgSLk%3D&token=%2FHGywfJaji%2BOhUrj1HLySTQtBdwBiO6uG9BzmN5xDsc%3D\\";s:19:\\"expiresAtMessageKey\\";s:26:\\"%count% hour|%count% hours\\";s:20:\\"expiresAtMessageData\\";a:1:{s:7:\\"%count%\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\":2:{s:46:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\";a:3:{s:4:\\"from\\";a:1:{i:0;O:47:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:4:\\"From\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:58:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\";a:1:{i:0;O:30:\\"Symfony\\\\Component\\\\Mime\\\\Address\\":2:{s:39:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\";s:17:\\"admin@exemple.com\\";s:36:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\";s:27:\\"Admin - Boutique l\\\'échoppe\\";}}}}s:2:\\"to\\";a:1:{i:0;O:47:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:2:\\"To\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:58:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\";a:1:{i:0;O:30:\\"Symfony\\\\Component\\\\Mime\\\\Address\\":2:{s:39:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\";s:19:\\"monadresse@test.com\\";s:36:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\";s:0:\\"\\";}}}}s:7:\\"subject\\";a:1:{i:0;O:48:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:7:\\"Subject\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:55:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\";s:25:\\"Please Confirm your Email\\";}}}s:49:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\";i:76;}i:1;N;}}}s:61:\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\";N;}}', '[]', 'default', '2023-08-29 12:07:03', '2023-08-29 12:07:03', NULL),
	(5, 'O:36:\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\":2:{s:44:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\";a:1:{s:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\";a:1:{i:0;O:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\":1:{s:55:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\";s:21:\\"messenger.bus.default\\";}}}s:45:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\";O:51:\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\":2:{s:60:\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\";O:39:\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\":4:{i:0;s:41:\\"registration/confirmation_email.html.twig\\";i:1;N;i:2;a:3:{s:9:\\"signedUrl\\";s:169:\\"http://127.0.0.1:8000/verify/email?expires=1693314473&signature=McyhXMsnHD00xM7RXiInCI%2BaidsaaikzT8xifBEZk8I%3D&token=QDF1R3IOx4Um%2FCQ2BYMX7aynLEFI4kkghHhydJCa%2BXo%3D\\";s:19:\\"expiresAtMessageKey\\";s:26:\\"%count% hour|%count% hours\\";s:20:\\"expiresAtMessageData\\";a:1:{s:7:\\"%count%\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\":2:{s:46:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\";a:3:{s:4:\\"from\\";a:1:{i:0;O:47:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:4:\\"From\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:58:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\";a:1:{i:0;O:30:\\"Symfony\\\\Component\\\\Mime\\\\Address\\":2:{s:39:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\";s:17:\\"admin@exemple.com\\";s:36:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\";s:27:\\"Admin - Boutique l\\\'échoppe\\";}}}}s:2:\\"to\\";a:1:{i:0;O:47:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:2:\\"To\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:58:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\";a:1:{i:0;O:30:\\"Symfony\\\\Component\\\\Mime\\\\Address\\":2:{s:39:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\";s:19:\\"monadresse@test.com\\";s:36:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\";s:0:\\"\\";}}}}s:7:\\"subject\\";a:1:{i:0;O:48:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:7:\\"Subject\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:55:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\";s:25:\\"Please Confirm your Email\\";}}}s:49:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\";i:76;}i:1;N;}}}s:61:\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\";N;}}', '[]', 'default', '2023-08-29 12:07:53', '2023-08-29 12:07:53', NULL),
	(6, 'O:36:\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\":2:{s:44:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\";a:1:{s:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\";a:1:{i:0;O:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\":1:{s:55:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\";s:21:\\"messenger.bus.default\\";}}}s:45:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\";O:51:\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\":2:{s:60:\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\";O:39:\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\":4:{i:0;s:41:\\"registration/confirmation_email.html.twig\\";i:1;N;i:2;a:3:{s:9:\\"signedUrl\\";s:171:\\"http://127.0.0.1:8000/verify/email?expires=1693314656&signature=yAk4qprQ4qDYm3WV4nufJ81WOvXwZ6JG2%2BNjfTADxl4%3D&token=%2BAmZBf5k5WoU%2Bk70bnK%2FeqEJm0a9ILoAYO00qUDZMLE%3D\\";s:19:\\"expiresAtMessageKey\\";s:26:\\"%count% hour|%count% hours\\";s:20:\\"expiresAtMessageData\\";a:1:{s:7:\\"%count%\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\":2:{s:46:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\";a:3:{s:4:\\"from\\";a:1:{i:0;O:47:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:4:\\"From\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:58:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\";a:1:{i:0;O:30:\\"Symfony\\\\Component\\\\Mime\\\\Address\\":2:{s:39:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\";s:17:\\"admin@exemple.com\\";s:36:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\";s:27:\\"Admin - Boutique l\\\'échoppe\\";}}}}s:2:\\"to\\";a:1:{i:0;O:47:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:2:\\"To\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:58:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\";a:1:{i:0;O:30:\\"Symfony\\\\Component\\\\Mime\\\\Address\\":2:{s:39:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\";s:19:\\"monadresse@test.com\\";s:36:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\";s:0:\\"\\";}}}}s:7:\\"subject\\";a:1:{i:0;O:48:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:7:\\"Subject\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:55:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\";s:25:\\"Please Confirm your Email\\";}}}s:49:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\";i:76;}i:1;N;}}}s:61:\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\";N;}}', '[]', 'default', '2023-08-29 12:10:56', '2023-08-29 12:10:56', NULL),
	(7, 'O:36:\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\":2:{s:44:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\";a:1:{s:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\";a:1:{i:0;O:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\":1:{s:55:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\";s:21:\\"messenger.bus.default\\";}}}s:45:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\";O:51:\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\":2:{s:60:\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\";O:39:\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\":4:{i:0;s:41:\\"registration/confirmation_email.html.twig\\";i:1;N;i:2;a:3:{s:9:\\"signedUrl\\";s:167:\\"http://127.0.0.1:8000/verify/email?expires=1693314980&signature=D32RYghDHe9qc6Nb4QvXAaHYLIuDmvHBsaby%2B2OJ3Dg%3D&token=uSYeR7JX90fysBGHb0KJxC%2Bo6hhvXbimeggVZTvdq34%3D\\";s:19:\\"expiresAtMessageKey\\";s:26:\\"%count% hour|%count% hours\\";s:20:\\"expiresAtMessageData\\";a:1:{s:7:\\"%count%\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\":2:{s:46:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\";a:3:{s:4:\\"from\\";a:1:{i:0;O:47:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:4:\\"From\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:58:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\";a:1:{i:0;O:30:\\"Symfony\\\\Component\\\\Mime\\\\Address\\":2:{s:39:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\";s:17:\\"admin@exemple.com\\";s:36:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\";s:27:\\"Admin - Boutique l\\\'échoppe\\";}}}}s:2:\\"to\\";a:1:{i:0;O:47:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:2:\\"To\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:58:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\";a:1:{i:0;O:30:\\"Symfony\\\\Component\\\\Mime\\\\Address\\":2:{s:39:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\";s:20:\\"monadresse&@test.com\\";s:36:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\";s:0:\\"\\";}}}}s:7:\\"subject\\";a:1:{i:0;O:48:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:7:\\"Subject\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:55:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\";s:30:\\"Merci de confirmer votre email\\";}}}s:49:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\";i:76;}i:1;N;}}}s:61:\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\";N;}}', '[]', 'default', '2023-08-29 12:16:20', '2023-08-29 12:16:20', NULL),
	(8, 'O:36:\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\":2:{s:44:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\";a:1:{s:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\";a:1:{i:0;O:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\":1:{s:55:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\";s:21:\\"messenger.bus.default\\";}}}s:45:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\";O:51:\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\":2:{s:60:\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\";O:39:\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\":4:{i:0;s:41:\\"registration/confirmation_email.html.twig\\";i:1;N;i:2;a:3:{s:9:\\"signedUrl\\";s:167:\\"http://127.0.0.1:8000/verify/email?expires=1693315290&signature=UFLsnlKAQIUwFQy3x4UTieJs7czDOzDnpnQHLHoU3yM%3D&token=VCsaoVMnx%2FoXt74LUIi69Ruf%2F2i4pCtyLJ8wdG3NEFc%3D\\";s:19:\\"expiresAtMessageKey\\";s:26:\\"%count% hour|%count% hours\\";s:20:\\"expiresAtMessageData\\";a:1:{s:7:\\"%count%\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\":2:{s:46:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\";a:3:{s:4:\\"from\\";a:1:{i:0;O:47:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:4:\\"From\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:58:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\";a:1:{i:0;O:30:\\"Symfony\\\\Component\\\\Mime\\\\Address\\":2:{s:39:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\";s:17:\\"admin@exemple.com\\";s:36:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\";s:27:\\"Admin - Boutique l\\\'échoppe\\";}}}}s:2:\\"to\\";a:1:{i:0;O:47:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:2:\\"To\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:58:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\";a:1:{i:0;O:30:\\"Symfony\\\\Component\\\\Mime\\\\Address\\":2:{s:39:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\";s:24:\\"monadresse98148@test.com\\";s:36:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\";s:0:\\"\\";}}}}s:7:\\"subject\\";a:1:{i:0;O:48:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:7:\\"Subject\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:55:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\";s:30:\\"Merci de confirmer votre email\\";}}}s:49:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\";i:76;}i:1;N;}}}s:61:\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\";N;}}', '[]', 'default', '2023-08-29 12:21:31', '2023-08-29 12:21:31', NULL),
	(9, 'O:36:\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\":2:{s:44:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\";a:1:{s:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\";a:1:{i:0;O:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\":1:{s:55:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\";s:21:\\"messenger.bus.default\\";}}}s:45:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\";O:51:\\"Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\":2:{s:60:\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0message\\";O:39:\\"Symfony\\\\Bridge\\\\Twig\\\\Mime\\\\TemplatedEmail\\":4:{i:0;s:41:\\"registration/confirmation_email.html.twig\\";i:1;N;i:2;a:3:{s:9:\\"signedUrl\\";s:165:\\"http://127.0.0.1:8000/verify/email?expires=1693315382&signature=mqXI1ef77PC7yUsLKe6EAsVf7Y5hOwAb%2BrvFBDx1Z5I%3D&token=ERdn3XojgzaWoRbhGBVVa7eOJ1yyD490rDQ6l7QjPMw%3D\\";s:19:\\"expiresAtMessageKey\\";s:26:\\"%count% hour|%count% hours\\";s:20:\\"expiresAtMessageData\\";a:1:{s:7:\\"%count%\\";i:1;}}i:3;a:6:{i:0;N;i:1;N;i:2;N;i:3;N;i:4;a:0:{}i:5;a:2:{i:0;O:37:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\":2:{s:46:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0headers\\";a:3:{s:4:\\"from\\";a:1:{i:0;O:47:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:4:\\"From\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:58:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\";a:1:{i:0;O:30:\\"Symfony\\\\Component\\\\Mime\\\\Address\\":2:{s:39:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\";s:17:\\"admin@exemple.com\\";s:36:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\";s:27:\\"Admin - Boutique l\\\'échoppe\\";}}}}s:2:\\"to\\";a:1:{i:0;O:47:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:2:\\"To\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:58:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\MailboxListHeader\\0addresses\\";a:1:{i:0;O:30:\\"Symfony\\\\Component\\\\Mime\\\\Address\\":2:{s:39:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0address\\";s:27:\\"monadresse98148rth@test.com\\";s:36:\\"\\0Symfony\\\\Component\\\\Mime\\\\Address\\0name\\";s:0:\\"\\";}}}}s:7:\\"subject\\";a:1:{i:0;O:48:\\"Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\":5:{s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0name\\";s:7:\\"Subject\\";s:56:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lineLength\\";i:76;s:50:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0lang\\";N;s:53:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\AbstractHeader\\0charset\\";s:5:\\"utf-8\\";s:55:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\UnstructuredHeader\\0value\\";s:30:\\"Merci de confirmer votre email\\";}}}s:49:\\"\\0Symfony\\\\Component\\\\Mime\\\\Header\\\\Headers\\0lineLength\\";i:76;}i:1;N;}}}s:61:\\"\\0Symfony\\\\Component\\\\Mailer\\\\Messenger\\\\SendEmailMessage\\0envelope\\";N;}}', '[]', 'default', '2023-08-29 12:23:02', '2023-08-29 12:23:02', NULL);

-- Listage de la structure de table lechoppe. order
CREATE TABLE IF NOT EXISTS `order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `reference` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_paid` tinyint(1) NOT NULL,
  `is_processed` tinyint(1) NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contribution` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F5299398A76ED395` (`user_id`),
  CONSTRAINT `FK_F5299398A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table lechoppe.order : ~22 rows (environ)
INSERT INTO `order` (`id`, `user_id`, `created_at`, `reference`, `is_paid`, `is_processed`, `stripe_id`, `contribution`) VALUES
	(5, 21, '2023-09-01 09:16:29', '2120230901090929', 1, 1, NULL, NULL),
	(6, 21, '2023-09-01 09:26:32', '2120230901090932', 1, 0, NULL, NULL),
	(10, 21, '2023-09-01 09:39:04', '2120230901093904', 0, 0, NULL, NULL),
	(11, 25, '2023-09-01 12:45:22', '2520230901124522', 1, 1, NULL, NULL),
	(12, 25, '2023-09-01 12:46:56', '2520230901124656', 0, 0, NULL, NULL),
	(13, 21, '2023-09-18 12:27:41', '2120230918122741', 1, 0, NULL, NULL),
	(14, 21, '2023-09-18 12:49:08', '2120230918124908', 1, 0, NULL, NULL),
	(15, 21, '2023-09-18 13:14:08', '2120230918011408', 1, 0, NULL, NULL),
	(16, 21, '2023-09-19 07:45:17', '2120230919074517', 1, 0, NULL, NULL),
	(17, 21, '2023-09-19 09:59:40', '2120230919095940', 1, 0, NULL, NULL),
	(18, 21, '2023-09-19 11:33:39', '2120230919113339', 1, 0, NULL, NULL),
	(19, 21, '2023-09-19 11:36:10', '2120230919113610', 1, 0, NULL, NULL),
	(20, 21, '2023-09-19 12:18:28', '2120230919121828', 1, 0, NULL, NULL),
	(21, 21, '2023-09-21 07:54:36', '2120230921075436', 1, 0, NULL, NULL),
	(22, 27, '2023-09-26 09:56:19', '2720230926095619', 1, 0, NULL, NULL),
	(23, 27, '2023-09-26 12:41:08', '2720230926124108', 1, 0, 'pi_3NuaZ7AHOug1g0Pw1NmdjV2b', NULL),
	(24, 27, '2023-09-26 12:46:03', '2720230926124603', 1, 0, 'pi_3NuaeIAHOug1g0Pw24JHmeqx', NULL),
	(25, 27, '2023-09-26 12:46:29', '2720230926124629', 1, 0, 'pi_3NuaeIAHOug1g0Pw24JHmeqx', NULL),
	(26, 27, '2023-09-26 13:03:15', '2720230926010315', 1, 0, 'pi_3NuasBAHOug1g0Pw1pWReI0t', NULL),
	(27, 21, '2023-09-28 07:22:04', '2120230928072204', 1, 0, 'pi_3NvEXrAHOug1g0Pw3fJVrHo2', NULL),
	(28, 26, '2023-10-03 12:28:50', '2620231003122850', 1, 0, 'pi_3Nx7iUAHOug1g0Pw1FwxNd0X', 1000),
	(29, 26, '2023-10-03 12:32:25', '2620231003123225', 1, 0, 'pi_3Nx7lxAHOug1g0Pw33SGYNd6', NULL),
	(30, 27, '2023-10-03 14:13:08', '2720231003021308', 1, 0, 'pi_3Nx9LPAHOug1g0Pw13Ez7LWL', 1000);

-- Listage de la structure de table lechoppe. order_details
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_845CA2C14584665A` (`product_id`),
  KEY `IDX_845CA2C18D9F6D38` (`order_id`),
  CONSTRAINT `FK_845CA2C14584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FK_845CA2C18D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table lechoppe.order_details : ~32 rows (environ)
INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
	(11, 5, 2, 10, 100),
	(12, 6, 11, 1, 550),
	(16, 10, 8, 1, 590),
	(17, 11, 8, 5, 590),
	(18, 11, 11, 2, 550),
	(19, 11, 2, 12, 100),
	(20, 11, 3, 4, 330),
	(21, 11, 13, 1, 900),
	(22, 11, 5, 8, 390),
	(23, 12, 2, 12, 100),
	(24, 12, 5, 1, 390),
	(25, 13, 2, 6, 100),
	(26, 13, 18, 4, 310),
	(27, 13, 20, 2, 500),
	(28, 13, 17, 6, 450),
	(29, 13, 19, 3, 410),
	(30, 13, 13, 2, 900),
	(31, 14, 2, 5, 100),
	(32, 15, 2, 1, 100),
	(33, 16, 2, 1, 100),
	(34, 17, 3, 1, 330),
	(35, 18, 2, 3, 100),
	(36, 18, 4, 2, 220),
	(37, 19, 3, 1, 330),
	(38, 20, 3, 1, 330),
	(39, 21, 2, 1, 100),
	(40, 22, 2, 10, 100),
	(41, 23, 2, 9, 100),
	(42, 23, 3, 4, 330),
	(43, 23, 12, 8, 800),
	(44, 24, 2, 1, 100),
	(45, 25, 3, 12, 330),
	(46, 26, 2, 1, 100),
	(47, 27, 5, 1, 390),
	(48, 27, 9, 4, 300),
	(49, 27, 21, 1, 385),
	(50, 28, 2, 1, 100),
	(51, 29, 2, 6, 100),
	(52, 30, 2, 1, 100);

-- Listage de la structure de table lechoppe. product
CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider_id` int NOT NULL,
  `production_type_id` int NOT NULL,
  `designation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL,
  `quantity` int NOT NULL,
  `stock` int DEFAULT NULL,
  `available` tinyint(1) NOT NULL,
  `volume` double NOT NULL,
  `ingredients` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `alcohol_level` double NOT NULL,
  `bitterness` double DEFAULT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagefile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D34A04ADA53A8AA` (`provider_id`),
  KEY `IDX_D34A04ADD059014E` (`production_type_id`),
  CONSTRAINT `FK_D34A04ADA53A8AA` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`id`),
  CONSTRAINT `FK_D34A04ADD059014E` FOREIGN KEY (`production_type_id`) REFERENCES `production_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table lechoppe.product : ~20 rows (environ)
INSERT INTO `product` (`id`, `provider_id`, `production_type_id`, `designation`, `created_at`, `description`, `price`, `quantity`, `stock`, `available`, `volume`, `ingredients`, `alcohol_level`, `bitterness`, `slug`, `imagefile`) VALUES
	(2, 3, 2, 'La blonde test', '2023-08-22 08:50:36', 'La blonde test de la brasserie test', 100, 1, 18, 1, 25, 'malt, houblon', 5, NULL, 'la-blonde-test-25', 'f9bc8973ffcae0c7c2ab03ffd205cba782e28949.png'),
	(3, 3, 2, 'Bière brune test', '2023-08-22 14:45:51', 'Un nouvelle ambrée vient d\'arrive chez la brasserie Test! Savoureuse, légèrement amer.', 330, 1, 27, 1, 33, 'Malt un peu torréfié, houblons, d\'autres ingrédients', 6, 20, 'biere-brune-test-33', '8de27754f01c2026abaae6329b5f8685a6b505a6.jpg'),
	(4, 3, 2, 'La blanche test', '2023-08-22 14:59:54', 'C\'est une bière blanche tout ce qu\'il y a de plus classique. Légère et rafraichissante, "se boit comme du p\'tit lait!"', 220, 1, 48, 1, 50, 'Malt, blé, houblons', 4.9, NULL, 'la-blanche-test-50', '8b70ca85491b53daeae5af9fbf89073255d46cee.png'),
	(5, 3, 2, 'La I.P.A "pour faire comme tout le monde"', '2023-08-22 15:02:25', 'La bière I.P.A., parce que de nous jours une brasserie n\'est plus une brasserie si elle ne fait pas de I.P.A.', 390, 1, -2, 1, 40, 'Orge, plein de houblons', 5.5, 30, 'la-ipa-pour-faire-comme-tout-le-monde-40', '61526b5400c41bc45c78c9215c0da4590d2a2980.jpg'),
	(6, 3, 3, 'Y\'a plus d\'saison', '2023-08-22 17:00:34', 'Une bière de saison, mais on ne sait pas trop laquelle...', 370, 1, 20, 1, 25, 'orge, blé, houblon, fruits', 5.4, 8, 'ya-plus-dsaison-25', '628508ce9ceb98f54d078b334cff54e128be5676.png'),
	(7, 3, 1, 'Pack découverte', '2023-08-22 17:09:15', 'La brasserie test vous propose un pack découverte incluant  leurs meilleurs bières.\r\n\r\nEmballage au design original!', 1250, 6, 5, 1, 33, 'Malt d\'orge, houblons\r\nMalt d\'orge, houblons, blé\r\nMalt d\'orge, houblons, fruits', 5, NULL, 'pack-decouverte-33', 'd116b947d4cad4c3f6c8e3bbb98154d432fdf96b.jpg'),
	(8, 4, 2, '"On va juste boire un coup"', '2023-08-22 20:39:44', 'Bière blonde douce et légère composée de houblons aromatiques. Légère amertume. \r\n\r\nSe boit facilement...La bière parfaite pour se faire "traquenarder"', 590, 1, 6, 1, 75, 'Malt d\'orge, houblons (Elixir, Mistral, Hallertau Blanc).', 5, 25, 'on-va-juste-boire-un-coup-75', '62461828f740adf994e610343bc1db23706c5e8a.jpg'),
	(9, 4, 2, '"On va juste boire un coup"', '2023-08-22 20:42:22', 'Bière blonde douce et légère composée de houblons aromatiques. Légère amertume. \r\n\r\nSe boit facilement...La bière parfaite pour se faire "traquenarder"', 300, 1, 4, 1, 33, 'Malt d\'orge, houblons (Elixir, Mistral, Hallertau Blanc).', 5, 25, 'on-va-juste-boire-un-coup-33', 'a525e46813f720b451251d88f4c943afc558ac14.jpg'),
	(10, 4, 1, 'La lorem Ipsum', '2023-08-22 20:47:04', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sed eleifend ligula. Ut scelerisque aliquam sem, et mollis tortor lacinia ac. Quisque nec mauris tristique, tincidunt sem sit amet, hendrerit mi. Aenean vehicula odio enim, id venenatis quam finibus vel. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aliquam consectetur efficitur nulla, dignissim mattis nisi egestas id. Nulla elementum augue risus, sed varius nunc rutrum sit amet. Mauris semper egestas lorem, non venenatis metus laoreet in. Integer interdum iaculis felis non faucibus. Mauris quis porttitor leo. Quisque vitae libero quis ex elementum sollicitudin.\r\n\r\nPellentesque eleifend ligula vel mi viverra tristique. Donec dolor odio, rhoncus rutrum leo lobortis, tristique tincidunt ipsum. Integer sodales diam non tristique rutrum. In lacinia, nulla et varius pulvinar, lorem dolor tempus neque, vitae rutrum nulla lorem at ex. Maecenas dignissim bibendum felis quis dignissim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Mauris quam enim.', 1200, 1, 5, 1, 75, 'Malt de blé, coriandre, sel', 3.5, 35, 'la-lorem-ipsum-75', NULL),
	(11, 4, 2, 'La Sbroff', '2023-08-22 20:50:06', 'Est-ce que...sbroff?', 550, 1, -9, 1, 33, 'orge et plein d\'autres trucs', 12.8, 30, 'la-sbroff-33', '6c5c9073bafc596b5bf8b5fb4a74851a59b695fd.jpg'),
	(12, 4, 1, 'La Lorem Ipsum blanche', '2023-08-22 20:53:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eu lacus hendrerit, dignissim est vel, tincidunt sapien. Phasellus ipsum felis, blandit sit amet nisl in, consectetur maximus ex. Duis id tellus tortor. Pellentesque efficitur felis ut odio lobortis, non sodales massa molestie. Ut at orci sed lacus eleifend tempus. Nulla nec dolor a leo porttitor iaculis in fermentum leo. Nulla id gravida est, hendrerit eleifend justo. Mauris ligula arcu, commodo eget ultrices iaculis, scelerisque in orci. In et pharetra sem, eget dictum arcu. Nullam volutpat iaculis tellus. Donec ac nibh et lacus consequat suscipit. Pellentesque vel ullamcorper felis. Morbi ac sapien id mi imperdiet facilisis id id tortor. Vestibulum vel lectus fermentum ex suscipit porttitor. Cras fermentum efficitur felis.\r\n\r\nPellentesque eleifend ligula vel mi viverra tristique. Donec dolor odio, rhoncus rutrum leo lobortis, tristique tincidunt ipsum. Integer sodales diam non tristique rutrum. In lacinia, nulla et varius pulvinar, lorem dolor tempus neque, vitae rutrum nulla lorem at ex. Maecenas dignissim bibendum felis quis dignissim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Mauris quam enim.', 800, 1, -2, 1, 75, 'orge, blé, houblons,', 4.8, NULL, 'la-lorem-ipsum-blanche-75', NULL),
	(13, 4, 2, 'La Lorem Ipsum black IPA', '2023-08-22 20:54:51', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eu lacus hendrerit, dignissim est vel, tincidunt sapien. Phasellus ipsum felis, blandit sit amet nisl in, consectetur maximus ex. Duis id tellus tortor. Pellentesque efficitur felis ut odio lobortis, non sodales massa molestie. Ut at orci sed lacus eleifend tempus. Nulla nec dolor a leo porttitor iaculis in fermentum leo. Nulla id gravida est, hendrerit eleifend justo. Mauris ligula arcu, commodo eget ultrices iaculis, scelerisque in orci. In et pharetra sem, eget dictum arcu. Nullam volutpat iaculis tellus. Donec ac nibh et lacus consequat suscipit. Pellentesque vel ullamcorper felis. Morbi ac sapien id mi imperdiet facilisis id id tortor. Vestibulum vel lectus fermentum ex suscipit porttitor. Cras fermentum efficitur felis.\r\n\r\nPellentesque eleifend ligula vel mi viverra tristique. Donec dolor odio, rhoncus rutrum leo lobortis, tristique tincidunt ipsum. Integer sodales dia\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eu lacus hendrerit, dignissim est vel, tincidunt sapien. Phasellus ipsum felis, blandit sit amet nisl in, consectetur maximus ex. Duis id tellus tortor. Pellentesque efficitur felis ut odio lobortis, non sodales massa molestie. Ut at orci sed lacus eleifend tempus. Nulla nec dolor a leo porttitor iaculis in fermentum leo. Nulla id gravida est, hendrerit eleifend justo. Mauris ligula arcu, commodo eget ultrices iaculis, scelerisque in orci. In et pharetra sem, eget dictum arcu. Nullam volutpat iaculis tellus. Donec ac nibh et lacus consequat suscipit. Pellentesque vel ullamcorper felis. Morbi ac sapien id mi imperdiet facilisis id id tortor. Vestibulum vel lectus fermentum ex suscipit porttitor. Cras fermentum efficitur felis.\r\n\r\nPellentesque eleifend ligula vel mi viverra tristique. Donec dolor odio, rhoncus rutrum leo lobortis, tristique tincidunt ipsum. Integer sodales diam non tristique rutrum. In lacinia, nulla et varius pulvinar, lorem dolor tempus neque, vitae rutrum nulla lorem at ex. Maecenas dignissim bibendum felis quis dignissim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Mauris quam enim.', 900, 1, -1, 1, 75, 'Pellentesque eleifend ligula vel mi viverra tristique. Donec dolor odio, rhoncus rutrum leo lobortis, tristique tincidunt ipsum. Integer sodales diam non tristique rutrum. In lacinia, nulla et varius pulvinar, lorem dolor tempus neque, vitae rutrum nulla lorem at ex. Maecenas dignissim bibendum felis quis dignissim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Mauris quam enim.', 9, 40, 'la-lorem-ipsum-black-ipa-75', NULL),
	(14, 5, 2, 'Auguste Friville', '2023-09-16 10:30:58', 'Auguste Friville est une bière blonde légère mettant en avant les nouveaux houblons aromatiques alsaciens (Elixir, Mistral) et allemands (Hallertau Blanc). Le degré d’alcool et l’amertume sont doux et maîtrisés, alors que l’aromatique est bien présente et confère une superbe buvabilité à cette bière artisanale. Au nez, Auguste Friville est florale et fruitée. Les houblons utilisés lui confèrent des notes de raisin blanc, d’agrumes, de lychee et de fleur de sureau. On retrouve ces arômes en bouche, couplés à une amertume légère et agréable. Les malts spéciaux utilisés apportent du corps, venant ainsi adoucir le palais et accompagner l’amertume. Auguste Friville s’apprécie à toute période de l’année et à toute heure de la journée.', 290, 1, 22, 1, 33, 'Malts : Pils, CaraPils, Munich.\r\nHoublons: Nugget, Elixir, Mistral, Hallertau Blanc.\r\nLevure : Lallemand BRY-97', 5, 25, 'auguste-friville-33', '3c92a9a2dd46011f4c30b206e58d35d7b4024083.webp'),
	(15, 5, 2, 'The HopRider', '2023-09-16 10:35:57', 'The HopRider est une bière blonde de style IPA généreusement houblonnée bien qu’assez peu amère. Sa mousse est riche, et l’utilisation de malt de blé et d’avoine en plus du malt d’orge lui confère un visuel voilé, “Hazy”. Grâce à l’ajout massif des houblons Citra, Waimea et Nelson Sauvin provenant des USA & de Nouvelle Zélande, des saveurs de fruits exotiques (mangue, fruit de la passion) et d’agrume (citron, pamplemousse) nous parviennent sans retenue au nez comme en bouche. Le niveau d’amertume est maîtrisé ; il est équilibré par les 6,7 degrés d’alcool et par un corps céréalier trop peu souvent présent dans les autres bières de ce style. The HopRider, c’est la bière qui nous fait voyager dans les lointaines houblonnières.', 330, 1, 8, 1, 33, 'Malts : Pale Ale, Blé, CaraRed, Flocons d\'Avoine.\r\nHops : Citra, Waimea, Nelson Sauvin.\r\nYeast : Lallemand VERDANT IPA', 6.2, 55, 'the-hoprider-33', 'd46935428247c1faf4bded13361d7b81eaa2204c.webp'),
	(16, 5, 1, 'Calico', '2023-09-16 10:42:39', 'Notre bière ambrée d’inspiration Irish Red Ale, la Calico, est composée de trois malts : un malt blanc, un ambré et un noir, en référence à nos amis félins à la robe tricolore.\r\nNous y avons incorporé un houblon néo-zélandais, dont l’authentique terroir apporte des notes inimitables de litchi, ananas et fruits à grappes. Le houblon reste discret, tandis que la base maltée prend le dessus ; apportant une finale sèche tout en laissant un peu de corps à la bière pour un goût de reviens-y. Le seigle caramélisé confère des notes discrètement épicées, tandis que l’orge torréfiée est présente pour apporter la couleur rubis à cette Red Ale.\r\nL’expérience est douce, unique et typiquement Roue Libre !', 380, 1, 7, 1, 33, 'Malts : Pale Ale, CaraRye, Orge torréfiée.\r\nHops : Nugget, Nelson Sauvin.\r\nYeast : Lallemand BRY-97', 4.9, 27, 'calico-33', '428031348aaad73b24685fb3ebdf6bfcc874aadb.webp'),
	(17, 5, 3, 'Cabane à Suc\'', '2023-09-16 10:44:33', 'La Cabane à Suc’ est une bière d’inspiration québecoise mariée au style Wee Heavy. C’est donc une Québec Wee Heavy : une bière généreuse, ronde et réconfortante, où le profil malté domine. Une juste sélection de différents malts lui confère des arômes de caramel. Nous y avons incorporé du sirop d’érable pendant la fermentation afin de renforcer ce côté gourmand : presque un dessert !\r\nPour parfaire la complexité de cette douce recette, nous l’avons affinée en y ajoutant des copeaux de chêne, afin d’équilibrer cette onctuosité tout en lui apportant une dimension barriquée, boisée.\r\nC’est une bière avec un beau potentiel de garde : à consommer à chaque belle occasion, ou tout simplement autour d’une belle table au chalet, après une longue journée passée dans la neige.', 450, 1, 0, 1, 33, 'Malts : Pale Ale, Munich, CaraRye, Blé, Tourbé.\r\nHops : Nugget, Fuggles.\r\nMisc. : Sirop d\'érable, copeaux de barriques de chêne.\r\nYeast : Lallemand LONDON.', 9.5, 30, 'cabane-a-suc-33', '4c76f00baa2c55268884476403beba0467d35141.webp'),
	(18, 5, 2, 'Rétropédalage', '2023-09-16 10:46:16', 'Il m’a fallu atteindre le bout de la rue avant de me rendre compte que j’avais enfourché mon biclou à l’envers. J’avais des envies d’avant, de remonter le temps… Rétropédalage, c’est notre hommage et notre interprétation des IPAs d’antan. Sèche et amère, mettant l’accent sur les houblons résineux et aux notes d’agrumes. Ouvre donc cette bouteille, et… Go back in time !', 310, 1, 12, 1, 33, 'Malts : Pale Ale, Avoine, CaraCrystal.\r\nHops : Nugget, Simcoe, Centennial, Summit.\r\nYeast : Lallemand BRY-97', 7, 55, 'retropedalage-33', '0b8e40ca2180c3ffc59d2c56a98656bf5d83e5d3.webp'),
	(19, 5, 4, 'Le Pot Belge', '2023-09-16 10:50:19', 'Le Pot Belge est la potion magique du cycliste en Roue Libre, un mélange des genres et des substances. La petite Belgian Tripel s’est vu dopée d’une dose d’ingrédients que se disputent les plus grand : une massive dose de houblon, direct from les United States d’amérique please.\r\nSauf qu’à l’inverse de certains grands champions, celle-ci ne triche pas, et vous allez vous en rendre compte !', 410, 1, -1, 1, 33, 'Malts : ??\r\nHoublons : ??\r\nLevure : ??', 8, 47, 'le-pot-belge-33', '3f7e8d25f4f5788768d05d256afabd9c39126ad6.webp'),
	(20, 5, 1, 'Rouen Black Smoke', '2023-09-16 10:53:14', 'Un épais nuage envahit le ciel… Ce genre de nuage dense, presque molletonné à l’aspect cotonneux, si ce n’avait été une fumée noire. Heureusement, ce nuage se transforme doucement en une mousse veloutée et gourmande. Cette bière n’est pas un accident chimique mais un beau Stout à l’avoine où nous avons rajouté du malt fumé pour parfaire sa texture généreuse, et son houblonnage légèrement fruité.', 500, 1, 5, 1, 33, 'Malts : ?\r\nHoublons : ?\r\nLevures: ?', 8, 47, 'rouen-black-smoke-33', 'e3614977862648bda086693e7341cd5e0bba62aa.webp'),
	(21, 5, 3, 'Spring Loop', '2023-09-16 10:54:52', 'L’hiver se termine et chasse avec lui les dernières neiges. C’est le retour des oiseaux, des apéros et des balades à vélo. Spring Loop – la boucle du printemps – est la partenaire idéale pour se remettre en selle. Le style Kölsch allie les qualités des Ale et des Lager, présente une touche maltée subtile et agréable, à laquelle nous avons ajouté un beau kick houblonné. Il faut bien ça pour y retourner !', 385, 1, 0, 1, 33, 'Malts : Pils, Blé, Munich.\r\nHops : Chinook, Lemondrop.\r\nYeast : Lallemand Köln.', 5.5, 32, 'spring-loop-33', 'cfa02d81241dbcbf29f945b687053f40b752ed79.webp');

-- Listage de la structure de table lechoppe. production_type
CREATE TABLE IF NOT EXISTS `production_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `production_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table lechoppe.production_type : ~4 rows (environ)
INSERT INTO `production_type` (`id`, `production_type`) VALUES
	(1, 'Ephémère'),
	(2, 'Permanente'),
	(3, 'Saisonnière'),
	(4, 'Exeptionnelle');

-- Listage de la structure de table lechoppe. product_beer_type
CREATE TABLE IF NOT EXISTS `product_beer_type` (
  `product_id` int NOT NULL,
  `beer_type_id` int NOT NULL,
  PRIMARY KEY (`product_id`,`beer_type_id`),
  KEY `IDX_EA8ABA794584665A` (`product_id`),
  KEY `IDX_EA8ABA79A3829862` (`beer_type_id`),
  CONSTRAINT `FK_EA8ABA794584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_EA8ABA79A3829862` FOREIGN KEY (`beer_type_id`) REFERENCES `beer_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table lechoppe.product_beer_type : ~30 rows (environ)
INSERT INTO `product_beer_type` (`product_id`, `beer_type_id`) VALUES
	(2, 1),
	(3, 5),
	(4, 7),
	(5, 3),
	(5, 6),
	(6, 8),
	(7, 1),
	(7, 3),
	(7, 4),
	(7, 8),
	(8, 6),
	(8, 11),
	(9, 11),
	(10, 9),
	(11, 16),
	(12, 7),
	(12, 8),
	(13, 44),
	(14, 11),
	(15, 3),
	(16, 54),
	(17, 22),
	(17, 50),
	(18, 3),
	(18, 51),
	(19, 27),
	(19, 32),
	(20, 10),
	(20, 52),
	(21, 53);

-- Listage de la structure de table lechoppe. provider
CREATE TABLE IF NOT EXISTS `provider` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_network` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table lechoppe.provider : ~2 rows (environ)
INSERT INTO `provider` (`id`, `name`, `adress`, `cp`, `city`, `website`, `social_network`) VALUES
	(3, 'Brasserie test', '101, rue du test', '67200', 'Schlagbourg', 'http://Brasserie-test.fr', 'http://facebook.com/labrasserietest'),
	(4, 'Schlagbrew', '79, rue de l\'impasse', '67500', 'Niederschaeffolsheim', NULL, NULL),
	(5, 'Roue libre', '17, Rte de Vienne', '67100', 'Strasbourg', 'https://www.brasserie-roue-libre.fr/', 'https://www.facebook.com/brasserierouelibre/?locale=fr_FR');

-- Listage de la structure de table lechoppe. reset_password_request
CREATE TABLE IF NOT EXISTS `reset_password_request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `selector` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_7CE748AA76ED395` (`user_id`),
  CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table lechoppe.reset_password_request : ~2 rows (environ)

-- Listage de la structure de table lechoppe. review
CREATE TABLE IF NOT EXISTS `review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `rating` int NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_794381C6A76ED395` (`user_id`),
  KEY `IDX_794381C64584665A` (`product_id`),
  CONSTRAINT `FK_794381C64584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FK_794381C6A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table lechoppe.review : ~17 rows (environ)
INSERT INTO `review` (`id`, `user_id`, `product_id`, `rating`, `description`, `created_at`, `updated_at`) VALUES
	(11, 26, 2, 3, 'LA meilleure bière au monde!!! Finalement je n\'aime plus trop cette bière.\r\nblabla', '2023-09-20 12:46:55', '2023-09-21 13:22:55'),
	(12, 25, 2, 4, NULL, '2023-09-20 15:13:28', NULL),
	(13, 21, 2, 3, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam in leo vel augue porta cursus. Quisque molestie lobortis lacinia. Donec bibendum pharetra hendrerit. Mauris justo augue, sollicitudin id purus ut, posuere sodales tellus. Curabitur molestie massa turpis, sed tempus ipsum ultrices eget. Ut facilisis justo neque, in cursus risus ultricies sit amet. Integer consequat tortor id lacus lobortis scelerisque. Cras leo lorem, dapibus id massa ac, maximus congue risus. Ut ut suscipit purus, vel scelerisque felis. Fusce id orci at lectus cursus malesuada. Maecenas rutrum feugiat erat eget auctor. Curabitur porta est ut ex laoreet, quis fermentum eros dignissim. Vestibulum vestibulum justo fringilla, pretium nisi eget, mollis mauris. Curabitur vitae viverra lectus. Praesent iaculis urna a justo imperdiet rhoncus. COUCOU!!</p>', '2023-09-20 13:45:27', '2023-10-02 12:56:01'),
	(14, 21, 7, 4, '1 bière c\'est bien, 6 c\'est mieux!', '2023-09-21 09:40:14', NULL),
	(15, 21, 13, 3, '"Mundi placet et spiritus minima", ça n\'a aucun sens mais on pourrait très bien imaginer une traduction du type : "Le roseau plie, mais ne cède... qu\'en cas de pépin" ce qui ne veut rien dire non plus.', '2023-09-21 09:42:31', NULL),
	(16, 21, 12, 4, 'Victoriae mundis et mundis lacrima. Bon, ça ne veut absolument rien dire, mais je trouve que c’est assez dans le ton.', '2023-09-21 09:44:31', NULL),
	(17, 24, 2, 4, 'Très bonne bière!', '2023-09-21 15:49:03', NULL),
	(18, 22, 2, 3, 'Bonne bière de soif, mais manque de caractère', '2023-09-21 15:49:44', NULL),
	(19, 2, 2, 4, 'Je suis de l\'avis de tout le monde..', '2023-09-21 15:50:23', NULL),
	(20, 21, 14, 5, 'Très bonne bière', '2023-09-21 14:21:06', NULL),
	(21, 21, 11, 2, '<p>Coucou!&nbsp;<br>C\'est super cool de pouvoir &eacute;cire un commentaire sur plusieurs lignes!&nbsp;<br>Mais ce serait encore mieux de pouvoir afficher ce texte avec la mise en forme sur la page produit!</p>', '2023-09-22 07:44:09', '2023-09-26 07:58:25'),
	(22, 21, 21, 4, '<p>Bi&egrave;re exellente, &agrave; boire en toute saisons!!!</p>\r\n<p></p>', '2023-09-22 08:50:33', '2023-09-22 13:23:26'),
	(23, 21, 6, 4, '<p>Bonne bi&egrave;re, en toute saison!</p>', '2023-09-26 06:13:25', '2023-09-26 08:01:22'),
	(25, 27, 9, 4, '<p>Fruit&eacute;e, bonne amertume. Sent les agrumes!</p>', '2023-09-26 08:13:47', NULL),
	(26, 26, 20, 3, '<p>Pas mal</p>', '2023-09-26 08:14:58', NULL),
	(27, 27, 20, 5, '<p>Parfaite! Mais vu que je suis l&agrave; pour foutre la merde, je dirais qu\'elle est d&eacute;gueux! Enfait au ifnal je la trouve bonne!</p>', '2023-09-26 08:16:15', '2023-09-26 08:29:15'),
	(28, 27, 13, 2, '<p>blablablablablablablablablablablablablablabla</p>', '2023-09-26 08:29:53', NULL),
	(29, 21, 3, 3, '<p>Un peu sympa!</p>', '2023-09-28 20:25:16', NULL);

-- Listage de la structure de table lechoppe. shop_parameters
CREATE TABLE IF NOT EXISTS `shop_parameters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `logo_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_image_product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contribution` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table lechoppe.shop_parameters : ~1 rows (environ)
INSERT INTO `shop_parameters` (`id`, `logo_file`, `default_image_product`, `contribution`) VALUES
	(1, 'ee02dc45bb599829b33b622101b732277ae9d6a7.png', 'bbdc0cbb7b63d8316d9d1ec608a7e721df93322b.png', 1000);

-- Listage de la structure de table lechoppe. user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pseudo` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '(DC2Type:datetime_immutable)',
  `is_verified` tinyint(1) NOT NULL,
  `ban` tinyint(1) DEFAULT NULL,
  `birth_date` date NOT NULL COMMENT '(DC2Type:date_immutable)',
  `membership_contribution_end_date` date DEFAULT NULL COMMENT '(DC2Type:date_immutable)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  UNIQUE KEY `UNIQ_8D93D64986CC499D` (`pseudo`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table lechoppe.user : ~7 rows (environ)
INSERT INTO `user` (`id`, `email`, `pseudo`, `roles`, `password`, `last_name`, `first_name`, `adress`, `zip_code`, `city`, `tel`, `created_at`, `is_verified`, `ban`, `birth_date`, `membership_contribution_end_date`) VALUES
	(2, 'test2@test.com', 'testUser2', '[]', '$2y$13$NSrt/FqeiN8V7qOEOD5zSOrpMwhnpiagYA7jExAbW5aSWWpSMaaXO', 'Marie', 'Dupont', '1, rue de la paix', '67000', 'Strasbourg', '0388652345', '2023-08-28 21:17:00', 1, 0, '1996-11-01', NULL),
	(21, 'jean@test.com', 'jean', '[]', '$2y$13$gyLwg/CTQlKmb863VYWdIe0Yo/3F/nmSoYxcGJsNWRw.IFYrG5Jmy', 'Test', 'Jean', '45,rue du test', '98765', 'TestCity', '0606060606', '2023-08-30 06:51:31', 1, 0, '2000-05-06', NULL),
	(22, 'authentification@test.fr', 'nimp', '[]', '$2y$13$UmmPTRumx9iLOmQVJO3CvO1Z0YFYXsjsnaKJtHToO1yfkPCbfpz1y', 'Porte', 'Nim', '12, rue de la boustifaille', '00000', 'onsenfou', '06060606060', '2023-08-30 12:53:02', 0, 0, '1968-02-16', NULL),
	(24, 'blabla@blabla.com', 'Blabla', '[]', '$2y$13$z/HJ5TfbPChvT3oXD3LBeOXfZB8HiZBVw/jZWhy/QT8g.GW2JiIUe', 'Blabla', 'Blablaz', '45, rue du Blabla', '67000', 'Blablaville', '06060606060', '2023-09-01 12:26:59', 1, 0, '1976-08-15', NULL),
	(25, 'test@test.com', 'MonsieurTest', '[]', '$2y$13$H4KaW6gUPd1PGGFBQ6cSauXqzedCmoIw2eeGq9ss3bMlvCS1wxtgW', 'Test', 'Test', '80, rue du test', '00000', 'TestCity', '0102030405', '2023-09-01 12:28:21', 1, 0, '2000-01-01', NULL),
	(26, 'admin@exemple.com', 'admin', '["ROLE_USER", "ROLE_ADMIN"]', '$2y$13$L24yNW23fm85v.sTOuZDCuLjZKmHrU3D3OiNu95/hUpEBHkSSHCCe', 'Admin', 'Jean', '1, avenue du houblon', '67000', 'Strasbourg', '0388010203', '2023-09-14 09:17:58', 1, 0, '1989-12-24', '2024-10-03'),
	(27, 'jean-ban@test.com', 'JB', '[]', '$2y$13$BA1D4K0qOV/2oE97xz3/sOwQm2AyyO9QdsC7yMWmLU15VXzhcNzHi', 'Ban', 'Jean', '10, rue Saint Laurent du Maroni', '67200', 'Schiltigheim', '0388010101', '2023-09-26 07:35:50', 1, 0, '1986-05-08', '2024-10-03');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
