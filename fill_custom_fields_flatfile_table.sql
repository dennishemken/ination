CREATE OR REPLACE FUNCTION fill_table()
  RETURNS integer AS
$BODY$
declare 
	contact_id record;
	custom_fields record;
	addressbook_extra record;
	custom_group_id record;
	sub_group_id record;
begin
	insert into flat_file (flat_file_id) (select id from phpgw_addressbook);

	for contact_id in select distinct * from phpgw_addressbook order by id loop
		for custom_group_id in select distinct group_id from phpgw_custom_fields order by group_id loop
			for custom_fields in select distinct * from phpgw_custom_fields order by id_custom_fields loop
				for sub_group_id in select distinct group_id from phpgw_addressbook_extra order by group_id loop
					for addressbook_extra in select * from phpgw_addressbook_extra where contact_name = 'cus'||custom_fields.id_custom_fields and custom_field_id = custom_group_id.group_id and group_id = sub_group_id.group_id and contact_value <> '' loop
						execute 'update flat_file set '||addressbook_extra.contact_name||' = \''||addressbook_extra.contact_value||'\' where flat_file_id = '||addressbook_extra.contact_id;
						end loop;
					end loop;
				end loop ;
			end loop;
		end loop;

	return 1;
end;
$BODY$
  LANGUAGE 'plpgsql' VOLATILE;