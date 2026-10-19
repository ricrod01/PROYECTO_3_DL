CREATE TABLE `station` (`Station_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Annual_entry_exit` DECIMAL(18,2), `Annual_interchanges` DECIMAL(18,2), `Total_Passengers` DECIMAL(18,2), `Location` VARCHAR(100), `Main_Services` VARCHAR(100), `Number_of_Platforms` DECIMAL(18,2));
CREATE TABLE `train` (`Train_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Time` VARCHAR(100), `Service` VARCHAR(100));
CREATE TABLE `train_station` (`Train_ID` DECIMAL(18,2), `Station_ID` DECIMAL(18,2));
