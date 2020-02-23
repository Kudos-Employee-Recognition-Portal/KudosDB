# DB REBUILD SCRIPT
# WARNING: drops all tables for fresh build of db schema.

SET FOREIGN_KEY_CHECKS = 0;
SET AUTOCOMMIT = 0;

DROP TABLE IF EXISTS `user`;
DROP TABLE IF EXISTS `admin`;
DROP TABLE IF EXISTS `manager`;
DROP TABLE IF EXISTS `award`;
DROP TABLE IF EXISTS `region`;

CREATE TABLE IF NOT EXISTS `user` (
    id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    # type property duplicates fk relation to type tables, but is nice
    #   for quickly assessing user type for logins.
    type VARCHAR(8) NOT NULL,
    CONSTRAINT chk_type CHECK ( type IN ('admin', 'manager')),
    email VARCHAR(128) UNIQUE NOT NULL,
    # char(60) best fit for password hash generated by Bcrypt.
    password CHAR(60) NOT NULL,
    createdOn DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    createdBy INT NOT NULL,
    FOREIGN KEY (createdBy) REFERENCES `user` (id) ON DELETE NO ACTION
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS `manager` (
    user_id INT NOT NULL UNIQUE PRIMARY KEY,
    FOREIGN KEY (user_id) REFERENCES `user` (id) ON DELETE CASCADE,
    firstName VARCHAR(64) NOT NULL,
    lastName VARCHAR(64) NOT NULL,
    # URL could be stored as TEXT with associated CLOB efficiency loss.
    signatureURL VARCHAR(512) DEFAULT NULL
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS `admin` (
    user_id INT NOT NULL UNIQUE PRIMARY KEY,
    FOREIGN KEY (user_id) REFERENCES `user` (id) ON DELETE CASCADE
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS `award` (
    id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    region_id INT NOT NULL,
    FOREIGN KEY (region_id) REFERENCES `region` (id) ON DELETE CASCADE,
    # type could be extended later to reference a type table if a restricted selection of awards is desired,
    #   which would also allow better data analysis as awards could be analyzed on type,
    #   with the downside that users would likely be restricted in their ability to free text fun award names.
    type VARCHAR(64) NOT NULL,
    recipientName VARCHAR(64) NOT NULL,
    recipientEmail VARCHAR(128) NOT NULL,
    createdOn DATETIME DEFAULT CURRENT_TIMESTAMP(),
    createdBy INT NOT NULL,
    # It might be nice to maintain awards for deleted managers but would require a rework of select queries.
    FOREIGN KEY (createdBy) REFERENCES `manager` (user_id) ON DELETE CASCADE
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS `region` (
    id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(64) UNIQUE NOT NULL
) engine = InnoDB;

SET FOREIGN_KEY_CHECKS = 1;