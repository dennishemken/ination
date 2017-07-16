insert into address_data
(
SELECT
"public"."SECONDARY_CONTACTS"."Secondaryid",
"public"."SECONDARY_CONTACTS"."Address 1",
"public"."SECONDARY_CONTACTS"."Address 2",
"public"."SECONDARY_CONTACTS"."Address 3",
"public"."SECONDARY_CONTACTS"."City",
"public"."SECONDARY_CONTACTS"."State",
"public"."SECONDARY_CONTACTS"."ZIP Code",
'' as address_type
FROM
"public"."SECONDARY_CONTACTS"
WHERE
"public"."SECONDARY_CONTACTS"."Address 1" is not null or
"public"."SECONDARY_CONTACTS"."Address 2" <> '' or
"public"."SECONDARY_CONTACTS"."Address 3" is not null or
"public"."SECONDARY_CONTACTS"."City" is not null or
"public"."SECONDARY_CONTACTS"."State" is not null or
"public"."SECONDARY_CONTACTS"."ZIP Code" is not null
)
