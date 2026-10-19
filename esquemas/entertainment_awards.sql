CREATE TABLE `festival_detail` (`Festival_ID` DECIMAL(18,2), `Festival_Name` VARCHAR(100), `Chair_Name` VARCHAR(100), `Location` VARCHAR(100), `Year` DECIMAL(18,2), `Num_of_Audience` DECIMAL(18,2));
CREATE TABLE `artwork` (`Artwork_ID` DECIMAL(18,2), `Type` VARCHAR(100), `Name` VARCHAR(100));
CREATE TABLE `nomination` (`Artwork_ID` DECIMAL(18,2), `Festival_ID` DECIMAL(18,2), `Result` VARCHAR(100));
