SELECT
"public"."aaaddr"."NAMEID" as contact_id,
"public"."aaaddr"."STREET1" as "EMail Address"
FROM
"public"."aaaddr"
WHERE
"public"."aaaddr"."ADDRESSID" =  'EMAIL'
