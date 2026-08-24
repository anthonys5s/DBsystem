--Part A
create table Animal_Types(type_id bigserial primary key, species varchar (25), habitat varchar (50), diet varchar (25));

insert into Animal_Types (species, habitat, diet)
values ('lion', 'savanna', 'meat'),
('giraffe', 'savanna', 'leaves'),
('penguin', 'arctic', 'fish');

--Part B
create table Animals(Animals_id bigserial primary key, animal_name varchar (25), species integer, age integer);

insert into Animals (animal_name, species_id, age)
values ('Alex The Lion', 2, 20),
('Melman The Giraffe', 3, 21),
('Skipper The Penguin', 4, 35);

insert into Animals (animal_type species age)
--ERROR:  syntax error at or near "species"
