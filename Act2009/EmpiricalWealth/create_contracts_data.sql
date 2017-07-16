create table contracts_data
(
contact_id varchar,
contract_label varchar,
contract_date_delivered timestamp without time zone,
contract_client boolean,
contract_signature boolean,
contract_addtl_client boolean,
contract_document_name varchar
);

insert into contracts_data
(
select
"CONTACTID",
'Client Agreement' as contract_label,
"Client Agreement Date",
"Client Agreement Signature on File",
"Co-Client Agreement Signature on File",
"Addtl Client Agreement Signature on File",
"Client Agreement Document"
from 
contacts_full
where
"Client Agreement Date" is not null or
"Client Agreement Signature on File" is not null or
"Co-Client Agreement Signature on File" is not null or
"Addtl Client Agreement Signature on File" is not null or
"Client Agreement Document" is not null
);

insert into contracts_data
(
select
"CONTACTID",
'Allocation Policy Statement' as contract_label,
"Allocation Policy Statement Date",
"Allocation Policy Statement Signature on File",
"Co-Client Allocation Policy Statement Signature on File",
"Addtl Client Allocation Policy Statement Signature on File",
"Allocation Policy Statement Document"
from
contacts_full
where
"Allocation Policy Statement Date" is not null or
"Allocation Policy Statement Signature on File" is not null or
"Co-Client Allocation Policy Statement Signature on File" is not null or
"Addtl Client Allocation Policy Statement Signature on File" is not null or
"Allocation Policy Statement Document" is not null
);

insert into contracts_data
(
select
"CONTACTID",
'IPS Part I (Client Details)' as contract_label,
"IPS Part I Date",
"IPS Part I Signature on File",
"Co-Client IPS Part I Signature on File",
"Addtl Client IPS Part I Signature on File",
"IPS Part I Document"
from
contacts_full
where
"IPS Part I Date" is not null or
"IPS Part I Signature on File" is not null or
"Co-Client IPS Part I Signature on File" is not null or
"Addtl Client IPS Part I Signature on File" is not null or
"IPS Part I Document" is not null
);

insert into contracts_data
(
select
"CONTACTID",
'IPS Part II (Client Details)' as contract_label,
"IPS Part II Date",
"IPS Part II Signature on File",
"Co-Client IPS Part II Signature on File",
"Addtl Client IPS Part II Signature on File",
"IPS Part II Document"
from
contacts_full
where
"IPS Part II Date" is not null or
"IPS Part II Signature on File" is not null or
"Co-Client IPS Part II Signature on File" is not null or
"Addtl Client IPS Part II Signature on File" is not null or
"IPS Part II Document" is not null
);

insert into contracts_data
(
select
"CONTACTID",
'IPS Part III (Client Details)' as contract_label,
"IPS Part III Date",
"IPS Part III Signature on File",
"Co-Client IPS Part III Signature on File",
"Addtl Client IPS Part III Signature on File",
"IPS Part III Document"
from
contacts_full
where
"IPS Part III Date" is not null or
"IPS Part III Signature on File" is not null or
"Co-Client IPS Part III Signature on File" is not null or
"Addtl Client IPS Part III Signature on File" is not null or
"IPS Part III Document" is not null
);

