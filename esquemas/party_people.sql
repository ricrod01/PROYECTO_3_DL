CREATE TABLE `region` (`Region_ID` DECIMAL(18,2), `Region_name` VARCHAR(100), `Date` VARCHAR(100), `Label` VARCHAR(100), `Format` VARCHAR(100), `Catalogue` VARCHAR(100));
CREATE TABLE `party` (`Party_ID` DECIMAL(18,2), `Minister` VARCHAR(100), `Took_office` VARCHAR(100), `Left_office` VARCHAR(100), `Region_ID` DECIMAL(18,2), `Party_name` VARCHAR(100));
CREATE TABLE `member` (`Member_ID` DECIMAL(18,2), `Member_Name` VARCHAR(100), `Party_ID` VARCHAR(100), `In_office` VARCHAR(100));
CREATE TABLE `party_events` (`Event_ID` DECIMAL(18,2), `Event_Name` VARCHAR(100), `Party_ID` DECIMAL(18,2), `Member_in_charge_ID` DECIMAL(18,2));
