CREATE OR REPLACE FUNCTION build_one_to_many_table()
  RETURNS integer AS
$BODY$
declare
	custom_fields record;

begin
	create table custom_one_to_many (contact_id int4,group_id int4);

	for custom_fields in select distinct * from phpgw_custom_fields where group_id <> 0 order by id_custom_fields loop
	execute 'alter table custom_one_to_many add column cus'||custom_fields.id_custom_fields||' text';
	end loop;
	execute 'insert into custom_one_to_many (contact_id) values (1)';
	for custom_fields in select distinct * from phpgw_custom_fields where group_id <> 0 order by id_custom_fields loop
	execute 'update custom_one_to_many set cus'||custom_fields.id_custom_fields||E' = \''||custom_fields.field_name||E'\'';
	end loop;
	return 1;

end;
$BODY$
  LANGUAGE 'plpgsql' VOLATILE;
  
  
CREATE OR REPLACE FUNCTION build_singles_table()
RETURNS integer AS
$BODY$
declare
	custom_fields record;

begin
	create table single_fields (single_fields_id int4);

	for custom_fields in select distinct * from phpgw_custom_fields where group_id = 0 and type <> 'Contact Group' order by id_custom_fields loop
	execute 'alter table single_fields add column cus'||custom_fields.id_custom_fields||' text';
	end loop;
	execute 'insert into single_fields (single_fields_id) values (1)';
	for custom_fields in select distinct * from phpgw_custom_fields where group_id = 0 and type <> 'Contact Group' order by id_custom_fields loop
	execute 'update single_fields set cus'||custom_fields.id_custom_fields||E' = \''||custom_fields.field_name||E'\'';
	end loop;
	return 1;

end;
$BODY$
  LANGUAGE 'plpgsql' VOLATILE;
  
  
CREATE OR REPLACE FUNCTION fill_one_to_many_table()
  RETURNS integer AS
$BODY$
declare
	addressbook_extra record;
	

begin

	create table phpgw_addressbook_extra_backup as (select * from phpgw_addressbook_extra);
	update phpgw_addressbook_extra_backup set contact_value = replace(contact_value,E'\\',E'\\\\');
	update phpgw_addressbook_extra_backup set contact_value = replace(contact_value,E'\'',E'\\\'');

	insert into custom_one_to_many (contact_id,group_id) (select distinct contact_id,group_id from phpgw_addressbook_extra where contact_name like 'cus%' and group_id <> 0 and contact_value <> '');
	
	for addressbook_extra in select * from phpgw_addressbook_extra_backup where contact_name like 'cus%' and group_id <> 0 loop
	execute 'update custom_one_to_many set '||addressbook_extra.contact_name||' = E'''||addressbook_extra.contact_value||''' where contact_id = '||addressbook_extra.contact_id||' and group_id = '||addressbook_extra.group_id;
	end loop;
	drop table phpgw_addressbook_extra_backup;
	return 1;

end;
$BODY$
  LANGUAGE 'plpgsql' VOLATILE;
  
  
CREATE OR REPLACE FUNCTION fill_singles_table()
  RETURNS integer AS
$BODY$
declare
addressbook_extra record;

begin
	insert into single_fields (single_fields_id) (select id from phpgw_addressbook);
	create table phpgw_addressbook_extra_backup as (select * from phpgw_addressbook_extra);
	update phpgw_addressbook_extra_backup set contact_value = replace(contact_value,E'\\',E'\\\\');
	update phpgw_addressbook_extra_backup set contact_value = replace(contact_value,E'\'',E'\\\'');
	 
	for addressbook_extra in select distinct * from phpgw_addressbook_extra_backup where custom_field_id = 0 and contact_name like 'cus%' and contact_name in (select 'cus'||id_custom_fields from phpgw_custom_fields) and contact_name not in (select 'cus'||id_custom_fields from phpgw_custom_fields where type = 'Custom Group') loop
	execute 'update single_fields set '||addressbook_extra.contact_name||' = E'''||addressbook_extra.contact_value||''' where single_fields_id = '||addressbook_extra.contact_id;
	end loop;
	drop table phpgw_addressbook_extra_backup;
return 1;

end;
$BODY$
  LANGUAGE 'plpgsql' VOLATILE;