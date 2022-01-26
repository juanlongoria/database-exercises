USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    artist VARCHAR(200) NOT NULL DEFAULT 'unknown artist',
    name VARCHAR(200) NOT NULL DEFAULT 'unknown album name',
    release_date INT UNSIGNED,
    genre VARCHAR(50),
    sales FLOAT UNSIGNED,
    PRIMARY KEY (id)
);

DESCRIBE albums;
SHOW CREATE TABLE albums;