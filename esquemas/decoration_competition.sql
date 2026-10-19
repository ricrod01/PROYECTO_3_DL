CREATE TABLE `college` (`College_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Leader_Name` VARCHAR(100), `College_Location` VARCHAR(100));
CREATE TABLE `member` (`Member_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Country` VARCHAR(100), `College_ID` DECIMAL(18,2));
CREATE TABLE `round` (`Round_ID` DECIMAL(18,2), `Member_ID` DECIMAL(18,2), `Decoration_Theme` VARCHAR(100), `Rank_in_Round` DECIMAL(18,2));
