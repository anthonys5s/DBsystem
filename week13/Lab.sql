--PART 2
SELECT
    g.title,
    p.publisher_name,
	price
FROM games g 
INNER JOIN publishers p ON g.publisher_id = p.id
ORDER BY title ASC
--no since it has a null value

PART 3
SELECT
    g.title,
    p.publisher_name,
	price
FROM games g
LEFT JOIN publishers p
ON g.publisher_id = p.id
ORDER BY price DESC
--8  instead of 7

PART 4
SELECT
    g.title,
    COUNT(s.id) AS total_sales,
	SUM(quantity) AS copies_sold,
	COUNT(sale_date)
FROM games g
INNER JOIN sales s
    ON g.id = s.game_id
GROUP BY g.id, g.title, s.quantity
ORDER BY quantity DESC
--Street Fighter 6 

--PART 5
  SELECT
    p.publisher_name,
    COUNT(g.id) AS game_count,
	ROUND(AVG(price), 2)
FROM publishers p
INNER JOIN games g
    ON p.id = g.publisher_id
GROUP BY p.id, p.publisher_name, g.price
ORDER BY price DESC
--EA
