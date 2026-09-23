

create table Week6HW(IndexID integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
NameID text,
Description varchar(100),
Brand varchar(100),
Category text,
Price numeric,
Currency varchar(20),
Stock numeric,
EAN text,
Color text,
SizeID text,
Availability varchar(100),
InternalID numeric)



SELECT * FROM public.week6hw
ORDER BY indexid ASC 

select sum(price*stock) as total_inventory_value
from week6hw

select category, AVG(price) AS avg_price
from week6hw
group by category

select *
from week6hw
where price > 500

select count(*) as product_count
from week6hw
where category = 'Automotive'

select *
from week6hw
order by price asc




--QUESTIONS
--One new concept I noticed was the CONSTRAINT type thats used to add the same primary key to another column
--One question I have is why you would use surrogate keys when the reading even says "it doesnt have meaning in itself"
