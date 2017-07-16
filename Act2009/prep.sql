update "CONTACT" set "Date of Birth" = "Date of Birth" + interval '5 minutes';
update "CONTACT" set "Date of Birth Sp-" = "Date of Birth Sp-" + interval '5 minutes';
update "CONTACT" set "Child 1 DOB" = "Child 1 DOB" + interval '5 minutes';
update "CONTACT" set "Child 2 DOB" = "Child 2 DOB" + interval '5 minutes';
update "CONTACT" set "Child 3 DOB" = "Child 3 DOB" + interval '5 minutes';
update "CONTACT" set "Child 4 DOB" = "Child 4 DOB" + interval '5 minutes';
--update "CONTACT" set "Child 5 DOB" = "Child 5 DOB" + interval '5 minutes';

create view main_contact_data as 
(SELECT 
  
"CONTACTID",
"Assistant",
"Birth Date",
"Comments",
"Company",
"Company Sp-",
"Contact",
"Contact SS",
date_trunc('day',"Date of Birth") as dob,
date_trunc('day',"Date of Birth Sp-") as dob_spouse,
"Department",
"E-mail",
"Est- NetWorth",
"Financial Services",
"First Name",
"ID/Status",
"Income",
"Intermediate Bond",
"Large Growth",
"Large Value",
"Last Name",
"Long Bond",
"Main Interest",
"Managed Futures",
"Messenger ID",
"Mid Growth",
"Mid Value",
"Middle Name",
"Mutual Fund Amt",
"Name Prefix",
"Name Suffix",
"Owner",
"Referred By",
"REITs",
"Risk Tolerance",
"Salutation",
"Short Bonds",
"Small Growth",
"Small Value",
"Spouse",
"Spouse SS",
"Stocks Amt",
"Stocks Held",
"Tax AGI",
"Tax Bracket",
"Tax CapGains",
"Tax CapLoss",
"Tax Total",
"Ticker Symbol",
"Title",
"Title Sp-",
"Web Site"
from "CONTACT");

create table address_data
(
contact_id varchar(38),
address_1 varchar(255),
address_2 varchar(255),
address_3 varchar(255),
address_city varchar(255),
address_state varchar(255),
address_zipcode varchar(255),
address_type varchar(255)
);

insert into address_data (contact_id,address_1,address_2,address_3,address_city,address_state,address_zipcode,address_type)
(
select 
"CONTACTID",
"Address 1",
"Address 2",
"Address 3",
"City",
"State",
"ZIP Code",
'Work' as address_type
from "CONTACT");

insert into address_data (contact_id,address_1,address_2,address_3,address_city,address_state,address_zipcode,address_type)
(
select
"CONTACTID",
"Home Address 1",
"Home Address 2",
"Home Address 3",
"Home City",
"Home State",
"Home ZIP Code",
'Home' as address_type
from "CONTACT");

insert into address_data (contact_id,address_1,address_2,address_city,address_state,address_zipcode,address_type)
(
select 
"CONTACTID",
"Work Addrs1 Sp-",
"Work Addrs2 Sp-",
"Work City Sp-",
"Work State Sp-",
"Work Zip Sp-",
'Work Spouse' as address_type
from "CONTACT");

create table phone_data
(
contact_id varchar(38),
phone_number varchar(255),
phone_ext varchar(255),
phone_type varchar(255)
);

insert into phone_data
(
select
"CONTACTID",
"Phone",
"Extension",
'Work' as phone_type
from "CONTACT"
where "Phone" <> '');

insert into phone_data
(
select
"CONTACTID",
"Home Phone",
"Home Extension",
'Home' as phone_type
from "CONTACT"
where "Home Phone" <> '');

insert into phone_data 
(
select
"CONTACTID",
"Mobile Phone",
"Mobile Extension",
'Cellular' as phone_type
from "CONTACT"
where "Mobile Phone" <> '');

insert into phone_data 
(
select
"CONTACTID",
"Fax Phone",
"Fax Extension",
'Cellular' as phone_type
from "CONTACT"
where "Fax Phone" <> '');

insert into phone_data
(
select
"CONTACTID",
"Pager Phone",
"Pager Extension",
'Pager' as phone_type
from "CONTACT"
where "Pager Phone" <> '');

insert into phone_data 
(
select
"CONTACTID",
"Work Phone Sp-",
"Phone Ext-  Sp-",
'Spouse Work' as phone_type
from "CONTACT"
where "Work Phone Sp-" <> '');

insert into phone_data
(
select
"CONTACTID",
"Alternate Phone",
"Alternate Extension",
'Alt' as phone_type
from "CONTACT"
where "Alternate Phone" <> '');

insert into phone_data
(
select
"CONTACTID",
"Alt Phone3",
"Alt Phone3 Desc-",
'Alt' as phone_type
from "CONTACT"
where "Alt Phone3" <> '');

create table child_data
(
contact_id varchar(38),
child_name varchar(255),
child_dob varchar(255),
child_ss varchar(255)
);

insert into child_data
(
select 
"CONTACTID",
"Child 1",
"Child 1 DOB",
"Child 1 SS"
from "CONTACT"
where "Child 1" <> '');

insert into child_data
(
select 
"CONTACTID",
"Child 2",
"Child 2 DOB",
"Child 2 SS"
from "CONTACT"
where "Child 2" <> '');

insert into child_data
(
select 
"CONTACTID",
"Child 3",
"Child 3 DOB",
"Child 3 SS"
from "CONTACT"
where "Child 3" <> '');

insert into child_data
(
select 
"CONTACTID",
"Child 4",
"Child 4 DOB",
"Child 4 SS"
from "CONTACT"
where "Child 4" <> '');

