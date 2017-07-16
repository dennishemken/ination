--Turn triggers off to speed things up

update pg_trigger set tgenabled = false where tgname like 'trg%';

--Declare Function to update sequence numbers

create or replace function update_sequence (table_name text,id_name text, sequence_name text)
returns int as
$$
declare

max_plus_one int4;

Begin

execute 'select max('||id_name||') + 1 from '||table_name into max_plus_one;

execute 'alter sequence '||sequence_name||' restart with '||max_plus_one;
return max_plus_one;
exception when null_value_not_allowed then return 1;
end;
$$
language plpgsql;


--Create tables to hold data that can't be copied directly to the matching tables



CREATE TABLE old_phpgw_accounts(
account_id int4,
account_lid varchar(25),
account_pwd varchar(100),
account_firstname varchar(50),
account_lastname varchar(50),
account_lastlogin int4,
account_lastloginfrom varchar(255),
account_lastpwd_change int4,
account_status char(1),
account_expires int4,
account_type char(1),
person_id int4,
account_primary_group int4,
social varchar(50),
mother_maiden varchar(50),
account_email varchar(100),
account_workphone varchar(20),
account_title varchar(20),
original_id bigint,
account_validate_question varchar(500),
account_validate_answer varchar(500)
);



CREATE TABLE old_phpgw_acl
(
  acl_appname character varying(50) NOT NULL,
  acl_location character varying(255) NOT NULL,
  acl_account integer NOT NULL,
  acl_rights integer
);



CREATE TABLE old_phpgw_addressbook
(
  id integer,
  lid character varying(32),
  tid character(1),
  "owner" bigint,
  "access" character varying(7),
  fn character varying(64),
  n_family character varying(64),
  n_given character varying(64),
  n_middle character varying(64),
  n_prefix character varying(64),
  n_suffix character varying(64),
  sound character varying(64),
  bday character varying(32),
  note text,
  tz character varying(8),
  dst character varying(5) DEFAULT 1,
  geo character varying(32),
  url character varying(128),
  pubkey text,
  org_name character varying(128),
  org_unit character varying(128),
  title character varying(128),
  adr_one_street text,
  adr_one_locality character varying(64),
  adr_one_region character varying(64),
  adr_one_postalcode character varying(64),
  adr_one_countryname character varying(64),
  adr_one_type character varying(32),
  label text,
  adr_two_street text,
  adr_two_locality character varying(64),
  adr_two_region character varying(64),
  adr_two_postalcode character varying(64),
  adr_two_countryname character varying(64),
  adr_two_type character varying(32),
  tel_work character varying(40) NOT NULL DEFAULT '+1 (000) 000-0000'::character varying,
  tel_home character varying(40) NOT NULL DEFAULT '+1 (000) 000-0000'::character varying,
  tel_voice character varying(40) NOT NULL DEFAULT '+1 (000) 000-0000'::character varying,
  tel_fax character varying(40) NOT NULL DEFAULT '+1 (000) 000-0000'::character varying,
  tel_msg character varying(40) NOT NULL DEFAULT '+1 (000) 000-0000'::character varying,
  tel_cell character varying(40) NOT NULL DEFAULT '+1 (000) 000-0000'::character varying,
  tel_pager character varying(40) NOT NULL DEFAULT '+1 (000) 000-0000'::character varying,
  tel_bbs character varying(40) NOT NULL DEFAULT '+1 (000) 000-0000'::character varying,
  tel_modem character varying(40) NOT NULL DEFAULT '+1 (000) 000-0000'::character varying,
  tel_car character varying(40) NOT NULL DEFAULT '+1 (000) 000-0000'::character varying,
  tel_isdn character varying(40) NOT NULL DEFAULT '+1 (000) 000-0000'::character varying,
  tel_video character varying(40) NOT NULL DEFAULT '+1 (000) 000-0000'::character varying,
  tel_prefer character varying(32),
  email character varying(64),
  email_type character varying(32) DEFAULT 'INTERNET'::character varying,
  email_home character varying(64),
  email_home_type character varying(32) DEFAULT 'INTERNET'::character varying,
  last_mod bigint NOT NULL,
  ssn character varying(15),
  driver_license character varying(50),
  marital_status character varying(30),
  adr_one_street2 character varying(64),
  adr_one_street3 character varying(64),
  adr_two_street2 character varying(64),
  adr_two_street3 character varying(64),
  email_home2 character varying(64),
  tel_cell_bus character varying(40),
  type_lead character varying(40),
  trial_users character varying(10),
  next_steps text,
  close_date character varying(40),
  seats_sell character varying(10),
  monthly_revenue character varying(10),
  sales_stage character varying(40),
  lead_source character varying(40),
  type_company character varying(40),
  purchase_timeframe character varying(10),
  lead_size character varying(25),
  nick_name character varying(50),
  tel_home_fax character varying(50),
  tel_home_pager character varying(50),
  email2 character varying(64),
  assigned_to character varying(15),
  cat_id text
);



  CREATE TABLE old_phpgw_addressbook_extra
