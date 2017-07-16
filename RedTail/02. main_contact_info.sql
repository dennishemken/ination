SELECT
"public"."client"."clid" as contact_id,
"public"."client"."household_id",
--"public"."client_codes"."code",
"public"."client"."salutation" as "Salutation",
"public"."client"."firstname" as "First Name",
"public"."client"."middlename" as "Middle Name",
"public"."client"."lastname" as "Last Name",
"public"."client"."suffix" as "Suffix",
"public"."client"."name" as "Company Name",
"public"."client"."nickname" as "Nickname",
"public"."client"."taxid" as "SSN",
"public"."client"."dob" as "Birthdate",
"public"."client"."title" as "Employed Position",
"public"."client"."age" as "Redtail Age",
"public"."client"."clientsince" as "Client Since",
"public"."client"."clientsinceyears" as "Client Since Years",
"public"."client"."referredby" as "Referred By",
"public"."marital_codes"."code" AS "marital" as "Marital",
"public"."gender_codes"."code" AS "gender" as "Gender",
"public"."personalprofile"."dlnumber" as "Drivers License",
"public"."personalprofile"."dlstate" as "DL State",
--"public"."personalprofile"."dlissue",
"public"."personalprofile"."dlexpiration" as "DL Expiration",
"public"."personalprofile"."occupation" as "Profession",
"public"."personalprofile"."occupation_startdate",
--"public"."company_info"."name" AS "Company Name",
"public"."csl"."code" AS "Client Type"
FROM
"public"."client"
Left Join "public"."client_codes" ON "public"."client_codes"."client_code" = "public"."client"."type"
Left Join "public"."marital_codes" ON "public"."marital_codes"."marital_code" = "public"."client"."marital"
Left Join "public"."gender_codes" ON "public"."gender_codes"."gender_code" = "public"."client"."sex"
Left Join "public"."personalprofile" ON "public"."personalprofile"."personalprofile_clid" = "public"."client"."clid"
--Left Join "public"."company_info" ON "public"."company_info"."from_id" = "public"."client"."clid"
Left Join "public"."csl" ON "public"."csl"."csl_code" = "public"."client"."status2"
