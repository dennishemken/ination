create table household_info as
(
SELECT
"public"."membership"."recid",
"public"."membership"."from_id",
"public"."membership"."to_id",
"public"."membership"."from_rel",
"public"."membership"."to_rel"
FROM
"public"."membership"
WHERE
"public"."membership"."from_rel" <>  '10' AND
"public"."membership"."from_rel" <  '37'
);

alter table household_info
add column household_id int8;

update household_info set household_id = from_id + 1000000;

alter table client
add column household_id int8;

update client set household_id = household_info.household_id from household_info where clid = from_id;
update client set household_id = household_info.household_id from household_info where clid = to_id;

create table new_household_records
(
household_id int8,
primary_contact_id int8,
firstname varchar(255),
lastname varchar(255)
);

insert into new_household_records (household_id,primary_contact_id)
(select distinct household_id,from_id from household_info);

update new_household_records set firstname = client.firstname from client where primary_contact_id = clid;
update new_household_records set lastname = client.lastname from client where primary_contact_id = clid;

