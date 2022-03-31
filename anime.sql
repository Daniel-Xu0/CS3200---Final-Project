CREATE DATABASE IF NOT EXISTS anime;
USE anime;

CREATE TABLE user_profile (
	username VARCHAR(20) PRIMARY KEY NOT NULL,
    password VARCHAR(30) NOT NULL,
    email VARCHAR(50) NOT NULL,
    dob DATE NOT NULL,
    status TEXT,
    UNIQUE (email)
);

CREATE TABLE anime (
	anime_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    anime_name VARCHAR(100) NOT NULL,
    rating FLOAT NOT NULL,
    description TEXT NOT NULL,
    ranking INT NOT NULL,
    num_episodes INT NOT NULL,
    studios TEXT
);

CREATE TABLE review (
	review_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	username VARCHAR(20) NOT NULL,
    anime_id INT NOT NULL,
    rating FLOAT NOT NULL,
    review_text TEXT,
    CONSTRAINT reviewed_by FOREIGN KEY (username) REFERENCES user_profile (username),
    CONSTRAINT anime_id FOREIGN KEY (anime_id) REFERENCES anime (anime_id)
);

CREATE TABLE voice_actor (
	va_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	va_name VARCHAR(50)
);

CREATE TABLE anime_character (
	character_name VARCHAR(50),
    anime_id INT,
    va_id INT,
    CONSTRAINT character_from FOREIGN KEY (anime_id) REFERENCES anime (anime_id),
    CONSTRAINT voiced_by FOREIGN KEY (va_id) REFERENCES voice_actor (va_id),
    CONSTRAINT character_in PRIMARY KEY (character_name, anime_id, va_id)
);

CREATE TABLE genre (
	genre_name VARCHAR(20) PRIMARY KEY
);

CREATE TABLE has_genre (
	genre_name VARCHAR(20),
    anime_id INT,
    CONSTRAINT genre_fk FOREIGN KEY (genre_name) REFERENCES genre (genre_name),
    CONSTRAINT anime_genre FOREIGN KEY (anime_id) REFERENCES anime (anime_id),
    CONSTRAINT genre_pk PRIMARY KEY (genre_name, anime_id)
);

CREATE TABLE to_watch_list (
	username VARCHAR(20) NOT NULL,
    anime_id INT NOT NULL,
    CONSTRAINT to_watch PRIMARY KEY (username, anime_id),
    CONSTRAINT watch_list_account FOREIGN KEY (username) REFERENCES user_profile (username),
    CONSTRAINT anime_to_watch FOREIGN KEY (anime_id) REFERENCES anime (anime_id)
);

CREATE TABLE watched_list (
	username VARCHAR(20) NOT NULL,
    anime_id INT NOT NULL,
    CONSTRAINT watched PRIMARY KEY (username, anime_id),
    CONSTRAINT watched_list_account FOREIGN KEY (username) REFERENCES user_profile (username),
    CONSTRAINT anime_watched FOREIGN KEY (anime_id) REFERENCES anime (anime_id)
);