(
  contact_id integer,
  contact_owner bigint,
  contact_name character varying(255),
  contact_value text
  );
  


CREATE TABLE old_phpgw_addressbook_alternate (
id_addressbook_alternate int4,
id_addressbook int4,
type_alternate varchar(50),
name varchar(64),
title varchar(50),
notes text,
address1 varchar(64),
address2 varchar(64),
city varchar(64),
state varchar(64),
zip varchar(64),
phone1 varchar(40),
phone2 varchar(40),
fax varchar(40),
email varchar(40)
); 



CREATE TABLE old_phpgw_links
(
  link_id integer,
  link_app1 character varying(25),
  link_id1 character varying(50),
  link_app2 character varying(25),
  link_id2 character varying(50),
  link_remark character varying(50),
  link_lastmod integer,
  link_owner integer
);



CREATE TABLE old_phpgw_custom_fields
(
  id_custom_fields integer,
  id_owner integer,
  field_name character varying(64),
  tab_id integer,
  last_mod integer,
  app_name character varying(30),
  access character varying(10),
  type character varying(15),
  sequence integer,
  row integer,
  extra_vars text
);




CREATE TABLE old_phpgw_docworker_docs_setup
(
  id_doc integer,
  id_setup_seq integer,
  command character varying(50),
  aolds text,
  date_create integer
);



CREATE TABLE old_phpgw_campaign_clients
(
  id_campaign integer,
  type_client character(1),
  id_client integer,
  date_start integer,
  date_end integer,
  id_curr_seq integer,
  status text,
  id_campaign_client integer,
  count_repeat smallint
);



CREATE TABLE old_phpgw_campaign_doc_mgmt
(
  id_campaign_doc_mgmt integer,
  id_client integer,
  status character varying(5),
  file_path character varying(255),
  id_campaign integer,
  date_processed integer,
  date_create integer,
  id_campaign_doc character varying(15)
);



CREATE TABLE old_phpgw_cal
(
  cal_id integer,
  uid character varying(255),
  owner bigint,
  groups character varying(255),
  datetime bigint,
  mdatetime bigint,
  edatetime bigint,
  priority bigint,
  cal_type character varying(10),
  is_public bigint,
  description text,
  location character varying(255),
  reference bigint,
  title character varying(2000),
  category character varying(2048)
);



CREATE TABLE old_global_codes
(
  id_codes integer,
  desc_text character varying(80),
  type_code character varying(25),
  status character varying(50),
  user_by character varying(50),
  sort integer,
  code_value character varying(80)
);



CREATE TABLE old_phpgw_preferences
(
preference_owner int4,
preference_app varchar(25),
preference_value text
);


CREATE TABLE old_phpgw_addressbook_group
(
  id_group integer,
  name_group character varying(50),
  public integer DEFAULT 0,
  id_owner integer,
  sql_where text,
  "type" character(1) NOT NULL DEFAULT 'D'::bpchar
);

--Clear data from tables that will have data copied directly to them

delete from phpgw_accounts;
delete from phpgw_acl;
delete from phpgw_infolog;
delete from phpgw_categories;
delete from phpgw_links;
delete from phpgw_docworker_docs;
delete from phpgw_camp;
delete from phpgw_camp_company;
delete from phpgw_camp_sess;
delete from phpgw_camp_user;
delete from phpgw_campaign;
delete from phpgw_campaign_approval;
delete from phpgw_campaign_client_tasks;
delete from phpgw_campaign_clients;
delete from phpgw_campaign_doc_mgmt;
delete from phpgw_campaign_master;
delete from phpgw_campaign_master_docs;
delete from phpgw_campaign_master_hist;
delete from phpgw_campaign_master_tasks;
delete from phpgw_campaign_master_tasks_hist;
delete from phpgw_campaign_tasks;
delete from phpgw_cal;
delete from phpgw_cal_eventlog;
delete from phpgw_cal_extra;
delete from phpgw_cal_holidays;
delete from phpgw_cal_repeats;
delete from phpgw_cal_user;
delete from phpgw_email_tracker;
delete from phpgw_emailadmin;
delete from phpgw_preferences;
delete from phpgw_relation;
delete from phpgw_addressbook_group;


--Copy data from files on server to tables


copy phpgw_accounts from '/var/lib/pgsql/old_phpgw_accounts' with CSV HEADER;

copy old_phpgw_acl from '/var/lib/pgsql/old_phpgw_acl' with CSV HEADER;

copy old_phpgw_addressbook from '/var/lib/pgsql/old_phpgw_addressbook' with CSV HEADER;

copy old_phpgw_addressbook_extra from '/var/lib/pgsql/old_phpgw_addressbook_extra' with CSV HEADER;

copy old_phpgw_addressbook_alternate from '/var/lib/pgsql/old_phpgw_addressbook_alternate' with CSV HEADER;

copy old_phpgw_custom_fields from '/var/lib/pgsql/old_phpgw_custom_fields' with CSV HEADER;

copy phpgw_infolog from '/var/lib/pgsql/old_phpgw_infolog' with CSV HEADER;

