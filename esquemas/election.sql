CREATE TABLE `county` (`County_Id` DECIMAL(18,2), `County_name` VARCHAR(100), `Population` DECIMAL(18,2), `Zip_code` VARCHAR(100));
CREATE TABLE `party` (`Party_ID` DECIMAL(18,2), `Year` DECIMAL(18,2), `Party` VARCHAR(100), `Governor` VARCHAR(100), `Lieutenant_Governor` VARCHAR(100), `Comptroller` VARCHAR(100), `Attorney_General` VARCHAR(100), `US_Senate` VARCHAR(100));
CREATE TABLE `election` (`Election_ID` DECIMAL(18,2), `Counties_Represented` VARCHAR(100), `District` DECIMAL(18,2), `Delegate` VARCHAR(100), `Party` DECIMAL(18,2), `First_Elected` DECIMAL(18,2), `Committee` VARCHAR(100));
