create table address_data as
(
SELECT
"public"."ActExport".contact_id,
"public"."ActExport"."Address 1",
"public"."ActExport"."Address 2",
"public"."ActExport"."Address 3",
"public"."ActExport"."City",
"public"."ActExport"."State",
"public"."ActExport"."Zip",
'Business' as address_type
FROM
"public"."ActExport"
where
"public"."ActExport"."Address 1" is not null or
"public"."ActExport"."Address 2" is not null or
"public"."ActExport"."Address 3" is not null or
"public"."ActExport"."City" is not null or
"public"."ActExport"."State" is not null or
"public"."ActExport"."Zip" is not null
);

insert into address_data
(
SELECT
"public"."ActExport".contact_id,
"public"."ActExport"."Home Address 1",
"public"."ActExport"."Home Address 2",
"public"."ActExport"."Home Address 3",
"public"."ActExport"."Home City",
"public"."ActExport"."Home State",
"public"."ActExport"."Home Zip",
'Home' as address_type
FROM
"public"."ActExport"
where
"public"."ActExport"."Home Address 1" is not null or
"public"."ActExport"."Home Address 2" is not null or
"public"."ActExport"."Home Address 3" is not null or
"public"."ActExport"."Home City" is not null or
"public"."ActExport"."Home State" is not null or
"public"."ActExport"."Home Zip" is not null
);

