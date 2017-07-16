SELECT
"public"."address"."address_clid" as "contact_id",
"public"."address_codes"."code" as "Address Type",
"public"."address"."address1" as "Address Line 1",
"public"."address"."address2" as "Address Line 2",
"public"."address"."city" as "Address City",
"public"."address"."state" as "Address State",
"public"."address"."zip" as "Address Zip",
"public"."address"."zip4" as "Address Zip +4",
"public"."address"."primaddr" as "Primary Address",
"public"."address"."preferred"
FROM
"public"."address"
Inner Join "public"."address_codes" ON "public"."address_codes"."address_code" = "public"."address"."type"
