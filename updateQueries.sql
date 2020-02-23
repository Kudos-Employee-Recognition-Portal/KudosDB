# Test update queries to cover data access needs of KudosAPI.

# Update user info.
UPDATE `user`
SET email    = ?,
    password = ?
WHERE id = ?;

# Update manager name.
UPDATE `manager`
SET firstName = ?,
    lastName  = ?
WHERE user_id = ?;

# Update manager signature.
UPDATE `manager`
SET signatureURL = ?
WHERE user_id = ?;