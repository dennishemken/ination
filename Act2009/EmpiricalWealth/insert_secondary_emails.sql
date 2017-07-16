insert into email_data
(
select
"Secondaryid",
"E-mail",
'' as email_type
from "SECONDARY_CONTACTS"
where 
"E-mail" is not null
);
