CREATE TABLE `club` (`Club_ID` DECIMAL(18,2), `name` VARCHAR(100), `Region` VARCHAR(100), `Start_year` VARCHAR(100));
CREATE TABLE `club_rank` (`Rank` DECIMAL(18,2), `Club_ID` DECIMAL(18,2), `Gold` DECIMAL(18,2), `Silver` DECIMAL(18,2), `Bronze` DECIMAL(18,2), `Total` DECIMAL(18,2));
CREATE TABLE `player` (`Player_ID` DECIMAL(18,2), `name` VARCHAR(100), `Position` VARCHAR(100), `Club_ID` DECIMAL(18,2), `Apps` DECIMAL(18,2), `Tries` DECIMAL(18,2), `Goals` VARCHAR(100), `Points` DECIMAL(18,2));
CREATE TABLE `competition` (`Competition_ID` DECIMAL(18,2), `Year` DECIMAL(18,2), `Competition_type` VARCHAR(100), `Country` VARCHAR(100));
CREATE TABLE `competition_result` (`Competition_ID` DECIMAL(18,2), `Club_ID_1` DECIMAL(18,2), `Club_ID_2` DECIMAL(18,2), `Score` VARCHAR(100));
