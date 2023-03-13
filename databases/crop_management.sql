SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `CropData` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `CropData`;

DROP TABLE IF EXISTS `CropData`;
CREATE TABLE CropData (
    id SERIAL PRIMARY KEY,
    water_level INTEGER NOT NULL,
    fertiliser INTEGER NOT NULL,
    height INTEGER NOT NULL,
    date DATE NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;