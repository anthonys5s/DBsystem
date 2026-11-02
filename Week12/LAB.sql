create table nations(
nation_id serial primary key,
nation_name text,
nation_skill text);

create table tech_tree(
id serial primary key,
nation_id integer,
classid text,
tier integer,
foreign key(nation_id) REFERENCES nations(nation_id)
);

insert into nations(nation_name, nation_skill)
values
('USA', 'Medium Skill'),
('GER', 'Low Skill'),
('UK', 'High Skill');

insert into tech_tree(nation_id, classid, tier)
values
(1, 'Light', 5),
(1, 'Medium', 6),
(2, 'Heavy', 7),
(2, 'Destroyer', 8),
(3, 'SPG', 9);

SELECT nations.nation_name,
nations.nation_skill,
tech_tree.classid,
tech_tree.tier
FROM tech_tree
JOIN nations
ON tech_tree.nation_id=nations.nation_id


--I created a 1:1 relationship
--It shouldnt work as it would still have data from another table
--A foren key is important as it makes linking data together much easier and limits the mistakes you can make without one, like deleting something by accident, AND it keeps whatever assigned to it unique
