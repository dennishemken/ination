SELECT
"public"."CONTACT1".contact_id,
"public"."CONTACT1"."COMPANY" as "Company Name",
trim(trailing "public"."CONTACT1"."LASTNAME" from "public"."CONTACT1"."CONTACT") as "First Name",
"public"."CONTACT1"."LASTNAME" as "Last Name",
"public"."CONTACT1"."DEPARTMENT" as "Spouse",
"public"."CONTACT1"."TITLE" as "Employed Position",
"public"."CONTACT1"."SECR" as "Birthdate",
"public"."CONTACT1"."DEAR" as "Salutation",
"public"."CONTACT1"."SOURCE" as "Lead Source",
"public"."CONTACT1"."KEY1" AS "Client Type",
"public"."CONTACT1"."KEY5" AS "Sales Focus",
"public"."CONTACT1"."STATUS",
"public"."CONTACT1"."NOTES" as "Internal Notes",
"public"."CONTACT2"."USERDEF01" AS "Platform",
"public"."CONTACT2"."USERDEF02" AS "User Role",
"public"."CONTACT2"."USERDEF03" AS "Key Interest",
"public"."CONTACT2"."USERDEF04" AS "Account Size",
"public"."CONTACT2"."USERDEF05" AS "Purchase Status",
"public"."CONTACT2"."USERDEF06" AS "Competitor",
"public"."CONTACT2"."USERDEF07"as "Referred By",
"public"."CONTACT2"."USERDEF08" AS "Account Type",
"public"."CONTACT2"."USERDEF09" AS "Account Licensed Users",
"public".web_site_data."CONTSUPREF" AS "Web Site"
FROM
"public"."CONTACT1"
Inner Join "public"."CONTACT2" ON "public"."CONTACT2"."ACCOUNTNO" = "public"."CONTACT1"."ACCOUNTNO"
Left Join "public".web_site_data ON "public".web_site_data.contact_id = "public"."CONTACT1".contact_id
