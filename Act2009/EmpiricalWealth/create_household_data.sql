create table household_data as 
(
SELECT DISTINCT
"public"."CONTACT"."CONTACTID",
"public"."CONTACT"."First Name",
"public"."CONTACT"."Last Name"
FROM
"public"."CONTACT"
where "CONTACTID" in (select distinct "Contactid" from "SECONDARY_CONTACTS")
);

alter table household_data add column household_id varchar;

update household_data set household_id = "CONTACTID"||'household';

alter table "SECONDARY_CONTACTS" add column household_id varchar;

update"SECONDARY_CONTACTS" set household_id = "Contactid"||'household';


