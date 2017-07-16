CREATE OR REPLACE FUNCTION "public"."epoch_total"(d date, t date)
  RETURNS int8 AS $BODY$Begin
  Return extract(epoch from d) + ( extract(epoch from to_timestamp('01/01/1970 ' || t, 'DD/MM/YYYY HH24:MI:SS')) - 28800) as epochtotal;
End;$BODY$
  LANGUAGE 'plpgsql' VOLATILE COST 100
;

ALTER FUNCTION "public"."epoch_total"(d date, t date) OWNER TO "postgres";