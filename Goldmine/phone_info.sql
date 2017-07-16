SELECT
"public"."new_contact_id"."contact_id",
"public"."phone_info"."phone_number",
"public"."phone_info"."phone_ext",
"public"."phone_info"."phone_type"
FROM
"public"."phone_info"
Inner Join "public"."new_contact_id" ON "public"."new_contact_id"."goldmine_recid" = "public"."phone_info"."contact_id"
