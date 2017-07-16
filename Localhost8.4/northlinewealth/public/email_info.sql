SELECT
"public".contacts.contact_id,
"public".contacts."EmailAddress" as "Email Address",
"public".contacts."EmailDisplayName" as "Email Note"
FROM
"public".contacts
where
"EmailAddress" <> ''
