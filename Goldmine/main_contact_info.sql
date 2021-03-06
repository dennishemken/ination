SELECT DISTINCT
"public"."new_contact_id"."contact_id",
"public"."contacts_export1"."COMMENTS"as "Internal Notes",
"public"."contacts_export1"."COMPANY" as "Company Name",
"public"."contacts_export1"."CONTACT",
"public"."contacts_export1"."DEAR",
"public"."contacts_export1"."DEPARTMENT",
"public"."contacts_export1"."KEY1" as "Primary SSN",
"public"."contacts_export1"."KEY2" as "Secondary SSN",
"public"."contacts_export1"."KEY3" as "Advisor",
"public"."contacts_export1"."KEY4" as "LPL RepID",
"public"."contacts_export1"."KEY5" as "LPL #",
"public"."contacts_export1"."LASTNAME" as "Last Name",
"public"."contacts_export1"."NOTES",
"public"."contacts_export1"."SECR",
"public"."contacts_export1"."SOURCE",
"public"."contacts_export1"."TITLE",
"public"."contacts_export1"."UBA_BDAY1" AS "Birthdate",
"public"."contacts_export1"."UBA_BDAY2" AS "Spouse Birthdate",
"public"."contacts_export1"."UBA_EMP1" AS "Employer",
"public"."contacts_export1"."UBA_EMP2" AS "Employer2",
"public"."contacts_export1"."UBA_EMPA1" AS "Employr Address",
"public"."contacts_export1"."UBA_EMPA2" AS "Employr Address2",
"public"."contacts_export1"."UBA_ID1" AS "Pri ID Type",
"public"."contacts_export1"."UBA_ID2" AS "Sec ID Type",
"public"."contacts_export1"."UBA_IDEXP1" AS "Primary ID Exp Date",
"public"."contacts_export1"."UBA_IDEXP2" AS "Secondary ID Exp Date",
"public"."contacts_export1"."UBA_IDNUM1" AS "Id Number 1",
"public"."contacts_export1"."UBA_IDNUM2" AS "ID Number 2",
"public"."contacts_export1"."UBA_INC" AS "Income",
"public"."contacts_export1"."UBA_INVOBJ" AS "Investment Objective",
"public"."contacts_export1"."UBA_ISS1" AS "Place of Issuance 1",
"public"."contacts_export1"."UBA_ISSUE2" AS "Place of Issuance 2",
"public"."contacts_export1"."UBA_LNW" AS "Liquid Net Worth",
"public"."contacts_export1"."UBA_MSTAT" AS "Marital",
"public"."contacts_export1"."UBA_NETW" AS "Net Worth",
"public"."contacts_export1"."UBA_OCCNA2" AS "Occup/Nature",
"public"."contacts_export1"."UBA_RATING" AS "Rating",
"public"."contacts_export1"."UBA_RFBY" AS "Referred By",
"public"."contacts_export1"."UBA_SAL2" AS "Salutation 2",
"public"."contacts_export1"."UBA_STATUS" AS "Client Status",
"public"."contacts_export1"."UBA_STDATE" AS "Date Became Client",
"public"."contacts_export1"."UBA_TAXBR" AS "Tax Bracket",
"public"."contacts_export1"."UCF_SUBSTA" AS "Sub-Status",
"public"."contacts_export1"."UCHARITY" AS "Charity",
"public"."contacts_export1"."UCOLLEGE" AS "College",
"public"."contacts_export1"."UCOLLEGE3" AS "College 3",
"public"."contacts_export2"."ULTCNEWS" AS "LTC News",
"public"."contacts_export2"."ULTMONEY" AS "Let's Talk Money",
"public"."contacts_export2"."UOPENHOUSE" AS "OpenHouse",
"public"."contacts_export2"."UTHNKSGIV" AS "Thanksgiving Card",
"public"."contacts_export2"."UWMC" AS "Market Commentary",
"public"."contacts_export2"."Web Site"
FROM
"public"."contacts_export1"
Inner Join "public"."contacts_export2" ON "public"."contacts_export2"."RECID" = "public"."contacts_export1"."RECID"
Inner Join "public"."new_contact_id" ON "public"."new_contact_id"."goldmine_recid" = "public"."contacts_export1"."RECID"

where "public"."contacts_export1"."RECID" not in 
(
SELECT
"public"."ContSupp"."RECID"
FROM
"public"."ContSupp"
WHERE
"public"."ContSupp"."RECTYPE" =  'C'
)
