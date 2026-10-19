CREATE TABLE `Student` (`StuID` DECIMAL(18,2), `LName` VARCHAR(100), `Fname` VARCHAR(100), `Age` DECIMAL(18,2), `Sex` VARCHAR(100), `Major` DECIMAL(18,2), `Advisor` DECIMAL(18,2), `city_code` VARCHAR(100));
CREATE TABLE `Club` (`ClubID` DECIMAL(18,2), `ClubName` VARCHAR(100), `ClubDesc` VARCHAR(100), `ClubLocation` VARCHAR(100));
CREATE TABLE `Member_of_club` (`StuID` DECIMAL(18,2), `ClubID` DECIMAL(18,2), `Position` VARCHAR(100));
