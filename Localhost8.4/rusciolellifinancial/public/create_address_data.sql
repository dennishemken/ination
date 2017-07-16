drop view address_info;
drop table address;

CREATE TABLE address
(
  contact_id character varying,
  address_1 character varying,
  address_2 character varying,
  address_city character varying,
  address_state character varying,
  address_zip character varying,
  address_type character varying
);

insert into address
(
SELECT
"public".laserapp_clients."CLIENT_ID",
"public".laserapp_clients."ClientAddress",
"public".laserapp_clients."ClientApt",
"public".laserapp_clients."ClientCity",
"public".laserapp_clients."ClientState",
"public".laserapp_clients."ClientZip",
'Home' as address_type
FROM
"public".laserapp_clients
WHERE
"public".laserapp_clients."ClientAddress" is not null or
"public".laserapp_clients."ClientApt" is not null or
"public".laserapp_clients."ClientCity" is not null or
"public".laserapp_clients."ClientState" is not null or
"public".laserapp_clients."ClientZip" is not null
);


insert into address
(
SELECT
"public".laserapp_clients."CLIENT_ID",
"public".laserapp_clients."ClientEmployerAddress",
"public".laserapp_clients."ClientEmployerSuite",
"public".laserapp_clients."ClientEmployerCity",
"public".laserapp_clients."ClientEmployerState",
"public".laserapp_clients."ClientEmployerZip",
'Business' as address_type
FROM
"public".laserapp_clients
WHERE
"public".laserapp_clients."ClientEmployerAddress" is not null or
"public".laserapp_clients."ClientEmployerSuite" is not null or
"public".laserapp_clients."ClientEmployerCity" is not null or
"public".laserapp_clients."ClientEmployerState" is not null or
"public".laserapp_clients."ClientEmployerZip" is not null
);





