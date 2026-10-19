CREATE TABLE `Services` (`Service_ID` DECIMAL(18,2), `Service_Type_Code` VARCHAR(100));
CREATE TABLE `Participants` (`Participant_ID` DECIMAL(18,2), `Participant_Type_Code` VARCHAR(100), `Participant_Details` VARCHAR(100));
CREATE TABLE `Events` (`Event_ID` DECIMAL(18,2), `Service_ID` DECIMAL(18,2), `Event_Details` VARCHAR(100));
CREATE TABLE `Participants_in_Events` (`Event_ID` DECIMAL(18,2), `Participant_ID` DECIMAL(18,2));
