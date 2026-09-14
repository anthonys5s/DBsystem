-- create database week5;

-- CREATE TABLE products (
--     id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
--     product_name varchar(100),
--     quantity integer
-- );


-- INSERT INTO products (product_name, quantity)
-- VALUES
--     ('Gaming Mouse', 10),
--     ('Mechanical Keyboard', 8),
--     ('Monitor', 5),
--     ('Headset', 12);

-- alter table products
-- add column description text;

-- alter table products
-- add column price numeric(7,2);

-- alter table products
-- add column rating real;

-- alter table products
-- add column last_updated timestamp with time zone;

-- alter table products
-- add column in_stock boolean;

-- UPDATE products
-- SET description = 'Wireless gaming mouse',
--     price = 49.99,
--     rating = 4.7,
--     last_updated = now(),
--     in_stock = TRUE
-- WHERE product_name = 'Gaming Mouse';

-- update products
-- set description = 'Wired Mechanical Keyboard',
-- 	price = 59.99,
-- 	rating = 4.8,
-- 	last_updated = '2024-09-01 09:30:00',
-- 	in_stock = TRUE
-- Where product_name = 'Mechanical Keyboard'

-- update products
-- set description = '27" Gaming Monitor',
-- 	price = 299,
-- 	rating = 4.7,
-- 	last_updated = now(),
-- 	in_stock = FALSE
-- where product_name = 'Monitor'

-- update products
-- set description = 'Wireless Headset',
-- 	price = 109.99,
-- 	rating = 4.9,
-- 	last_updated = '2024-09-17 09:30:00',
-- 	in_stock = TRUE
-- where product_name = 'Headset'

-- UPDATE products
-- SET price = 99.995
-- WHERE product_name = 'Monitor';




-- SELECT * FROM products

-- select product_name, price, rating
-- from products;

-- select price
-- from products
-- where price > 90;

-- select in_stock
-- from products
-- where in_stock = TRUE

-- select price
-- from products ORDER BY price desc;
