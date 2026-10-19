CREATE TABLE `airlines` (`uid` DECIMAL(18,2), `Airline` VARCHAR(100), `Abbreviation` VARCHAR(100), `Country` VARCHAR(100));
CREATE TABLE `airports` (`City` VARCHAR(100), `AirportCode` VARCHAR(100), `AirportName` VARCHAR(100), `Country` VARCHAR(100), `CountryAbbrev` VARCHAR(100));
CREATE TABLE `flights` (`Airline` DECIMAL(18,2), `FlightNo` DECIMAL(18,2), `SourceAirport` VARCHAR(100), `DestAirport` VARCHAR(100));
