
/* Get Post with their respective tags */
SELECT posts.id, posts.title, GROUP_CONCAT(DISTINCT tags.name) AS tags ,COUNT(*) AS tags_quantity
FROM posts
  INNER JOIN posts_tags ON posts.id = posts_tags.post_id
  INNER JOIN tags ON tags.id = posts_tags.tag_id
GROUP BY posts.id
ORDER BY tags_quantity DESC


/* Get Tag without any post */

SELECT tags.name, tags.id
FROM tags 
  LEFT JOIN posts_tags ON tags.id =  posts_tags.tag_id
WHERE posts_tags.tag_id IS NULL


/*Get Categorie with the most posts quiantity*/

SELECT  categories.id, categories.name,  COUNT(*) AS posts_quantity
FROM categories
  INNER JOIN posts ON categories.id = posts.categorie_id
GROUP BY categories.name
ORDER BY posts_quantity DESC
LIMIT 1