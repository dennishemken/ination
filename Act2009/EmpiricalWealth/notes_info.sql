SELECT
"public"."NOTE"."CONTACTID",
extract(epoch from date_trunc('second', "public"."NOTE"."Created On")) as create_date,
case when "Edited On" is Null then extract(epoch from date_trunc('second', "public"."NOTE"."Created On")) 
	else extract(epoch from date_trunc('second', "public"."NOTE"."Edited On")) 
end as edit_date,
'Note Imported from Act' as subject,
"public"."NOTE"."Note",
extract(epoch from date_trunc('second', "public"."NOTE"."Note Date")) as start_date,
extract(epoch from date_trunc('second', "public"."NOTE"."Note Date")) as end_date,
'done' as status,
--"public"."NOTE"."Record Manager",
"public"."NOTE"."TYPES Description" as info_type
FROM
"public"."NOTE"
