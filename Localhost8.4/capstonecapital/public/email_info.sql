SELECT
"public"."CONTACT1".contact_id,
"public"."CONTSUPP"."CONTSUPREF"
FROM
"public"."CONTSUPP"
Inner Join "public"."CONTACT1" ON "public"."CONTACT1"."ACCOUNTNO" = "public"."CONTSUPP"."ACCOUNTNO"
WHERE
"public"."CONTSUPP"."CONTACT" =  'E-mail Address'
