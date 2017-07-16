drop table address_list;

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
"public"."contacts"."business_street",
"public"."contacts"."business_street_2",
"public"."contacts"."business_street_3",
"public"."contacts"."business_city",
"public"."contacts"."business_state",
"public"."contacts"."business_postal_code",
"public"."contacts"."business_country",
'Business' AS "address_type"
FROM
"public"."contacts"
WHERE
"public"."contacts"."business_street" <>  ''
);

insert into address_list
(
SELECT
"public"."contacts"."contact_id",
"public"."contacts"."home_street",
"public"."contacts"."home_street_2",
"public"."contacts"."home_street_3",
"public"."contacts"."home_city",
"public"."contacts"."home_state",
"public"."contacts"."home_postal_code",
"public"."contacts"."home_country",
'Home' AS "address_type"
FROM
"public"."contacts"
WHERE
"public"."contacts"."home_street" <>  ''
);

insert into address_list
(
SELECT
"public"."contacts"."contact_id",
"public"."contacts"."other_street",
"public"."contacts"."other_street_2",
"public"."contacts"."other_street_3",
"public"."contacts"."other_city",
"public"."contacts"."other_state",
"public"."contacts"."other_postal_code",
"public"."contacts"."other_country",
'Other' AS "address_type"
FROM
"public"."contacts"
WHERE
"public"."contacts"."other_street" <>  ''
);
