CREATE TABLE `AREA_CODE_STATE` (`area_code` DECIMAL(18,2), `state` VARCHAR(100));
CREATE TABLE `CONTESTANTS` (`contestant_number` DECIMAL(18,2), `contestant_name` VARCHAR(100));
CREATE TABLE `VOTES` (`vote_id` DECIMAL(18,2), `phone_number` DECIMAL(18,2), `state` VARCHAR(100), `contestant_number` DECIMAL(18,2), `created` DATETIME);
