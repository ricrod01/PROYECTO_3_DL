CREATE TABLE `artist` (`Artist_ID` DECIMAL(18,2), `Artist` VARCHAR(100), `Age` DECIMAL(18,2), `Famous_Title` VARCHAR(100), `Famous_Release_date` VARCHAR(100));
CREATE TABLE `volume` (`Volume_ID` DECIMAL(18,2), `Volume_Issue` VARCHAR(100), `Issue_Date` VARCHAR(100), `Weeks_on_Top` DECIMAL(18,2), `Song` VARCHAR(100), `Artist_ID` DECIMAL(18,2));
CREATE TABLE `music_festival` (`ID` DECIMAL(18,2), `Music_Festival` VARCHAR(100), `Date_of_ceremony` VARCHAR(100), `Category` VARCHAR(100), `Volume` DECIMAL(18,2), `Result` VARCHAR(100));
