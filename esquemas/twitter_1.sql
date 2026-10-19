CREATE TABLE `follows` (`f1` DECIMAL(18,2), `f2` DECIMAL(18,2));
CREATE TABLE `tweets` (`id` DECIMAL(18,2), `uid` DECIMAL(18,2), `text` VARCHAR(100), `createdate` DATETIME);
CREATE TABLE `user_profiles` (`uid` DECIMAL(18,2), `name` VARCHAR(100), `email` VARCHAR(100), `partitionid` DECIMAL(18,2), `followers` DECIMAL(18,2));
