create table email_data
(
contact_id varchar,
email_address varchar,
email_type varchar
);

insert into email_data
(
select 
"CONTACTID",
"E-mail",
'' as email_type
from 
contacts_full
where 
"E-mail" is not null
);

insert into email_data
(
select 
"CONTACTID",
"Personal E-mail",
'' as email_type
from 
contacts_full
where 
"Personal E-mail" is not null
);

insert into email_data
(
select 
"CONTACTID",
"Email Address 2",
"Email Address 2 label" as email_type
from 
contacts_full
where 
"Email Address 2" is not null
);


