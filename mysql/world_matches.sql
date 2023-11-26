-- Active: 1700486325600@@127.0.0.1@3306@blgdb
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