SELECT UPPER(Description)
FROM products

SELECT ROUND(price, 0) AS whole_price
FROM products

SELECT NOW() 
FROM products

create view product_overview as
SELECT "Name", Description, Price,
Price >= 200,
UPPER("Name"), 
LOWER(Description)
FROM products;
