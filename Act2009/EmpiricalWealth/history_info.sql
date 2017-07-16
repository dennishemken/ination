SELECT
"public"."HISTORY"."CONTACTID",
date_trunc('second', "public"."HISTORY"."Created On") as create_on,
date_trunc('second', "public"."HISTORY"."Edited On") as edited_on,
date_trunc('second', "public"."HISTORY"."End Date/Time") as end_date,
"public"."HISTORY"."Details",
"public"."HISTORY"."Regarding",
date_trunc('second', "public"."HISTORY"."Start Date/Time") as start_date,
"public"."HISTORY"."TYPES DESCRIPTION",
"public"."HISTORY"."Record Manager"
FROM
"public"."HISTORY"
