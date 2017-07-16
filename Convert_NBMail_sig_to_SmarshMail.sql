insert into round_users (username,mail_host,alias,language)
(
select
distinct
username,
incoming_server,
max(title),
'en_US'
from nbmail_incoming_accounts 
where
title not in (select alias from round_users)
and username <> '' and title <> ''
group by 
username,
incoming_server
);




insert into round_identities 
(user_id,standard,name,organization,email,"reply-to",signature,html_signature)
(
select distinct
round_users.user_id,
1,
nbmail_incoming_accounts.full_name,
nbmail_incoming_accounts.organization,
nbmail_incoming_accounts.email,
nbmail_incoming_accounts.reply_to,
nbmail_documents.document,
1 
from round_users 
inner join nbmail_incoming_accounts on nbmail_incoming_accounts.username = round_users.username and nbmail_incoming_accounts.title = round_users.alias 
inner join nbmail_documents on nbmail_documents.title = nbmail_incoming_accounts.signature
where round_users.user_id not in (select user_id from round_identities)
);


update round_identities 
set signature = round_identities.signature||'<br /><br /><br /><br />'||nbmail_documents.document 
from round_users inner join nbmail_incoming_accounts on nbmail_incoming_accounts.username = round_users.username or nbmail_incoming_accounts.title = round_users.alias 
inner join nbmail_documents on nbmail_documents.title = nbmail_incoming_accounts.disclaimer
where round_users.user_id = round_identities.user_id;