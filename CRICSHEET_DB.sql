SET AUTOCOMMIT = 0;

SET SQL_SAFE_UPDATES = 0;

-- 4) CREATE SQL DATABASE AND TABLES

CREATE DATABASE CRICSHEET_DB;

USE CRICSHEET_DB;

-- Create IPL_MATCHES Table
CREATE TABLE IF NOT EXISTS CRICSHEET_DB.IPL_MATCHES (
    meta_data_version VARCHAR(255),
    meta_created DATETIME,
    meta_revision VARCHAR(255),
    info_city VARCHAR(255),
    info_dates VARCHAR(255),
    info_event_match_number INT,
    info_event_name VARCHAR(255),
    info_gender VARCHAR(50),
    info_match_type VARCHAR(50),
    info_venue VARCHAR(255),
    info_outcome_winner VARCHAR(255),
    info_outcome_by_runs INT,
    info_players_team_1 TEXT,
    info_players_team_2 TEXT,
    info_registry_people TEXT,
    info_season INT,
    info_team_type VARCHAR(50),
    info_teams TEXT,
    info_toss_decision VARCHAR(50),
    info_toss_winner VARCHAR(255),
    innings_team TEXT,
    innings_overs_over VARCHAR(255),
    innings_overs_deliveries_batter TEXT,
    innings_overs_deliveries_bowler TEXT,
    innings_overs_deliveries_non_striker TEXT,
    innings_overs_deliveries_runs_batter INT,
    innings_overs_deliveries_runs_extras INT,
    innings_overs_deliveries_runs_total INT,
    innings_target INT,
    innings_target_overs INT,
    innings_target_runs INT,
    innings_powerplays TEXT,
    innings_powerplays_from_1 INT,
    innings_powerplays_to_1 INT,
    innings_powerplays_type_1 VARCHAR(50)
);

-- Create T20_MATCHES Table
CREATE TABLE IF NOT EXISTS CRICSHEET_DB.T20_MATCHES (
    meta_data_version VARCHAR(255),
    meta_created DATETIME,
    meta_revision VARCHAR(255),
    info_city VARCHAR(255),
    info_dates VARCHAR(255),
    info_event_match_number INT,
    info_event_name VARCHAR(255),
    info_gender VARCHAR(50),
    info_match_type VARCHAR(50),
    info_venue VARCHAR(255),
    info_outcome_winner VARCHAR(255),
    info_outcome_by_runs INT,
    info_players_team_1 TEXT,
    info_players_team_2 TEXT,
    info_registry_people TEXT,
    info_season INT,
    info_team_type VARCHAR(50),
    info_teams TEXT,
    info_toss_decision VARCHAR(50),
    info_toss_winner VARCHAR(255),
    innings_team TEXT,
    innings_overs_over VARCHAR(255),
    innings_overs_deliveries_batter TEXT,
    innings_overs_deliveries_bowler TEXT,
    innings_overs_deliveries_non_striker TEXT,
    innings_overs_deliveries_runs_batter INT,
    innings_overs_deliveries_runs_extras INT,
    innings_overs_deliveries_runs_total INT,
    innings_target INT,
    innings_target_overs INT,
    innings_target_runs INT,
    innings_powerplays TEXT,
    innings_powerplays_from_1 INT,
    innings_powerplays_to_1 INT,
    innings_powerplays_type_1 VARCHAR(50)
);

-- Create ODI_MATCHES Table
CREATE TABLE IF NOT EXISTS CRICSHEET_DB.ODI_MATCHES (
    meta_data_version VARCHAR(255),
    meta_created DATETIME,
    meta_revision VARCHAR(255),
    info_city VARCHAR(255),
    info_dates VARCHAR(255),
    info_event_match_number INT,
    info_event_name VARCHAR(255),
    info_gender VARCHAR(50),
    info_match_type VARCHAR(50),
    info_venue VARCHAR(255),
    info_outcome_winner VARCHAR(255),
    info_outcome_by_runs INT,
    info_players_team_1 TEXT,
    info_players_team_2 TEXT,
    info_registry_people TEXT,
    info_season INT,
    info_team_type VARCHAR(50),
    info_teams TEXT,
    info_toss_decision VARCHAR(50),
    info_toss_winner VARCHAR(255),
    innings_team TEXT,
    innings_overs_over VARCHAR(255),
    innings_overs_deliveries_batter TEXT,
    innings_overs_deliveries_bowler TEXT,
    innings_overs_deliveries_non_striker TEXT,
    innings_overs_deliveries_runs_batter INT,
    innings_overs_deliveries_runs_extras INT,
    innings_overs_deliveries_runs_total INT,
    innings_target INT,
    innings_target_overs INT,
    innings_target_runs INT,
    innings_powerplays TEXT,
    innings_powerplays_from_1 INT,
    innings_powerplays_to_1 INT,
    innings_powerplays_type_1 VARCHAR(50),
    innings_powerplays_from_2 INT,
    innings_powerplays_to_2 INT,
    innings_powerplays_type_2 VARCHAR(50),
    innings_powerplays_from_3 INT,
    innings_powerplays_to_3 INT,
    innings_powerplays_type_3 VARCHAR(50)
);

