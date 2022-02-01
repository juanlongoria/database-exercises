# USE regulus_db;
#
# #GET ALL PLAYERS WHO PLAY FOR THE 49ers
#
# #WHAT WE WANT
# SELECT CONCAT(players.first_name, ' ', players.last_name) AS full_name
# FROM players
# #GETTING TEAM ID FROM THE TEAMS TABLE BASED ON WHERE
# WHERE team.id IN (
#     SELECT id
#     FROM teams
#     WHERE name = '49ers'
#     );

USE employees;

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;

INSERT INTO users (name, email, role_id)
VALUES('fer', 'fer@codeup.com',
       (SELECT id FROM roles WHERE name = 'commenter')
      );

UPDATE users
SET role_id = (SELECT id FROM roles WHERE name = 'admin')
WHERE email = 'fer@codeup.com';