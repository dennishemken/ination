SELECT
"public".full_contacts."ContactID" as contact_id,
"public".full_contacts."Address" as "Address Line 1",
"public".full_contacts."City" as "Address City",
"public".full_contacts."StateOrProvince" as "Address State",
"public".full_contacts."PostalCode" as "Address Zipcode"
FROM
"public".full_contacts
where
"public".full_contacts."Address" <> '' or 
"public".full_contacts."City" <> '' or 
"public".full_contacts."StateOrProvince" <> '' or 
"public".full_contacts."PostalCode" <> ''
