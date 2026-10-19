CREATE TABLE `item` (`i_id` DECIMAL(18,2), `title` VARCHAR(100));
CREATE TABLE `review` (`a_id` DECIMAL(18,2), `u_id` DECIMAL(18,2), `i_id` DECIMAL(18,2), `rating` DECIMAL(18,2), `rank` DECIMAL(18,2));
CREATE TABLE `useracct` (`u_id` DECIMAL(18,2), `name` VARCHAR(100));
CREATE TABLE `trust` (`source_u_id` DECIMAL(18,2), `target_u_id` DECIMAL(18,2), `trust` DECIMAL(18,2));
