CREATE TABLE `musical` (`Musical_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Year` DECIMAL(18,2), `Award` VARCHAR(100), `Category` VARCHAR(100), `Nominee` VARCHAR(100), `Result` VARCHAR(100));
CREATE TABLE `actor` (`Actor_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Musical_ID` DECIMAL(18,2), `Character` VARCHAR(100), `Duration` VARCHAR(100), `age` DECIMAL(18,2));
