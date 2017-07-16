SELECT
"public".contacts.contact_id,
"public".contacts."Phone Number",
'Home' AS "Phone Type"
FROM
"public".contacts
WHERE
"public".contacts."Phone Number" <>  ''
