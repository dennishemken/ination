SELECT
"public".contacts.contact_id,
"public".contacts."Email",
'Home' as "Email Type"
FROM
"public".contacts
WHERE
"public".contacts."Email" IS NOT NULL 
