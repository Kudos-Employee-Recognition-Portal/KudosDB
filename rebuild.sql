SET foreign_key_checks = 0;

DROP TABLE IF EXISTS `user`;
DROP TABLE IF EXISTS `manager`;
DROP TABLE IF EXISTS `award`;
DROP TABLE IF EXISTS `region`;

CREATE TABLE IF NOT EXISTS `user` (
    id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(128) UNIQUE NOT NULL
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS `manager` (
    id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES `user` (id) ON DELETE CASCADE,
    firstName VARCHAR(64) NOT NULL,
    lastName VARCHAR(64) NOT NULL,
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS `award` (
    id int NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS `region` (
    id int NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY
) engine = InnoDB;