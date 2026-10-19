CREATE TABLE `player` (`Player_ID` DECIMAL(18,2), `Sponsor_name` VARCHAR(100), `Player_name` VARCHAR(100), `Gender` VARCHAR(100), `Residence` VARCHAR(100), `Occupation` VARCHAR(100), `Votes` DECIMAL(18,2), `Rank` VARCHAR(100));
CREATE TABLE `club` (`Club_ID` DECIMAL(18,2), `Club_name` VARCHAR(100), `Region` VARCHAR(100), `Start_year` DECIMAL(18,2));
CREATE TABLE `coach` (`Coach_ID` DECIMAL(18,2), `Coach_name` VARCHAR(100), `Gender` VARCHAR(100), `Club_ID` DECIMAL(18,2), `Rank` DECIMAL(18,2));
CREATE TABLE `player_coach` (`Player_ID` DECIMAL(18,2), `Coach_ID` DECIMAL(18,2), `Starting_year` DECIMAL(18,2));
CREATE TABLE `match_result` (`Rank` DECIMAL(18,2), `Club_ID` DECIMAL(18,2), `Gold` DECIMAL(18,2), `Big_Silver` DECIMAL(18,2), `Small_Silver` DECIMAL(18,2), `Bronze` DECIMAL(18,2), `Points` DECIMAL(18,2));
