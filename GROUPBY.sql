/* Grouping data  */

SELECT YEAR(release_date) AS year, COUNT(*) AS quantity 
FROM posts
GROUP BY year


SELECT username, COUNT(*) AS posts_quantity
FROM posts
  INNER JOIN users ON users.id = posts.user_id
GROUP BY username

/*Ordering Data */


SELECT YEAR(release_date) AS year, COUNT(*) AS quantity 
FROM posts
GROUP BY year
ORDER BY year ASC


SELECT username, COUNT(*) AS posts_quantity
FROM posts
  INNER JOIN users ON users.id = posts.user_id
GROUP BY username
ORDER BY posts_quantity DESC


/* Grouping and ordering data with conditions */

SELECT YEAR(release_date) AS year_release, status, COUNT(*) AS posts_quantity
FROM posts
WHERE status = 'active' 
GROUP BY year_release, status
HAVING year_release < '2025' 
ORDER BY year_release ASC
;



SELECT YEAR(release_date) AS year, COUNT(*) AS quantity 
FROM posts
GROUP BY year
HAVING quantity > 3
ORDER BY year ASC