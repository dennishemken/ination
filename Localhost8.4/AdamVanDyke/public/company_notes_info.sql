SELECT
"public"."TBL_COMPANY_NOTE"."COMPANYID",
"public"."TBL_NOTETYPE"."NAME",
"public"."TBL_NOTE"."NOTETEXT",
"public"."TBL_NOTE"."DISPLAYDATE",
"public"."TBL_NOTE"."CREATEUSERID",
"public"."TBL_NOTE"."EDITDATE"
FROM
"public"."TBL_NOTE"
Inner Join "public"."TBL_NOTETYPE" ON "public"."TBL_NOTETYPE"."NOTETYPEID" = "public"."TBL_NOTE"."NOTETYPEID"
Inner Join "public"."TBL_COMPANY_NOTE" ON "public"."TBL_COMPANY_NOTE"."NOTEID" = "public"."TBL_NOTE"."NOTEID"
