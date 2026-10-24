CREATE TABLE `Sales` (`id_sale` DECIMAL(18,2), `id_clothe` DECIMAL(18,2), `id_method` DECIMAL(18,2), `id_costumer` DECIMAL(18,2), `id_date` DECIMAL(18,2), `amount` DECIMAL(18,2));
CREATE TABLE `Clothes` (`id_clothe` DECIMAL(18,2), `name_clothe` VARCHAR(100), `size` VARCHAR(100), `price` DECIMAL(18,2));
CREATE TABLE `Costumers` (`id_costumer` DECIMAL(18,2), `name_costumer` VARCHAR(100));
CREATE TABLE `Methods` (`id_method` DECIMAL(18,2), `name_method` VARCHAR(100));
CREATE TABLE `Dates` (`id_date` DECIMAL(18,2), `date` DATETIME);