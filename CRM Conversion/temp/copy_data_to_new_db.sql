--Turn triggers off to speed things up

update pg_trigger set tgenabled = false where tgname like 'trg%';


--Create tables to hold data that can't be copied directly to the matching tables

drop table old_phpgw_accounts;

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

--drop table old_phpgw_acl;

CREATE TABLE old_phpgw_acl
(
  acl_appname character varying(50) NOT NULL,
  acl_location character varying(255) NOT NULL,
  acl_account integer NOT NULL,
  acl_rights integer
);

drop table old_phpgw_addressbook;

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

drop table old_phpgw_addressbook_extra;

  CREATE TABLE old_phpgw_addressbook_extra
(
  contact_id integer,
  contact_owner bigint,
  contact_name character varying(255),
  contact_value text
  );
  
drop table old_phpgw_addressbook_alternate;

CREATE TABLE phpgw_addressbook_alternate (
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

drop table old_phpgw_links;

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

drop table old_phpgw_custom_fields;

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


drop TABLE old_phpgw_docworker_docs_setup;

CREATE TABLE old_phpgw_docworker_docs_setup
(
  id_doc integer,
  id_setup_seq integer,
  command character varying(50),
  aolds text,
  date_create integer
);

drop TABLE old_phpgw_campaign_clients;

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

drop TABLE old_phpgw_campaign_doc_mgmt;

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

drop TABLE old_phpgw_cal;

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

drop TABLE old_global_codes;

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

drop table old_phpgw_preferences;

CREATE TABLE old_phpgw_preferences
(
preference_owner int4,
preference_app varchar(25),
preference_value text
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


--Copy data from files on server to tables


copy phpgw_accounts from '/var/lib/pgsql/old_phpgw_accounts';

copy old_phpgw_acl from '/var/lib/pgsql/old_phpgw_acl';

copy old_phpgw_addressbook from '/var/lib/pgsql/old_phpgw_addressbook';

copy old_phpgw_addressbook_extra from '/var/lib/pgsql/old_phpgw_addressbook_extra';

copy old_phpgw_custom_fields from '/var/lib/pgsql/old_phpgw_custom_fields';

copy phpgw_infolog from '/var/lib/pgsql/old_phpgw_infolog';

copy old_phpgw_links from '/var/lib/pgsql/old_phpgw_links';

copy phpgw_categories from '/var/lib/pgsql/old_phpgw_categories';

copy phpgw_custom_tabs from '/var/lib/pgsql/old_phpgw_custom_tabs';

copy phpgw_docworker_docs from '/var/lib/pgsql/old_phpgw_docworker_docs';

copy old_phpgw_docworker_docs_setup from '/var/lib/pgsql/old_phpgw_docworker_docs_setup';

copy phpgw_camp from '/var/lib/pgsql/old_phpgw_camp';

copy phpgw_camp_company from '/var/lib/pgsql/old_phpgw_camp_company';

copy phpgw_camp_sess from '/var/lib/pgsql/old_phgw_camp_sess';

copy phpgw_camp_user from '/var/lib/pgsql/old_phpgw_camp_user';

copy phpgw_campaign from '/var/lib/pgsql/old_phpgw_campaign';

copy phpgw_campaign_approval from '/var/lib/pgsql/old_phpgw_campaign_approval';

copy phpgw_campaign_client_tasks from '/var/lib/pgsql/old_phpgw_campaign_client_tasks';

copy old_phpgw_campaign_clients from '/var/lib/pgsql/old_phpgw_campaign_clients';

copy old_phpgw_campaign_doc_mgmt from '/var/lib/pgsql/old_phpgw_campaign_doc_mgmt';

copy phpgw_campaign_master from '/var/lib/pgsql/old_phpgw_campaign_master';

copy phpgw_campaign_master_docs from '/var/lib/pgsql/old_phpgw_campaign_master_docs';

copy phpgw_campaign_master_hist from '/var/lib/pgsql/old_phpgw_campaign_master_hist';

copy phpgw_campaign_master_tasks from '/var/lib/pgsql/old_phpgw_campaign_master_tasks';

copy phpgw_campaign_master_tasks_hist from '/var/lib/pgsql/old_phpgw_campaign_master_hist';

copy phpgw_campaign_tasks from '/var/lib/pgsql/old_phpgw_campaign_tasks';

copy old_phpgw_cal from '/var/lib/pgsql/old_phpgw_cal'; 

copy phpgw_cal_eventlog from '/var/lib/pgsql/old_phpgw_cal_eventlog';

copy phpgw_cal_extra from '/var/lib/pgsql/old_phpgw_cal_extra';

copy phpgw_cal_holidays from '/var/lib/pgsql/old_phpgw_cal_holidays';

copy phpgw_cal_repeats from '/var/lib/pgsql/old_phpgw_cal_repeats';

copy phpgw_cal_user from '/var/lib/pgsql/old_phpgw_cal_user';

copy old_global_codes from '/var/lib/pgsql/old_global_codes';

copy phpgw_email_tracker from '/var/lib/pgsql/old_phpgw_email_tracker';

copy phpgw_emailadmin from '/var/lib/pgsql/old_phpgw_emailadmin';

copy phpgw_preferences from '/var/lib/pgsql/old_phpgw_preferences';

--Update Sequences to insure adequet room

alter sequence seq_global_codes restart with 20000;
alter sequence seq_phpgw_accounts restart with 2000;
alter sequence seq_phpgw_addressbook restart with 5000000;
alter sequence seq_phpgw_addressbook_accounts restart with 10000;
alter sequence seq_phpgw_addressbook_alternate restart with 20000;
alter sequence seq_phpgw_addressbook_extra_history restart with 5000000;
alter sequence seq_phpgw_addressbook_favorite restart with 10000;
alter sequence seq_phpgw_addressbook_field restart with 1000;
alter sequence seq_phpgw_addressbook_financial restart with 100000;
alter sequence seq_phpgw_addressbook_group restart with 5000;
alter sequence seq_phpgw_addressbook_group_arg restart with 5000;
alter sequence seq_phpgw_addressbook_history restart with 5000000;
alter sequence seq_phpgw_addressbook_photo restart with 1000;
alter sequence seq_phpgw_addressbook_specialday restart with 10000;
alter sequence seq_phpgw_applications restart with 1000;
alter sequence seq_phpgw_bookmarks restart with 10;
alter sequence seq_phpgw_cal restart with 750000;
alter sequence seq_phpgw_cal_holidays restart with 500;
alter sequence seq_phpgw_camp_sess restart with 5000;
alter sequence seq_phpgw_campaign restart with 5000;
alter sequence seq_phpgw_campaign_approval restart with 10000;
alter sequence seq_phpgw_campaign_client_tasks restart with 100000;
alter sequence seq_phpgw_campaign_clients restart with 10000;
alter sequence seq_phpgw_campaign_doc_mgmt restart with 10000;
alter sequence seq_phpgw_campaign_master restart with 2000;
alter sequence seq_phpgw_campaign_master_docs restart with 1000;
alter sequence seq_phpgw_campaign_tasks restart with 50000;
alter sequence seq_phpgw_categories restart with 2000;
alter sequence seq_phpgw_custom_fields restart with 5000;
alter sequence seq_phpgw_custom_tabs restart with 100;
alter sequence seq_phpgw_docworker_docs restart with 50000;
alter sequence seq_phpgw_email_tracker restart with 5000000;
alter sequence seq_phpgw_emailadmin restart with 1000;
alter sequence seq_phpgw_history_log restart with 1000;
alter sequence seq_phpgw_hobbies restart with 5000;
alter sequence seq_phpgw_hooks restart with 20000;
alter sequence seq_phpgw_infolog restart with 2000000;
alter sequence seq_phpgw_infolog_history restart with 5000000;
alter sequence seq_phpgw_links restart with 2000000;
alter sequence seq_phpgw_postoffice_addr_assoc restart with 200000000;
alter sequence seq_phpgw_postoffice_cache restart with 100000000;
alter sequence seq_phpgw_postoffice_outofoffice restart with 50000;
alter sequence seq_phpgw_relation restart with 40000;

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

--Insert existing old_addressbook_extra data

delete from phpgw_addressbook_extra;

insert into phpgw_addressbook_extra
(
select contact_id,contact_owner,contact_name,contact_value,0,0 from old_phpgw_addressbook_extra);

--Convert and insert addresses into phpgw_addressbook_extra

drop table convert_address;

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

drop table convert_email;

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

drop table convert_phone;

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

--Turn triggers back on so we don't forget

update pg_trigger set tgenabled = true where tgname like 'trg%';


