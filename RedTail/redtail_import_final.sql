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




Create or replace view main_contact_info as
(
SELECT
"public"."client"."clid" as contact_id,
"public"."client"."household_id",
--"public"."client_codes"."code",
"public"."client"."salutation" as "Salutation",
"public"."client"."firstname" as "First Name",
"public"."client"."middlename" as "Middle Name",
"public"."client"."lastname" as "Last Name",
"public"."client"."suffix" as "Suffix",
"public"."client"."name" as "Company Name",
"public"."client"."nickname" as "Nickname",
"public"."client"."taxid" as "SSN",
"public"."client"."dob" as "Birthdate",
"public"."client"."title" as "Employed Position",
"public"."client"."age" as "Redtail Age",
"public"."client"."clientsince" as "Client Since",
"public"."client"."clientsinceyears" as "Client Since Years",
"public"."client"."referredby" as "Referred By",
"public"."marital_codes"."code" as "Marital",
"public"."gender_codes"."code" as "Gender",
"public"."personalprofile"."dlnumber" as "Drivers License",
"public"."personalprofile"."dlstate" as "DL State",
--"public"."personalprofile"."dlissue",
"public"."personalprofile"."dlexpiration" as "DL Expiration",
"public"."personalprofile"."occupation" as "Profession",
"public"."personalprofile"."occupation_startdate",
--"public"."company_info"."name" AS "Company Name",
"public"."csl"."code" AS "Client Type"
FROM
"public"."client"
Left Join "public"."client_codes" ON "public"."client_codes"."client_code" = "public"."client"."type"
Left Join "public"."marital_codes" ON "public"."marital_codes"."marital_code" = "public"."client"."marital"
Left Join "public"."gender_codes" ON "public"."gender_codes"."gender_code" = "public"."client"."sex"
Left Join "public"."personalprofile" ON "public"."personalprofile"."personalprofile_clid" = "public"."client"."clid"
--Left Join "public"."company_info" ON "public"."company_info"."from_id" = "public"."client"."clid"
Left Join "public"."csl" ON "public"."csl"."csl_code" = "public"."client"."status2"
);

create or replace view address_info as
(
SELECT
"public"."address"."address_clid" as "contact_id",
"public"."address_codes"."code" as "Address Type",
"public"."address"."address1" as "Address Line 1",
"public"."address"."address2" as "Address Line 2",
"public"."address"."city" as "Address City",
"public"."address"."state" as "Address State",
"public"."address"."zip" as "Address Zip",
"public"."address"."zip4" as "Address Zip +4",
"public"."address"."primaddr" as "Primary Address",
"public"."address"."preferred"
FROM
"public"."address"
Inner Join "public"."address_codes" ON "public"."address_codes"."address_code" = "public"."address"."type"
);

create or replace view email_info as
(
SELECT
"public"."internet"."internet_clid" as "contact_id",
"public"."internet_codes"."code" as "Email Type",
"public"."internet"."address" as "Email Address",
"public"."internet"."preferred" as "Primary Email",
"public"."internet"."label" as "Email Note"
FROM
"public"."internet"
Inner Join "public"."internet_codes" ON "public"."internet_codes"."internet_code" = "public"."internet"."type"
WHERE
"public"."internet_codes"."code" =  'Email 1'
);

create or replace view note_info as
(
SELECT
"public"."note"."note_clid" as "contact_id",
"public"."note"."note" as "Description",
"public"."note_codes"."code" as "note_type",
"public"."note"."recadd" as "Created On"
FROM
"public"."note"
Inner Join "public"."note_codes" ON "public"."note_codes"."note_code" = "public"."note"."type"
);

create or replace view phone_note as
(
SELECT
"public"."phone"."phone_clid" as "contact_id",
"public"."phone_codes"."code" as "Phone Type",
"public"."phone"."number" as "Phone Number",
"public"."phone"."ext" as "Phone Extension",
"public"."phone"."preferred" as "Primary Phone"
FROM
"public"."phone"
Inner Join "public"."phone_codes" ON "public"."phone_codes"."phone_code" = "public"."phone"."type"
);

create or replace view account_info as
(
SELECT
"public"."account"."account_clid" as "contact_id",
"public"."account_codes"."code" AS "Account_Type",
"public"."account"."number" as "Account_Number",
"public"."account"."company" as "Account Company",
"public"."account"."product" as "Account Product",
"public"."account"."taxqualified" as "Tax Qualified",
"public"."account_taxqualified_codes"."code" AS "Tax Qualified Type",
--"public"."account"."discretionary",
--"public"."account"."managed",
--"public"."account"."manager",
"public"."account"."model" as "Account Model",
--"public"."account"."status",
--"public"."account"."status2",
--"public"."account"."techfi",
--"public"."account"."sone"
FROM
"public"."account"
Inner Join "public"."account_codes" ON "public"."account_codes"."account_code" = "public"."account"."type"
Inner Join "public"."account_taxqualified_codes" ON "public"."account_taxqualified_codes"."taxqual_code" = "public"."account"."taxqualified_type"
);

create or replace view history_info as
(
SELECT
"public"."activity"."activity_clid" as contact_id,
"public"."activity"."subject",
"public"."activity"."activity" AS "description",
"public"."activity"."activity_date" AS "startdate",
"public"."activity"."activity_enddate",
"public"."activity"."complete",
"public"."activity"."completedate",
"public"."activity_codes"."code" AS "task_type",
"public"."activity"."percentdone",
--"public"."users"."smarsh_id"
FROM
"public"."activity"
Inner Join "public"."activity_codes" ON "public"."activity_codes"."activity_code" = "public"."activity"."type"
--Inner Join "public"."users" ON "public"."users"."redtail_id" = "public"."activity"."recowner"
WHERE
"public"."activity"."deleted" <>  'true' AND
"public"."activity_codes"."code" <>  'Appointment'
);
