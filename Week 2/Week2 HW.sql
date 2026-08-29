create database PracticeDB

create table Video_Games(title varchar (25), genre varchar (25), year_rel integer, publisher varchar (25))

insert into Video_Games (title, genre, year_rel, publisher)
values ('MK11', 'Fighting Game', 2019, 'NetherRealm Studios'),
('Fallout 4', 'Action Role-Play', 2015, 'Bethesda'),
('1941: Counter Attack', 'Shoot em up', 1990, 'Capcom');

ERROR:  syntax error at or near "."
LINE 6: insert into Video_Games (title, genre,. year_rel, publisher)
                                              ^ 

SQL state: 42601
Character: 273


--*One new concept would be the CAST data type. Which is used to transform a value from its stored data type to another
--*A question would be how the interval type is actually useful short of just using the date type
