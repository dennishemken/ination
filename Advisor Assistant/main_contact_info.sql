SELECT
"public".aaname."NAMEID" as contact_id,
"public".aaname."TAXID"as "SSN",
"public".aaname."FIRSTNAME" as "First Name",
"public".aaname."MIDDLE" as "Middle Name",
"public".aaname."LASTNAME" as "Last Name",
case when "public".aaname."NAMETYPE" = 'AG' then 'Agent'
	when "public".aaname."NAMETYPE" = 'CL' then 'Client'
	when "public".aaname."NAMETYPE" = 'CLSP' then 'Spouse of Client'
	when "public".aaname."NAMETYPE" = 'IC' then 'Insurance Company'
	when "public".aaname."NAMETYPE" = 'PR' then 'Prospect'
	when "public".aaname."NAMETYPE" = 'QUICKADD' then 'Temporary Name Type Of QUICKADD'
	when "public".aaname."NAMETYPE" = 'SPOUSE' then 'Spouse'
	when "public".aaname."NAMETYPE" = 'FRIEND' then 'Friend'
	when "public".aaname."NAMETYPE" = 'DEFAULT' then 'Code Used For Default Flex Fields'
	when "public".aaname."NAMETYPE" = 'GRPR' then 'Group Insurance Prospect'
	when "public".aaname."NAMETYPE" = 'CHILD' then 'Child of Client'
	when "public".aaname."NAMETYPE" = 'OWNER' then 'Owner of a policy'
	when "public".aaname."NAMETYPE" = 'DEP' then 'Dependent'
	when "public".aaname."NAMETYPE" = 'VENDOR' then 'Vendor'
	when "public".aaname."NAMETYPE" = 'GRP' then 'Group Client'
	when "public".aaname."NAMETYPE" = 'BROKERAG' then 'Brokerage Agent'
	when "public".aaname."NAMETYPE" = 'CAREER' then 'Career Producer'
	when "public".aaname."NAMETYPE" = 'HOT' then 'Hot Prospect'
	when "public".aaname."NAMETYPE" = 'PRI1' then 'Priority One'
	when "public".aaname."NAMETYPE" = 'PRI2' then 'Priority Two'
	when "public".aaname."NAMETYPE" = 'REGREP' then 'Registered Representative'
	when "public".aaname."NAMETYPE" = 'CLBUS' then 'Business Client'
	when "public".aaname."NAMETYPE" = 'IMPORT' then 'Imported From Mailing List'
	when "public".aaname."NAMETYPE" = 'TRUST' then 'Trust'
	when "public".aaname."NAMETYPE" = 'CLPAR' then 'Parent of Client'
	when "public".aaname."NAMETYPE" = 'ATTY' then 'Attorney'
	when "public".aaname."NAMETYPE" = 'DECEASED' then 'Deceased'
	when "public".aaname."NAMETYPE" = 'BEN' then 'Beneficiary'
	when "public".aaname."NAMETYPE" = 'OUTLOOK' then 'Imported from Outlook'
	when "public".aaname."NAMETYPE" = 'OFFICER' then 'Officer of Organization'
	when "public".aaname."NAMETYPE" = 'DECEASED' then 'Deceased Client or Contact'
	when "public".aaname."NAMETYPE" = 'FORMER' then 'Former Client'
	when "public".aaname."NAMETYPE" = 'INSURED' then 'Insured'
	when "public".aaname."NAMETYPE" = '529PLAN' then '529 Plan'
	when "public".aaname."NAMETYPE" = 'UTMA' then 'UTMA Account Owner'
