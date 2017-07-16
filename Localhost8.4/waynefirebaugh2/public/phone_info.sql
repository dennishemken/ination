SELECT
"public"."phone"."phone_clid" as "contact_id",
"public"."phone_codes"."code" as "Phone Type",
"public"."phone"."number" as "Phone Number",
"public"."phone"."ext" as "Phone Extension",
"public"."phone"."preferred" as "Primary Phone"
FROM
"public"."phone"
Inner Join "public"."phone_codes" ON "public"."phone_codes"."phone_code" = "public"."phone"."type"
