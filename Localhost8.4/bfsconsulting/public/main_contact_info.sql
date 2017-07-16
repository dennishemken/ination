SELECT
"public".aaname."NAMEID" as contact_id,
"public".aaname."TAXID"as "SSN",
"public".aaname."FIRSTNAME" as "First Name",
"public".aaname."MIDDLE" as "Middle Name",
"public".aaname."LASTNAME" as "Last Name",
case 
when "NAMETYPE" = 'AG' then 'Agent'
when "NAMETYPE" = 'CL' then 'Client'
when "NAMETYPE" = 'CLSP' then 'Spouse of Client'
when "NAMETYPE" = 'IC' then 'Insurance Company'
when "NAMETYPE" = 'PR' then 'Prospect'
when "NAMETYPE" = 'QUICKADD' then 'Temporary Name Type Of QUICKADD'
when "NAMETYPE" = 'SPOUSE' then 'Spouse'
when "NAMETYPE" = 'FRIEND' then 'Friend'
when "NAMETYPE" = 'DEFAULT' then 'Code Used For Default Flex Fields'
when "NAMETYPE" = 'GRPR' then 'Group Insurance Prospect'
when "NAMETYPE" = 'CHILD' then 'Child of Client'
when "NAMETYPE" = 'OWNER' then 'Owner'
when "NAMETYPE" = 'DEP' then 'Dependent'
when "NAMETYPE" = 'CL-BUS' then 'Client-Business'
when "NAMETYPE" = 'VENDOR' then 'Vendor'
when "NAMETYPE" = 'GRP' then 'Group Client'
when "NAMETYPE" = 'LINK' then 'Name created during link operation'
when "NAMETYPE" = 'AGENT' then 'Client''s agent'
when "NAMETYPE" = 'SOURCE' then 'Default type for setting up source.'
when "NAMETYPE" = 'EXEC' then 'Executive'
when "NAMETYPE" = 'STNHPE' then 'Stanhope'
when "NAMETYPE" = 'LLOYDS' then 'Lloyd''s of London'
when "NAMETYPE" = 'ORG' then 'Organization/Group'
when "NAMETYPE" = 'BRK' then 'Brokerage Office'
when "NAMETYPE" = 'MUT' then 'Mutual Funds'
when "NAMETYPE" = 'INV' then 'Investments'
when "NAMETYPE" = 'BUS' then 'Business Contact'
when "NAMETYPE" = 'EXAM' then 'Medical Examiners'
when "NAMETYPE" = 'BD' then 'Broker/Dealer'
when "NAMETYPE" = 'TRUST' then 'Trust'
when "NAMETYPE" = 'DECEASED' then 'Deceased'
when "NAMETYPE" = '419ATTNY' then '419a Attorney'
when "NAMETYPE" = 'OUTLOOK' then 'Imported from Outlook'
when "NAMETYPE" = 'REST' then 'Restaurant'
when "NAMETYPE" = 'ATT' then 'Attorney'
when "NAMETYPE" = 'TTEE' then 'Trustee'
when "NAMETYPE" = 'ACCT' then 'Accountant'
when "NAMETYPE" = 'TPA' then 'Third Party Administrator'
when "NAMETYPE" = 'RIA' then 'Registered Investment Advisor'
when "NAMETYPE" = 'EMAIL' then 'Email Tech Support'
when "NAMETYPE" = 'PROMGR' then 'Property Manager'
end as "Client Type",
"public".aaname."NICKNAME" as "Nickname",
case 
when "CNAMESTYPE" = 'BROKERAG' then 'Brokerage Agent'
when "CNAMESTYPE" = 'CAREER' then 'Career Agent'
when "CNAMESTYPE" = 'HOT' then 'Hot Prospect'
when "CNAMESTYPE" = 'PRI1' then 'Priority One'
when "CNAMESTYPE" = 'PRI2' then 'Priority Two'
when "CNAMESTYPE" = 'NOCALL' then 'Do Not Call'
end as "Client Type 2",
"public".aaname."AGENT" as "Agent",
"public".aaname."DOB" as "Birthdate",
"public".aaname."GENDER" as "Gender",
"public".aaname."NONSMOKE" as "Non-Smoker",
--"public".aaname."CHOFH",
"public".aaname."CMAILING",
"public".aaname."CCALL",
"public".aaname."SPOUSE" as "Spouse",
"public".aaname."DEPS" as "Dependants",
"public".aaname."ANNIV" as "Anniversary",
--"public".aaname."CDRVLIC" as "Driver License",
--"public".aaname."DDRVLICEXP" as "DL Expiration",
--"public".aaname."DDRVLICISS" as "DL Issue Date",
--"public".aaname."CDRVLICJUR" as "DL State",
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
when "OCCUP" = 'AGENT' then 'Insurance agent'
when "OCCUP" = 'CLERIC' then 'Clerical'
when "OCCUP" = 'MANAGER' then 'White collar manager'
when "OCCUP" = 'HOME' then 'Homemaker'
when "OCCUP" = 'CHILD' then 'Child'
when "OCCUP" = 'BLUE' then 'Blue Collar Worker'
when "OCCUP" = 'TEACH' then 'Teacher'
when "OCCUP" = 'RETIRED' then 'Retired'
when "OCCUP" = 'WHITE' then 'White Collar'
when "OCCUP" = 'REAL' then 'Realtor'
when "OCCUP" = 'STUDENT' then 'Student'
when "OCCUP" = 'INVEST' then 'Investor'
when "OCCUP" = 'MILITARY' then 'Military'
when "OCCUP" = 'FARMER' then 'Farmer'
when "OCCUP" = 'BLMGR' then 'Blue Collar Manager'
when "OCCUP" = 'TRAINER' then 'Personal Trainer'
when "OCCUP" = 'DEVELOPE' then 'Developer'
when "OCCUP" = 'MANG' then 'Manager'
when "OCCUP" = 'SELF' then 'Self-Employed'
when "OCCUP" = 'DECEASED' then 'Deceased'
when "OCCUP" = 'HS' then 'Hair Stylist'
when "OCCUP" = 'MIN' then 'Minister'
when "OCCUP" = 'PHYS' then 'Physician'
when "OCCUP" = 'GRADES' then 'Graphic Designer'
when "OCCUP" = 'MARK' then 'Marketing'
when "OCCUP" = 'PRMGMT' then 'Property Management'
when "OCCUP" = 'PCAGT' then 'P & C Agent'
when "OCCUP" = 'SALES' then 'Sales'
when "OCCUP" = 'ENG' then 'Engineer'
when "OCCUP" = 'MMGMT' then 'Money Management'
when "OCCUP" = 'MTGBKR' then 'Mortgage Broker'
when "OCCUP" = 'RN' then 'Registered Nurse'
when "OCCUP" = 'DEN' then 'Dentist'
when "OCCUP" = 'PHIL' then 'Philanthropist'
when "OCCUP" = 'PHOTO' then 'Photograher'
when "OCCUP" = 'CARP' then 'Carpenter'
when "OCCUP" = 'BUSOWN' then 'Business Owner'
when "OCCUP" = 'HR' then 'Human Resources'
end as "Employed Position"
FROM
"public".aaname
