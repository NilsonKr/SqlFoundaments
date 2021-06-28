/* WHERE Conditions */

SELECT * 
FROM posts
WHERE YEAR(release_date) < '2025'


SELECT *
FROM posts
WHERE title LIKE '%escandalo%'

SELECT *
FROM posts
WHERE release_date BETWEEN '2023-01-01' AND '2023-12-31'
 AND status = 'active'
 AND title LIKE 'Gana%'
 AND categorie_id = 3