SELECT
"public".aaprod."NAMEID",
"public".aaprod."PRODNUM" AS "Policy Number",
"public".aaprod."PRODTYPE" AS "Policy Type",
"public".aaprod."COMPANY" AS "Policy Company",
"public".aaprod."SERIES" AS "Policy Series",
"public".aaprod."EFFECT" AS "Policy Effective Date",
"public".aaprod."FACEAMT" AS "Policy Benefit",
"public".aaprod."ANNPREM" AS "Policy Premium",
"public".aaprod."CPRODSTAT" AS "Policy Status"
FROM
"public".aaprod
