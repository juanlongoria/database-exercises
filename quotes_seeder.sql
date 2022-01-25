USE codeup_test_db;

INSERT INTO quotes (id, author_first_name, author_last_name, content)
VALUES(1, 'Douglas', 'Adams', 'Don''t Panic'),
       ('Steve', 'Maraboli', 'Happiness is not the absence of problems. It''s the..'),
       ('Ernest', 'Hemingway', 'The world break everyone then some are strong at broken areas'),
       ('Lou', 'Holtz', 'Virtually nothing is impossible in this world if you put your mind to it and mantain a positive attitude');

SELECT id, author_first_name, content FROM quotes;