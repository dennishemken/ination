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
"public"."contacts"."e-mail_address",
"public"."contacts"."e-mail_display_name",
'Yes' AS "Primary"
FROM
"public"."contacts"
WHERE
"public"."contacts"."e-mail_address" <>  ''
);


insert into email_list
(
SELECT
"public"."contacts"."contact_id",
"public"."contacts"."e-mail_2_address",
"public"."contacts"."e-mail_2_display_name",
'No' AS "Primary"
FROM
"public"."contacts"
WHERE
"public"."contacts"."e-mail_2_address" <>  ''
);


insert into email_list
(
SELECT
"public"."contacts"."contact_id",
"public"."contacts"."e-mail_3_address",
"public"."contacts"."e-mail_3_display_name",
'No' AS "Primary"
FROM
"public"."contacts"
WHERE
"public"."contacts"."e-mail_3_address" <>  ''
);
