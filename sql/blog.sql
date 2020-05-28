-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 28 mai 2020 à 14:29
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `author`
--

DROP TABLE IF EXISTS `author`;
CREATE TABLE IF NOT EXISTS `author` (
  `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `author`
--

INSERT INTO `author` (`Id`, `FirstName`, `LastName`) VALUES
(1, 'John', 'Doe');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Name` varchar(40) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Name` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`Id`, `Name`) VALUES
(2, 'Jeux-Vidéos'),
(1, 'Voyages');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `Id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NickName` varchar(30) DEFAULT NULL,
  `Contents` text NOT NULL,
  `CreationTimestamp` datetime NOT NULL,
  `Post_Id` smallint(5) UNSIGNED NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `CreationTimestamp` (`CreationTimestamp`),
  KEY `Post_Id` (`Post_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `Id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) NOT NULL,
  `Contents` text NOT NULL,
  `CreationTimestamp` datetime NOT NULL,
  `Author_Id` tinyint(3) UNSIGNED DEFAULT NULL,
  `Category_Id` tinyint(3) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Title` (`Title`),
  KEY `CreationTimestamp` (`CreationTimestamp`),
  KEY `Author_Id` (`Author_Id`),
  KEY `Category_Id` (`Category_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`Id`, `Title`, `Contents`, `CreationTimestamp`, `Author_Id`, `Category_Id`) VALUES
(1, '', '', '2020-05-28 14:57:45', 1, 2),
(3, 'Nouveauté: Maneater ', 'Maneater : Une bonne blague qui prend l\'eau ? \r\n\r\n\r\nManeater est le titre qui nous intéresse aujourd’hui, mais également le nom de l’émission télé fictive dans laquelle il prend place. Ce show a pour vedette Scally Pete, un pécheur du bayou, bien décidé à mettre la main sur le mégalodon qui l’a privé de paternel. Ce dernier capture le requin qui nous accompagne lors d’un bref tutoriel avant de l’éventrer et d’en extraire sa progéniture. Le nouveau-né réussit à priver son adversaire de son bras et à prendre la fuite. Le joueur prend donc le contrôle du petit squale et peut préparer sa future vengeance. Ce contexte de show télévisé sensationnaliste permet l’introduction d’un narrateur commentant les moindres faits et gestes du joueur. Cette bonne idée permet de briser la monotonie et ainsi compenser le mutisme de notre gros poisson. De plus ce dernier n’est pas avare en remarques cynique sur les rednecks qui nous poursuivent ou en petites pointes d’humour noir. Ce narrateur à l’accent british prononcé est à n’en pas douter l\'un des points forts de Maneater, car il sert au gameplay, notamment en vous prévenant de l’arrivée de chasseurs, mais aussi à la narration et participe à donner un ton décalé au titre.', '2020-05-28 15:07:26', 1, 2),
(4, 'The Last of Us Part II :', 'À quelques semaines de sa sortie, The Last of Us Part II va profiter du State of Play pour se montrer une dernière fois au grand public. Cette présentation en direct nous permettra de découvrir une séquence de gameplay inédite, que nous vous dévoilerons en live sur notre chaîne YouTube.\r\n\r\nVous aurez l\'occasion de retrouver Logan, Lam, Maxildan et Menraw en plateau dès 21h30 pour évoquer sur la chaîne YouTube de Jeuxvideo.com les annonces à venir de ce direct, avant de suivre celle-ci tous ensemble. Et comme le veut la coutume, vous pourrez profiter de la présentation en plein écran et sans commentaires avec par la suite des éclaircissements en français sur les points qui n\'auraient pas été traduits à l\'oral. Dernier rappel, The Last of Us Part II sortira le 19 juin prochain sur PS4, tandis que notre test sera quand à lui disponible dès le 12 juin prochain à 9h.', '2020-05-28 15:17:18', 1, 2),
(5, 'PUBG: PlayerUnknown\'s Battlegrounds', 'Meilleur jeux de tous les temps !!!!?\r\n\r\nPhénomène de l’année 2017, PLAYERUNKNOWN\'S BATTLEGROUNDS règne désormais en roi incontesté du jeu multi PC depuis son arrivée en Early Access sur Steam, le 23 mars. Battant une palanquée de records d’affluence et détrônant, un à un, les plus gros scores de l’histoire de la plateforme de Valve, « PUBG » a su, à l’image d’un League of Legends, démocratiser un genre et se positionner comme porte-étendard de ce dernier sur PC, mais aussi sur console depuis l\'entrée en Game Preview du jeu sur Xbox One en attendant une probable sortie PS4. Désormais en 1.0, une version finalisée qui évoluera tout de même avec le temps, Playerunknown\'s Battlegrounds se montre-t-il sous son meilleur jour ?\r\n', '2020-05-28 15:19:20', 1, 2);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `Comment_ibfk_1` FOREIGN KEY (`Post_Id`) REFERENCES `post` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `Post_ibfk_1` FOREIGN KEY (`Author_Id`) REFERENCES `author` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Post_ibfk_2` FOREIGN KEY (`Category_Id`) REFERENCES `category` (`Id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
