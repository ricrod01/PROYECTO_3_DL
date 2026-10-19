CREATE TABLE `airport` (`id` DECIMAL(18,2), `City` VARCHAR(100), `Country` VARCHAR(100), `IATA` VARCHAR(100), `ICAO` VARCHAR(100), `name` VARCHAR(100));
CREATE TABLE `operate_company` (`id` DECIMAL(18,2), `name` VARCHAR(100), `Type` VARCHAR(100), `Principal_activities` VARCHAR(100), `Incorporated_in` VARCHAR(100), `Group_Equity_Shareholding` DECIMAL(18,2));
CREATE TABLE `flight` (`id` DECIMAL(18,2), `Vehicle_Flight_number` VARCHAR(100), `Date` VARCHAR(100), `Pilot` VARCHAR(100), `Velocity` DECIMAL(18,2), `Altitude` DECIMAL(18,2), `airport_id` DECIMAL(18,2), `company_id` DECIMAL(18,2));
