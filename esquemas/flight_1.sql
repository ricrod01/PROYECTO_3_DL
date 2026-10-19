CREATE TABLE `flight` (`flno` DECIMAL(18,2), `origin` VARCHAR(100), `destination` VARCHAR(100), `distance` DECIMAL(18,2), `departure_date` DATETIME, `arrival_date` DATETIME, `price` DECIMAL(18,2), `aid` DECIMAL(18,2));
CREATE TABLE `aircraft` (`aid` DECIMAL(18,2), `name` VARCHAR(100), `distance` DECIMAL(18,2));
CREATE TABLE `employee` (`eid` DECIMAL(18,2), `name` VARCHAR(100), `salary` DECIMAL(18,2));
CREATE TABLE `certificate` (`eid` DECIMAL(18,2), `aid` DECIMAL(18,2));
