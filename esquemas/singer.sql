CREATE TABLE `singer` (`Singer_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Birth_Year` DECIMAL(18,2), `Net_Worth_Millions` DECIMAL(18,2), `Citizenship` VARCHAR(100));
CREATE TABLE `song` (`Song_ID` DECIMAL(18,2), `Title` VARCHAR(100), `Singer_ID` DECIMAL(18,2), `Sales` DECIMAL(18,2), `Highest_Position` DECIMAL(18,2));
