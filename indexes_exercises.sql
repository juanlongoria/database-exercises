USE employees;

DESCRIBE departments;
DESCRIBE dept_emp;

USE codeup_test_db;
ALTER TABLE albums
ADD UNIQUE (artist, name);

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael', 'Thriller', 1982, 25, 'POP');