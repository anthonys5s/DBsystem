create table products_raw(
"Index" integer primary key, 
"Name" varchar(100), 
Description text, 
Brand varchar(100), 
Category text, 
Price numeric, 
Currency varchar(5), 
Stock integer, 
EAN numeric, 
Color text, 
"Size" varchar(100), 
Availability text, 
"ID" numeric);

SELECT Category,
ROUND(AVG(Price), 2)
AS avg_price_rounded,
CEIL(AVG(Price))
AS avg_price_ceiling
FROM products_raw
GROUP BY Category
ORDER BY Category;

SELECT
MAX(price) AS highest_price,
MIN(price) AS lowest_price,
FROM products_raw;

SELECT
"Name",
Category,
Price,
FLOOR(Price) AS price_floored
FROM products_raw
ORDER BY "Index"
--Its already all whole numbers but if it were decimals it wouldve worked

SELECT
"Name",
Category,
UPPER(Category) AS category_upper
FROM products_raw
ORDER BY "Index"


CREATE VIEW category_averages AS
SELECT
Category,
ROUND(AVG(Price), 2) AS avg_price,
SUM(Stock)
AS total_stock
FROM products_raw
GROUP BY category;

CREATE OR REPLACE VIEW category_overview AS
SELECT
Category,
Avg_price,
Total_stock
FROM (
SELECT
Category,
ROUND(AVG(Price), 2) AS avg_price,
SUM(Stock) AS total_stock
FROM products_raw
GROUP BY Category
) AS category_totals
WHERE avg_price > 50;


SELECT *
FROM category_overview
