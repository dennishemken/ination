SELECT
"public"."PHONE"."CONTACTID",
"public"."PHONE"."AREACODE"||'-'||"public"."PHONE"."DIALNUMBER" as Phone_number,
"public"."PHONE"."EXTENSION",
"public"."PHONE"."PHONETYPE",
"public"."PHONE"."REMARK",
"public"."PHONE"."PURENUMBER"
FROM
"public"."PHONE"
where "CONTACTID" in 
(
SELECT
"public"."CONTACT"."CONTACTID"
FROM
"public"."CONTACT"
WHERE
"public"."CONTACT"."PRIVATE" <  '1'
);