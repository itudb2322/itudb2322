-- Active: 1700486325600@@127.0.0.1@3306@blgdb
CREATE TABLE tournaments(
    tournament_id CHAR(7) PRIMARY KEY,
    tournament_name CHAR(19) UNIQUE,
    host_country VARCHAR(15),
    winner VARCHAR(15),
    count_teams INT,
    start_date DATE,
    end_date DATE
);