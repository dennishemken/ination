create table address_data
(
contact_id varchar(255),
"Address Line 1" varchar(255),
"Address Line 2" varchar(255),
"Address City" varchar(255),
"Address State" varchar(255),
"Address Zip" varchar(255),
"Address Type" varchar(255)
);

insert into address_data
(
SELECT
"public".contacts.contact_id,
"public".contacts."Mailing Address",
"public".contacts."Suite",
"public".contacts."City",
"public".contacts."State",
"public".contacts."Zip Code",
'Mailing' as "Address Type"
FROM
"public".contacts
where
"public".contacts."Mailing Address" is not null or
"public".contacts."Suite" is not null or
"public".contacts."City" is not null or
"public".contacts."State" is not null or
"public".contacts."Zip Code" is not null
);

insert into address_data
(
SELECT
"public".contacts.contact_id,
'',
'',
"public".contacts."City 2",
"public".contacts."State  2",
"public".contacts."Zip Code 2",
'' as "Address Type"
FROM
"public".contacts
where
"public".contacts."City 2" is not null or
"public".contacts."State  2" is not null or
"public".contacts."Zip Code 2" is not null
);

insert into address_data
(
SELECT
"public".contacts.contact_id,
'',
'',
"public".contacts."City 3 ",
"public".contacts."State 3",
"public".contacts."Zip Code 3",
'' as "Address Type"
FROM
"public".contacts
where
"public".contacts."City 3 " is not null or
"public".contacts."State 3" is not null or
"public".contacts."Zip Code 3" is not null
);

insert into address_data
(
SELECT
"public".contacts.contact_id,
'',
'',
"public".contacts."City 4",
"public".contacts."State 4",
"public".contacts."Zip Code 4",
'' as "Address Type"
FROM
"public".contacts
where
"public".contacts."City 4" is not null or
"public".contacts."State 4" is not null or
"public".contacts."Zip Code 4" is not null
);

