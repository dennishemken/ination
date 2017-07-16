SELECT
"public"."new_contact_id"."contact_id",
"public"."contacts_export1"."ADDRESS1",
"public"."contacts_export1"."ADDRESS2",
"public"."contacts_export1"."ADDRESS3",
"public"."contacts_export1"."CITY",
"public"."contacts_export1"."STATE",
"public"."contacts_export2"."ZIP"
FROM
"public"."contacts_export1"
Inner Join "public"."contacts_export2" ON "public"."contacts_export2"."RECID" = "public"."contacts_export1"."RECID"
Inner Join "public"."new_contact_id" ON "public"."new_contact_id"."goldmine_recid" = "public"."contacts_export1"."RECID"
WHERE
"public"."contacts_export1"."ADDRESS1" IS NOT NULL  AND
"public"."contacts_export1"."CITY" IS NOT NULL  AND
"public"."contacts_export1"."STATE" IS NOT NULL  AND
"public"."contacts_export2"."ZIP" IS NOT NULL AND
 "public"."contacts_export1"."RECID" not in 
(
SELECT
"public"."ContSupp"."RECID"
FROM
"public"."ContSupp"
WHERE
"public"."ContSupp"."RECTYPE" =  'C'
)
