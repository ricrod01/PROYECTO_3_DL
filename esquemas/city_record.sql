CREATE TABLE `city` (`City_ID` DECIMAL(18,2), `City` VARCHAR(100), `Hanzi` VARCHAR(100), `Hanyu_Pinyin` VARCHAR(100), `Regional_Population` DECIMAL(18,2), `GDP` DECIMAL(18,2));
CREATE TABLE `match` (`Match_ID` DECIMAL(18,2), `Date` VARCHAR(100), `Venue` VARCHAR(100), `Score` VARCHAR(100), `Result` VARCHAR(100), `Competition` VARCHAR(100));
CREATE TABLE `temperature` (`City_ID` DECIMAL(18,2), `Jan` DECIMAL(18,2), `Feb` DECIMAL(18,2), `Mar` DECIMAL(18,2), `Apr` DECIMAL(18,2), `Jun` DECIMAL(18,2), `Jul` DECIMAL(18,2), `Aug` DECIMAL(18,2), `Sep` DECIMAL(18,2), `Oct` DECIMAL(18,2), `Nov` DECIMAL(18,2), `Dec` DECIMAL(18,2));
CREATE TABLE `hosting_city` (`Year` DECIMAL(18,2), `Match_ID` DECIMAL(18,2), `Host_City` VARCHAR(100));
