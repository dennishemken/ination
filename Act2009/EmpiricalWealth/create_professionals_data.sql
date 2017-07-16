create table professionals_data as 
(
select 
"CONTACTID",
"CPA" as professional_name,
"CPA Address" as professional_address,
"CPA Phone" as professional_phone,
"CPA Fax" as professional_fax,
"CPA E-mail" as professional_email,
'CPA' as professional_type
from contacts_full
where
"CPA" is not null
);

insert into professionals_data 
(
select 
"CONTACTID",
"Attorney" as professional_name,
"Attorney Address" as professional_address,
"Attorney Phone" as professional_phone,
"Attorney Fax" as professional_fax,
"Attorney E-mail" as professional_email,
'Attorney' as professional_type
from contacts_full
where
"Attorney" is not null
);
