
SELECT
"public".contacts."Client ID" as contact_id,
"public".contacts."Primary Address Line 1" as "Address Line 1",
"public".contacts."Primary Address Line 2" as "Address Line 2",
"public".contacts."Primary Address Line 3" as "Address Line 3",
"public".contacts."Primary City" as "Address City",
"public".contacts."Primary State/Province" as "Address State",
"public".contacts."Primary Zip/Postal Code" as "Address Zip"
FROM
"public".contacts
where

"public".contacts."Primary Street" is not null or
"public".contacts."Primary Address Line 2" is not null or
"public".contacts."Primary Address Line 3" is not null or
"public".contacts."Primary City" is not null or
"public".contacts."Primary State/Province" is not null or
"public".contacts."Primary Zip/Postal Code" is not null


