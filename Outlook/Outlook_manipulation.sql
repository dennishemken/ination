--Create sequence, add contact_id and update main contacts table with id

create sequence seq_contact_id increment by 1 start with 100;
alter table contacts add column contact_id int8;
update contacts set contact_id = nextval(('seq_contact_id'::text)::regclass);

--Create main_contacts

create table main_contacts as 
(
SELECT
"public"."contacts"."contact_id",
"public"."contacts"."First Name",
"public"."contacts"."Middle Name",
"public"."contacts"."Last Name",
"public"."contacts"."Suffix",
"public"."contacts"."Company",
"public"."contacts"."Birthday",
"public"."contacts"."Categories",
"public"."contacts"."Initials",
"public"."contacts"."Notes",
"public"."contacts"."Spouse",
"public"."contacts"."Web Page"
FROM
"public"."contacts"
);


--Create phone_list

--drop table phone_list;

create table phone_list
(
contact_id int,
phone_number varchar(255),
phone_type varchar(255)
);

insert into phone_list
(
SELECT
"public"."contacts"."contact_id",
"public"."contacts"."Business Phone",
'Business' AS "Type"
FROM
"public"."contacts"
WHERE
"public"."contacts"."Business Phone" <>  ''
);

insert into phone_list
(
SELECT
"public"."contacts"."contact_id",
"public"."contacts"."Business Phone 2",
'Business' AS "Type"
FROM
"public"."contacts"
WHERE
"public"."contacts"."Business Phone 2" <>  ''
);

insert into phone_list
(
SELECT
"public"."contacts"."contact_id",
"public"."contacts"."Home Phone",
'Home' AS "Type"
FROM
"public"."contacts"
WHERE
"public"."contacts"."Home Phone" <>  ''
);

insert into phone_list
(
SELECT
"public"."contacts"."contact_id",
"public"."contacts"."Home Phone 2",
'Home' AS "Type"
FROM
"public"."contacts"
WHERE
"public"."contacts"."Home Phone 2" <>  ''
);

insert into phone_list
(
SELECT
"public"."contacts"."contact_id",
"public"."contacts"."Home Fax",
'Fax' AS "Type"
FROM
"public"."contacts"
WHERE
"public"."contacts"."Home Fax" <>  ''
);

insert into phone_list
(
SELECT
"public"."contacts"."contact_id",
"public"."contacts"."Business Fax",
'Fax' AS "Type"
FROM
"public"."contacts"
WHERE
"public"."contacts"."Business Fax" <>  ''
);


insert into phone_list
(
SELECT
"public"."contacts"."contact_id",
"public"."contacts"."Mobile Phone",
'Cell' AS "Type"
FROM
"public"."contacts"
WHERE
"public"."contacts"."Mobile Phone" <>  ''
);


--Create email_list

create table email_list
(
contact_id int,
email_address varchar(255),
email_display_name varchar(255),
primary_email varchar(20)
);


insert into email_list
(
SELECT
"public"."contacts"."contact_id",
"public"."contacts"."E-mail Address",
"public"."contacts"."E-mail Display Name",
'Yes' AS "Primary"
FROM
"public"."contacts"
WHERE
"public"."contacts"."E-mail Address" <>  ''
);


insert into email_list
(
SELECT
"public"."contacts"."contact_id",
"public"."contacts"."E-mail 2 Address",
"public"."contacts"."E-mail 2 Display Name",
'No' AS "Primary"
FROM
"public"."contacts"
WHERE
"public"."contacts"."E-mail 2 Address" <>  ''
);


insert into email_list
(
SELECT
"public"."contacts"."contact_id",
"public"."contacts"."E-mail 3 Address",
"public"."contacts"."E-mail 3 Display Name",
'No' AS "Primary"
FROM
"public"."contacts"
WHERE
"public"."contacts"."E-mail 3 Address" <>  ''
);


--create address_list

--drop table address_list;

create table address_list  (
contact_id int,
address_street varchar(255),
address_street_2 varchar(255),
address_street_3 varchar(255),
address_city varchar(255),
address_state varchar(255),
address_zip varchar(255),
address_country varchar(255),
address_type varchar(255)
);

insert into address_list
(
SELECT
"public"."contacts"."contact_id",
"public"."contacts"."Business Street",
"public"."contacts"."Business Street 2",
"public"."contacts"."Business Street 3",
"public"."contacts"."Business City",
"public"."contacts"."Business State",
"public"."contacts"."Business Postal Code",
'Business' AS "address_type"
FROM
"public"."contacts"
WHERE
"public"."contacts"."Business Street" <>  ''
);

insert into address_list
(
SELECT
"public"."contacts"."contact_id",
"public"."contacts"."Home Street",
"public"."contacts"."Home Street 2",
"public"."contacts"."Home Street 3",
"public"."contacts"."Home City",
"public"."contacts"."Home State",
"public"."contacts"."Home Postal Code",
'Home' AS "address_type"
FROM
"public"."contacts"
WHERE
"public"."contacts"."Home Street" <>  ''
);

insert into address_list
(
SELECT
"public"."contacts"."contact_id",
"public"."contacts"."Other Street",
"public"."contacts"."Other Street 2",
"public"."contacts"."Other Street 3",
"public"."contacts"."Other City",
"public"."contacts"."Other State",
"public"."contacts"."Other Postal Code",
'Other' AS "address_type"
FROM
"public"."contacts"
WHERE
"public"."contacts"."Other Street" <>  ''
);
