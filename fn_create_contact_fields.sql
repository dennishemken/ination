create or replace function create_contact_fields() returns int as
$$
declare 
statement_string text;
clean_string text;

Begin
clean_string := pivot_table();

execute 'select '||quote_literal(clean_string) into statement_string;
execute statement_string;
return 1;
end
$$
language plpgsql;
