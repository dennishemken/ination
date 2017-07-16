SELECT
"public".contacts."Client ID" AS contact_id,
"public".contacts."Type" AS "Client Type",
"public".contacts."Rating" AS "Client Classification",
"public".contacts."Client: First Name" AS "First Name",
"public".contacts."Client: Last Name" AS "Last Name",
"public".contacts."Client: Birthdate" AS "Birthdate",
"public".contacts."Client: Client Preferences",
"public".contacts."Client: Company" AS "Company Name",
"public".contacts."Client: Current Balance" AS "Current Balance",
case when "public".contacts."Client: Golf List" = '1' then 'Yes'
	when "public".contacts."Client: Golf List" = '0' then 'No'
end AS "Golf List",
"public".contacts."Client: Hobbies" AS "Hobbies",
"public".contacts."Client: Investment Interests" AS "Investment Interests",
"public".contacts."Client: Key Notes" AS "Key Notes",
"public".contacts."Client: Maturity Date" AS "Maturity Date",
case when "public".contacts."Client: PIPELINE" = '1' then 'Yes'
	when "public".contacts."Client: PIPELINE" = '0' then 'No'
end AS "Pipeline",
"public".contacts."Client: PIPELINE NOTES" AS "Pipeline Notes",
"public".contacts."Client: Professional Interests" AS "Professional Interests",
"public".contacts."Client: Social Security / Tax ID #" AS "SSN",
"public".contacts."Client: Spouse" AS "Spouse",
"public".contacts."Client: Title (1)" AS "Employed Position"
FROM
"public".contacts
