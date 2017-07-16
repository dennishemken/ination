SELECT
"public".aanote."NAMEID" as contact_id,
"public".aanote."LOGDATE"||' '||"public".aanote."LOGTIME" AS note_date,
"public".aanote."DESCRIPT" as description
FROM
"public".aanote