-- Create TEST_MATCHES Table
CREATE TABLE IF NOT EXISTS CRICSHEET_DB.TEST_MATCHES (
    meta_data_version VARCHAR(255),
    meta_created DATETIME,
    meta_revision VARCHAR(255),
    info_city VARCHAR(255),
    info_dates VARCHAR(255),
    info_event_match_number INT,
    info_event_name VARCHAR(255),
    info_gender VARCHAR(50),
    info_match_type VARCHAR(50),
    info_venue VARCHAR(255),
    info_outcome_winner VARCHAR(255),
    info_outcome_by_runs INT,
    info_players_team_1 TEXT,
    info_players_team_2 TEXT,
    info_registry_people TEXT,
    info_season INT,
    info_team_type VARCHAR(50),
    info_teams TEXT,
    info_toss_decision VARCHAR(50),
    info_toss_winner VARCHAR(255),
    innings_team TEXT,
    innings_overs_over VARCHAR(255),
    innings_overs_deliveries_batter TEXT,
    innings_overs_deliveries_bowler TEXT,
    innings_overs_deliveries_non_striker TEXT,
    innings_overs_deliveries_runs_batter INT,
    innings_overs_deliveries_runs_extras INT,
    innings_overs_deliveries_runs_total INT
);

SHOW TABLES;

DESC CRICSHEET_DB.IPL_MATCHES;

DESC CRICSHEET_DB.ODI_MATCHES;

DESC CRICSHEET_DB.T20_MATCHES;

DESC CRICSHEET_DB.TEST_MATCHES;

SELECT * FROM CRICSHEET_DB.IPL_MATCHES;

SELECT * FROM CRICSHEET_DB.ODI_MATCHES;

SELECT * FROM CRICSHEET_DB.T20_MATCHES;

SELECT * FROM CRICSHEET_DB.TEST_MATCHES;

ALTER TABLE CRICSHEET_DB.IPL_MATCHES MODIFY innings_target INT NULL;
ALTER TABLE CRICSHEET_DB.ODI_MATCHES MODIFY innings_target INT NULL;
ALTER TABLE CRICSHEET_DB.T20_MATCHES MODIFY innings_target INT NULL;

ALTER TABLE CRICSHEET_DB.IPL_MATCHES MODIFY COLUMN info_season VARCHAR(255);
ALTER TABLE CRICSHEET_DB.ODI_MATCHES MODIFY COLUMN info_season VARCHAR(255);
ALTER TABLE CRICSHEET_DB.T20_MATCHES MODIFY COLUMN info_season VARCHAR(255);
ALTER TABLE CRICSHEET_DB.TEST_MATCHES MODIFY COLUMN info_season VARCHAR(255);

-------------------------------------------------------------------------------------------------------------------------------------------------------

-- 5) 20+ SQL QUERIES FOR DATA ANALYSIS 

-- Top 3 teams with the highest win percentage in IPL matches:

SELECT info_outcome_winner, 
       (COUNT(info_outcome_winner) / (SELECT COUNT(*) FROM CRICSHEET_DB.IPL_MATCHES)) * 100 AS win_percentage
FROM CRICSHEET_DB.IPL_MATCHES
GROUP BY info_outcome_winner
ORDER BY win_percentage DESC
LIMIT 3;

-- Total runs scored by each batter in IPL matches:

SELECT innings_overs_deliveries_batter, SUM(innings_overs_deliveries_runs_batter) AS total_runs
FROM CRICSHEET_DB.IPL_MATCHES
GROUP BY innings_overs_deliveries_batter
ORDER BY total_runs DESC
LIMIT 10;

-- Players with the most deliveries faced in T20 matches:

SELECT innings_overs_deliveries_batter, SUM(LENGTH(innings_overs_deliveries_batter)) AS total_deliveries
FROM CRICSHEET_DB.T20_MATCHES
GROUP BY innings_overs_deliveries_batter
ORDER BY total_deliveries DESC
LIMIT 5;

-- Total runs scored by all teams in Test matches:

SELECT innings_team, SUM(innings_overs_deliveries_runs_batter) AS total_runs
FROM CRICSHEET_DB.TEST_MATCHES
GROUP BY innings_team
ORDER BY total_runs DESC;

-- Number of matches won by each team in ODI matches:

