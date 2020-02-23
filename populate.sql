# Test insert queries to populate tables with baseline sample testing data.

# Individual user insertion in application should be performed as transactions in
#   order to ensure atomiticity.
INSERT INTO `user` (type, email, password, createdBy)
VALUES ('admin', 'admin@test.com', 'admin', 1),
       ('admin', 'admin2@test.com', 'admin2', 1),
       ('manager', 'mngr@test.com', 'mngr', 1),
       ('manager', 'mngr2@test.com', 'mngr2', 1);
INSERT INTO `admin` (user_id)
VALUES (1),
       (2);
INSERT INTO `manager` (user_id, firstName, lastName, signatureURL)
VALUES (3, 'Dan', 'Yopp', 'https://upload.wikimedia.org/wikipedia/commons/8/8c/Signature_of_Bruce_Lee.png'),
       (4, 'Bobby', 'Fletcher', 'http://signature-film.com/assets/img/logo_sign.png');

INSERT INTO `region` (name)
VALUES ('North America - US East'),
       ('North America - US West');

INSERT INTO `award` (region_id, type, recipientName, recipientEmail, createdBy)
VALUES (1, 'Manager of the Day', 'Gary Cole', 'mmm@k.com', 3),
       (2, 'Employee of the Month', 'Jose Grunon', 'jose@hotmail.com', 4);

