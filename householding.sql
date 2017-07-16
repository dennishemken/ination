-- create temp table to put the parent records in
create table links_household 
(
household character varying (50),
id_1 bigint,
gorillacg text
);

-- create table for the children
create table links_individual
(
household character varying (50),
id_2 bigint,
gorillacg text
);

-- populate the temp parent table
insert into links_household (select 'household',contact_id, contact_value from phpgw_addressbook_extra where contact_owner = 56 and contact_name = 'cus618' and contact_id in (select id from phpgw_addressbook where contact_type = 'Household')); 

-- populate the temp children table
insert into links_individual (select 'individual',contact_id, contact_value from phpgw_addressbook_extra where contact_owner = 56 and contact_name = 'cus618' and contact_id in (select id from phpgw_addressbook where contact_type <> 'Household')); 


-- insert into the links table to create the household.
-- currently you must replace the "(OWNER)" with the id of the user
insert into phpgw_links select nextval('seq_phpgw_links') as link_id,'addressbook' as link_app1,id_1 as link_id1,'addressbook' as link_app2,id_2 as link_id2,'manual link creation' as link_remark,0 as link_lastmod, 56 as link_owner,'' as link_type,'' as link_dependent,'' as relation_type, 'No' as is_dependent from links_household p, links_individual s where s.gorillacg = p.gorillacg;
