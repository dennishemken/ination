SELECT
"public"."TBL_EMAIL"."CONTACTID",
"public"."TBL_EMAIL"."ADDRESS",
case when "public"."TBL_PICKLISTITEM"."NAME" = 'Personal' then 'Home'
else "public"."TBL_PICKLISTITEM"."NAME"
end as "Email Type"
FROM
"public"."TBL_EMAIL"
Inner Join "public"."TBL_PICKLISTITEM" ON "public"."TBL_PICKLISTITEM"."PICKLISTITEMID" = "public"."TBL_EMAIL"."TYPEID"
where
"TBL_EMAIL"."ADDRESS" is not null
