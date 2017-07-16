SELECT
"public"."TBL_PHONE"."CONTACTID" as contact_id,
"public"."TBL_PHONE"."NUMBERDISPLAY" as "Phone Number",
"public"."TBL_PHONE"."SUFFIX" as "Phone Extension",
case when "public"."TBL_PICKLISTITEM"."NAME" = 'Mobile' then 'Cellular'
else "public"."TBL_PICKLISTITEM"."NAME" 
end as "Phone Type"
FROM
"public"."TBL_PHONE"
Inner Join "public"."TBL_PICKLISTITEM" ON "public"."TBL_PICKLISTITEM"."PICKLISTITEMID" = "public"."TBL_PHONE"."TYPEID"
where
"NUMBERDISPLAY" is not null
