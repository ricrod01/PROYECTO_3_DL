CREATE TABLE `stadium` (`Stadium_ID` DECIMAL(18,2), `Location` VARCHAR(100), `Name` VARCHAR(100), `Capacity` DECIMAL(18,2), `Highest` DECIMAL(18,2), `Lowest` DECIMAL(18,2), `Average` DECIMAL(18,2));
CREATE TABLE `singer` (`Singer_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Country` VARCHAR(100), `Song_Name` VARCHAR(100), `Song_release_year` VARCHAR(100), `Age` DECIMAL(18,2), `Is_male` VARCHAR(100));
CREATE TABLE `concert` (`concert_ID` DECIMAL(18,2), `concert_Name` VARCHAR(100), `Theme` VARCHAR(100), `Stadium_ID` VARCHAR(100), `Year` VARCHAR(100));
CREATE TABLE `singer_in_concert` (`concert_ID` DECIMAL(18,2), `Singer_ID` VARCHAR(100));