copy old_phpgw_links from '/var/lib/pgsql/old_phpgw_links' with CSV HEADER;

copy phpgw_categories from '/var/lib/pgsql/old_phpgw_categories' with CSV HEADER;

copy phpgw_custom_tabs from '/var/lib/pgsql/old_phpgw_custom_tabs' with CSV HEADER;

copy phpgw_docworker_docs from '/var/lib/pgsql/old_phpgw_docworker_docs' with CSV HEADER;

copy old_phpgw_docworker_docs_setup from '/var/lib/pgsql/old_phpgw_docworker_docs_setup' with CSV HEADER;

copy phpgw_camp from '/var/lib/pgsql/old_phpgw_camp' with CSV HEADER;

copy phpgw_camp_company from '/var/lib/pgsql/old_phpgw_camp_company' with CSV HEADER;

copy phpgw_camp_sess from '/var/lib/pgsql/old_phgw_camp_sess' with CSV HEADER;

copy phpgw_camp_user from '/var/lib/pgsql/old_phpgw_camp_user' with CSV HEADER;

copy phpgw_campaign from '/var/lib/pgsql/old_phpgw_campaign' with CSV HEADER;

copy phpgw_campaign_approval from '/var/lib/pgsql/old_phpgw_campaign_approval' with CSV HEADER;

copy phpgw_campaign_client_tasks from '/var/lib/pgsql/old_phpgw_campaign_client_tasks' with CSV HEADER;

copy old_phpgw_campaign_clients from '/var/lib/pgsql/old_phpgw_campaign_clients' with CSV HEADER;

copy old_phpgw_campaign_doc_mgmt from '/var/lib/pgsql/old_phpgw_campaign_doc_mgmt' with CSV HEADER;

copy phpgw_campaign_master from '/var/lib/pgsql/old_phpgw_campaign_master' with CSV HEADER;

copy phpgw_campaign_master_docs from '/var/lib/pgsql/old_phpgw_campaign_master_docs' with CSV HEADER;

copy phpgw_campaign_master_hist from '/var/lib/pgsql/old_phpgw_campaign_master_hist' with CSV HEADER;

copy phpgw_campaign_master_tasks from '/var/lib/pgsql/old_phpgw_campaign_master_tasks' with CSV HEADER;

copy phpgw_campaign_master_tasks_hist from '/var/lib/pgsql/old_phpgw_campaign_master_hist' with CSV HEADER;

copy phpgw_campaign_tasks from '/var/lib/pgsql/old_phpgw_campaign_tasks' with CSV HEADER;

copy old_phpgw_cal from '/var/lib/pgsql/old_phpgw_cal' with CSV HEADER; 

copy phpgw_cal_eventlog from '/var/lib/pgsql/old_phpgw_cal_eventlog' with CSV HEADER;

copy phpgw_cal_extra from '/var/lib/pgsql/old_phpgw_cal_extra' with CSV HEADER;

copy phpgw_cal_holidays from '/var/lib/pgsql/old_phpgw_cal_holidays' with CSV HEADER;

copy phpgw_cal_repeats from '/var/lib/pgsql/old_phpgw_cal_repeats' with CSV HEADER;

copy phpgw_cal_user from '/var/lib/pgsql/old_phpgw_cal_user' with CSV HEADER;

copy old_global_codes from '/var/lib/pgsql/old_global_codes' with CSV HEADER;

copy phpgw_email_tracker from '/var/lib/pgsql/old_phpgw_email_tracker' with CSV HEADER;

copy phpgw_emailadmin from '/var/lib/pgsql/old_phpgw_emailadmin' with CSV HEADER;

copy phpgw_preferences from '/var/lib/pgsql/old_phpgw_preferences' with CSV HEADER;

copy phpgw_relation from '/var/lib/pgsql/old_phpgw_relation' with CSV HEADER;

copy old_phpgw_addressbook_group from '/var/lib/pgsql/old_phpgw_addressbook_group' with CSV HEADER;


--Insert Accounts into phpgw_accounts

--insert into phpgw_accounts (select account_id,account_lid,account_pwd,account_firstname,account_lastname,account_lastlogin,account_lastloginfrom,account_lastpwd_change,account_status,account_expires,account_type,person_id,account_primary_group,social,mother_maiden,account_email,account_workphone,account_title,account_validate_question,account_validate_answer from old_phpgw_accounts);

--Update Accounts with new. to prevent conflict with old region functionality

update phpgw_accounts set account_lid = 'new.'||account_lid where account_lid <> 'admin' and account_lastname <> 'Group';


--Copy old ACL table to new
insert into phpgw_acl (acl_appname,acl_location,acl_account,acl_rights)
(select acl_appname,acl_location,acl_account,acl_rights from old_phpgw_acl);

--Insert old Global Codes

delete from global_codes where type_code like 'cus%' and type_code not in (select 'cus'||id_custom_fields from phpgw_custom_fields);

insert into global_codes (desc_text,type_code,status,user_by,sort,code_value)
(select desc_text,type_code,status,user_by,sort,code_value from old_global_codes where type_code like 'cus%');

