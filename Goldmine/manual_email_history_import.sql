alter table clean_mail add column mail_info_id int8;
update clean_mail set mail_info_id = nextval(('seq_phpgw_infolog'::text)::regclass);

alter table clean_mail add column crm_contact_id int8;
update clean_mail set crm_contact_id = phpgw_addressbook_extra.contact_id from phpgw_addressbook_extra where contact_name = 'cus586' and clean_mail.contact_id = contact_value;

insert into phpgw_infolog (info_id,info_type,info_subject,info_des,info_owner,info_datemodified,info_startdate,info_enddate)
(select mail_info_id,'Email',subject,body,35,date_time,date_time,date_time from clean_mail where date_time > 0);

insert into phpgw_links (link_app1,link_id1,link_app2,link_id2,link_remark,link_lastmod,link_owner)
(select 'infolog',mail_info_id,'addressbook',crm_contact_id,'manual email history link from GoldMine',extract(epoch from now()),35 from clean_mail where crm_contact_id is not Null);

update phpgw_infolog set info_link_id = link_id from phpgw_links where link_id1 = info_id
and link_remark = 'manual email history link from GoldMine';
