create table product
(Indexid integer, 
NameID varchar(100), 
Description varchar(100), 
Brand text, 
Category text, 
Price numeric, 
Currency text, 
Stock integer, 
EAN numeric, 
Color text, 
SizeID varchar(100),
Availability text, 
InternalID numeric);


SELECT * FROM public.product

select price*stock
from product

select AVG(price) as Average_price
from product

select MIN(price), MAX(price) from product

select COUNT(*) from product
