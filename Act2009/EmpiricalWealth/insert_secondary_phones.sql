insert into phone_data
(
select
"Secondaryid",
"Phone",
"Phone Extension",
'' as phone_type
from "SECONDARY_CONTACTS"
WHERE
"Phone" is not null
);

insert into phone_data
(
select
"Secondaryid",
"Mobile Phone",
'' as phone_ext,
'Cell' as phone_type
from "SECONDARY_CONTACTS"
where
"Mobile Phone" is not null
);

insert into phone_data
(
select
"Secondaryid",
"Fax Phone",
'' as phone_ext,
'Fax' as phone_type
from "SECONDARY_CONTACTS"
where
"Fax Phone" is not null
);
