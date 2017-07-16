CREATE TABLE phones
(
  contact_id character varying,
  phone_number character varying,
  phone_ext character varying,
  phone_type character varying,
  phone_note character varying
);

insert into phones
(
select
"public".laserapp_clients."CLIENT_ID",
"public".laserapp_clients."ClientCellPhone",
'' as phone_ext,
'Cell' as phone_type
from laserapp_clients
where
"ClientCellPhone" is not null
);

insert into phones
(
select
"public".laserapp_clients."CLIENT_ID",
"public".laserapp_clients."ClientHomePhone",
'' as phone_ext,
'Home' as phone_type
from laserapp_clients
where
"ClientHomePhone" is not null
);


insert into phones
(
select
"public".laserapp_clients."CLIENT_ID",
"public".laserapp_clients."ClientEmployerPhone",
"ClientEmployerPhoneExt" as phone_ext,
'Business' as phone_type
from laserapp_clients
where
"ClientEmployerPhoneExt" is not null
);


insert into phones
(
select
"public".laserapp_clients."CLIENT_ID",
"public".laserapp_clients."CompanyFax",
'' as phone_ext,
'Fax' as phone_type
from laserapp_clients
where
"CompanyFax" is not null
);

insert into phones
(
select
"public".laserapp_clients."CLIENT_ID",
"public".laserapp_clients."SpouseCellPhone",
'' as phone_ext,
'Cell' as phone_type,
'Spouse Cell' as phone_note
from laserapp_clients
where
"ClientCellPhone" is not null
);

insert into phones
(
select
"public".laserapp_clients."CLIENT_ID",
"public".laserapp_clients."SposeEmployerPhone",
"SpouseEmployerPhoneExt" as phone_ext,
'Business' as phone_type,
'Spouse Employer' as phone_note
from laserapp_clients
where
"ClientEmployerPhoneExt" is not null
);
