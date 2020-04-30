CREATE DATABASE `orderbyphone` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

USE orderbyphone;

CREATE TABLE `customers` (
  `id` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`pin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `iditems_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `notifications` (
  `contactid` varchar(100) NOT NULL,
  `itemid` int(11) NOT NULL,
  PRIMARY KEY (`contactid`,`itemid`),
  KEY `itemidfk_idx` (`itemid`),
  CONSTRAINT `itemidfk` FOREIGN KEY (`itemid`) REFERENCES `items` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerid` varchar(100) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `customerid_fk_idx` (`customerid`),
  CONSTRAINT `customerid_fk` FOREIGN KEY (`customerid`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100013 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `orderdetails` (
  `orderid` int(11) NOT NULL,
  `index` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`orderid`,`index`),
  KEY `itemid_fk_idx` (`itemid`),
  CONSTRAINT `itemid_fk` FOREIGN KEY (`itemid`) REFERENCES `items` (`id`),
  CONSTRAINT `orderid_fk` FOREIGN KEY (`orderid`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
