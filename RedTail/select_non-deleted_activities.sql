create table calendar as
(
SELECT
"public"."activity"."activity_clid",
"public"."activity"."subject",
"public"."activity"."activity",
"public"."activity"."activity_date",
"public"."activity"."activity_enddate",
"public"."activity"."alldayevent",
"public"."activity"."account",
"public"."activity_codes"."code" as activity_type,
"public"."users"."smarsh_id"
FROM
"public"."activity"
Inner Join "public"."activity_codes" ON "public"."activity_codes"."activity_code" = "public"."activity"."type"
Inner Join "public"."users" ON "public"."users"."redtail_id" = "public"."activity"."recowner"
WHERE
public.activity.deleted =  'False'
and
"public"."activity_codes"."code"= 'Appointment'
);

