CREATE TABLE `medicine` (`id` DECIMAL(18,2), `name` VARCHAR(100), `Trade_Name` VARCHAR(100), `FDA_approved` VARCHAR(100));
CREATE TABLE `enzyme` (`id` DECIMAL(18,2), `name` VARCHAR(100), `Location` VARCHAR(100), `Product` VARCHAR(100), `Chromosome` VARCHAR(100), `OMIM` DECIMAL(18,2), `Porphyria` VARCHAR(100));
CREATE TABLE `medicine_enzyme_interaction` (`enzyme_id` DECIMAL(18,2), `medicine_id` DECIMAL(18,2), `interaction_type` VARCHAR(100));
