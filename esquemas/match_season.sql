CREATE TABLE `country` (`Country_id` DECIMAL(18,2), `Country_name` VARCHAR(100), `Capital` VARCHAR(100), `Official_native_language` VARCHAR(100));
CREATE TABLE `team` (`Team_id` DECIMAL(18,2), `Name` VARCHAR(100));
CREATE TABLE `match_season` (`Season` DECIMAL(18,2), `Player` VARCHAR(100), `Position` VARCHAR(100), `Country` DECIMAL(18,2), `Team` DECIMAL(18,2), `Draft_Pick_Number` DECIMAL(18,2), `Draft_Class` VARCHAR(100), `College` VARCHAR(100));
CREATE TABLE `player` (`Player_ID` DECIMAL(18,2), `Player` VARCHAR(100), `Years_Played` VARCHAR(100), `Total_WL` VARCHAR(100), `Singles_WL` VARCHAR(100), `Doubles_WL` VARCHAR(100), `Team` DECIMAL(18,2));
