SELECT
"public"."AAADDR"."NAMEID" as contact_id,
case when "public"."AAADDR"."ADDRESSID" = 'HOME' then 'Home'
	when "public"."AAADDR"."ADDRESSID" = 'BUSINESS' then 'Business'
	when "public"."AAADDR"."ADDRESSID" = 'MAIL' then 'Mailing'
	when "public"."AAADDR"."ADDRESSID" = 'IMPORT' then 'Imported from Mailing List'
else ''
end as "Address Type",
case when "public"."AAADDR"."PRIMARY" = 't' then 'Yes'
	when "public"."AAADDR"."PRIMARY" = 'f' then 'No'
end as "Primary Address",
"public"."AAADDR"."STREET1" as "Address Line 1",
"public"."AAADDR"."STREET2" as "Address Line 2",
"public"."AAADDR"."CITY" as "Address City",
"public"."AAADDR"."STATE" as "Address State",
"public"."AAADDR"."ZIP" as "Address Zip"
FROM
"public"."AAADDR"
where "public"."AAADDR"."ADDRESSID" <> 'EMAIL' and "public"."AAADDR"."ADDRESSID" <> 'WEB SITE' and "public"."AAADDR"."NAMEID" in (select "NAMEID" from aaname)
