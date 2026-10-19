CREATE TABLE `Scientists` (`SSN` DECIMAL(18,2), `Name` VARCHAR(100));
CREATE TABLE `Projects` (`Code` VARCHAR(100), `Name` VARCHAR(100), `Hours` DECIMAL(18,2));
CREATE TABLE `AssignedTo` (`Scientist` DECIMAL(18,2), `Project` VARCHAR(100));
