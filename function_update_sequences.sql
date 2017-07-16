create or replace function update_sequence (table_name text,id_name text, sequence_name text)
returns int as
$$
declare

max_plus_one int4;

Begin

execute 'select max('||id_name||') + 1 from '||table_name into max_plus_one;

execute 'alter sequence '||sequence_name||' restart with '||max_plus_one;
return max_plus_one;
end;
$$
language plpgsql
