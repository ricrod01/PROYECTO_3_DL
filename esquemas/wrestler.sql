CREATE TABLE `wrestler` (`Wrestler_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Reign` VARCHAR(100), `Days_held` VARCHAR(100), `Location` VARCHAR(100), `Event` VARCHAR(100));
CREATE TABLE `Elimination` (`Elimination_ID` VARCHAR(100), `Wrestler_ID` VARCHAR(100), `Team` VARCHAR(100), `Eliminated_By` VARCHAR(100), `Elimination_Move` VARCHAR(100), `Time` VARCHAR(100));
