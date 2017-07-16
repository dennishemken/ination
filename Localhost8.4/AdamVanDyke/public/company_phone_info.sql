SELECT
"public"."TBL_PHONE"."COMPANYID",
"public"."TBL_PHONE"."NUMBERDISPLAY"
FROM
"public"."TBL_PHONE"
WHERE 
"COMPANYID" is not null
AND
(
"public"."TBL_PHONE"."NUMBERDISPLAY" is not null
)
