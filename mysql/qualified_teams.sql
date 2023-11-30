CREATE TABLE `qualified_teams` (
  `key_id` int NOT NULL,
  `tournament_id` varchar(25) DEFAULT NULL,
  `team_id` varchar(15) DEFAULT NULL,
  `count_matches` int DEFAULT NULL,
  `performance` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `key_id` (`key_id`),
  KEY `tournament_id` (`tournament_id`),
  KEY `team_id` (`team_id`),
  CONSTRAINT `qualified_teams_ibfk_1` FOREIGN KEY (`tournament_id`) REFERENCES `tournaments` (`tournament_id`),
  CONSTRAINT `qualified_teams_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci