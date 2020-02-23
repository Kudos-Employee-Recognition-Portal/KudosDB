# Test insert queries to cover data access needs of KudosAPI.

# Inserts should be committed via transactions from the API to ensure ROLLBACK on failure.
# Insert an admin user.
START TRANSACTION;
INSERT INTO `user` (type, email, password, createdBy)
    VALUE ('admin', ?, ?, ?);
INSERT INTO `admin` (user_id)
    VALUE (last_insert_id());
COMMIT;

# Insert a manager user.
START TRANSACTION;
INSERT INTO `user` (type, email, password, createdBy)
    VALUE ('manager', ?, ?, ?);
INSERT INTO `manager` (user_id, firstName, lastName, signatureURL)
    VALUE (last_insert_id(), ?, ?, ?);
COMMIT;

# Insert an award.
INSERT INTO `award` (region_id, type, recipientName, recipientEmail, createdBy)
    VALUE (?, ?, ?, ?, ?);

# Insert a region.
INSERT INTO `region` (name)
    VALUE (?);