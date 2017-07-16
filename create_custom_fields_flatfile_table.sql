create  or replace function build_table() returns integer AS $$
declare
	custom_fields record;
begin
	create table flat_file (flat_file_id int);
	for custom_fields in select distinct * from phpgw_custom_fields order by id_custom_fields loop
	execute 'alter table flat_file add column cus'||custom_fields.id_custom_fields||' varchar(255)';
	end loop;
	execute 'insert into flat_file (flat_file_id) values (1)';
	for custom_fields in select distinct * from phpgw_custom_fields order by id_custom_fields loop
	execute 'update flat_file set cus'||custom_fields.id_custom_fields||' = \''||custom_fields.field_name||'\''; 
	end loop;
	return 1;
end;
$$ language plpgsql;
