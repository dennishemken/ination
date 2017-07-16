SELECT
"public"."note"."note_clid" as "contact_id",
"public"."note"."note" as "Description",
"public"."note_codes"."code" as "note_type",
"public"."note"."recadd" as "Created On"
FROM
"public"."note"
Inner Join "public"."note_codes" ON "public"."note_codes"."note_code" = "public"."note"."type"
