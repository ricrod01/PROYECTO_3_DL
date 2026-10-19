CREATE TABLE `Campuses` (`Id` DECIMAL(18,2), `Campus` VARCHAR(100), `Location` VARCHAR(100), `County` VARCHAR(100), `Year` DECIMAL(18,2));
CREATE TABLE `csu_fees` (`Campus` DECIMAL(18,2), `Year` DECIMAL(18,2), `CampusFee` DECIMAL(18,2));
CREATE TABLE `degrees` (`Year` DECIMAL(18,2), `Campus` DECIMAL(18,2), `Degrees` DECIMAL(18,2));
CREATE TABLE `discipline_enrollments` (`Campus` DECIMAL(18,2), `Discipline` DECIMAL(18,2), `Year` DECIMAL(18,2), `Undergraduate` DECIMAL(18,2), `Graduate` DECIMAL(18,2));
CREATE TABLE `enrollments` (`Campus` DECIMAL(18,2), `Year` DECIMAL(18,2), `TotalEnrollment_AY` DECIMAL(18,2), `FTE_AY` DECIMAL(18,2));
CREATE TABLE `faculty` (`Campus` DECIMAL(18,2), `Year` DECIMAL(18,2), `Faculty` DECIMAL(18,2));