--Insert old custom_fields

insert into phpgw_custom_fields (id_custom_fields,id_owner,field_name,tab_id,last_mod,app_name,access,type,sequence,row) (select id_custom_fields,id_owner,field_name,tab_id,last_mod,app_name,access,type,sequence,row from old_phpgw_custom_fields);

--Insert names into phpgw_addressbook

delete from phpgw_addressbook;

insert into phpgw_addressbook
(id,lid,tid,owner,access,fn,n_family,n_given,n_middle,n_prefix,n_suffix,tz,dst,last_mod)
(select distinct id,lid,tid,owner,access,fn,n_family,n_given,n_middle,n_prefix,n_suffix,tz,dst,last_mod from old_phpgw_addressbook);


--Insert addressbook_group data

insert into phpgw_addressbook_group (id_group,name_group,public,id_owner,sql_where,type)
(select * from old_phpgw_addressbook_group);

--Insert existing old_addressbook_extra data

delete from phpgw_addressbook_extra;

insert into phpgw_addressbook_extra
(
select contact_id,contact_owner,contact_name,contact_value,0,0 from old_phpgw_addressbook_extra);

--Convert and insert addresses into phpgw_addressbook_extra



create table convert_address
(
id integer,
owner integer,
adr_street text,
adr_street2 varchar(64),
adr_street3 varchar(64),
adr_locality varchar(64),
adr_region varchar(64),
adr_postalcode varchar(64),
adr_countryname varchar(64),
adr_type varchar(32)
);

insert into convert_address
(select distinct
id,
owner,
adr_one_street,
adr_one_street2,
adr_one_street3,
adr_one_locality,
adr_one_region,
adr_one_postalcode,
adr_one_countryname,
adr_one_type
 from old_phpgw_addressbook
 where adr_one_street <> ''
 );

insert into convert_address
(select distinct
id,
owner,
adr_two_street,
adr_two_street2,
adr_two_street3,
adr_two_locality,
adr_two_region,
adr_two_postalcode,
adr_two_countryname,
adr_two_type
from old_phpgw_addressbook
where adr_two_street <> ''
);

alter table convert_address
add column group_id integer;

update convert_address
set group_id = nextval('seq_phpgw_addressbook_extra_group');

insert into phpgw_addressbook_extra
(select  id,owner,'cus523',adr_street,'518',group_id from convert_address);

insert into phpgw_addressbook_extra
(select  id,owner,'cus524',adr_street2,'518',group_id from convert_address);

insert into phpgw_addressbook_extra
(select  id,owner,'cus579',adr_street3,'518',group_id from convert_address);

insert into phpgw_addressbook_extra
(select  id,owner,'cus525',adr_locality,'518',group_id from convert_address);

insert into phpgw_addressbook_extra
(select  id,owner,'cus526',adr_region,'518',group_id from convert_address);

insert into phpgw_addressbook_extra
(select id,owner,'cus527',adr_postalcode,'518',group_id from convert_address);

insert into phpgw_addressbook_extra
(select id,owner,'cus520',adr_type,'518',group_id from convert_address);

--Convert and insert email addresses into phpgw_addressbook_extra



create table convert_email
(
id int,
owner int,
email_address varchar(64),
email_type varchar(16),
group_id int
);

insert into convert_email
(
select distinct id,owner,email,'Business'
from old_phpgw_addressbook
where email <> ''
);

insert into convert_email
(
select distinct id,owner,email_home,'Home'
from old_phpgw_addressbook
where email_home <> ''
);

insert into convert_email
(
select distinct id,owner,email_home2,'Home'
from old_phpgw_addressbook
where email_home2 <> ''
);

insert into convert_email
(
select distinct id,owner,email2,'Business'
from old_phpgw_addressbook
where email2 <> ''
);

update convert_email
set group_id = nextval('seq_phpgw_addressbook_extra_group');

insert into phpgw_addressbook_extra
(select id,owner,'cus516',email_address,'513',group_id from convert_email);

insert into phpgw_addressbook_extra
(select id,owner,'cus515',email_type,'513',group_id from convert_email);

--Convert phone numbers and insert into phpgw_addressbook_extra



create table convert_phone
(
id integer,
owner integer,
phone_number varchar(40),
phone_type varchar(40),
group_id integer
);

insert into convert_phone
(
select id,owner,tel_work,'Work' from old_phpgw_addressbook
where tel_work <> '+1 (000) 000-0000' and tel_work <> ''
);

insert into convert_phone
(
select id,owner,tel_home,'Home' from old_phpgw_addressbook
where tel_home <> '+1 (000) 000-0000' and tel_home <> ''
);

insert into convert_phone
(
select id,owner,tel_voice,'Voice' from old_phpgw_addressbook
where tel_voice <> '+1 (000) 000-0000' and tel_voice <> ''
);

insert into convert_phone
(
select id,owner,tel_fax,'Fax' from old_phpgw_addressbook
where tel_fax <> '+1 (000) 000-0000' and tel_fax <> ''
);

