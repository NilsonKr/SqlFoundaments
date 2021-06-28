/* BASIC SELECT QUERY */
SELECT * FROM platzi_blog.users;

SELECT username, email FROM platzi_blog.users;

SELECT *, COUNT(*) users_quantity FROM platzi_blog.users;


/* SELECT WITH JOIN */

SELECT *
FROM users 
  LEFT JOIN posts ON users.id = posts.user_id /* Users with posts & Users without any post */



SELECT *
FROM users 
  RIGHT JOIN posts ON users.id = posts.user_id /* Posts with users & Posts without user */ 


SELECT *
FROM users 
  INNER JOIN posts ON users.id = posts.user_id /* Only Related posts with users and vice versa */


SELECT *
FROM users 
  LEFT JOIN posts ON users.id = posts.user_id
WHERE posts.user_id IS NULL  /* Only Users without any posts */



SELECT *
FROM users 
  RIGHT JOIN posts ON users.id = posts.user_id
WHERE posts.user_id IS NULL  /* Only Posts without any user */


/*  FULL OUTER JOIN */

SELECT *
FROM users 
  LEFT JOIN posts ON users.id = posts.user_id
WHERE posts.user_id IS NULL  
UNION
SELECT *
FROM users 
  RIGHT JOIN posts ON users.id = posts.user_id
WHERE posts.user_id IS NULL 

/*  FULL JOIN */

SELECT *
FROM users 
  LEFT JOIN posts ON users.id = posts.user_id
UNION
SELECT *
FROM users 
  RIGHT JOIN posts ON users.id = posts.user_id