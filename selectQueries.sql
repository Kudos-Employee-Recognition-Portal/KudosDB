select *
from user;

select *
from user
         join admin a on user.id = a.user_id;

select *
from user
         join manager m on user.id = m.user_id;

select * from user;

select *
from award
         join region r on award.region_id = r.id;

select *
from award
         join region r on award.region_id = r.id
         join manager m on award.createdBy = m.user_id;