CREATE TABLE `product` (`product_id` DECIMAL(18,2), `product` VARCHAR(100), `dimensions` VARCHAR(100), `dpi` DECIMAL(18,2), `pages_per_minute_color` DECIMAL(18,2), `max_page_size` VARCHAR(100), `interface` VARCHAR(100));
CREATE TABLE `store` (`Store_ID` DECIMAL(18,2), `Store_Name` VARCHAR(100), `Type` VARCHAR(100), `Area_size` DECIMAL(18,2), `Number_of_product_category` DECIMAL(18,2), `Ranking` DECIMAL(18,2));
CREATE TABLE `district` (`District_ID` DECIMAL(18,2), `District_name` VARCHAR(100), `Headquartered_City` VARCHAR(100), `City_Population` DECIMAL(18,2), `City_Area` DECIMAL(18,2));
CREATE TABLE `store_product` (`Store_ID` DECIMAL(18,2), `Product_ID` DECIMAL(18,2));
CREATE TABLE `store_district` (`Store_ID` DECIMAL(18,2), `District_ID` DECIMAL(18,2));
