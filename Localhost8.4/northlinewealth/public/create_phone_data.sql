create table phone_info
(
contact_id varchar(255),
"Phone Number" varchar(255),
"Phone Type" varchar(255)
);

insert into phone_info
(
select
contact_id,
"BusinessFax",
'Fax'
from contacts
where "BusinessFax" <> ''
);

insert into phone_info
(
select
contact_id,
"BusinessPhone",
'Business'
from contacts
where "BusinessPhone" <> ''
);

insert into phone_info
(
select
contact_id,
"HomeFax",
'Fax'
from contacts
where "HomeFax" <> ''
);

insert into phone_info
(
select
contact_id,
"HomePhone",
'Home'
from contacts
where "HomePhone" <> ''
);

insert into phone_info
(
select
contact_id,
"HomePhone2",
'Home'
from contacts
where "HomePhone2" <> ''
);

insert into phone_info
(
select
contact_id,
"MobilePhone",
'Cellular'
from contacts
where "MobilePhone" <> ''
);

insert into phone_info
(
select
contact_id,
"OtherPhone",
'Other'
from contacts
where "OtherPhone" <> ''
);

