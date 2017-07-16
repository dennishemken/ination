SELECT
"public"."CONTACT1".contact_id,
case when "public"."CONTHIST"."RECTYPE" = 'A' then 'Appointment'
	when "public"."CONTHIST"."RECTYPE" = 'C' then 'Phone Call'
	when "public"."CONTHIST"."RECTYPE" = 'CC' then 'Call Back'
	when "public"."CONTHIST"."RECTYPE" = 'CI' then 'Incoming Call'
	when "public"."CONTHIST"."RECTYPE" = 'CM' then 'Returned Message'
	when "public"."CONTHIST"."RECTYPE" = 'CO' then 'Outgoing Call'
	when "public"."CONTHIST"."RECTYPE" = 'D' then 'Todo'
	when "public"."CONTHIST"."RECTYPE" = 'E' then 'Event'
	when "public"."CONTHIST"."RECTYPE" = 'L' then 'Form'
	when "public"."CONTHIST"."RECTYPE" = 'O' then 'Other'
	when "public"."CONTHIST"."RECTYPE" = 'S' then 'Sale'
	when "public"."CONTHIST"."RECTYPE" = 'T' then 'Next Action'
	when "public"."CONTHIST"."RECTYPE" = 'U' then 'Unknown'
	else ''
end as type,
"public"."CONTHIST"."ONDATE",
"public"."CONTHIST"."ONTIME",
'done' as status,
strip_tags("public"."CONTHIST"."REF") as subject,
strip_tags("public"."CONTHIST"."NOTES") as description
FROM
"public"."CONTACT1" inner join "public"."CONTHIST" on "public"."CONTACT1"."ACCOUNTNO" = "public"."CONTHIST"."ACCOUNTNO" 

