--Create custom tab for Alternate Contacts

insert into phpgw_custom_tabs (id_custom_tab,tab_sequence,tab_name)
values
(70,50,'Alternate');

--Create custom fields for Alternate Contacts

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(600,3,'Alternate Contact',170,'addressbook','Global','Custom Group',10,10,0);

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(601,3,'Alt Contact Name',170,'addressbook','Global','Custom Group',10,10,600);

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(602,3,'Alt Contact Title',170,'addressbook','Global','Custom Group',20,10,600);

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(603,3,'Alt Address 1',170,'addressbook','Global','Custom Group',10,20,600);

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(604,3,'Alt Address 2',170,'addressbook','Global','Custom Group',20,20,600);

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(605,3,'Alt City',170,'addressbook','Global','Custom Group',30,20,600);

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(606,3,'Alt Address State',170,'addressbook','Global','Custom Group',10,30,600);

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(607,3,'Alt Address Zip',170,'addressbook','Global','Custom Group',20,30,600);

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(608,3,'Alt Contact Phone 1',170,'addressbook','Global','Custom Group',10,40,600);

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(609,3,'Alt Contact Phone 2',170,'addressbook','Global','Custom Group',20,40,600);

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(610,3,'Alt Contact Fax',170,'addressbook','Global','Custom Group',30,40,600);

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(611,3,'Alt Contact Email',170,'addressbook','Global','Custom Group',10,50,600);

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(612,3,'Alt Contact Notes',170,'addressbook','Global','Custom Group',10,60,600);


--Add group_id to alt_contacts table

alter table old_phpgw_addressbook_alternate add column group_id int8;

update old_phpgw_addressbook_alternate
set group_id = nextval('seq_phpgw_addressbook_extra_group');

--Add owner info to alt_contacts table

alter table old_phpgw_addressbook_alternate add column owner_id int8;

update old_phpgw_addressbook_alternate set owner_id = owner from old_phpgw_addressbook where id_addressbook = id;

insert into phpgw_addressbook_extra
(select  id_addressbook,owner_id,'cus601',name,'600',group_id from old_phpgw_addressbook_alternate);

insert into phpgw_addressbook_extra
(select  id_addressbook,owner_id,'cus602',title,'600',group_id from old_phpgw_addressbook_alternate);

insert into phpgw_addressbook_extra
(select  id_addressbook,owner_id,'cus603',address1,'600',group_id from old_phpgw_addressbook_alternate);

insert into phpgw_addressbook_extra
(select  id_addressbook,owner_id,'cus604',address2,'600',group_id from old_phpgw_addressbook_alternate);

insert into phpgw_addressbook_extra
(select  id_addressbook,owner_id,'cus605',city,'600',group_id from old_phpgw_addressbook_alternate);

insert into phpgw_addressbook_extra
(select  id_addressbook,owner_id,'cus606',state,'600',group_id from old_phpgw_addressbook_alternate);

insert into phpgw_addressbook_extra
(select  id_addressbook,owner_id,'cus607',zip,'600',group_id from old_phpgw_addressbook_alternate);

insert into phpgw_addressbook_extra
(select  id_addressbook,owner_id,'cus608',phone1,'600',group_id from old_phpgw_addressbook_alternate);

insert into phpgw_addressbook_extra
(select  id_addressbook,owner_id,'cus609',phone2,'600',group_id from old_phpgw_addressbook_alternate);

insert into phpgw_addressbook_extra
(select  id_addressbook,owner_id,'cus610',fax,'600',group_id from old_phpgw_addressbook_alternate);

insert into phpgw_addressbook_extra
(select  id_addressbook,owner_id,'cus611',email,'600',group_id from old_phpgw_addressbook_alternate);

insert into phpgw_addressbook_extra
(select  id_addressbook,owner_id,'cus612',notes,'600',group_id from old_phpgw_addressbook_alternate);

