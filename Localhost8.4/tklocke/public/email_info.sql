SELECT
"public"."AAADDR"."NAMEID" as contact_id,
"public"."AAADDR"."STREET1" as "EMail Address"
FROM
"public"."AAADDR"
WHERE
"public"."AAADDR"."ADDRESSID" =  'EMAIL'
