CREATE TABLE `mountain` (`Mountain_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Height` DECIMAL(18,2), `Prominence` DECIMAL(18,2), `Range` VARCHAR(100), `Country` VARCHAR(100));
CREATE TABLE `climber` (`Climber_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Country` VARCHAR(100), `Time` VARCHAR(100), `Points` DECIMAL(18,2), `Mountain_ID` DECIMAL(18,2));
