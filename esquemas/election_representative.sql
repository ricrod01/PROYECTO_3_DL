CREATE TABLE `election` (`Election_ID` DECIMAL(18,2), `Representative_ID` DECIMAL(18,2), `Date` VARCHAR(100), `Votes` DECIMAL(18,2), `Vote_Percent` DECIMAL(18,2), `Seats` DECIMAL(18,2), `Place` DECIMAL(18,2));
CREATE TABLE `representative` (`Representative_ID` DECIMAL(18,2), `Name` VARCHAR(100), `State` VARCHAR(100), `Party` VARCHAR(100), `Lifespan` VARCHAR(100));
