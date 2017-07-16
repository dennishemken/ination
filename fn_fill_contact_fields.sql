create or replace function fill_contact_fields() returns int as 
$$
declare
	contact_fields record;

Begin
	insert into contacts_full("CONTACTID") (select "CONTACTID" from "CONTACT");
	for contact_fields in select distinct table_name,column_name,data_type from information_schema.columns where table_name like 'CONTACT%'
order by column_name loop

	execute 'update contacts_full set "'||contact_fields.column_name||'"= "'||contact_fields.table_name||'"."'||contact_fields.column_name||'" from "'||contact_fields.table_name||'" where "'||contact_fields.table_name||'"."CONTACTID" = contacts_full."CONTACTID"';
	end loop;

	return execute 'select count("CONTACTID") from contacts_full';
end
$$
language  plpgsql;