CREATE TABLE `players` (
  `key_id` int NOT NULL,
  `player_id` varchar(40) NOT NULL,
  `family_name` varchar(25) DEFAULT NULL,
  `given_name` varchar(25) DEFAULT NULL,
  `goal_keeper` tinyint(1) DEFAULT NULL,
  `defender` tinyint(1) DEFAULT NULL,
  `midfielder` tinyint(1) DEFAULT NULL,
  `forward` tinyint(1) DEFAULT NULL,
  `count_tournaments` int DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `key_id` (`key_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci