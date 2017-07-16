create table phone_data
(
contact_id varchar(255),
phone_number varchar(255),
phone_ext varchar(255),
phone_type varchar(255)
);

insert into phone_data
(
SELECT
"public"."CONTACT1".contact_id,
"public"."CONTACT1"."PHONE1",
"public"."CONTACT1"."EXT1",
'Home' as phone_type
FROM
"public"."CONTACT1"
WHERE
"public"."CONTACT1"."PHONE1"<> '' or
"public"."CONTACT1"."EXT1" <> ''
);

insert into phone_data
(
SELECT
"public"."CONTACT1".contact_id,
"public"."CONTACT1"."PHONE2",
"public"."CONTACT1"."EXT2",
'Cellular' as phone_type
FROM
"public"."CONTACT1"
WHERE
"public"."CONTACT1"."PHONE2"<> '' or
"public"."CONTACT1"."EXT2" <> ''
);

insert into phone_data
(
SELECT
"public"."CONTACT1".contact_id,
"public"."CONTACT1"."PHONE3",
"public"."CONTACT1"."EXT3",
'Business' as phone_type
FROM
"public"."CONTACT1"
WHERE
"public"."CONTACT1"."PHONE3"<> '' or
"public"."CONTACT1"."EXT4" <> ''
);
insert into phone_data
(
SELECT
"public"."CONTACT1".contact_id,
"public"."CONTACT1"."FAX",
"public"."CONTACT1"."EXT3",
'Fax' as phone_type
FROM
"public"."CONTACT1"
WHERE
"public"."CONTACT1"."FAX"<> '' or
"public"."CONTACT1"."EXT3" <> ''
);

