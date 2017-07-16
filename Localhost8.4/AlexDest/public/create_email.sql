CREATE TABLE email
(
  contact_id character varying,
  email character varying,
  email_note character varying
);

insert into email
(
SELECT
"public".laserapp_clients."CLIENT_ID",
"public".laserapp_clients."ClientEmail"
FROM
"public".laserapp_clients
);


insert into email
(
SELECT
"public".laserapp_clients."CLIENT_ID",
"public".laserapp_clients."SpouseEmail",
'Spouse Email' as email_note
FROM
"public".laserapp_clients
);
