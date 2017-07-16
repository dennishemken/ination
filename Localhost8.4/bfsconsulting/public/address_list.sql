SELECT
"public"."aaaddr"."NAMEID" as contact_id,
case when "public"."aaaddr"."ADDRESSID" = 'HOME' then 'Home'
	when "public"."aaaddr"."ADDRESSID" = 'BUSINESS' then 'Business'
	when "public"."aaaddr"."ADDRESSID" = 'MAIL' then 'Mailing'
	when "public"."aaaddr"."ADDRESSID" = 'IMPORT' then 'Imported from Mailing List'
else ''
end as "Address Type",
case when "public"."aaaddr"."PRIMARY" = 't' then 'Yes'
	when "public"."aaaddr"."PRIMARY" = 'f' then 'No'
end as "Primary Address",
"public"."aaaddr"."STREET1" as "Address Line 1",
"public"."aaaddr"."STREET2" as "Address Line 2",
"public"."aaaddr"."CITY" as "Address City",
"public"."aaaddr"."STATE" as "Address State",
"public"."aaaddr"."ZIP" as "Address Zip"
FROM
"public"."aaaddr"
where "public"."aaaddr"."ADDRESSID" <> 'EMAIL' and "public"."aaaddr"."ADDRESSID" <> 'WEB SITE' and "public"."aaaddr"."NAMEID" in (select "NAMEID" from aaname)
