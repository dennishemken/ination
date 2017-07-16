SELECT
"public"."new_contact_id"."contact_id",
case when "public"."Users"."NAME" = 'Gib McEachran' then '36'
	when "public"."Users"."NAME" = 'Kathy Clark' then '35'
	when "public"."Users"."NAME" = 'John Hardy' then '37'
	when "public"."Users"."NAME" = 'Carolyn Painley' then '38'
	when "public"."Users"."NAME" = 'John Harrod' then '41'
	when "public"."Users"."NAME" = 'Ellen Taylor Atkins' then '40'
	else '41'
end as user_id,
"public"."Cal"."ONDATE",
"public"."Cal"."ONTIME",
"public"."Cal"."ENDDATE",
"public"."Cal"."DURATION",
case when "public"."Cal"."RECTYPE" = 'C' then 'Call Back'
	when "public"."Cal"."RECTYPE" = 'D' then 'Todo'
	when "public"."Cal"."RECTYPE" = 'E' then 'Event'
	when "public"."Cal"."RECTYPE" = 'O' then 'Other'
	when "public"."Cal"."RECTYPE" = 'S' then 'Sales'
	when "public"."Cal"."RECTYPE" = 'T' then 'Next Action'
	else ''
end as rectype,
"public"."Cal"."REF",
"public"."Cal"."NOTES"
FROM
"public"."Cal"
Left Join "public"."contacts_export1" ON "public"."contacts_export1"."ACCOUNTNO" = "public"."Cal"."ACCOUNTNO"
Left Join "public"."Users" ON "public"."Users"."USERNAME" = "public"."Cal"."USERID"
Left Join "public"."new_contact_id" ON "public"."new_contact_id"."goldmine_recid" = "public"."contacts_export1"."RECID"
WHERE
"public"."Cal"."RECTYPE" <>  'A'
