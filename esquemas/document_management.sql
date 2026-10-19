CREATE TABLE `Roles` (`role_code` VARCHAR(100), `role_description` VARCHAR(100));
CREATE TABLE `Users` (`user_id` DECIMAL(18,2), `role_code` VARCHAR(100), `user_name` VARCHAR(100), `user_login` VARCHAR(100), `password` VARCHAR(100));
CREATE TABLE `Document_Structures` (`document_structure_code` VARCHAR(100), `parent_document_structure_code` VARCHAR(100), `document_structure_description` VARCHAR(100));
CREATE TABLE `Functional_Areas` (`functional_area_code` VARCHAR(100), `parent_functional_area_code` VARCHAR(100), `functional_area_description` VARCHAR(100));
CREATE TABLE `Images` (`image_id` DECIMAL(18,2), `image_alt_text` VARCHAR(100), `image_name` VARCHAR(100), `image_url` VARCHAR(100));
CREATE TABLE `Documents` (`document_code` VARCHAR(100), `document_structure_code` VARCHAR(100), `document_type_code` VARCHAR(100), `access_count` DECIMAL(18,2), `document_name` VARCHAR(100));
CREATE TABLE `Document_Functional_Areas` (`document_code` VARCHAR(100), `functional_area_code` VARCHAR(100));
CREATE TABLE `Document_Sections` (`section_id` DECIMAL(18,2), `document_code` VARCHAR(100), `section_sequence` DECIMAL(18,2), `section_code` VARCHAR(100), `section_title` VARCHAR(100));
CREATE TABLE `Document_Sections_Images` (`section_id` DECIMAL(18,2), `image_id` DECIMAL(18,2));