insert into convert_phone
(
select id,owner,tel_msg,'Msg' from old_phpgw_addressbook
where tel_msg <> '+1 (000) 000-0000' and tel_msg <> ''
);

insert into convert_phone
(
select id,owner,tel_cell,'Cell' from old_phpgw_addressbook
where tel_cell <> '+1 (000) 000-0000' and tel_cell <> ''
);

insert into convert_phone
(
select id,owner,tel_pager,'Pager' from old_phpgw_addressbook
where tel_pager <> '+1 (000) 000-0000' and tel_pager <> ''
);

insert into convert_phone
(
select id,owner,tel_bbs,'BBS' from old_phpgw_addressbook
where tel_bbs <> '+1 (000) 000-0000' and tel_bbs <> ''
);

insert into convert_phone
(
select id,owner,tel_modem,'Modem' from old_phpgw_addressbook
where tel_modem <> '+1 (000) 000-0000' and tel_modem <> ''
);

insert into convert_phone
(
select id,owner,tel_car,'Car' from old_phpgw_addressbook
where tel_car <> '+1 (000) 000-0000' and tel_car <> ''
);

insert into convert_phone
(
select id,owner,tel_isdn,'ISDN' from old_phpgw_addressbook
where tel_isdn <> '+1 (000) 000-0000' and tel_isdn <> ''
);

insert into convert_phone
(
select id,owner,tel_video,'Video' from old_phpgw_addressbook
where tel_video <> '+1 (000) 000-0000' and tel_video <> ''
);

insert into convert_phone
(
select id,owner,tel_prefer,'Prefer' from old_phpgw_addressbook
where tel_prefer <> '+1 (000) 000-0000' and tel_prefer <> ''
);

update convert_phone
set group_id = nextval('seq_phpgw_addressbook_extra_group');

insert into phpgw_addressbook_extra
(select id,owner,'cus510',phone_number,'507',group_id from convert_phone);

insert into phpgw_addressbook_extra
(select id,owner,'cus509',phone_type,'507',group_id from convert_phone);

--Insert misc fields from old phpgw_addressbook into phpgw_addressbook_extra

insert into phpgw_addressbook_extra
(select id,owner,'cus499',bday,0,0 from old_phpgw_addressbook);

insert into phpgw_addressbook_extra
(select id,owner,'cus528',note,0,0 from old_phpgw_addressbook);

insert into phpgw_addressbook_extra
(select id,owner,'cus506',url,0,0 from old_phpgw_addressbook);

insert into phpgw_addressbook_extra
(select id,owner,'cus504',org_name,0,0 from old_phpgw_addressbook);

insert into phpgw_addressbook_extra
(select id,owner,'cus505',title,0,0 from old_phpgw_addressbook);

insert into phpgw_addressbook_extra
(select id,owner,'cus496',marital_status,0,0 from old_phpgw_addressbook);

insert into phpgw_addressbook_extra
(select id,owner,'cus498',nick_name,0,0 from old_phpgw_addressbook);

insert into phpgw_addressbook_extra
(select id,owner,'cus502',ssn,0,0 from old_phpgw_addressbook);

insert into phpgw_addressbook_extra
(select id,owner,'cus500',driver_license,0,0 from old_phpgw_addressbook);

--Insert old Calendar

delete from phpgw_cal;

insert into phpgw_cal ( select cal_id,uid,owner,category,groups,datetime,mdatetime,edatetime,priority,cal_type,is_public,description,location,reference,title from old_phpgw_cal);

--Insert links into phpgw_links

insert into phpgw_links (link_id,link_app1,link_id1,link_app2,link_id2,link_remark,link_lastmod,link_owner) (select link_id,link_app1,link_id1,link_app2,link_id2,link_remark,link_lastmod,link_owner from old_phpgw_links);

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
(601,3,'Alt Contact Name',170,'addressbook','Global','Text',10,10,600);

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(602,3,'Alt Contact Title',170,'addressbook','Global','Text',20,10,600);

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(603,3,'Alt Address 1',170,'addressbook','Global','Text',10,20,600);

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(604,3,'Alt Address 2',170,'addressbook','Global','Text',20,20,600);

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(605,3,'Alt City',170,'addressbook','Global','Text',30,20,600);

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(606,3,'Alt Address State',170,'addressbook','Global','Text',10,30,600);

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(607,3,'Alt Address Zip',170,'addressbook','Global','Text',20,30,600);

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(608,3,'Alt Contact Phone 1',170,'addressbook','Global','Text',10,40,600);

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(609,3,'Alt Contact Phone 2',170,'addressbook','Global','Text',20,40,600);

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(610,3,'Alt Contact Fax',170,'addressbook','Global','Text',30,40,600);

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(611,3,'Alt Contact Email',170,'addressbook','Global','Text',10,50,600);

insert into phpgw_custom_fields(id_custom_fields,id_owner,field_name,tab_id,app_name,access,type,sequence,row,group_id)
values
(612,3,'Alt Contact Notes',170,'addressbook','Global','Text',10,60,600);

--create custom_fields for relations

