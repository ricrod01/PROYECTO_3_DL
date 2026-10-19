CREATE TABLE `continents` (`ContId` DECIMAL(18,2), `Continent` VARCHAR(100));
CREATE TABLE `countries` (`CountryId` DECIMAL(18,2), `CountryName` VARCHAR(100), `Continent` DECIMAL(18,2));
CREATE TABLE `car_makers` (`Id` DECIMAL(18,2), `Maker` VARCHAR(100), `FullName` VARCHAR(100), `Country` VARCHAR(100));
CREATE TABLE `model_list` (`ModelId` DECIMAL(18,2), `Maker` DECIMAL(18,2), `Model` VARCHAR(100));
CREATE TABLE `car_names` (`MakeId` DECIMAL(18,2), `Model` VARCHAR(100), `Make` VARCHAR(100));
CREATE TABLE `cars_data` (`Id` DECIMAL(18,2), `MPG` VARCHAR(100), `Cylinders` DECIMAL(18,2), `Edispl` DECIMAL(18,2), `Horsepower` VARCHAR(100), `Weight` DECIMAL(18,2), `Accelerate` DECIMAL(18,2), `Year` DECIMAL(18,2));
