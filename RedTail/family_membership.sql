SELECT
"public"."membership"."recid",
"public"."membership"."from_id",
"public"."membership"."to_id",
"public"."membership"."from_rel",
"public"."membership"."to_rel"
FROM
"public"."membership"
WHERE
"public"."membership"."from_rel" <>  '10' AND
"public"."membership"."from_rel" <  '37'