SELECT info_outcome_winner, COUNT(*) AS total_wins
FROM CRICSHEET_DB.ODI_MATCHES
GROUP BY info_outcome_winner
ORDER BY total_wins DESC;

-- Total number of wickets in T20 matches:

SELECT COUNT(*) AS total_wickets
FROM CRICSHEET_DB.T20_MATCHES
WHERE innings_overs_deliveries_runs_batter > 0;

-- Top 5 teams by total runs in IPL matches:

SELECT info_teams, SUM(innings_overs_deliveries_runs_batter) AS total_runs
FROM CRICSHEET_DB.IPL_MATCHES
GROUP BY info_teams
ORDER BY total_runs DESC
LIMIT 5;

-- Teams that won by the highest margin (in runs) in IPL:

SELECT info_outcome_winner, MAX(info_outcome_by_runs) AS highest_margin
FROM CRICSHEET_DB.IPL_MATCHES
GROUP BY info_outcome_winner
ORDER BY highest_margin DESC
LIMIT 10;

-- Number of tosses won by each team in T20 matches:

SELECT info_toss_winner, COUNT(*) AS total_toss_wins
FROM CRICSHEET_DB.T20_MATCHES
GROUP BY info_toss_winner
ORDER BY total_toss_wins DESC;

-- Total number of boundaries (fours and sixes) in T20 matches:

SELECT SUM(innings_overs_deliveries_runs_batter) AS total_boundaries
FROM CRICSHEET_DB.T20_MATCHES
WHERE innings_overs_deliveries_runs_batter IN (4, 6);

-- Top 3 players by runs in ODI matches:

SELECT innings_overs_deliveries_batter, SUM(innings_overs_deliveries_runs_batter) AS total_runs
FROM CRICSHEET_DB.ODI_MATCHES
GROUP BY innings_overs_deliveries_batter
ORDER BY total_runs DESC
LIMIT 10;

-- Players with the most runs and highest batting average in TEST matches:

SELECT innings_overs_deliveries_batter, 
SUM(innings_overs_deliveries_runs_batter) / COUNT(*) AS batting_average
FROM CRICSHEET_DB.TEST_MATCHES
GROUP BY innings_overs_deliveries_batter
ORDER BY batting_average DESC
LIMIT 10;

-- Most common toss winner in IPL matches:

SELECT info_toss_winner, COUNT(*) AS toss_wins
FROM CRICSHEET_DB.IPL_MATCHES
GROUP BY info_toss_winner
ORDER BY toss_wins DESC
LIMIT 5;

-- Most successful bowler by total wickets in ODI matches:

SELECT innings_overs_deliveries_bowler, COUNT(*) AS total_wickets
FROM CRICSHEET_DB.ODI_MATCHES
WHERE innings_overs_deliveries_runs_batter IS NOT NULL
GROUP BY innings_overs_deliveries_bowler
ORDER BY total_wickets DESC
LIMIT 5;

-- Total number of matches played in IPL:

SELECT COUNT(*) AS total_matches
FROM CRICSHEET_DB.IPL_MATCHES;

-- Top 5 cities with the most number of IPL matches:

SELECT info_city, COUNT(*) AS match_count
FROM CRICSHEET_DB.IPL_MATCHES
GROUP BY info_city
ORDER BY match_count DESC
LIMIT 5;

-- Most successful bowler in IPL by total wickets:

SELECT innings_overs_deliveries_bowler, COUNT(*) AS total_wickets
FROM CRICSHEET_DB.IPL_MATCHES
WHERE innings_overs_deliveries_runs_batter IS NOT NULL
GROUP BY innings_overs_deliveries_bowler
ORDER BY total_wickets DESC
LIMIT 5;

-- Total extras runs in ODI matches:

SELECT SUM(innings_overs_deliveries_runs_extras) AS total_extras_runs
FROM CRICSHEET_DB.ODI_MATCHES;

-- Total runs scored by each team in all ODI matches:

SELECT info_teams, SUM(innings_overs_deliveries_runs_total) AS total_runs
FROM CRICSHEET_DB.ODI_MATCHES
GROUP BY info_teams;

-- Total number of matches played by each team in IPL:

SELECT info_teams, COUNT(*) AS total_matches
FROM CRICSHEET_DB.IPL_MATCHES
GROUP BY info_teams;

-- Leading wicket-takers in T20 matches:

SELECT innings_overs_deliveries_bowler, SUM(innings_overs_deliveries_runs_batter) AS total_wickets
FROM CRICSHEET_DB.T20_MATCHES
GROUP BY innings_overs_deliveries_bowler
ORDER BY total_wickets DESC;

-------------------------------------------------------------------------------------------------------------------------------------------------


































