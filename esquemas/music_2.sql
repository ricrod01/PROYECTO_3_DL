CREATE TABLE `Songs` (`SongId` DECIMAL(18,2), `Title` VARCHAR(100));
CREATE TABLE `Albums` (`AId` DECIMAL(18,2), `Title` VARCHAR(100), `Year` DECIMAL(18,2), `Label` VARCHAR(100), `Type` VARCHAR(100));
CREATE TABLE `Band` (`Id` DECIMAL(18,2), `Firstname` VARCHAR(100), `Lastname` VARCHAR(100));
CREATE TABLE `Instruments` (`SongId` DECIMAL(18,2), `BandmateId` DECIMAL(18,2), `Instrument` VARCHAR(100));
CREATE TABLE `Performance` (`SongId` DECIMAL(18,2), `Bandmate` DECIMAL(18,2), `StagePosition` VARCHAR(100));
CREATE TABLE `Tracklists` (`AlbumId` DECIMAL(18,2), `Position` DECIMAL(18,2), `SongId` DECIMAL(18,2));
CREATE TABLE `Vocals` (`SongId` DECIMAL(18,2), `Bandmate` DECIMAL(18,2), `Type` VARCHAR(100));
