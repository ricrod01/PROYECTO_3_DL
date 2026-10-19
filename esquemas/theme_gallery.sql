CREATE TABLE `artist` (`Artist_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Country` VARCHAR(100), `Year_Join` DECIMAL(18,2), `Age` DECIMAL(18,2));
CREATE TABLE `exhibition` (`Exhibition_ID` DECIMAL(18,2), `Year` DECIMAL(18,2), `Theme` VARCHAR(100), `Artist_ID` DECIMAL(18,2), `Ticket_Price` DECIMAL(18,2));
CREATE TABLE `exhibition_record` (`Exhibition_ID` DECIMAL(18,2), `Date` VARCHAR(100), `Attendance` DECIMAL(18,2));
