-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 07 avr. 2020 à 14:49
-- Version du serveur :  5.7.19
-- Version de PHP : 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `adaptivedb`
--

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id_customer` int(255) NOT NULL,
  `firstName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `creaDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`id_customer`, `firstName`, `lastName`, `email`, `creaDate`) VALUES
(1, 'Brielle', 'Hale', 'vitae.purus.gravida@natoque.net', '2019-08-04 08:07:08'),
(2, 'Cynthia', 'Robertson', 'ut@iaculisodio.com', '2019-12-10 16:12:12'),
(3, 'Cyrus', 'Joyce', 'mauris.ut.mi@nullaCraseu.com', '2019-04-22 20:08:26'),
(4, 'Jemima', 'Trevino', 'dui@interdumligula.net', '2019-07-21 19:48:03'),
(5, 'Mira', 'Farley', 'ante.Nunc.mauris@sed.net', '2019-10-24 15:41:33'),
(6, 'Keith', 'Potter', 'eleifend.non@dictum.co.uk', '2019-08-02 22:52:36'),
(7, 'Clarke', 'Whitney', 'dictum.eleifend.nunc@consectetuercursus.net', '2020-02-12 15:29:46'),
(8, 'Susan', 'Cote', 'Nunc@Curabiturvellectus.net', '2019-07-27 01:25:49'),
(9, 'Amethyst', 'Sutton', 'ridiculus.mus.Proin@maurissapien.org', '2019-06-07 06:45:47'),
(10, 'Courtney', 'Slater', 'nec.luctus@Praesent.net', '2019-11-06 05:32:41'),
(11, 'Sonia', 'George', 'vitae.erat@Quisque.com', '2019-04-22 21:03:19'),
(12, 'Selma', 'Ellison', 'Sed@purusMaecenas.com', '2019-11-15 06:19:39'),
(13, 'Damian', 'Livingston', 'Aliquam.gravida@eratvelpede.com', '2019-08-25 12:27:22'),
(14, 'Jillian', 'Molina', 'Donec@ultriciesornare.com', '2019-06-27 03:10:18'),
(15, 'Jeremy', 'Merrill', 'orci@Morbinonsapien.ca', '2019-06-28 12:03:44'),
(16, 'Amery', 'Dale', 'fames.ac.turpis@ultricesmaurisipsum.net', '2019-12-04 19:35:12'),
(17, 'Yetta', 'Phelps', 'tellus@acipsum.ca', '2020-03-21 04:21:02'),
(18, 'Whilemina', 'Powell', 'pede@at.net', '2019-07-05 15:36:08'),
(19, 'Ciara', 'Combs', 'sit.amet.consectetuer@eu.net', '2020-02-18 09:33:27'),
(20, 'Chiquita', 'Roy', 'placerat.Cras@pharetraNam.org', '2020-03-24 04:02:05'),
(21, 'William', 'Atkinson', 'lacus.Etiam@cursusnonegestas.ca', '2019-11-11 01:28:26'),
(22, 'Kiayada', 'Oconnor', 'Cum@fringilla.com', '2019-08-09 16:07:39'),
(23, 'Jaime', 'Tate', 'rutrum.Fusce@utmolestiein.net', '2020-01-10 07:17:15'),
(24, 'Tanek', 'Humphrey', 'molestie.tortor@Fuscefeugiat.ca', '2019-06-27 10:35:46'),
(25, 'Todd', 'Bernard', 'accumsan@vehicularisus.edu', '2019-07-13 10:30:24'),
(26, 'Reuben', 'Fuentes', 'aliquam.eros@enimNuncut.org', '2020-02-04 19:56:57'),
(27, 'Martin', 'Leon', 'eget.mollis@sedturpis.com', '2019-09-20 20:46:22'),
(28, 'Sigourney', 'Logan', 'ornare.lectus.justo@nislNulla.co.uk', '2019-06-16 21:29:12'),
(29, 'Ingrid', 'Petty', 'ligula@necurnasuscipit.co.uk', '2020-03-24 13:42:11'),
(30, 'Janna', 'Craft', 'eget.odio.Aliquam@arcuAliquamultrices.co.uk', '2019-08-05 02:19:22'),
(31, 'Kelly', 'Flores', 'massa.Mauris@Maurisnon.ca', '2020-01-06 05:46:29'),
(32, 'Fletcher', 'Kelley', 'volutpat.ornare.facilisis@tempusloremfringilla.org', '2019-08-19 05:19:30'),
(33, 'Keefe', 'Goodwin', 'risus.varius@odioPhasellus.co.uk', '2019-10-02 12:37:50'),
(34, 'Hayes', 'Greene', 'Sed.nunc@lorem.ca', '2019-09-19 14:29:25'),
(35, 'Damon', 'Sims', 'egestas.a.scelerisque@seddolorFusce.edu', '2019-07-14 04:45:00'),
(36, 'Gil', 'Payne', 'sit.amet.consectetuer@facilisisvitae.ca', '2020-03-14 17:17:14'),
(37, 'Tobias', 'Salinas', 'consectetuer.ipsum@eget.ca', '2020-02-07 02:47:18'),
(38, 'Brody', 'Sandoval', 'Suspendisse.commodo@laoreetposuereenim.ca', '2019-06-05 00:11:49'),
(39, 'Tyrone', 'Dickson', 'quam.quis@utodiovel.net', '2019-12-03 04:17:55'),
(40, 'Tanek', 'Walton', 'tellus.Suspendisse@semvitae.com', '2019-08-20 16:19:35'),
(41, 'Calvin', 'Powers', 'massa@nonantebibendum.net', '2020-02-04 06:15:14'),
(42, 'Hammett', 'Lara', 'Pellentesque@pedenecante.edu', '2019-05-27 05:05:23'),
(43, 'Robert', 'Decker', 'posuere.cubilia.Curae@egestasSedpharetra.co.uk', '2019-05-10 05:35:25'),
(44, 'Vernon', 'Wiggins', 'vitae.orci.Phasellus@accumsanconvallis.edu', '2020-01-12 23:38:11'),
(45, 'Cade', 'Greer', 'varius.et.euismod@enimmitempor.co.uk', '2019-09-19 08:33:10'),
(46, 'Cain', 'Vega', 'nisi.Cum@elementumdui.edu', '2019-07-11 00:30:37'),
(47, 'Uriah', 'Hinton', 'posuere.cubilia.Curae@portaelita.co.uk', '2019-09-24 05:26:15'),
(48, 'Maya', 'Valentine', 'Mauris@Maurisvel.com', '2019-10-17 12:22:29'),
(49, 'Clio', 'Wall', 'Nam@sollicitudin.ca', '2019-07-09 03:42:14'),
(50, 'Gretchen', 'House', 'Cum@diam.co.uk', '2019-09-21 10:02:09'),
(51, 'Kiona', 'Tyson', 'a.magna@id.co.uk', '2019-09-02 15:08:11'),
(52, 'Raya', 'Casey', 'erat.Vivamus.nisi@faucibusorci.co.uk', '2019-04-24 11:50:33'),
(53, 'Nicholas', 'Oneil', 'nisl.sem@disparturientmontes.edu', '2019-05-28 03:19:58'),
(54, 'Cecilia', 'Wiggins', 'malesuada.id.erat@sociosquad.edu', '2019-06-27 02:45:59'),
(55, 'Noelani', 'Pace', 'magna.sed.dui@sit.org', '2019-05-02 09:42:54'),
(56, 'Delilah', 'William', 'mauris.blandit@aliquetvel.org', '2020-02-13 03:47:02'),
(57, 'Quin', 'Stewart', 'tincidunt@interdumligula.co.uk', '2019-05-30 04:57:36'),
(58, 'Perry', 'Allison', 'massa.non.ante@afelisullamcorper.co.uk', '2019-08-15 08:55:18'),
(59, 'Maite', 'Reed', 'felis@Pellentesquehabitant.com', '2019-05-25 21:22:48'),
(60, 'Inez', 'Frye', 'eu@Aliquam.edu', '2020-02-27 23:31:41'),
(61, 'Cedric', 'Alexander', 'erat@nonmagna.co.uk', '2019-07-21 07:13:19'),
(62, 'Kevin', 'Barker', 'et.ultrices@Utnec.edu', '2019-05-15 00:34:04'),
(63, 'Christen', 'Cunningham', 'aliquam.enim@intempuseu.co.uk', '2019-12-14 14:51:17'),
(64, 'Amaya', 'Shaw', 'porta@ultricies.edu', '2019-11-21 15:06:18'),
(65, 'Cody', 'Hunt', 'amet.risus@sapienmolestieorci.com', '2020-03-04 23:55:15'),
(66, 'Kylan', 'Petersen', 'mi.eleifend@et.co.uk', '2020-02-25 03:32:44'),
(67, 'John', 'Rivera', 'at.velit@Crasvulputatevelit.edu', '2019-05-02 10:19:09'),
(68, 'Boris', 'Blake', 'eu.dui@SuspendissesagittisNullam.ca', '2019-06-09 04:58:42'),
(69, 'Whilemina', 'Golden', 'leo.Morbi@semperdui.org', '2019-07-25 09:23:53'),
(70, 'Plato', 'Erickson', 'lectus.ante@velitQuisque.edu', '2019-07-10 15:29:59'),
(71, 'Carla', 'Rice', 'Mauris@Duisa.org', '2019-08-20 04:30:22'),
(72, 'Kevin', 'Alvarez', 'tellus.faucibus@nec.ca', '2020-02-16 04:41:38'),
(73, 'Florence', 'Workman', 'et@nulla.org', '2019-09-14 04:11:20'),
(74, 'Jacob', 'Lyons', 'nisl.Quisque.fringilla@Aliquamadipiscinglobortis.com', '2020-02-11 22:51:18'),
(75, 'Sonia', 'Williams', 'tellus.imperdiet.non@nisi.co.uk', '2020-03-16 03:09:26'),
(76, 'Yasir', 'Odonnell', 'arcu.Vestibulum.ante@vulputateveliteu.ca', '2019-06-07 12:55:19'),
(77, 'Lester', 'Morales', 'luctus.ut@Aliquamnisl.com', '2019-12-26 09:51:17'),
(78, 'Randall', 'Rich', 'Suspendisse@scelerisquedui.org', '2019-06-29 03:22:13'),
(79, 'Martena', 'Harding', 'Donec.tempor@tellusjustosit.com', '2019-05-02 18:38:55'),
(80, 'Buffy', 'Fulton', 'cubilia.Curae.Phasellus@Aeneaneuismod.net', '2019-10-09 08:45:53'),
(81, 'Clio', 'Newton', 'congue.a@Maecenas.co.uk', '2019-12-02 16:54:13'),
(82, 'Regan', 'Hancock', 'enim@velvulputateeu.org', '2019-07-26 15:05:25'),
(83, 'Charlotte', 'Vazquez', 'Donec.egestas.Duis@Duissitamet.net', '2019-04-18 23:05:31'),
(84, 'Samantha', 'Gallagher', 'Aliquam.vulputate@risus.co.uk', '2019-12-06 02:06:16'),
(85, 'Anika', 'Kelly', 'purus@Duisac.edu', '2019-05-07 02:25:29'),
(86, 'Abbot', 'Hensley', 'metus.Aliquam@nisiAenean.org', '2019-05-30 15:38:29'),
(87, 'Zenaida', 'Berger', 'cubilia.Curae.Donec@Maecenas.net', '2020-03-15 08:25:13'),
(88, 'Willa', 'Avila', 'viverra.Maecenas@euismodurna.ca', '2020-03-21 04:18:19'),
(89, 'Bert', 'Cardenas', 'libero@loremsit.ca', '2020-03-10 10:06:48'),
(90, 'Cruz', 'Holden', 'amet@Namtempor.co.uk', '2019-07-27 08:23:15'),
(91, 'Macey', 'Maxwell', 'In@massanonante.net', '2020-02-22 05:26:42'),
(92, 'Lionel', 'Velasquez', 'tempus.mauris@acrisusMorbi.net', '2020-02-26 23:24:52'),
(93, 'Driscoll', 'Barr', 'erat.Sed.nunc@eget.edu', '2019-11-01 11:46:51'),
(94, 'Giacomo', 'Santos', 'dictum.Phasellus.in@Uttinciduntvehicula.co.uk', '2020-02-17 22:12:00'),
(95, 'Dana', 'Pollard', 'in.felis@pellentesque.com', '2019-08-04 09:39:30'),
(96, 'Travis', 'Gregory', 'gravida.sagittis.Duis@Quisqueac.org', '2019-11-24 14:47:28'),
(97, 'Pamela', 'Cash', 'Morbi.metus@Ut.net', '2019-10-25 02:54:46'),
(98, 'Jack', 'Wheeler', 'libero.et.tristique@Sednecmetus.com', '2020-01-09 18:59:37'),
(99, 'Hillary', 'Terry', 'Praesent.eu.nulla@semperpretium.com', '2019-08-16 23:16:03'),
(100, 'Naida', 'Hawkins', 'Mauris.quis@fringilla.co.uk', '2020-03-15 05:26:42');

-- --------------------------------------------------------

--
-- Structure de la table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `id_invoice` int(255) NOT NULL,
  `id_customer` int(255) NOT NULL,
  `etablishDate` date NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `paidDate` date NOT NULL,
  `price` float NOT NULL,
  `id_product` int(255) NOT NULL,
  PRIMARY KEY (`id_invoice`),
  KEY `id_customer` (`id_customer`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id_product` int(255) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stock` int(255) NOT NULL,
  `photo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `id_invoice` int(255) NOT NULL,
  PRIMARY KEY (`id_product`),
  KEY `id_invoice` (`id_invoice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `Customer` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`),
  ADD CONSTRAINT `Product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `Invoice` FOREIGN KEY (`id_invoice`) REFERENCES `invoice` (`id_invoice`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
