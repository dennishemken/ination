SELECT
"public"."TBL_CONTACT_HISTORY"."CONTACTID",
"public"."TBL_HISTORYTYPE"."NAME",
"public"."TBL_HISTORY"."STARTTIME",
"public"."TBL_HISTORY"."ENDTIME",
"public"."TBL_HISTORY"."REGARDING",
"public"."TBL_HISTORY"."DETAILS",
"public"."TBL_HISTORY"."CREATEDATE",
"public"."TBL_HISTORY"."EDITDATE"
FROM
"public"."TBL_HISTORY"
Inner Join "public"."TBL_CONTACT_HISTORY" ON "public"."TBL_CONTACT_HISTORY"."HISTORYID" = "public"."TBL_HISTORY"."HISTORYID"
Inner Join "public"."TBL_HISTORYTYPE" ON "public"."TBL_HISTORYTYPE"."HISTORYTYPEID" = "public"."TBL_HISTORY"."HISTORYTYPEID"