CREATE TABLE `journal` (`Journal_ID` DECIMAL(18,2), `Date` VARCHAR(100), `Theme` VARCHAR(100), `Sales` DECIMAL(18,2));
CREATE TABLE `editor` (`Editor_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Age` DECIMAL(18,2));
CREATE TABLE `journal_committee` (`Editor_ID` DECIMAL(18,2), `Journal_ID` DECIMAL(18,2), `Work_Type` VARCHAR(100));
