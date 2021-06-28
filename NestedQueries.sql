/* Queries using other queries in them (Nested Queries) */


/* Get the min year and how many post has written by then  */
SELECT MIN(year_table.year), year_table.quantity
FROM ( 
  SELECT YEAR(release_date) AS year, COUNT(*) AS quantity 
  FROM posts
  GROUP BY year
  ) AS year_table



/* Get Table with the post's min date write in each year */
SELECT first_date_table.year , first_date_table.min_date, COUNT(*) AS quantity
FROM (
    SELECT DATE(MIN(release_date)) AS min_date, YEAR(release_date) AS year
    FROM posts
    GROUP BY year
    ORDER BY year ASC
  ) AS first_date_table
GROUP BY first_date_table.year 


/* Get The max date register at post's table */
SELECT *
FROM posts
WHERE release_date = (
  SELECT MAX(release_date)
  FROM posts
  )