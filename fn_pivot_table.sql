Create or replace function pivot_table() returns text as
$$
Declare
	contact_fields record;
	statement_string text;

Begin
	statement_string := 'create table contacts_full (';
for contact_fields in select distinct column_name,data_type from information_schema.columns where table_name like 'CONTACT%'
order by column_name loop

	statement_string := statement_string||E'\"'||contact_fields.column_name||E'\" '||contact_fields.data_type||',';
	end loop;

	statement_string := statement_string||'household_id int8);';
	return statement_string;
end
$$
language 'plpgsql';

