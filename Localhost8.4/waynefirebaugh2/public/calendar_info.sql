SELECT
"public".calendar.activity_clid,
"public".calendar.subject,
"public".calendar.activity,
extract(epoch from "public".calendar.activity_date),
case when alldayevent = 'f' then extract(epoch from "public".calendar.activity_enddate)
	else extract(epoch from activity_date) + 216000
end as activity_enddate,
"public".calendar.alldayevent,
"public".calendar.account,
"public".calendar.activity_type,
"public".calendar.smarsh_id
FROM
"public".calendar