INSERT INTO  phpgw_custom_fields ("id_custom_fields", "id_owner", "field_name", "tab_id", "last_mod", "app_name", "access", "type", "sequence", "row", "group_id", "field_map", "extra_vars") VALUES (5021, 11, 'Relative', 192, NULL, 'addressbook', 'Global', 'Custom Group', 10, 10, 0, '', '');
INSERT INTO  phpgw_custom_fields ("id_custom_fields", "id_owner", "field_name", "tab_id", "last_mod", "app_name", "access", "type", "sequence", "row", "group_id", "field_map", "extra_vars") VALUES (5022, 11, 'Relative First Name', 192, NULL, 'addressbook', 'Global', 'Text', 10, 10, 5021, '', '');
INSERT INTO  phpgw_custom_fields ("id_custom_fields", "id_owner", "field_name", "tab_id", "last_mod", "app_name", "access", "type", "sequence", "row", "group_id", "field_map", "extra_vars") VALUES (5023, 11, 'Relative Last Name', 192, NULL, 'addressbook', 'Global', 'Text', 20, 10, 5021, '', '');
INSERT INTO  phpgw_custom_fields ("id_custom_fields", "id_owner", "field_name", "tab_id", "last_mod", "app_name", "access", "type", "sequence", "row", "group_id", "field_map", "extra_vars") VALUES (5024, 11, 'Relative Birthday', 192, NULL, 'addressbook', 'Global', 'Text', 30, 10, 5021, '', '');
INSERT INTO  phpgw_custom_fields ("id_custom_fields", "id_owner", "field_name", "tab_id", "last_mod", "app_name", "access", "type", "sequence", "row", "group_id", "field_map", "extra_vars") VALUES (5025, 11, 'Relative Gender', 192, NULL, 'addressbook', 'Global', 'Text', 40, 10, 5021, '', '');
INSERT INTO  phpgw_custom_fields ("id_custom_fields", "id_owner", "field_name", "tab_id", "last_mod", "app_name", "access", "type", "sequence", "row", "group_id", "field_map", "extra_vars") VALUES (5027, 11, 'Relative SSN', 192, NULL, 'addressbook', 'Global', 'Text', 20, 20, 5021, '', '');
INSERT INTO  phpgw_custom_fields ("id_custom_fields", "id_owner", "field_name", "tab_id", "last_mod", "app_name", "access", "type", "sequence", "row", "group_id", "field_map", "extra_vars") VALUES (5028, 11, 'Relative Middle Name', 192, NULL, 'addressbook', 'Global', 'Text', 25, 10, 5021, '', '');
INSERT INTO  phpgw_custom_fields ("id_custom_fields", "id_owner", "field_name", "tab_id", "last_mod", "app_name", "access", "type", "sequence", "row", "group_id", "field_map", "extra_vars") VALUES (5029, 11, 'Relative Phone 1', 192, NULL, 'addressbook', 'Global', 'Text', 30, 20, 5021, '', '');
INSERT INTO  phpgw_custom_fields ("id_custom_fields", "id_owner", "field_name", "tab_id", "last_mod", "app_name", "access", "type", "sequence", "row", "group_id", "field_map", "extra_vars") VALUES (5030, 11, 'Relative Phone 2', 192, NULL, 'addressbook', 'Global', 'Text', 40, 20, 5021, '', '');
INSERT INTO  phpgw_custom_fields ("id_custom_fields", "id_owner", "field_name", "tab_id", "last_mod", "app_name", "access", "type", "sequence", "row", "group_id", "field_map", "extra_vars") VALUES (5031, 11, 'Relative Email', 192, NULL, 'addressbook', 'Global', 'Text', 50, 20, 5021, '', '');
INSERT INTO  phpgw_custom_fields ("id_custom_fields", "id_owner", "field_name", "tab_id", "last_mod", "app_name", "access", "type", "sequence", "row", "group_id", "field_map", "extra_vars") VALUES (5032, 11, 'Relative Address 1', 192, NULL, 'addressbook', 'Global', 'Text', 10, 30, 5021, '', '');
INSERT INTO  phpgw_custom_fields ("id_custom_fields", "id_owner", "field_name", "tab_id", "last_mod", "app_name", "access", "type", "sequence", "row", "group_id", "field_map", "extra_vars") VALUES (5033, 11, 'Relative Address 2', 192, NULL, 'addressbook', 'Global', 'Text', 20, 30, 5021, '', '');
INSERT INTO  phpgw_custom_fields ("id_custom_fields", "id_owner", "field_name", "tab_id", "last_mod", "app_name", "access", "type", "sequence", "row", "group_id", "field_map", "extra_vars") VALUES (5034, 11, 'Relative Client City', 192, NULL, 'addressbook', 'Global', 'Text', 30, 30, 5021, '', '');
INSERT INTO  phpgw_custom_fields ("id_custom_fields", "id_owner", "field_name", "tab_id", "last_mod", "app_name", "access", "type", "sequence", "row", "group_id", "field_map", "extra_vars") VALUES (5035, 11, 'Relative State', 192, NULL, 'addressbook', 'Global', 'Text', 40, 30, 5021, '', '');
INSERT INTO  phpgw_custom_fields ("id_custom_fields", "id_owner", "field_name", "tab_id", "last_mod", "app_name", "access", "type", "sequence", "row", "group_id", "field_map", "extra_vars") VALUES (5036, 11, 'Relative Zip', 192, NULL, 'addressbook', 'Global', 'Text', 50, 30, 5021, '', '');
INSERT INTO  phpgw_custom_fields ("id_custom_fields", "id_owner", "field_name", "tab_id", "last_mod", "app_name", "access", "type", "sequence", "row", "group_id", "field_map", "extra_vars") VALUES (5037, 11, 'Relative Notes', 192, NULL, 'addressbook', 'Global', 'Note', 10, 40, 5021, '', '');
INSERT INTO  phpgw_custom_fields ("id_custom_fields", "id_owner", "field_name", "tab_id", "last_mod", "app_name", "access", "type", "sequence", "row", "group_id", "field_map", "extra_vars") VALUES (5026, 11, 'Relative Type', 192, NULL, 'addressbook', 'Global', 'Select', 10, 20, 5021, '', '');
INSERT INTO  phpgw_custom_fields ("id_custom_fields", "id_owner", "field_name", "tab_id", "last_mod", "app_name", "access", "type", "sequence", "row", "group_id", "field_map", "extra_vars") VALUES (5038, 11, 'Relation Is Dependant?', 192, NULL, 'addressbook', 'Global', 'Select', 10, 25, 5021, '', '');

