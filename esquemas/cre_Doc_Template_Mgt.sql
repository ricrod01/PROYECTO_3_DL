CREATE TABLE `Ref_Template_Types` (`Template_Type_Code` VARCHAR(100), `Template_Type_Description` VARCHAR(100));
CREATE TABLE `Templates` (`Template_ID` DECIMAL(18,2), `Version_Number` DECIMAL(18,2), `Template_Type_Code` VARCHAR(100), `Date_Effective_From` DATETIME, `Date_Effective_To` DATETIME, `Template_Details` VARCHAR(100));
CREATE TABLE `Documents` (`Document_ID` DECIMAL(18,2), `Template_ID` DECIMAL(18,2), `Document_Name` VARCHAR(100), `Document_Description` VARCHAR(100), `Other_Details` VARCHAR(100));
CREATE TABLE `Paragraphs` (`Paragraph_ID` DECIMAL(18,2), `Document_ID` DECIMAL(18,2), `Paragraph_Text` VARCHAR(100), `Other_Details` VARCHAR(100));
