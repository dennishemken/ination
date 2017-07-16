CREATE OR REPLACE FUNCTION convert_phone_to_parenthesis(text)
  RETURNS text AS
$BODY$
select regexp_replace(%1,'\\D*(\\d{3})\\D*(\\d{3})[^0-9]*(.*)','(\\1) \\2-\\3')
$BODY$
  LANGUAGE 'sql' VOLATILE
  COST 100;
ALTER FUNCTION convert_phone_to_parenthesis(text) OWNER TO postgres;