--create custom_tab for Relative
INSERT INTO "phpgw_custom_tabs" ("id_custom_tab", "tab_sequence", "tab_name", "date_modified") VALUES (92, 100, 'Relations', NULL);


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

--Add group_id to phpgw_relative

alter table phpgw_relation add column group_id int8;

update phpgw_relation
set group_id = nextval('seq_phpgw_addressbook_extra_group');

--Insert Relatives Data into Addressbook_Extras table

insert into phpgw_addressbook_extra
(select  id_contact,id_owner,'cus5022',name_first,'5021',group_id from phpgw_relation);

insert into phpgw_addressbook_extra
(select  id_contact,id_owner,'cus5023',name_last,'5021',group_id from phpgw_relation);

insert into phpgw_addressbook_extra
(select  id_contact,id_owner,'cus5024',bday,'5021',group_id from phpgw_relation);

insert into phpgw_addressbook_extra
(select  id_contact,id_owner,'cus5025',gender,'5021',group_id from phpgw_relation);

insert into phpgw_addressbook_extra
(select  id_contact,id_owner,'cus5026',initcap(code_value),'5021',group_id from phpgw_relation);

insert into phpgw_addressbook_extra
(select  id_contact,id_owner,'cus5027',ssn,'5021',group_id from phpgw_relation);

insert into phpgw_addressbook_extra
(select  id_contact,id_owner,'cus5028',name_middle,'5021',group_id from phpgw_relation);

insert into phpgw_addressbook_extra
(select  id_contact,id_owner,'cus5029',phone1,'5021',group_id from phpgw_relation);

insert into phpgw_addressbook_extra
(select  id_contact,id_owner,'cus5030',phone2,'5021',group_id from phpgw_relation);

insert into phpgw_addressbook_extra
(select  id_contact,id_owner,'cus5031',email,'5021',group_id from phpgw_relation);

insert into phpgw_addressbook_extra
(select  id_contact,id_owner,'cus5032',addr1,'5021',group_id from phpgw_relation);

insert into phpgw_addressbook_extra
(select  id_contact,id_owner,'cus5033',addr2,'5021',group_id from phpgw_relation);

insert into phpgw_addressbook_extra
(select  id_contact,id_owner,'cus5034',city,'5021',group_id from phpgw_relation);

insert into phpgw_addressbook_extra
(select  id_contact,id_owner,'cus5035',state,'5021',group_id from phpgw_relation);

insert into phpgw_addressbook_extra
(select  id_contact,id_owner,'cus5036',zip,'5021',group_id from phpgw_relation);

insert into phpgw_addressbook_extra
(select  id_contact,id_owner,'cus5037',notes,'5021',group_id from phpgw_relation);

insert into phpgw_addressbook_extra
(select  id_contact,id_owner,'cus5038',dependent,'5021',group_id from phpgw_relation);



--Turn triggers back on so we don't forget

update pg_trigger set tgenabled = true where tgname like 'trg%';

--Clean up Custom Tabs table to remove spaces from any tab names

update phpgw_custom_tabs set tab_name = replace(tab_name,' ','_');

--Update Sequences to insure adequet room

