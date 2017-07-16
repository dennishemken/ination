SELECT
"public"."internet"."internet_clid" as "contact_id",
"public"."internet_codes"."code" as "Email Type",
"public"."internet"."address" as "Email Address",
"public"."internet"."preferred" as "Primary Email",
"public"."internet"."label" as "Email Note"
FROM
"public"."internet"
Inner Join "public"."internet_codes" ON "public"."internet_codes"."internet_code" = "public"."internet"."type"
WHERE
"public"."internet_codes"."code" =  'Email 1'
