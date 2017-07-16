alter table client_info 
add column contact_id int8;
alter table client_info
add column owner int8;
alter table spouse_info 
add column contact_id int8;
alter table spouse_info
add column owner int8;

update client_info set contact_id = phpgw_addressbook_extra.contact_id from phpgw_addressbook_extra where contact_name = 'cus586' and contact_value = client_id;

update client_info set owner = contact_owner from phpgw_addressbook_extra where contact_name = 'cus586' and contact_value = client_id;

update spouse_info set contact_id = phpgw_addressbook_extra.contact_id from phpgw_addressbook_extra where contact_name = 'cus586' and contact_value = client_id;

update spouse_info set owner = contact_owner from phpgw_addressbook_extra where contact_name = 'cus586' and contact_value = client_id;

insert into phpgw_addressbook_extra (contact_id,contact_owner,contact_name,contact_value)
(select distinct contact_id,owner,'cus499',client_birthdate from client_info where contact_id is not Null);

insert into phpgw_addressbook_extra (contact_id,contact_owner,contact_name,contact_value)
(select distinct contact_id,owner,'cus502',client_ssn from client_info where contact_id is not Null);

insert into phpgw_addressbook_extra (contact_id,contact_owner,contact_name,contact_value)
(select distinct contact_id,owner,'cus622',spouse_birthdate from spouse_info where contact_id is not Null);

insert into phpgw_addressbook_extra (contact_id,contact_owner,contact_name,contact_value)
(select distinct contact_id,owner,'cus623',spouse_ssn from spouse_info where contact_id is not Null);

