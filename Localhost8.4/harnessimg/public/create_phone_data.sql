create table phone_data (
contact_id varchar(255),
"Phone Number" varchar(255),
"Phone Type" varchar(255)
);

insert into phone_data
(
select
contact_id,
"Phone",
'Home' as "Phone Type"
from contacts
where
"Phone" is not null
);

insert into phone_data
(
select
contact_id,
"Phone 2",
'Business' as "Phone Type"
from contacts
where
"Phone 2" is not null
);

