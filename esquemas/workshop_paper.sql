CREATE TABLE `workshop` (`Workshop_ID` DECIMAL(18,2), `Date` VARCHAR(100), `Venue` VARCHAR(100), `Name` VARCHAR(100));
CREATE TABLE `submission` (`Submission_ID` DECIMAL(18,2), `Scores` DECIMAL(18,2), `Author` VARCHAR(100), `College` VARCHAR(100));
CREATE TABLE `Acceptance` (`Submission_ID` DECIMAL(18,2), `Workshop_ID` DECIMAL(18,2), `Result` VARCHAR(100));
