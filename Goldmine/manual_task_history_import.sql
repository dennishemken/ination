alter table clean_task_history add column history_info_id int8;
update clean_task_history set history_info_id = nextval(('seq_phpgw_infolog'::text)::regclass);

alter table clean_task_history add column crm_contact_id int8;
update clean_task_history set crm_contact_id = phpgw_addressbook_extra.contact_id from phpgw_addressbook_extra where contact_name = 'cus586' and clean_task_history.contact_id = contact_value;

insert into phpgw_infolog (info_id,info_type,info_subject,info_des,info_owner,info_datemodified,info_startdate,info_enddate)
(select history_info_id,'GoldMine History',subject,notes,35,start_date,start_date,start_date from clean_task_history where start_date > 0);

insert into phpgw_links (link_app1,link_id1,link_app2,link_id2,link_remark,link_lastmod,link_owner)
(select 'infolog',history_info_id,'addressbook',crm_contact_id,'manual task history link from GoldMine',extract(epoch from now()),35 from clean_task_history where crm_contact_id is not Null);

update phpgw_infolog set info_link_id = link_id from phpgw_links where link_id1 = info_id
and link_remark = 'manual task history link from GoldMine';
