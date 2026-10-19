CREATE TABLE `genre` (`g_name` VARCHAR(100), `rating` VARCHAR(100), `most_popular_in` VARCHAR(100));
CREATE TABLE `artist` (`artist_name` VARCHAR(100), `country` VARCHAR(100), `gender` VARCHAR(100), `preferred_genre` VARCHAR(100));
CREATE TABLE `files` (`f_id` DECIMAL(18,2), `artist_name` VARCHAR(100), `file_size` VARCHAR(100), `duration` VARCHAR(100), `formats` VARCHAR(100));
CREATE TABLE `song` (`song_name` VARCHAR(100), `artist_name` VARCHAR(100), `country` VARCHAR(100), `f_id` DECIMAL(18,2), `genre_is` VARCHAR(100), `rating` DECIMAL(18,2), `languages` VARCHAR(100), `releasedate` DATETIME, `resolution` DECIMAL(18,2));
