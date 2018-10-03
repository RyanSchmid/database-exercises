USE codeup_test_db;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    album_name VARCHAR(100) NOT NULL,
    release_date INT UNSIGNED NOT NULL,
    sales FLOAT UNSIGNED NOT NULL,
    genre VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);