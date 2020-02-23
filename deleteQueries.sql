# Test queries to cover data access needs of KudosAPI.

# Delete a user. Single query required due to cascading foreign key dependencies.
DELETE FROM `user` WHERE id = ?;

# Delete an award.
DELETE FROM `award` WHERE id = ?;