USE codeup_test_db;



CREATE TABLE albums (
    id INT UNSIGNED AUTO_INCREMENT,
    artist VARCHAR(200),
    name VARCHAR(200),
    release_date INT UNSIGNED,
    sales FLOAT UNSIGNED,
    genre VARCHAR(100),
    PRIMARY KEY (id)
);

DESCRIBE albums;
SHOW CREATE TABLE albums;