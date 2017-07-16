create table calendar as
(
SELECT
"public"."activity"."activity_clid",
"public"."activity"."subject",
"public"."activity"."activity",
"public"."activity"."activity_date",
"public"."activity"."activity_enddate",
"public"."activity"."alldayevent",
"public"."activity"."account",
"public"."activity_codes"."code" as activity_type,
"public"."users"."smarsh_id"
FROM
"public"."activity"
Inner Join "public"."activity_codes" ON "public"."activity_codes"."activity_code" = "public"."activity"."type"
Inner Join "public"."users" ON "public"."users"."redtail_id" = "public"."activity"."recowner"
WHERE
public.activity.deleted =  'False'
and
"public"."activity_codes"."code"= 'Appointment'
);

create table family_household_info as
(
SELECT
"public"."family"."recid",
"public"."family"."from_id",
"public"."family"."to_id",
"public"."family"."relationship",
"public"."family"."relationship_label"
FROM
"public"."family"
);

alter table family_household_info
add column household_id int8;

update family_household_info set household_id = from_id + 1000000;

alter table client
add column household_id int8;

update client set household_id = family_household_info.household_id from family_household_info where clid = from_id;
update client set household_id = family_household_info.household_id from family_household_info where clid = to_id;

create table new_family_household_records
(
household_id int8,
primary_contact_id int8,
firstname varchar(255),
lastname varchar(255)
);

insert into new_family_household_records (household_id,primary_contact_id)
(select distinct household_id,from_id from family_household_info);

update new_family_household_records set firstname = client.firstname from client where primary_contact_id = clid;
update new_family_household_records set lastname = client.lastname from client where primary_contact_id = clid;

