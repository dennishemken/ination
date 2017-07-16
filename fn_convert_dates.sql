/*  Convert dates in the format of year/month/day or year-month-day with or without timestamp
		to month/day/year
		
*/

CREATE OR REPLACE FUNCTION convert_dates(text)
  RETURNS text AS
$BODY$
select regexp_replace(%1,'(\\d{4}).(\\d{2}).(\\d{2})(.*)','\\2/\\3/\\1')
$BODY$
  LANGUAGE 'sql' VOLATILE
  COST 100;
ALTER FUNCTION convert_dates(text) OWNER TO postgres;