end as "Client Type",
"public".aaname."NICKNAME" as "Nickname",
case when "public".aaname."CNAMESTYPE" = 'AG' then 'Agent'
	when "public".aaname."CNAMESTYPE" = 'CL' then 'Client'
	when "public".aaname."CNAMESTYPE" = 'CLSP' then 'Spouse of Client'
	when "public".aaname."CNAMESTYPE" = 'IC' then 'Insurance Company'
	when "public".aaname."CNAMESTYPE" = 'PR' then 'Prospect'
	when "public".aaname."CNAMESTYPE" = 'QUICKADD' then 'Temporary Name Type Of QUICKADD'
	when "public".aaname."CNAMESTYPE" = 'SPOUSE' then 'Spouse'
	when "public".aaname."CNAMESTYPE" = 'FRIEND' then 'Friend'
	when "public".aaname."CNAMESTYPE" = 'DEFAULT' then 'Code Used For Default Flex Fields'
	when "public".aaname."CNAMESTYPE" = 'GRPR' then 'Group Insurance Prospect'
	when "public".aaname."CNAMESTYPE" = 'CHILD' then 'Child of Client'
	when "public".aaname."CNAMESTYPE" = 'OWNER' then 'Owner of a policy'
	when "public".aaname."CNAMESTYPE" = 'DEP' then 'Dependent'
	when "public".aaname."CNAMESTYPE" = 'VENDOR' then 'Vendor'
	when "public".aaname."CNAMESTYPE" = 'GRP' then 'Group Client'
	when "public".aaname."CNAMESTYPE" = 'BROKERAG' then 'Brokerage Agent'
	when "public".aaname."CNAMESTYPE" = 'CAREER' then 'Career Producer'
	when "public".aaname."CNAMESTYPE" = 'HOT' then 'Hot Prospect'
	when "public".aaname."CNAMESTYPE" = 'PRI1' then 'Priority One'
	when "public".aaname."CNAMESTYPE" = 'PRI2' then 'Priority Two'
	when "public".aaname."CNAMESTYPE" = 'REGREP' then 'Registered Representative'
	when "public".aaname."CNAMESTYPE" = 'CLBUS' then 'Business Client'
	when "public".aaname."CNAMESTYPE" = 'IMPORT' then 'Imported From Mailing List'
	when "public".aaname."CNAMESTYPE" = 'TRUST' then 'Trust'
	when "public".aaname."CNAMESTYPE" = 'CLPAR' then 'Parent of Client'
	when "public".aaname."CNAMESTYPE" = 'ATTY' then 'Attorney'
	when "public".aaname."CNAMESTYPE" = 'DECEASED' then 'Deceased'
	when "public".aaname."CNAMESTYPE" = 'BEN' then 'Beneficiary'
	when "public".aaname."CNAMESTYPE" = 'OUTLOOK' then 'Imported from Outlook'
	when "public".aaname."CNAMESTYPE" = 'OFFICER' then 'Officer of Organization'
	when "public".aaname."CNAMESTYPE" = 'DECEASED' then 'Deceased Client or Contact'
	when "public".aaname."CNAMESTYPE" = 'FORMER' then 'Former Client'
	when "public".aaname."CNAMESTYPE" = 'INSURED' then 'Insured'
	when "public".aaname."CNAMESTYPE" = '529PLAN' then '529 Plan'
	when "public".aaname."CNAMESTYPE" = 'UTMA' then 'UTMA Account Owner'
end as "Client Type 2",
"public".aaname."AGENT" as "Agent",
"public".aaname."DOB" as "Birthdate",
"public".aaname."GENDER" as "Gender",
"public".aaname."NONSMOKE" as "Non-Smoker",
"public".aaname."CHOFH",
"public".aaname."CMAILING",
"public".aaname."CCALL",
"public".aaname."SPOUSE" as "Spouse",
"public".aaname."DEPS" as "Dependants",
"public".aaname."ANNIV" as "Anniversary",
"public".aaname."CDRVLIC" as "Driver License",
"public".aaname."DDRVLICEXP" as "DL Expiration",
"public".aaname."DDRVLICISS" as "DL Issue Date",
"public".aaname."CDRVLICJUR" as "DL State",
"public".aaname."INCOME" as "Income",
"public".aaname."FAMINCOM" as "Family Income",
"public".aaname."NETWORTH" as "Networth",
case
when "OCCUP" = 'ACC' then 'Accountant'
when "OCCUP" = 'ATT' then 'Attorney'
when "OCCUP" = 'EXEC' then 'Executive'
when "OCCUP" = 'MANF' then 'Manufacturer'
when "OCCUP" = 'PROF' then 'Licensed Professional'
when "OCCUP" = 'AG' then 'Insurance Agent'
when "OCCUP" = 'POL' then 'Politician'
when "OCCUP" = 'LAW' then 'Lawyer'
when "OCCUP" = 'HM' then 'Homemaker'
when "OCCUP" = 'SOFTWARE' then 'Software'
when "OCCUP" = 'RET' then 'Retired'
when "OCCUP" = 'NURSE' then 'Nurse'
when "OCCUP" = 'PSYCHOTH' then 'Psychotherapist'
when "OCCUP" = 'ADMASST' then 'Administrative Assistant'
when "OCCUP" = 'STUDENT' then 'Student'
when "OCCUP" = 'HAIR' then 'Hair Stylist'
when "OCCUP" = 'FIRE' then 'Firefighter'
when "OCCUP" = 'PASTOR' then 'Pastor'
when "OCCUP" = 'EDUCATOR' then 'Educator'
when "OCCUP" = 'CONTRACT' then 'Contractor'
when "OCCUP" = 'BOTTLER' then 'Bottler'
when "OCCUP" = 'PHYS' then 'Physician'
when "OCCUP" = 'CHIR' then 'Chiropractor'
when "OCCUP" = 'MECH' then 'Mechanic'
when "OCCUP" = 'PROPMGR' then 'Property Manager'
when "OCCUP" = 'ENG' then 'Engineer'
when "OCCUP" = 'COACHDR' then 'Coach Driver'
when "OCCUP" = 'SEC' then 'Secretary'
end as "Employed Position"
FROM
"public".aaname
