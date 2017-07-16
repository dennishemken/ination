drop table phone_list;

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
"public"."contacts"."business_phone",
'Business' AS "Type"
FROM
"public"."contacts"
WHERE
"public"."contacts"."business_phone" <>  ''
);

insert into phone_list
(
SELECT
"public"."contacts"."contact_id",
"public"."contacts"."business_phone_2",
'Business' AS "Type"
FROM
"public"."contacts"
WHERE
"public"."contacts"."business_phone" <>  ''
);

insert into phone_list
(
SELECT
"public"."contacts"."contact_id",
"public"."contacts"."home_phone",
'Home' AS "Type"
FROM
"public"."contacts"
WHERE
"public"."contacts"."business_phone" <>  ''
);

insert into phone_list
(
SELECT
"public"."contacts"."contact_id",
"public"."contacts"."home_phone_2",
'Home' AS "Type"
FROM
"public"."contacts"
WHERE
"public"."contacts"."business_phone" <>  ''
);

insert into phone_list
(
SELECT
"public"."contacts"."contact_id",
"public"."contacts"."home_fax",
'Fax' AS "Type"
FROM
"public"."contacts"
WHERE
"public"."contacts"."home_fax" <>  ''
);

insert into phone_list
(
SELECT
"public"."contacts"."contact_id",
"public"."contacts"."business_fax",
'Fax' AS "Type"
FROM
"public"."contacts"
WHERE
"public"."contacts"."business_fax" <>  ''
);
