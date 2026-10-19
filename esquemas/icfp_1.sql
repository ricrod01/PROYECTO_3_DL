CREATE TABLE `Inst` (`instID` DECIMAL(18,2), `name` VARCHAR(100), `country` VARCHAR(100));
CREATE TABLE `Authors` (`authID` DECIMAL(18,2), `lname` VARCHAR(100), `fname` VARCHAR(100));
CREATE TABLE `Papers` (`paperID` DECIMAL(18,2), `title` VARCHAR(100));
CREATE TABLE `Authorship` (`authID` DECIMAL(18,2), `instID` DECIMAL(18,2), `paperID` DECIMAL(18,2), `authOrder` DECIMAL(18,2));
