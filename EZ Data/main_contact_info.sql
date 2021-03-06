SELECT
"public"."CONTACT"."CONTACTID",
"public"."CONTACT"."LASTNAME",
"public"."CONTACT"."FIRSTNAME",
"public"."CONTACT"."MIDDLENAME",
"public"."CONTACT"."GREETING",
"public"."CONTACT"."CONTACTTITLE" AS "title",
"public"."CONTACT"."SUFFIX",
"public"."CONTACT"."EMPLOYER",
"public"."CONTACT"."TAXID",
"public"."CONTACT"."ALPHAKEY",
"public"."CONTACT"."SOURCE",
"public"."CONTACT"."SUBSOURCE",
"public"."CONTACT"."REMARK",
"public"."CONTACT"."REFERREDBY",
"public"."CONTACT"."CONTACTTYPE",
"public"."PERSONAL"."DOB",
"public"."PERSONAL"."AGE",
"public"."PERSONAL"."GENDER",
"public"."PERSONAL"."MARITAL",
"public"."PERSONAL"."JOBTITLE",
"public"."PERSONAL"."OCCUPATION",
"public"."PERSONAL"."SALARY",
"public"."PERSONAL"."TAX",
"public"."PERSONAL"."TOBACCO",
"public"."PERSONAL"."NETWORTH",
"public"."PERSONAL"."DRIVERLICNO",
"public"."PERSONAL"."DRIVERLICSTATE",
"public"."PERSONAL"."DRIVERLICEXP",
"public"."PERSONAL"."NATIONALITY",
"public"."PERSONAL"."CITIZENSHIP",
"public"."PERSONAL"."BIRTHPLACE"
FROM
"public"."CONTACT"
Left Join "public"."PERSONAL" ON "public"."PERSONAL"."CONTACTID" = "public"."CONTACT"."CONTACTID"
WHERE
"public"."CONTACT"."PRIVATE" <  '1'