CREATE TABLE `Apartment_Buildings` (`building_id` DECIMAL(18,2), `building_short_name` VARCHAR(100), `building_full_name` VARCHAR(100), `building_description` VARCHAR(100), `building_address` VARCHAR(100), `building_manager` VARCHAR(100), `building_phone` VARCHAR(100));
CREATE TABLE `Apartments` (`apt_id` DECIMAL(18,2), `building_id` DECIMAL(18,2), `apt_type_code` VARCHAR(100), `apt_number` VARCHAR(100), `bathroom_count` DECIMAL(18,2), `bedroom_count` DECIMAL(18,2), `room_count` VARCHAR(100));
CREATE TABLE `Apartment_Facilities` (`apt_id` DECIMAL(18,2), `facility_code` VARCHAR(100));
CREATE TABLE `Guests` (`guest_id` DECIMAL(18,2), `gender_code` VARCHAR(100), `guest_first_name` VARCHAR(100), `guest_last_name` VARCHAR(100), `date_of_birth` DATETIME);
CREATE TABLE `Apartment_Bookings` (`apt_booking_id` DECIMAL(18,2), `apt_id` DECIMAL(18,2), `guest_id` DECIMAL(18,2), `booking_status_code` VARCHAR(100), `booking_start_date` DATETIME, `booking_end_date` DATETIME);
CREATE TABLE `View_Unit_Status` (`apt_id` DECIMAL(18,2), `apt_booking_id` DECIMAL(18,2), `status_date` DATETIME, `available_yn` VARCHAR(100));
