create or replace function get_fields_from_table(table_name text)
returns int as
$$
declare
field_name record;

Begin
execute 'create table '||table_name||'_fields (fields varchar)';

for field_name in select * from information_schema.columns where information_schema.columns.table_name = table_name loop
execute 'insert into '||table_name||'_fields VALUES ('''||field_name.column_name||''')';
end loop;
return 1;
end;
$$
language  plpgsql