CREATE TABLE `business` (`bid` DECIMAL(18,2), `business_id` VARCHAR(100), `name` VARCHAR(100), `full_address` VARCHAR(100), `city` VARCHAR(100), `latitude` VARCHAR(100), `longitude` VARCHAR(100), `review_count` DECIMAL(18,2), `is_open` DECIMAL(18,2), `rating` DECIMAL(18,2), `state` VARCHAR(100));
CREATE TABLE `category` (`id` DECIMAL(18,2), `business_id` VARCHAR(100), `category_name` VARCHAR(100));
CREATE TABLE `user` (`uid` DECIMAL(18,2), `user_id` VARCHAR(100), `name` VARCHAR(100));
CREATE TABLE `checkin` (`cid` DECIMAL(18,2), `business_id` VARCHAR(100), `count` DECIMAL(18,2), `day` VARCHAR(100));
CREATE TABLE `neighbourhood` (`id` DECIMAL(18,2), `business_id` VARCHAR(100), `neighbourhood_name` VARCHAR(100));
CREATE TABLE `review` (`rid` DECIMAL(18,2), `business_id` VARCHAR(100), `user_id` VARCHAR(100), `rating` DECIMAL(18,2), `text` VARCHAR(100), `year` DECIMAL(18,2), `month` VARCHAR(100));
CREATE TABLE `tip` (`tip_id` DECIMAL(18,2), `business_id` VARCHAR(100), `text` VARCHAR(100), `user_id` VARCHAR(100), `likes` DECIMAL(18,2), `year` DECIMAL(18,2), `month` VARCHAR(100));
