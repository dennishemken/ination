SELECT
"public"."activity"."activity_clid",
"public"."activity"."subject",
"public"."activity"."activity" AS "description",
"public"."activity"."activity_date" AS "startdate",
"public"."activity"."activity_enddate",
case when "public"."activity"."complete" = 't' then 'done'
else 'ongoing'
end as status,
"public"."activity"."completedate",
"public"."activity_codes"."code" AS "task_type",
"public"."activity"."percentdone",
"public"."users"."crm_id"
FROM
"public"."activity"
Inner Join "public"."activity_codes" ON "public"."activity_codes"."activity_code" = "public"."activity"."type"
Inner Join "public"."users" ON "public"."users"."userid" = "public"."activity"."recowner"
WHERE
"public"."activity"."deleted" <>  'true' AND
"public"."activity_codes"."code" <>  'Appointment'
