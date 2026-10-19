CREATE TABLE `Movie` (`mID` DECIMAL(18,2), `title` VARCHAR(100), `year` DECIMAL(18,2), `director` VARCHAR(100));
CREATE TABLE `Reviewer` (`rID` DECIMAL(18,2), `name` VARCHAR(100));
CREATE TABLE `Rating` (`rID` DECIMAL(18,2), `mID` DECIMAL(18,2), `stars` DECIMAL(18,2), `ratingDate` DATETIME);
