SELECT activity.activity_clid AS contact_id, 
activity.subject, 
activity.activity AS description, 
case when activity.activity_date = '4501-01-01 00:00:00' then null
	when activity.activity_date = '1900-01-01 00:00:00' then null
	else activity.activity_date
end AS startdate, 
case when activity.activity_enddate = '4501-01-01 00:00:00' then null
	when activity.activity_enddate = '1900-01-01 00:00:00' then null
	else activity.activity_enddate
end AS startdate, 
case when activity.complete = 't' then 'done'
	else 'ongoing'
end as complete, 
activity.completedate, 
activity_codes.code AS task_type, 
activity.percentdone, 
users.smarsh_id 
FROM ((activity 
JOIN activity_codes ON ((activity_codes.activity_code = activity.type))) 
JOIN users ON ((users.redtail_id = activity.recowner))) 
WHERE ((activity.deleted <> true) AND 
((activity_codes.code)::text <> 'Appointment'::text)) AND
(activity.subject <> '' or
activity.activity <> '')
