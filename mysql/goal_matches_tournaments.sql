-- Active: 1700486325600@@127.0.0.1@3306@blgdb
CREATE TABLE goal(
    goal_id CHAR(6) PRIMARY KEY,
    tournament_id CHAR(7),
    match_id CHAR(9),
    match_name VARCHAR(40),
    stage_name VARCHAR(20),
    team_name VARCHAR(20),
    family_name VARCHAR(20),
    given_name VARCHAR(20),
    own_goal BOOLEAN,
    penalty BOOLEAN
);

CREATE TABLE tournaments(
    tournament_id CHAR(7) PRIMARY KEY,
    tournament_name CHAR(19) UNIQUE,
    host_country VARCHAR(15),
    winner VARCHAR(15),
    count_teams INT,
    start_date DATE,
    end_date DATE
);

ALTER TABLE goal
ADD FOREIGN KEY (tournament_id) REFERENCES tournaments(tournament_id)
ON DELETE CASCADE;

CREATE TABLE matchs(
    tournament_id CHAR(7),
    tournament_name CHAR(19),
    match_id CHAR(9) PRIMARY KEY,
    stadium_name VARCHAR(40),
    city_name VARCHAR(20),
    country_name VARCHAR(20),
    home_team_name VARCHAR(20),
    away_team_name VARCHAR(20),
    score VARCHAR(5),
    FOREIGN KEY (tournament_id) REFERENCES tournaments(tournament_id)
    ON DELETE CASCADE
);

ALTER TABLE goal
ADD FOREIGN KEY (match_id) REFERENCES matchs(match_id)
ON DELETE CASCADE;

DROP table goal;
DROP table matchs;
DROP table tournaments;

CREATE TABLE goal(
    key_id int,
    goal_id CHAR(6) PRIMARY KEY,
    tournament_id CHAR(7),
    tournament_name varchar(50),
    match_id CHAR(9),
    match_name VARCHAR(40),
    match_date VARCHAR(12),
    stage_name VARCHAR(20),
    group_name VARCHAR(10),
    team_id VARCHAR(4),
    team_name VARCHAR(20),
    team_code VARCHAR(5),
    home_team BOOLEAN,
    away_team BOOLEAN,
    player_id VARCHAR(10),
    family_name VARCHAR(20),
    given_name VARCHAR(20),
    shirt_number VARCHAR(2),
    player_team_id VARCHAR(4),
    player_team_name VARCHAR(20),
    player_team_code VARCHAR(5),
    minute_label VARCHAR(5),
    minute_regulation VARCHAR(5),
    minute_stoppage BOOLEAN,
    match_period VARCHAR(30),
    own_goal BOOLEAN,
    penalty BOOLEAN
);

CREATE TABLE tournaments(
    key_id int,
    tournament_id CHAR(7) PRIMARY KEY,
    tournament_name CHAR(19) UNIQUE,
    yearr char(4),
    start_date DATE,
    end_date DATE,
    host_country VARCHAR(30),
    winner VARCHAR(15),
    host_won BOOLEAN,
    count_teams INT,
    group_stage BOOLEAN,
    second_group_stage BOOLEAN,
    final_round BOOLEAN,
    round_of_16 BOOLEAN,
    quarter_finals BOOLEAN,
    semi_finals BOOLEAN,
    third_place_match BOOLEAN,
    finall BOOLEAN
);

ALTER TABLE goal
ADD FOREIGN KEY (tournament_id) REFERENCES tournaments(tournament_id)
ON DELETE CASCADE;

CREATE TABLE matchs(
    key_id int,
    tournament_id CHAR(7),
    tournament_name CHAR(19),
    match_id CHAR(9) PRIMARY KEY,
    match_name VARCHAR(40),
    stage_name VARCHAR(30),
    group_name VARCHAR(20),
    group_stage BOOLEAN,
    knockout_stage BOOLEAN,
    replayed BOOLEAN,
    replay BOOLEAN,
    match_date DATE,
    match_time CHAR(5),
    stadium_id CHAR(5),
    stadium_name VARCHAR(40),
    city_name VARCHAR(20),
    country_name VARCHAR(20),
    home_team_id VARCHAR(4),
    home_team_name VARCHAR(20),
    home_team_code VARCHAR(5),
    away_team_id VARCHAR(4),
    away_team_name VARCHAR(20),
    away_team_code VARCHAR(5),
    score VARCHAR(5),
    home_team_score int,
    away_team_score int,
    home_team_score_margin int,
    away_team_score_margin int,
    extra_time BOOLEAN,
    penalty_shootout BOOLEAN,
    score_penalties VARCHAR(5),
    home_team_score_penalties int,
    away_team_score_penalties int,
    resultt VARCHAR(20),
    home_team_win BOOLEAN,
    away_team_win BOOLEAN,
    draw BOOLEAN,
    FOREIGN KEY (tournament_id) REFERENCES tournaments(tournament_id)
    ON DELETE CASCADE
);

ALTER TABLE goal
ADD FOREIGN KEY (match_id) REFERENCES matchs(match_id)
ON DELETE CASCADE;

DELETE from matchs;

ALTER TABLE matchs MODIFY
home_team_name VARCHAR(30);

ALTER TABLE matchs MODIFY
away_team_name VARCHAR(30);

ALTER TABLE goal MODIFY
player_team_name VARCHAR(30);

ALTER TABLE goal MODIFY
team_name VARCHAR(30);

DELETE from goal;
ALTER TABLE goal MODIFY
group_name VARCHAR(20);

ALTER TABLE goal MODIFY
minute_label VARCHAR(7);

ALTER TABLE goal MODIFY
match_period VARCHAR(40);

