create table clean_mail2 as 
(
SELECT
distinct
contact_id,
CASE when "public"."MailBox2"."USERID" = 'KMC' then '35'
	when "public"."MailBox2"."USERID" = 'AGM' then '36'
	when "public"."MailBox2"."USERID" = 'JEF' then '39'
	when "public"."MailBox2"."USERID" = 'ETA' then '40'
	when "public"."MailBox2"."USERID" = 'JWH' then '37'
	when "public"."MailBox2"."USERID" = 'CSP' then '38'
	else '41'
end as user_id,
'Email History from Goldmine' as type,
epoch_total("MAILDATE","MAILTIME") as startdate,
strip_tags("public"."MailBox2"."MAILREF") as subject,
strip_tags("public"."MailBox2"."RFC822") as details
FROM
"public"."MailBox2"
where "FOLDER" = 'Sent'
);
