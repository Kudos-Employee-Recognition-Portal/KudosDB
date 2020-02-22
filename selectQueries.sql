# Select all fields all users.
select *
from user;

# Select all fields for user by email.
select *
from user
where email = ?;

# Select fields for all admin users.
select id, type, email, createdon, createdby
from user
         join admin a on user.id = a.user_id;

# Select fields for admin user by id.
select id, type, email, createdon, createdby
from user
         join admin a on user.id = a.user_id
where a.user_id = ?;

# Select fields for all manager users.
select id, type, email, createdOn, createdBy, firstName, lastName, signatureURL
from user
         join manager m on user.id = m.user_id;

# Select fields for manager user by id.
select id, type, email, createdOn, createdBy, firstName, lastName, signatureURL
from user
         join manager m on user.id = m.user_id
where m.user_id = ?;

# Select all fields all awards.
select *
from award;

# Select all fields all awards joined tables.
select *
from award
         join region r on award.region_id = r.id
         join manager m on award.createdBy = m.user_id;

# Select all fields joined table by award id.
select *
from award
         join region r on award.region_id = r.id
         join manager m on award.createdBy = m.user_id
where award.id = ?;

# Select all fields joined table by creating manager's id.
select *
from award
         join region r on award.region_id = r.id
         join manager m on award.createdBy = m.user_id
where m.user_id = ?;

# Select all fields all awards based on parameters:
#   createdOn: should have a default begin and end date,
#   and optional parameters:
#   like award type string,
#   like award recipient name string,
#   like award recipient email string,
#   region id,
#   manager id.
select *
from award
         join region r on award.region_id = r.id
         join manager m on award.createdBy = m.user_id
where (award.createdOn between ? and ?)
  and (? is null or award.type like ?)
  and (? is null or award.recipientName like ?)
  and (? is null or award.recipientEmail like ?)
  and (? is null or r.id = ?)
  and (? is null or m.user_id = ?);
