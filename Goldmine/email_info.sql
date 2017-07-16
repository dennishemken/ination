SELECT
"public"."new_contact_id"."contact_id",
"public"."Contact1"."E-Mail Address"
FROM
"public"."Contact1"
Inner Join "public"."new_contact_id" ON "public"."new_contact_id"."goldmine_ACCOUNTNO" = "public"."Contact1"."ACCOUNTNO"
WHERE
"public"."Contact1"."E-Mail Address" IS NOT NULL AND
"public"."Contact1"."ACCOUNTNO" not in 
(
SELECT
"public"."ContSupp"."ACCOUNTNO"
FROM
"public"."ContSupp"
WHERE
"public"."ContSupp"."RECTYPE" =  'C'
)
