SELECT
"public".full_contacts."ContactID",
"public".full_contacts."CompanyName" as "Company Name",
"public".full_contacts."URL" as "Web Site",
"public".full_contacts."Most Senior Exec",
"public".full_contacts."FirstName" as "First Name",
"public".full_contacts."LastName" as "Last Name",
"public".full_contacts."CEO",
"public".full_contacts."President",
"public".full_contacts."Founder",
"public".full_contacts."COO",
"public".full_contacts."CFO",
"public".full_contacts."Contact Name",
"public".full_contacts."Description" as "Company Description",
"public".full_contacts."Industry",
"public".full_contacts."ReferredBy" as "Referred By",
"public".full_contacts."ReferredBy2" as "Referred By 2",
"public".full_contacts."ReferredBy3" as "Referred By 3",
"public".full_contacts."client type" as "Source"
FROM
"public".full_contacts
