SELECT
"public"."TBL_CONTACT_ACTIVITY"."CONTACTID",
"public"."TBL_ACTIVITYTYPE"."NAME",
"public"."TBL_ACTIVITY"."REGARDING",
"public"."TBL_ACTIVITY"."STARTTIME",
"public"."TBL_ACTIVITY"."ENDTIME",
"public"."TBL_ACTIVITY"."DETAILS",
"public"."TBL_ACTIVITY"."CREATEDATE",
"public"."TBL_ACTIVITY"."EDITDATE"
FROM
"public"."TBL_ACTIVITY"
Inner Join "public"."TBL_ACTIVITYTYPE" ON "public"."TBL_ACTIVITYTYPE"."ACTIVITYTYPEID" = "public"."TBL_ACTIVITY"."ACTIVITYTYPEID"
Inner Join "public"."TBL_CONTACT_ACTIVITY" ON "public"."TBL_CONTACT_ACTIVITY"."ACTIVITYID" = "public"."TBL_ACTIVITY"."ACTIVITYID"
