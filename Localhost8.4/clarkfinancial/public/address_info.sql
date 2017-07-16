SELECT
"public".contacts.contact_id,
"public".contacts."Address" as "Address Line 1",
"public".contacts."City" as "Address City",
"public".contacts."State" as "Address State",
"public".contacts."Zip" as "Address Zip",
'Home' as "Address Type"
FROM
"public".contacts
WHERE
"public".contacts."Address" <>  ''
