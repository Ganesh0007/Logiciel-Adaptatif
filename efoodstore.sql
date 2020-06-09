-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 09 juin 2020 à 10:52
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
-- Base de données : `efoodstore`
--

-- --------------------------------------------------------

--
-- Structure de la table `authorities`
--

DROP TABLE IF EXISTS `authorities`;
CREATE TABLE IF NOT EXISTS `authorities` (
  `authoritiesId` int(11) NOT NULL AUTO_INCREMENT,
  `authority` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`authoritiesId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `authorities`
--

INSERT INTO `authorities` (`authoritiesId`, `authority`, `username`) VALUES
(1, 'ROLE_USER', 'Ihcen'),
(2, 'ROLE_ADMIN', 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `billingaddress`
--

DROP TABLE IF EXISTS `billingaddress`;
CREATE TABLE IF NOT EXISTS `billingaddress` (
  `billingAddressId` int(11) NOT NULL AUTO_INCREMENT,
  `apartmentNumber` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `streetName` varchar(255) DEFAULT NULL,
  `zipCode` varchar(255) DEFAULT NULL,
  `customer_customerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`billingAddressId`),
  KEY `FKF0492D19AA2733B7` (`customer_customerId`),
  KEY `FKF0492D1933E19AE0` (`customer_customerId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `billingaddress`
--

INSERT INTO `billingaddress` (`billingAddressId`, `apartmentNumber`, `city`, `country`, `state`, `streetName`, `zipCode`, `customer_customerId`) VALUES
(1, '', 'Paris', 'France', 'France (+33)', '54 Rue Philippe de Girard', '75018', 1),
(2, '8', 'Paris', 'France', 'Paris', '20 rue fleurie', '75001', 2);

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cartId` int(11) NOT NULL AUTO_INCREMENT,
  `grandTotal` double NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`cartId`),
  KEY `FK1FEF40EEF254B6` (`customerId`),
  KEY `FK1FEF4078ACBBDF` (`customerId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`cartId`, `grandTotal`, `customerId`) VALUES
(1, 40, 1),
(2, 0, 2);

-- --------------------------------------------------------

--
-- Structure de la table `cartitem`
--

DROP TABLE IF EXISTS `cartitem`;
CREATE TABLE IF NOT EXISTS `cartitem` (
  `cartItemId` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `totalPrice` double NOT NULL,
  `cartId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  PRIMARY KEY (`cartItemId`),
  KEY `FK4393E734D1677FA` (`productId`),
  KEY `FK4393E73504B0A3A` (`cartId`),
  KEY `FK4393E736A4E07B1` (`productId`),
  KEY `FK4393E7378A16DE3` (`cartId`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cartitem`
--

INSERT INTO `cartitem` (`cartItemId`, `quantity`, `totalPrice`, `cartId`, `productId`) VALUES
(1, 1, 10, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `customerId` int(11) NOT NULL AUTO_INCREMENT,
  `customerEmail` varchar(255) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `customerPhone` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `billingAddressId` int(11) DEFAULT NULL,
  `cartId` int(11) DEFAULT NULL,
  `shippingAddressId` int(11) DEFAULT NULL,
  PRIMARY KEY (`customerId`),
  KEY `FK27FBE3FE504B0A3A` (`cartId`),
  KEY `FK27FBE3FEBA5A5848` (`shippingAddressId`),
  KEY `FK27FBE3FE64CCD90C` (`billingAddressId`),
  KEY `FK27FBE3FE78A16DE3` (`cartId`),
  KEY `FK27FBE3FEE77E40FF` (`shippingAddressId`),
  KEY `FK27FBE3FE55BD7D75` (`billingAddressId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`customerId`, `customerEmail`, `customerName`, `customerPhone`, `enabled`, `password`, `username`, `billingAddressId`, `cartId`, `shippingAddressId`) VALUES
(1, 'ihcen.borgi@gmail.com', 'Ihcen Borgi', '0616031655', 1, 'azerty123', 'Ihcen', 1, 1, 1),
(2, 'ganesh@test.com', 'Ganesh', '0616161616', 1, 'azerty123', 'Admin', 2, 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `customerorder`
--

DROP TABLE IF EXISTS `customerorder`;
CREATE TABLE IF NOT EXISTS `customerorder` (
  `customerOrderId` int(11) NOT NULL AUTO_INCREMENT,
  `billingAddressId` int(11) DEFAULT NULL,
  `cartId` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `shippingAddressId` int(11) DEFAULT NULL,
  PRIMARY KEY (`customerOrderId`),
  KEY `FKAEF781F0504B0A3A` (`cartId`),
  KEY `FKAEF781F0EEF254B6` (`customerId`),
  KEY `FKAEF781F0BA5A5848` (`shippingAddressId`),
  KEY `FKAEF781F064CCD90C` (`billingAddressId`),
  KEY `FKAEF781F078A16DE3` (`cartId`),
  KEY `FKAEF781F078ACBBDF` (`customerId`),
  KEY `FKAEF781F0E77E40FF` (`shippingAddressId`),
  KEY `FKAEF781F055BD7D75` (`billingAddressId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `customerorder`
--

INSERT INTO `customerorder` (`customerOrderId`, `billingAddressId`, `cartId`, `customerId`, `shippingAddressId`) VALUES
(1, 2, 2, 2, 2),
(2, 1, 1, 1, 1),
(3, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `productCategory` varchar(255) DEFAULT NULL,
  `productCondition` varchar(255) DEFAULT NULL,
  `productDescription` varchar(255) DEFAULT NULL,
  `productManufacturer` varchar(255) DEFAULT NULL,
  `productName` varchar(255) NOT NULL,
  `productPrice` double NOT NULL,
  `productStatus` varchar(255) DEFAULT NULL,
  `unitInStock` int(11) NOT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`productId`, `productCategory`, `productCondition`, `productDescription`, `productManufacturer`, `productName`, `productPrice`, `productStatus`, `unitInStock`) VALUES
(1, 'farine', NULL, 'Farine de ble 100% pur.', 'Holland', 'Farine T55', 10, 'active', 3),
(2, 'sucre', 'new', 'Sucre ', 'Morocco', 'Sucre de canne', 30, 'active', 3),
(3, 'sucre', 'new', '', 'Morocco', 'Sucre de canne', 30, 'active', 1),
(4, 'ble', 'new', '', '', 'Sucre de canne', 0, 'active', 0),
(5, 'sucre', 'new', 'desc', 'Morocco', 'Sucre de canne', 30, 'active', 1),
(6, 'farine', 'new', '', 'Morocco', 'Sucre de canne', 10, 'active', 30);

-- --------------------------------------------------------

--
-- Structure de la table `shippingaddress`
--

DROP TABLE IF EXISTS `shippingaddress`;
CREATE TABLE IF NOT EXISTS `shippingaddress` (
  `shippingAddressId` int(11) NOT NULL AUTO_INCREMENT,
  `apartmentNumber` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `streetName` varchar(255) DEFAULT NULL,
  `zipCode` varchar(255) DEFAULT NULL,
  `customer_customerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`shippingAddressId`),
  KEY `FKBB1EE46AA2733B7` (`customer_customerId`),
  KEY `FKBB1EE4633E19AE0` (`customer_customerId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `shippingaddress`
--

INSERT INTO `shippingaddress` (`shippingAddressId`, `apartmentNumber`, `city`, `country`, `state`, `streetName`, `zipCode`, `customer_customerId`) VALUES
(1, '', 'Paris', 'France', 'France (+33)', '54 Rue Philippe de Girard', '75018', 1),
(2, '', 'Paris', 'France', 'Paris', '30 blvd du marechal', '75017', 2);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `usersId` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`usersId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`usersId`, `customerId`, `enabled`, `password`, `username`) VALUES
(1, 1, 1, 'azerty123', 'Ihcen'),
(2, 2, 1, 'admin', 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
