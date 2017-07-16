create table address_data
(
contact_id varchar(255),
"Address Line 1" varchar(255),
"Address Line 2" varchar(255),
"Address City" varchar(255),
"Address State" varchar(255),
"Address Zipcode" varchar(255),
"Address Type" varchar(255)
);

insert into address_data
(
SELECT
"public".contacts.contact_id,
"public".contacts."BusinessStreet",
'' as "Address Line 2",
"public".contacts."BusinessCity",
"public".contacts."BusinessState",
"public".contacts."BusinessPostalCode",
'Business' as "Address Type"
FROM
"public".contacts
where
"public".contacts."BusinessStreet" <> '' or
"public".contacts."BusinessCity" <> '' or
"public".contacts."BusinessState" <> '' or
"public".contacts."BusinessPostalCode" <> ''
);

insert into address_data
(
SELECT
"public".contacts.contact_id,
"public".contacts."HomeStreet",
"public".contacts."HomeStreet2",
"public".contacts."HomeCity",
"public".contacts."HomeState",
"public".contacts."HomePostalCode",
'Home' as "Address Type"
FROM
"public".contacts
where
"public".contacts."HomeStreet" <> '' or
"public".contacts."HomeStreet2" <> '' or
"public".contacts."HomeCity" <> '' or
"public".contacts."HomeState" <> '' or
"public".contacts."HomePostalCode" <> ''
);

insert into address_data
(
SELECT
"public".contacts.contact_id,
"public".contacts."OtherStreet",
'' as "Address Line 2",
"public".contacts."OtherCity",
"public".contacts."OtherState",
"public".contacts."OtherPostalCode",
'Other' as "Address Type"
from 
"public".contacts
where
"public".contacts."OtherStreet" <> '' or
"public".contacts."OtherCity" <> '' or
"public".contacts."OtherState" <> '' or
"public".contacts."OtherPostalCode" <> ''
);

