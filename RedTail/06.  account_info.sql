SELECT
"public"."account"."account_clid" as "contact_id",
"public"."account_codes"."code" AS "Account_Type",
"public"."account"."number" as "Account_Number",
"public"."account"."company" as "Account Company",
"public"."account"."product" as "Account Product",
"public"."account"."taxqualified" as "Tax Qualified",
"public"."account_taxqualified_codes"."code" AS "Tax Qualified Type",
--"public"."account"."discretionary",
--"public"."account"."managed",
--"public"."account"."manager",
"public"."account"."model" as "Account Model",
--"public"."account"."status",
--"public"."account"."status2",
--"public"."account"."techfi",
--"public"."account"."sone"
FROM
"public"."account"
Inner Join "public"."account_codes" ON "public"."account_codes"."account_code" = "public"."account"."type"
Inner Join "public"."account_taxqualified_codes" ON "public"."account_taxqualified_codes"."taxqual_code" = "public"."account"."taxqualified_type"
