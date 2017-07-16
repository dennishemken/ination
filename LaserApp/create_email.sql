CREATE TABLE email
(
  contact_id character varying,
  email character varying
);

insert into email
(
SELECT
"public".laserapp_clients."CLIENT_ID",
"public".laserapp_clients."ClientEmail"
FROM
"public".laserapp_clients
);
