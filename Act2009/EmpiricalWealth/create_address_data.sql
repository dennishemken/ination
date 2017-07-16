create table address_data
(
contact_id varchar,
address1 varchar,
address2 varchar,
address3 varchar,
address_city varchar,
address_state varchar,
address_zip varchar,
address_country varchar,
address_type varchar
);

insert into address_data
(
select
"CONTACTID",
"Home Address 1",
"Home Address 2",
'',
"Home City",
"Home State",
"Home Zip",
"Home Country",
'Home' as addess_type
from 
contacts_full
where
"Home Address 1" is not Null or
"Home Address 2" <> '' or
"Home City" is not Null or
"Home State" is not Null or
"Home Zip" is not Null or
"Home Country" is not Null

);


insert into address_data
(
select
"CONTACTID",
"Office Address",
"Office Address 2",
'',
"Office City",
"Office State",
"Office Zip",
"Office Country",
'Business' as addess_type
from 
contacts_full
where
"Office Address" is not Null or
"Office Address 2" <> '' or
"Office City" is not Null or
"Office State" is not Null or
"Office Zip" is not Null
);


insert into address_data
(
select
"CONTACTID",
"Vacation Address 1",
"Vacation Address 2",
'',
"Vacation City",
"Vacation State",
"Vacation Zip",
"Vacation Country",
'Vacation' as addess_type
from 
contacts_full
where
"Vacation Address 1" is not Null or
"Vacation Address 2" <> '' or
"Vacation City" is not Null or
"Vacation State" is not Null or
"Vacation Zip" is not Null

);


