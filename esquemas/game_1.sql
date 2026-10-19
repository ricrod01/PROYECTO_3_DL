CREATE TABLE `Student` (`StuID` DECIMAL(18,2), `LName` VARCHAR(100), `Fname` VARCHAR(100), `Age` DECIMAL(18,2), `Sex` VARCHAR(100), `Major` DECIMAL(18,2), `Advisor` DECIMAL(18,2), `city_code` VARCHAR(100));
CREATE TABLE `Video_Games` (`GameID` DECIMAL(18,2), `GName` VARCHAR(100), `GType` VARCHAR(100));
CREATE TABLE `Plays_Games` (`StuID` DECIMAL(18,2), `GameID` DECIMAL(18,2), `Hours_Played` DECIMAL(18,2));
CREATE TABLE `SportsInfo` (`StuID` DECIMAL(18,2), `SportName` VARCHAR(100), `HoursPerWeek` DECIMAL(18,2), `GamesPlayed` DECIMAL(18,2), `OnScholarship` VARCHAR(100));
