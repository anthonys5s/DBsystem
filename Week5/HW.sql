CREATE TABLE books (
    id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title varchar(150),
    author varchar(100),
    genre varchar(50),
    published_date date
);

INSERT INTO books (title, author, genre, published_date) 
VALUES
    ('1984', 'George Orwell', 'Dystopian', '1949-06-08'),
    ('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', '1937-09-21'),
    ('The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', '1925-04-10'),
    ('To Kill a Mockingbird', 'Harper Lee', 'Drama', '1960-07-11'),
    ('Pride and Prejudice', 'Jane Austen', 'Romance', '1813-01-28'),
    ('Fahrenheit 451', 'Ray Bradbury', 'Dystopian', '1953-10-19');

ALTER TABLE books ADD COLUMN description text;
ALTER TABLE books ADD COLUMN price numeric(6,2);
ALTER TABLE books ADD COLUMN average_rating real;
ALTER TABLE books ADD COLUMN is_bestseller boolean;
ALTER TABLE books ADD COLUMN reading_time interval;
ALTER TABLE books ADD COLUMN added_to_catalog timestamp;
ALTER TABLE books ADD COLUMN last_price_check timestamp with time zone;

UPDATE books
SET description = 'A dystopian vision of a totalitarian future where the government watches every move its citizens make.',
    price = 9.99,
    average_rating = 4.7,
    is_bestseller = TRUE,
    reading_time = '8 hours 30 minutes',
    added_to_catalog = '2024-01-15 09:00:00',
    last_price_check = '2026-09-01 14:30:00-06'
WHERE title = '1984';

UPDATE books
SET description = 'A reluctant hobbit is swept into an epic quest to reclaim a mountain of treasure from a dragon.',
    price = 12.50,
    average_rating = 4.8,
    is_bestseller = TRUE,
    reading_time = '9 hours 15 minutes',
    added_to_catalog = '2024-02-01 10:30:00',
    last_price_check = '2026-09-05 11:00:00-06'
WHERE title = 'The Hobbit';

UPDATE books
SET description = 'A mysterious millionaire''s obsession with a lost love unravels amid the excess of the Jazz Age.',
    price = 8.75,
    average_rating = 4.2,
    is_bestseller = FALSE,
    reading_time = '4 hours 45 minutes',
    added_to_catalog = '2024-01-20 13:00:00',
    last_price_check = '2026-08-28 09:15:00-06'
WHERE title = 'The Great Gatsby';

UPDATE books
SET description = 'A young girl in the American South watches her father defend a Black man falsely accused of a crime.',
    price = 10.99,
    average_rating = 4.9,
    is_bestseller = TRUE,
    reading_time = '7 hours',
    added_to_catalog = '2024-03-10 08:45:00',
    last_price_check = '2026-09-10 16:00:00-06'
WHERE title = 'To Kill a Mockingbird';

UPDATE books
SET description = 'A witty exploration of manners, marriage, and misunderstanding in early nineteenth century England.',
    price = 7.99,
    average_rating = 4.6,
    is_bestseller = FALSE,
    reading_time = '6 hours 30 minutes',
    added_to_catalog = '2024-02-14 15:20:00',
    last_price_check = '2026-09-12 10:00:00-06'
WHERE title = 'Pride and Prejudice';

UPDATE books
SET description = 'In a future where books are outlawed, a fireman whose job is burning them begins to question everything.',
    price = 9.50,
    average_rating = 4.4,
    is_bestseller = FALSE,
    reading_time = '5 hours 15 minutes',
    added_to_catalog = '2024-03-01 12:00:00',
    last_price_check = '2026-09-15 13:45:00-06'
WHERE title = 'Fahrenheit 451';

ALTER TABLE books
RENAME COLUMN genre TO category;


SELECT * FROM books;

SELECT title, author FROM books;

SELECT title, category FROM books WHERE category = 'Dystopian';

SELECT title, average_rating FROM books ORDER BY average_rating DESC;

SELECT title, is_bestseller FROM books WHERE is_bestseller = TRUE;

SELECT title, reading_time FROM books ORDER BY reading_time DESC;


-- SKIM QUESTIONS
-- Two new concepts I noticed were the JOIN series of commands and COPY
-- One question I have is why you wouldn't want to perform math operations on joined files instead of just doing them individually or just by
-- combining them into one file without using JOIN

-- REFLECTION
-- UPDATE was the most useful to me as I had to redo the table data like 4 times and update made that so much easier rather than just redoing the whole command
-- I chose the ones I did becasuse they were the easiest and ones I understood the most, exzcept the timestamp with timezone I wanted to use at least one that I kinda sucked with
-- ALTER TABLE changes the actual structure of the table while UPDATE just changes the data thats already in the table


