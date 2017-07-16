update calendar_info set "REF" = 'Imported from Goldmine' where "REF" is Null;

alter table calendar_info add column calendar_id int8;

update calendar_info set calendar_id = nextval(('seq_phpgw_cal'::text)::regclass);

insert into phpgw_cal (cal_id,uid,owner,datetime,mdatetime,edatetime,description,title)
(select calendar_id,'cal-'||calendar_id||'-d46aa8785f87246ebfdec9026f580e7f@highmarkcap.ination.com',user_id,datetime,edatetime,edatetime,"NOTES","REF" from calendar_info);

insert into phpgw_cal_user (cal_id,cal_login,cal_status,cal_type)
(select calendar_id,user_id,'A','u' from calendar_info);

create table temp_cal_links as
(
SELECT
"public"."phpgw_addressbook_extra"."contact_id",
"public"."phpgw_addressbook_extra"."contact_owner",
"public"."calendar_info"."calendar_id"
FROM
"public"."calendar_info"
Inner Join "public"."calendar_links" ON "public"."calendar_links"."calendar_id" = "public"."calendar_info"."gm_cal_id"
Inner Join "public"."phpgw_addressbook_extra" ON "public"."phpgw_addressbook_extra"."contact_value" = "public"."calendar_links"."contact_id"
WHERE
"public"."phpgw_addressbook_extra"."contact_name" =  'cus685'
);

insert into phpgw_links (link_app1,link_id1,link_app2,link_id2,link_remark,link_owner,link_lastmod)
(select 'calendar',calendar_id,'addressbook',contact_id,'manual link creation from gold_mine calendar',contact_owner,1238108879 from temp_cal_links)