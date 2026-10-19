CREATE TABLE `shop` (`Shop_ID` DECIMAL(18,2), `Address` VARCHAR(100), `Num_of_staff` VARCHAR(100), `Score` DECIMAL(18,2), `Open_Year` VARCHAR(100));
CREATE TABLE `member` (`Member_ID` DECIMAL(18,2), `Name` VARCHAR(100), `Membership_card` VARCHAR(100), `Age` DECIMAL(18,2), `Time_of_purchase` DECIMAL(18,2), `Level_of_membership` DECIMAL(18,2), `Address` VARCHAR(100));
CREATE TABLE `happy_hour` (`HH_ID` DECIMAL(18,2), `Shop_ID` DECIMAL(18,2), `Month` VARCHAR(100), `Num_of_shaff_in_charge` DECIMAL(18,2));
CREATE TABLE `happy_hour_member` (`HH_ID` DECIMAL(18,2), `Member_ID` DECIMAL(18,2), `Total_amount` DECIMAL(18,2));