select update_sequence ('global_codes','id_codes', 'seq_global_codes');
select update_sequence ('phpgw_accounts','account_id', 'seq_phpgw_accounts');
select update_sequence ('phpgw_addressbook','id', 'seq_phpgw_addressbook');
select update_sequence ('phpgw_addressbook_accounts','id_addressbook_account', 'seq_phpgw_addressbook_accounts');
select update_sequence ('phpgw_addressbook_alternate','id_addressbook_alternate', 'seq_phpgw_addressbook_alternate');
select update_sequence ('phpgw_addressbook_extra_history','id_history', 'seq_phpgw_addressbook_extra_history');
select update_sequence ('phpgw_addressbook_favorite','id_addressbook_favorite', 'seq_phpgw_addressbook_favorite');
select update_sequence ('phpgw_addressbook_field','id_addressbook_field', 'seq_phpgw_addressbook_field');
select update_sequence ('phpgw_addressbook_financial','id_addressbook_financial', 'seq_phpgw_addressbook_financial');
select update_sequence ('phpgw_addressbook_group','id_group', 'seq_phpgw_addressbook_group');
select update_sequence ('phpgw_addressbook_group_arg','id_arg', 'seq_phpgw_addressbook_group_arg');
select update_sequence ('phpgw_addressbook_history','id_history', 'seq_phpgw_addressbook_history');
select update_sequence ('phpgw_addressbook_photo','id_photo', 'seq_phpgw_addressbook_photo');
select update_sequence ('phpgw_addressbook_specialday','id_addressbook_specialday', 'seq_phpgw_addressbook_specialday');
select update_sequence ('phpgw_applications','app_id', 'seq_phpgw_applications');
select update_sequence ('phpgw_bookmarks','bm_id', 'seq_phpgw_bookmarks');
select update_sequence ('phpgw_cal','cal_id', 'seq_phpgw_cal');
select update_sequence ('phpgw_cal_holidays','hol_id', 'seq_phpgw_cal_holidays');
select update_sequence ('phpgw_camp_sess','campuserid', 'seq_phpgw_camp_sess');
select update_sequence ('phpgw_campaign','id_campaign', 'seq_phpgw_campaign');
select update_sequence ('phpgw_campaign_approval','id_campaign_approval', 'seq_phpgw_campaign_approval');
select update_sequence ('phpgw_campaign_client_tasks','id_campaign_client_task', 'seq_phpgw_campaign_client_tasks');
select update_sequence ('phpgw_campaign_clients','id_campaign_client', 'seq_phpgw_campaign_clients');
select update_sequence ('phpgw_campaign_doc_mgmt','id_campaign_doc_mgmt', 'seq_phpgw_campaign_doc_mgmt');
select update_sequence ('phpgw_campaign_master','id_campaign_master', 'seq_phpgw_campaign_master');
select update_sequence ('phpgw_campaign_master_docs','id_campaign_doc', 'seq_phpgw_campaign_master_docs');
select update_sequence ('phpgw_campaign_tasks','id_campaign_task', 'seq_phpgw_campaign_tasks');
select update_sequence ('phpgw_categories','cat_id', 'seq_phpgw_categories');
select update_sequence ('phpgw_custom_fields','id_custom_fields', 'seq_phpgw_custom_fields');
select update_sequence ('phpgw_custom_tabs','id_custom_tab', 'seq_phpgw_custom_tabs');
select update_sequence ('phpgw_docworker_docs','id_doc', 'seq_phpgw_docworker_docs');
select update_sequence ('phpgw_email_tracker','id_tracker', 'seq_phpgw_email_tracker');
select update_sequence ('phpgw_emailadmin','profileid', 'seq_phpgw_emailadmin');
select update_sequence ('phpgw_history_log','history_id', 'seq_phpgw_history_log');
select update_sequence ('phpgw_hobbies','id_hobbies', 'seq_phpgw_hobbies');
select update_sequence ('phpgw_hooks','hook_id', 'seq_phpgw_hooks');
select update_sequence ('phpgw_infolog','info_id', 'seq_phpgw_infolog');
select update_sequence ('phpgw_infolog_history','info_history_id', 'seq_phpgw_infolog_history');
select update_sequence ('phpgw_links','link_id', 'seq_phpgw_links');
select update_sequence ('phpgw_postoffice_addr_assoc','addr_assoc_seq', 'seq_phpgw_postoffice_addr_assoc');
select update_sequence ('phpgw_postoffice_cache','cache_seq', 'seq_phpgw_postoffice_cache');
select update_sequence ('phpgw_postoffice_outofoffice','id_outofoffice', 'seq_phpgw_postoffice_outofoffice');
select update_sequence ('phpgw_relation','id_relation', 'seq_phpgw_relation');


--Clean up temporary conversion tables

drop table old_phpgw_accounts;
drop table old_phpgw_acl;
drop table old_phpgw_addressbook;
drop table old_phpgw_addressbook_extra;
drop table old_phpgw_addressbook_alternate;
drop table old_phpgw_links;
drop table old_phpgw_custom_fields;
drop TABLE old_phpgw_docworker_docs_setup;
drop TABLE old_phpgw_campaign_clients;
drop TABLE old_phpgw_campaign_doc_mgmt;
drop TABLE old_phpgw_cal;
drop TABLE old_global_codes;
drop table old_phpgw_preferences;
drop table convert_address;
drop table convert_email;
drop table convert_phone;
