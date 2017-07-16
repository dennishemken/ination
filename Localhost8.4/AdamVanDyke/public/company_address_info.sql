SELECT
"public"."TBL_ADDRESS"."COMPANYID",
"public"."TBL_ADDRESS"."LINE1",
"public"."TBL_ADDRESS"."LINE2",
"public"."TBL_ADDRESS"."LINE3",
"public"."TBL_ADDRESS"."CITY",
"public"."TBL_ADDRESS"."STATE",
"public"."TBL_ADDRESS"."POSTALCODE",
"public"."TBL_ADDRESS"."COUNTRYNAME"
FROM
"public"."TBL_ADDRESS"
WHERE
"COMPANYID" is not null
AND
(
"public"."TBL_ADDRESS"."LINE1" is not null or
"public"."TBL_ADDRESS"."LINE2" is not null or
"public"."TBL_ADDRESS"."LINE3" is not null or
"public"."TBL_ADDRESS"."CITY" is not null or
"public"."TBL_ADDRESS"."STATE" is not null or
"public"."TBL_ADDRESS"."POSTALCODE" is not null or
"public"."TBL_ADDRESS"."COUNTRYNAME" is not null 
)
