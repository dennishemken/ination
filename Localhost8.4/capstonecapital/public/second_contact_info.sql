SELECT
"public"."CONTACT1".contact_id,
substring("public"."CONTSUPP"."CONTACT" from '[a-zA-Z]+') as "First Name",
trim (leading from substring("public"."CONTSUPP"."CONTACT" from E'\\s[a-zA-Z]+')) as "Last Name",
"public"."CONTSUPP"."TITLE" as "Employed Position",
"public"."CONTSUPP"."PHONE" as "Phone Number",
"public"."CONTSUPP"."NOTES" as "Internal Notes",
"public"."CONTSUPP"."ADDRESS1" as "Address Line 1",
"public"."CONTSUPP"."ADDRESS2" as "Address Line 2",
"public"."CONTSUPP"."ADDRESS3" as "Address Line 3",
"public"."CONTSUPP"."CITY" as "Address City",
"public"."CONTSUPP"."STATE" as "Address State",
"public"."CONTSUPP"."ZIP" as "Address Zipcode"
FROM
"public"."CONTSUPP"
Inner Join "public"."CONTACT1" ON "public"."CONTACT1"."ACCOUNTNO" = "public"."CONTSUPP"."ACCOUNTNO"
WHERE
"public"."CONTSUPP"."RECTYPE" =  'C'
