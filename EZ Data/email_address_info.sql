SELECT
"public"."WEBADDRESS"."CONTACTID",
"public"."WEBADDRESS"."ADDRESS",
"public"."WEBADDRESS"."REMARK"
FROM
"public"."WEBADDRESS"
WHERE
"public"."WEBADDRESS"."TYPE" =  '1'
AND "CONTACTID" in 
(
SELECT
"public"."CONTACT"."CONTACTID"
FROM
"public"."CONTACT"
WHERE
"public"."CONTACT"."PRIVATE" <  '1'
);