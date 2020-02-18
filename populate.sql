# Queries to populate tables with baseline sample testing data.

# Individual user insertion in application should be performed as transactions in
#   order to ensure atomiticity.
INSERT INTO `user` (email, password, createdBy)
VALUES ('admin@test.com', 'admin', 1),
       ('admin2@test.com', 'admin2', 1),
       ('mngr@test.com', 'mngr', 1),
       ('mngr2@test.com', 'mngr2', 1);
INSERT INTO `admin` (user_id)
VALUES (1),
       (2);
INSERT INTO `manager` (user_id, firstName, lastName)
VALUES (3, 'Dan', 'Yopp'),
       (4, 'Bobby', 'Fletcher');

