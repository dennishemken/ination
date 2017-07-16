SELECT
"public"."TBL_CONTACT_NOTE"."CONTACTID",
"public"."TBL_NOTETYPE"."NAME",
"public"."TBL_NOTE"."NOTETEXT",
"public"."TBL_NOTE"."DISPLAYDATE",
"public"."TBL_NOTE"."CREATEUSERID",
"public"."TBL_NOTE"."EDITDATE"
FROM
"public"."TBL_NOTE"
Inner Join "public"."TBL_NOTETYPE" ON "public"."TBL_NOTETYPE"."NOTETYPEID" = "public"."TBL_NOTE"."NOTETYPEID"
Inner Join "public"."TBL_CONTACT_NOTE" ON "public"."TBL_CONTACT_NOTE"."NOTEID" = "public"."TBL_NOTE"."NOTEID"
