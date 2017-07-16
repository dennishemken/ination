create table clean_mailbox as
(
SELECT DISTINCT
"public"."CONTACT1".contact_id,
'Email History from Goldmine' AS "type",
epoch_total("MAILDATE","MAILTIME") AS startdate,
strip_tags("public"."MAILBOX"."MAILREF") AS subject,
strip_tags("public"."MAILBOX"."RFC822") AS details
FROM
"public"."MAILBOX"
Left Join "public"."CONTACT1" ON "public"."CONTACT1"."ACCOUNTNO" = "public"."MAILBOX"."ACCOUNTNO"
);
