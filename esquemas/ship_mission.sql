CREATE TABLE `mission` (`Mission_ID` DECIMAL(18,2), `Ship_ID` DECIMAL(18,2), `Code` VARCHAR(100), `Launched_Year` DECIMAL(18,2), `Location` VARCHAR(100), `Speed_knots` DECIMAL(18,2), `Fate` VARCHAR(100));
CREATE TABLE `ship` (`Ship_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Type` VARCHAR(100), `Nationality` VARCHAR(100), `Tonnage` DECIMAL(18,2));
