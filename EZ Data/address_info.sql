SELECT
"public"."ADDRESS"."CONTACTID",
"public"."ADDRESS"."LINE1",
"public"."ADDRESS"."LINE2",
"public"."ADDRESS"."LINE3",
"public"."ADDRESS"."CITY",
"public"."ADDRESS"."STATE",
"public"."ADDRESS"."POSTALCODE",
"public"."ADDRESS"."ADDRESSTYPE",
"public"."ADDRESS"."REMARK"
FROM
"public"."ADDRESS"
where "CONTACTID" in 
(
SELECT
"public"."CONTACT"."CONTACTID"
FROM
"public"."CONTACT"
WHERE
"public"."CONTACT"."PRIVATE" <  '1'
);