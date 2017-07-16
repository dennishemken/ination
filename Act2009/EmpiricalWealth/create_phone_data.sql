create table phone_data
(
contact_id varchar,
phone_number varchar,
phone_ext varchar,
phone_type varchar
);

insert into phone_data
(
select
"CONTACTID",
"Phone",
"Phone Ext-" as phone_ext,
'Business' as phone_type
from 
contacts_full
where
"Phone" is not Null
);

insert into phone_data
(
select
"CONTACTID",
"Alt Phone",
'' as phone_ext,
'Cell' as phone_type
from 
contacts_full
where
"Alt Phone" is not Null
);

insert into phone_data
(
select
"CONTACTID",
"Fax",
'' as phone_ext,
'Fax' as phone_type
from 
contacts_full
where
"Fax" is not Null
);

insert into phone_data
(
select
"CONTACTID",
"Other Phone 1",
'' as phone_ext,
"Other Phone 1 Label" as phone_type
from 
contacts_full
where
"Other Phone 1" is not Null
);

insert into phone_data
(
select
"CONTACTID",
"Other Phone 2",
'' as phone_ext,
"Other Phone 2 Label" as phone_type
from 
contacts_full
where
"Other Phone 2" is not Null
);

