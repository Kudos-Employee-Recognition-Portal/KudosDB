SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `user`;
DROP TABLE IF EXISTS `manager`;
DROP TABLE IF EXISTS `award`;
DROP TABLE IF EXISTS `region`;

CREATE TABLE IF NOT EXISTS `user` (
    id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(128) UNIQUE NOT NULL,
    password CHAR(60) NOT NULL,
    createdOn DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    createdBy INT NOT NULL,
    FOREIGN KEY (createdBy) REFERENCES `user` (id) ON DELETE NO ACTION
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS `manager` (
    id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES `user` (id) ON DELETE CASCADE,
    firstName VARCHAR(64) NOT NULL,
    lastName VARCHAR(64) NOT NULL,
    # URL could be stored as TEXT with associated CLOB efficiency loss.
    signatureURL VARCHAR(512) UNIQUE DEFAULT NULL
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS `admin` (
    id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES `user` (id) ON DELETE CASCADE
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS `award` (
    id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    region_id INT NOT NULL,
    FOREIGN KEY (region_id) REFERENCES `region` (id) ON DELETE NO ACTION,
    # type could be extended later to reference a type table if a restricted selection of awards is desired,
    #   which would also allow better data analysis as awards could be analyzed on type,
    #   with the downside that users would likely be restricted in their ability to free text fun award names.
    type VARCHAR(64) NOT NULL,
    recipientName VARCHAR(64) NOT NULL,
    recipientEmail VARCHAR(128) NOT NULL,
    createdOn DATETIME DEFAULT CURRENT_TIMESTAMP(),
    createdBy INT NOT NULL,
    FOREIGN KEY (createdBy) REFERENCES `manager` (id)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS `region` (
    id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(64) UNIQUE NOT NULL
) engine = InnoDB;

SET FOREIGN_KEY_CHECKS = 1;