alter table calendar add column crm_calendar_id int8;
alter table calendar add column crm_contact_id int8;
alter table calendar add column crm_cal_uid varchar(255);

update calendar set crm_calendar_id = nextval(('seq_phpgw_cal'::text)::regclass);
update calendar set crm_contact_id = contact_id from phpgw_addressbook_extra where contact_value = activity_clid and contact_name = 'cus586';

update calendar set crm_cal_uid = 'cal-'||crm_calendar_id||'-d46aa8785f87246ebfdec9026f580e7f@mootzfinancialsolutions.ination.com';

insert into phpgw_cal (cal_id,uid,owner,datetime,mdatetime,edatetime,cal_type,description,title)
(
select
crm_calendar_id,
crm_cal_uid,
37,
date_part,
date_part,
activity_enddate,
'E',
activity,
subject
from calendar
);

insert into phpgw_cal_user
(
select
crm_calendar_id,
37,
'A',
'u'
from calendar
);

insert into phpgw_links (link_app1,link_id1,link_app2,link_id2,link_remark,link_lastmod,link_owner)
(
select
'calendar',
crm_calendar_id,
'addressbook',
crm_contact_id,
'manual calendar link from Redtail',
extract(epoch from now()),
37
from calendar where crm_contact_id is not null
);