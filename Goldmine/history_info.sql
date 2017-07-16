SELECT
"public"."new_contact_id"."contact_id",
case when "public"."Users"."USERNAME" = 'ELDORA' then '38'
	when "public"."Users"."USERNAME" = 'DAVID' then '35'
	when "public"."Users"."USERNAME" = 'MEL' then '39'
	when "public"."Users"."USERNAME" = 'SHANE' then '41'
	when "public"."Users"."USERNAME" = 'WALTER' then '41'
	when "public"."Users"."USERNAME" = 'TAYLOR' then '41'
	else '41'
end as user_id,
case when "public"."ContHist"."RECTYPE" = 'A' then 'Appointment'
	when "public"."ContHist"."RECTYPE" = 'C' then 'Phone Call'
	when "public"."ContHist"."RECTYPE" = 'CC' then 'Call Back'
	when "public"."ContHist"."RECTYPE" = 'CI' then 'Incoming Call'
	when "public"."ContHist"."RECTYPE" = 'CM' then 'Returned Message'
	when "public"."ContHist"."RECTYPE" = 'CO' then 'Outgoing Call'
	when "public"."ContHist"."RECTYPE" = 'D' then 'Todo'
	when "public"."ContHist"."RECTYPE" = 'E' then 'Event'
	when "public"."ContHist"."RECTYPE" = 'L' then 'Form'
	when "public"."ContHist"."RECTYPE" = 'O' then 'Other'
	when "public"."ContHist"."RECTYPE" = 'S' then 'Sale'
	when "public"."ContHist"."RECTYPE" = 'T' then 'Next Action'
	when "public"."ContHist"."RECTYPE" = 'U' then 'Unknown'
	else ''
end as rectype,
"public"."ContHist"."ONDATE",
"public"."ContHist"."ONTIME",
"public"."ContHist"."REF",
"public"."ContHist"."NOTES"
FROM
"public"."ContHist"
Left Join "public"."Contact1" ON "public"."Contact1"."ACCOUNTNO" = "public"."ContHist"."ACCOUNTNO"
Left Join "public"."new_contact_id" ON "public"."new_contact_id"."goldmine_recid" = "public"."Contact1"."RECID"
Left Join "public"."Users" ON "public"."Users"."USERNAME" = "public"."ContHist"."USERID"
WHERE
"public"."ContHist"."RECTYPE" <>  'MO' AND
"public"."ContHist"."RECTYPE" <>  'MI'
