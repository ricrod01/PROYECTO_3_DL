CREATE TABLE `people` (`People_ID` DECIMAL(18,2), `District` VARCHAR(100), `Name` VARCHAR(100), `Party` VARCHAR(100), `Age` DECIMAL(18,2));
CREATE TABLE `debate` (`Debate_ID` DECIMAL(18,2), `Date` VARCHAR(100), `Venue` VARCHAR(100), `Num_of_Audience` DECIMAL(18,2));
CREATE TABLE `debate_people` (`Debate_ID` DECIMAL(18,2), `Affirmative` DECIMAL(18,2), `Negative` DECIMAL(18,2), `If_Affirmative_Win` VARCHAR(100));
