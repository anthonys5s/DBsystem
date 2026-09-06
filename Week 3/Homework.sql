--=====================================
--Week 3 Homework
--Anthony Silva
--=====================================

-- CREATE TABLE nfl_teams (
--      id SERIAL PRIMARY KEY,
--      team_name VARCHAR(50),
--      city VARCHAR(50),
--      conference VARCHAR(3),
--      division VARCHAR(10),
--      wins INTEGER
--  );

--(2023 regular season btw)
--  INSERT INTO nfl_teams (team_name, city, conference, division, wins)
--  VALUES
--      ('Bills', 'Buffalo', 'AFC', 'East', 11),
--      ('Ravens', 'Baltimore', 'AFC', 'North', 13),
--      ('Texans', 'Houston', 'AFC', 'South', 10),
--      ('Chiefs', 'Kansas City', 'AFC', 'West', 11),                 
--      ('Cowboys', 'Dallas', 'NFC', 'East', 12),
--      ('Lions', 'Detroit', 'NFC', 'North', 12),
--      ('Buccaneers', 'Tampa Bay', 'NFC', 'South', 9),
--      ('49ers', 'San Francisco', 'NFC', 'West', 12);

-- SELECT * FROM nfl_teams

-- SELECT team_name, wins FROM nfl_teams

-- SELECT DISTINCT conference FROM nfl_teams

-- SELECT team_name, wins FROM nfl_teams
-- WHERE wins >= 12

-- SELECT team_name, city, conference FROM nfl_teams
-- WHERE conference = 'NFC'

-- SELECT team_name, wins FROM nfl_teams
-- ORDER BY wins DESC

-- SELECT team_name, wins FROM nfl_teams
-- WHERE conference = 'AFC' ORDER BY wins DESC

-- SELECT team_name, wins, conference FROM nfl_teams
-- WHERE wins BETWEEN 10 AND 12 AND conference = 'AFC'

--===============================================
--Chapter 4 Quick Skim
--===============================================

--New Concept:
--Right at the start it mentions Wildcards which allows you to select names based on patterns, making rapid file moving possible

--Question:
--The whole linking system kinda doesnt make to much sense still, I wonder whats the grand point of them in the future
