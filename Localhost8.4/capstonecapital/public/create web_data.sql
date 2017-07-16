create table web_site_data as
(
SELECT
"public"."CONTACT1".contact_id,
"public"."CONTSUPP"."CONTSUPREF"
FROM
"public"."CONTSUPP"
Inner Join "public"."CONTACT1" ON "public"."CONTACT1"."ACCOUNTNO" = "public"."CONTSUPP"."ACCOUNTNO"
WHERE
"public"."CONTSUPP"."CONTACT" =  'Web Site' AND
"public"."CONTSUPP"."CONTSUPREF" <>  ''
);
