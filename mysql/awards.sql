CREATE TABLE `awards` (
  `key_id` int NOT NULL,
  `award_description` varchar(100) DEFAULT NULL,
  `year_introduced` year DEFAULT NULL,
  `award_id` varchar(10) NOT NULL,
  `award_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`award_id`),
  UNIQUE KEY `key_id` (`key_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci