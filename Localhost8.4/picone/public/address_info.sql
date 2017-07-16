SELECT
"public"."TBL_ADDRESS"."CONTACTID" as contact_id,
"public"."TBL_ADDRESS"."LINE1" as "Address Line 1",
"public"."TBL_ADDRESS"."LINE2" as "Address Line 2",
"public"."TBL_ADDRESS"."LINE3" as "Address Line 3",
"public"."TBL_ADDRESS"."CITY" as "Address City",
"public"."TBL_ADDRESS"."STATE" as "Address State",
"public"."TBL_ADDRESS"."POSTALCODE" as "Address Zip",
"public"."TBL_PICKLISTITEM"."NAME" as "Address Type"
FROM
"public"."TBL_ADDRESS"
Inner Join "public"."TBL_PICKLISTITEM" ON "public"."TBL_PICKLISTITEM"."PICKLISTITEMID" = "public"."TBL_ADDRESS"."TYPEID"
