SELECT
"public".aanote."NAMEID" AS contact_id,
"public".aanote."LOGDATE"||' '||"public".aanote."LOGTIME" AS note_date,
"public".aanote."DESCRIPT" AS subject,
"public".aanote."NOTEPAGE" AS description
FROM
"public".aanote
