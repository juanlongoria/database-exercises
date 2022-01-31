

CREATE DATABASE IF NOT EXISTS  regulus_db;
USE regulus_db;

CREATE TABLE IF NOT EXISTS players
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(100),
    team VARCHAR(50),
    position VARCHAR(50),
    PRIMARY KEY (id)
);

ALTER TABLE players
ADD PRIMARY KEY (id);

DESCRIBE players;

INSERT INTO players (first_name, last_name, team, position)
VALUES ('Joe', 'Burrow', 'Cincinnati Bengals', 'Quarterback'),
       ('Patrick', 'Mahomes', 'KC Chiefs', 'Quarterback');

SELECT * FROM players;

#UNIQUE
CREATE TABLE IF NOT EXISTS  teams
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(50),
    name VARCHAR(50)
);

ALTER TABLE teams
ADD UNIQUE (name);

DESCRIBE teams;

INSERT INTO teams (city, name)
VALUES ('Cincinnati', 'Bengals'),
       ('Kansas City', 'Chiefs');

#WONT WORK
#INSERT INTO teams (city, name)
# VALUES ('Dallas', 'Bengals');
DROP TABLE IF EXISTS players;
DROP TABLE IF EXISTS teams;


###
CREATE TABLE IF NOT EXISTS teams
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(100),
    team_id INT UNSIGNED NOT NULL,
    position VARCHAR(50),
    FOREIGN KEY (team_id) REFERENCES teams(id)
);




CREATE TABLE IF NOT EXISTS players
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(100),
    team_id INT UNSIGNED NOT NULL,
    position VARCHAR(50),
    FOREIGN KEY (team_id) REFERENCES teams(id)
);

