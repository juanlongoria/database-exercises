USE codeup_test_db;

-- SELECT id, author_first_name, content FROM quotes;
-- SELECT * FROM albums WHERE Artist = 'Pink Floyd';
SELECT Album FROM albums WHERE Artist = 'Pink Floyd';
SELECT Released FROM albums WHERE Album = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT Genre FROM albums WHERE Album = 'Nevermind';
SELECT Album FROM albums WHERE Released = 1990;
SELECT Album FROM albums WHERE Certified_Sales < 20;
SELECT Album FROM albums WHERE Genre = 'Rock';
--Selecting a specific genre--




