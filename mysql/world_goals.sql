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
    penalty BOOLEAN,
    FOREIGN KEY (tournament_id) REFERENCES tournaments(tournament_id)
    ON DELETE CASCADE,
    FOREIGN KEY (match_id) REFERENCES matchs(match_id)
    ON DELETE CASCADE
);