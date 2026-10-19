CREATE TABLE `grapes` (`ID` DECIMAL(18,2), `Grape` VARCHAR(100), `Color` VARCHAR(100));
CREATE TABLE `appellations` (`No` DECIMAL(18,2), `Appelation` VARCHAR(100), `County` VARCHAR(100), `State` VARCHAR(100), `Area` VARCHAR(100), `isAVA` VARCHAR(100));
CREATE TABLE `wine` (`No` DECIMAL(18,2), `Grape` VARCHAR(100), `Winery` VARCHAR(100), `Appelation` VARCHAR(100), `State` VARCHAR(100), `Name` VARCHAR(100), `Year` DECIMAL(18,2), `Price` DECIMAL(18,2), `Score` DECIMAL(18,2), `Cases` DECIMAL(18,2), `Drink` VARCHAR(100));
