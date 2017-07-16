SELECT
"public".aaphone."NAMEID" as contact_id,
case when "public".aaphone."PHONEID" = 'HOME' then 'Home'
when "public".aaphone."PHONEID" = 'BUSINESS' then 'Business'
when "public".aaphone."PHONEID" = 'FAX' then 'Fax'
when "public".aaphone."PHONEID" = 'OTHER' then 'Other'
when "public".aaphone."PHONEID" = 'IMPORT' then 'Imported From Mailing List'
when "public".aaphone."PHONEID" = 'CELL' then 'Cell'
when "public".aaphone."PHONEID" = 'PAGER' then 'Pager'
when "public".aaphone."PHONEID" = 'FAXWORK' then 'Fax'
end as "Phone Type",
"public".aaphone."AREACODE"||'-'||"public".aaphone."PHONENUM" as "Phone Number",
"public".aaphone."PHONEEXT" as "Phone Extension",
case when "public".aaphone."PRIMARY" = 't' then 'Yes'
	when "public".aaphone."PRIMARY" = 'f' then 'No'
end as "Primary Phone"
FROM
"public".aaphone
