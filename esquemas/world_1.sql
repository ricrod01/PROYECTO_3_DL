CREATE TABLE `city` (`ID` DECIMAL(18,2), `Name` VARCHAR(100), `CountryCode` VARCHAR(100), `District` VARCHAR(100), `Population` DECIMAL(18,2));
CREATE TABLE `sqlite_sequence` (`name` VARCHAR(100), `seq` VARCHAR(100));
CREATE TABLE `country` (`Code` VARCHAR(100), `Name` VARCHAR(100), `Continent` VARCHAR(100), `Region` VARCHAR(100), `SurfaceArea` DECIMAL(18,2), `IndepYear` DECIMAL(18,2), `Population` DECIMAL(18,2), `LifeExpectancy` DECIMAL(18,2), `GNP` DECIMAL(18,2), `GNPOld` DECIMAL(18,2), `LocalName` VARCHAR(100), `GovernmentForm` VARCHAR(100), `HeadOfState` VARCHAR(100), `Capital` DECIMAL(18,2), `Code2` VARCHAR(100));
CREATE TABLE `countrylanguage` (`CountryCode` VARCHAR(100), `Language` VARCHAR(100), `IsOfficial` VARCHAR(100), `Percentage` DECIMAL(18,2));
