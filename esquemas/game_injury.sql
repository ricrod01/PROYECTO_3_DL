CREATE TABLE `stadium` (`id` DECIMAL(18,2), `name` VARCHAR(100), `Home_Games` DECIMAL(18,2), `Average_Attendance` DECIMAL(18,2), `Total_Attendance` DECIMAL(18,2), `Capacity_Percentage` DECIMAL(18,2));
CREATE TABLE `game` (`stadium_id` DECIMAL(18,2), `id` DECIMAL(18,2), `Season` DECIMAL(18,2), `Date` VARCHAR(100), `Home_team` VARCHAR(100), `Away_team` VARCHAR(100), `Score` VARCHAR(100), `Competition` VARCHAR(100));
CREATE TABLE `injury_accident` (`game_id` DECIMAL(18,2), `id` DECIMAL(18,2), `Player` VARCHAR(100), `Injury` VARCHAR(100), `Number_of_matches` VARCHAR(100), `Source` VARCHAR(100));
