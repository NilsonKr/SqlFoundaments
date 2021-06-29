/* User with the most psots written */

SELECT username, email, COUNT(*) AS posts_quantity 
FROM users
  INNER JOIN posts ON users.id = posts.user_id
GROUP BY users.id
ORDER BY posts_quantity DESC
LIMIT 1

/* Know the categorie of the authors use to write */

SELECT username, email, COUNT(*) AS posts_quantity, GROUP_CONCAT(DISTINCT categories.name) AS categories
FROM users
  INNER JOIN posts ON users.id = posts.user_id
  INNER JOIN categories ON categories.id = posts.categorie_id
GROUP BY users.id 


/* Editor who's not working */

SELECT username, email, content
FROM users
  LEFT JOIN posts ON users.id = posts.user_id
WHERE posts.user_id IS NULL


/* Get the users who mosts write in specific categorie (this case technologie)*/

SELECT username, email, name AS categorie, COUNT(*) AS posts
FROM users
	INNER JOIN posts ON users.id = posts.user_id
  INNER JOIN categories ON categories.id = posts.categorie_id
WHERE categories.name = 'technologie'
GROUP BY username
ORDER BY posts DESC
