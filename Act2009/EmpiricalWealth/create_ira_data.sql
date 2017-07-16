create table ira_data
(
contact_id varchar,
ira_year varchar,
ira_amount double precision,
ira_type varchar,
ira_name varchar
);

insert into ira_data
(
select
"CONTACTID",
"IRA 1 Year",
"IRA 1 Amount",
"IRA 1 Type",
"IRA 1 Name"
from contacts_full
where
"IRA 1 Year" is not Null or
"IRA 1 Amount" is not Null or
"IRA 1 Type" is not Null or
"IRA 1 Name" is not Null
);

insert into ira_data
(
select
"CONTACTID",
"IRA 2 Year",
"IRA 2 Amount",
"IRA 2 Type",
"IRA 2 Name"
from contacts_full
where
"IRA 2 Year" is not Null or
"IRA 2 Amount" is not Null or
"IRA 2 Type" is not Null or
"IRA 2 Name" is not Null
);

insert into ira_data
(
select
"CONTACTID",
"IRA 3 Year",
"IRA 3 Amount",
"IRA 3 Type",
"IRA 3 Name"
from contacts_full
where
"IRA 3 Year" is not Null or
"IRA 3 Amount" is not Null or
"IRA 3 Type" is not Null or
"IRA 3 Name" is not Null
);

insert into ira_data
(
select
"CONTACTID",
"IRA 4 Year",
"IRA 4 Amount",
"IRA 4 Type",
"IRA 4 Name"
from contacts_full
where
"IRA 4 Year" is not Null or
"IRA 4 Amount" is not Null or
"IRA 4 Type" is not Null or
"IRA 4 Name" is not Null
);

insert into ira_data
(
select
"CONTACTID",
"IRA 5 Year",
"IRA 5 Amount",
"IRA 5 Type",
"IRA 5 Name"
from contacts_full
where
"IRA 5 Year" is not Null or
"IRA 5 Amount" is not Null or
"IRA 5 Type" is not Null or
"IRA 5 Name" is not Null
);

insert into ira_data
(
select
"CONTACTID",
"IRA 6 Year",
"IRA 6 Amount",
"IRA 6 Type",
"IRA 6 Name"
from contacts_full
where
"IRA 6 Year" is not Null or
"IRA 6 Amount" is not Null or
"IRA 6 Type" is not Null or
"IRA 6 Name" is not Null
);

insert into ira_data
(
select
"CONTACTID",
"IRA 7 Year",
"IRA 7 Amount",
"IRA 7 Type",
"IRA 7 Name"
from contacts_full
where
"IRA 7 Year" is not Null or
"IRA 7 Amount" is not Null or
"IRA 7 Type" is not Null or
"IRA 7 Name" is not Null
);

insert into ira_data
(
select
"CONTACTID",
"IRA 8 Year",
"IRA 8 Amount",
"IRA 8 Type",
"IRA 8 Name"
from contacts_full
where
"IRA 8 Year" is not Null or
"IRA 8 Amount" is not Null or
"IRA 8 Type" is not Null or
"IRA 8 Name" is not Null
);

insert into ira_data
(
select
"CONTACTID",
"IRA 9 Year",
"IRA 9 Amount",
"IRA 9 Type",
"IRA 9 Name"
from contacts_full
where
"IRA 9 Year" is not Null or
"IRA 9 Amount" is not Null or
"IRA 9 Type" is not Null or
"IRA 9 Name" is not Null
);

insert into ira_data
(
select
"CONTACTID",
"IRA 10 Year",
"IRA 10 Amount",
"IRA 10 Type",
"IRA 10 Name"
from contacts_full
where
"IRA 10 Year" is not Null or
"IRA 10 Amount" is not Null or
"IRA 10 Type" is not Null or
"IRA 10 Name" is not Null
);

insert into ira_data
(
select
"CONTACTID",
"IRA 11 Year",
"IRA 11 Amount",
"IRA 11 Type",
"IRA 11 Name"
from contacts_full
where
"IRA 11 Year" is not Null or
"IRA 11 Amount" is not Null or
"IRA 11 Type" is not Null or
"IRA 11 Name" is not Null
);

insert into ira_data
(
select
"CONTACTID",
"IRA 12 Year",
"IRA 12 Amount",
"IRA 12 Type",
"IRA 12 Name"
from contacts_full
where
"IRA 12 Year" is not Null or
"IRA 12 Amount" is not Null or
"IRA 12 Type" is not Null or
"IRA 12 Name" is not Null
);

