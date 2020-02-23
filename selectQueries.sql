# Test queries to cover data access needs of KudosAPI.

# Select all fields all users.
SELECT *
FROM user;

# Select all fields for user by email.
SELECT *
FROM user
WHERE email = ?;

# Select fields for all admin users.
SELECT id, type, email, createdon, createdby
FROM user
         JOIN admin a ON user.id = a.user_id;

# Select fields for admin user by id.
SELECT id, type, email, createdon, createdby
FROM user
         JOIN admin a ON user.id = a.user_id
WHERE a.user_id = ?;

# Select fields for all manager users.
SELECT id, type, email, createdOn, createdBy, firstName, lastName, signatureURL
FROM user
         JOIN manager m ON user.id = m.user_id;

# Select fields for manager user by id.
SELECT id, type, email, createdOn, createdBy, firstName, lastName, signatureURL
FROM user
         JOIN manager m ON user.id = m.user_id
WHERE m.user_id = ?;

# Select all fields all awards.
SELECT *
FROM award;

# Select all fields all awards joined tables.
SELECT *
FROM award
         JOIN region r ON award.region_id = r.id
         JOIN manager m ON award.createdBy = m.user_id;

# Select all fields joined table by award id.
SELECT *
FROM award
         JOIN region r ON award.region_id = r.id
         JOIN manager m ON award.createdBy = m.user_id
WHERE award.id = ?;

# Select all fields joined table by creating manager's id.
SELECT *
FROM award
         JOIN region r ON award.region_id = r.id
         JOIN manager m ON award.createdBy = m.user_id
WHERE m.user_id = ?;

# Select all fields all awards based on parameters:
#   createdOn: should have a default begin and end date,
#   and optional parameters:
#   like award type string,
#   like award recipient name string,
#   like award recipient email string,
#   region id,
#   manager id.
SELECT *
FROM award
         JOIN region r ON award.region_id = r.id
         JOIN manager m ON award.createdBy = m.user_id
WHERE (award.createdOn BETWEEN ? AND ?)
  AND (? IS NULL OR award.type LIKE ?)
  AND (? IS NULL OR award.recipientName LIKE ?)
  AND (? IS NULL OR award.recipientEmail LIKE ?)
  AND (? IS NULL OR r.id = ?)
  AND (? IS NULL OR m.user_id = ?);
