CREATE TABLE `Web_client_accelerator` (`id` DECIMAL(18,2), `name` VARCHAR(100), `Operating_system` VARCHAR(100), `Client` VARCHAR(100), `Connection` VARCHAR(100));
CREATE TABLE `browser` (`id` DECIMAL(18,2), `name` VARCHAR(100), `market_share` DECIMAL(18,2));
CREATE TABLE `accelerator_compatible_browser` (`accelerator_id` DECIMAL(18,2), `browser_id` DECIMAL(18,2), `compatible_since_year` DECIMAL(18,2));
