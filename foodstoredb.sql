-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  jeu. 04 juin 2020 à 09:59
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
-- Base de données :  `foodstoredb`
--

-- --------------------------------------------------------

--
-- Structure de la table `authorities`
--

DROP TABLE IF EXISTS `authorities`;
CREATE TABLE IF NOT EXISTS `authorities` (
  `authoritiesId` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `authority` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`authoritiesId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `billingaddress`
--

DROP TABLE IF EXISTS `billingaddress`;
CREATE TABLE IF NOT EXISTS `billingaddress` (
  `billingAddressId` int(255) NOT NULL AUTO_INCREMENT,
  `streetName` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `apartmentNumber` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zipCode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`billingAddressId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cartId` int(255) NOT NULL AUTO_INCREMENT,
  `cartItems` int(250) NOT NULL,
  `customer` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `grandTotal` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`cartId`),
  KEY `customer` (`customer`),
  KEY `cartItem` (`cartItems`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cartitem`
--

DROP TABLE IF EXISTS `cartitem`;
CREATE TABLE IF NOT EXISTS `cartitem` (
  `cartItemId` int(255) NOT NULL AUTO_INCREMENT,
  `cart` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `product` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(255) NOT NULL,
  `totalPrice` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`cartItemId`),
  KEY `cart` (`cart`(200)),
  KEY `product` (`product`(200))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `cutomerId` int(255) NOT NULL AUTO_INCREMENT,
  `customerName` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `customerEmail` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `customerPhone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`cutomerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='TableCustomer';

-- --------------------------------------------------------

--
-- Structure de la table `customerorder`
--

DROP TABLE IF EXISTS `customerorder`;
CREATE TABLE IF NOT EXISTS `customerorder` (
  `customerOrderId` int(11) NOT NULL AUTO_INCREMENT,
  `cart` int(255) NOT NULL,
  `customer` int(11) NOT NULL,
  `billingAddress` int(11) NOT NULL,
  `shippingAddress` int(11) NOT NULL,
  PRIMARY KEY (`customerOrderId`),
  KEY `cart` (`cart`),
  KEY `customer` (`customer`),
  KEY `billingAddress` (`billingAddress`),
  KEY `shippingAddress` (`shippingAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `productId` int(255) NOT NULL AUTO_INCREMENT,
  `productName` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `productCategory` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `productDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productPrice` double NOT NULL DEFAULT '0',
  `productCondition` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productStatus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unitInStock` int(255) NOT NULL,
  `productManufacturer` int(255) NOT NULL,
  `productImage` blob NOT NULL,
  `cartItemList` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `shippingaddress`
--

DROP TABLE IF EXISTS `shippingaddress`;
CREATE TABLE IF NOT EXISTS `shippingaddress` (
  `shippingAddressId` int(255) NOT NULL AUTO_INCREMENT,
  `streetName` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `apartmentNumber` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zipCode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`shippingAddressId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `usersId` int(255) NOT NULL AUTO_INCREMENT,
  `username` varchar(2502) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `customerId` int(255) NOT NULL,
  PRIMARY KEY (`usersId`),
  KEY `customerId` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`cartItems`) REFERENCES `cartitem` (`cartItemId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `customerorder`
--
ALTER TABLE `customerorder`
  ADD CONSTRAINT `customerorder_ibfk_1` FOREIGN KEY (`cart`) REFERENCES `cart` (`cartId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customerorder_ibfk_2` FOREIGN KEY (`billingAddress`) REFERENCES `billingaddress` (`billingAddressId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customerorder_ibfk_3` FOREIGN KEY (`shippingAddress`) REFERENCES `shippingaddress` (`shippingAddressId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customerorder_ibfk_4` FOREIGN KEY (`customerOrderId`) REFERENCES `customer` (`cutomerId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`cutomerId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
