update nbmail_incoming_accounts set incoming_server = 'popmail02.smarsh.com' where incoming_server = 'fv01.smarsh.com';
update nbmail_incoming_accounts set password = '6620$pfaMail' where incoming_server = 'popmail02.smarsh.com';


update nbmail_outgoing_accounts set server_name = 'popmail02.smarsh.com' where server_name = 'popmail02.smarch.com';
update nbmail_outgoing_accounts set password = '6620$pfaMail' where server_name = 'popmail02.smarsh.com';
