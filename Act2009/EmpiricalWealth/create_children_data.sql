create table children_data as
(
SELECT
"public".contacts_full."CONTACTID" as contact_id,
"public".contacts_full."Child 1 College Planning" as child_college,
--"public".contacts_full."Child 1 DOB" as child_dob,
--"public".contacts_full."Child 1 DOB Annual Event" as child_dob_event,
"public".contacts_full."Child 1 Name" as child_name,
"public".contacts_full."Child 1 SSN" as child_ssn
FROM
"public".contacts_full
WHERE
"public".contacts_full."Child 1 Name" IS NOT NULL 
);

insert into children_data
(
SELECT
"public".contacts_full."CONTACTID" as contact_id,
"public".contacts_full."Child 2 College Planning" as child_college,
--"public".contacts_full."Child 2 DOB" as child_dob,
--"public".contacts_full."Child 2 DOB Annual Event" as child_dob_event,
"public".contacts_full."Child 2 Name" as child_name,
"public".contacts_full."Child 2 SSN" as child_ssn
FROM
"public".contacts_full
WHERE
"public".contacts_full."Child 2 Name" IS NOT NULL 
);

insert into children_data
(
SELECT
"public".contacts_full."CONTACTID" as contact_id,
"public".contacts_full."Child 3 College Planning" as child_college,
--"public".contacts_full."Child 3 DOB" as child_dob,
--"public".contacts_full."Child 3 DOB Annual Event" as child_dob_event,
"public".contacts_full."Child 3 Name" as child_name,
"public".contacts_full."Child 3 SSN" as child_ssn
FROM
"public".contacts_full
WHERE
"public".contacts_full."Child 3 Name" IS NOT NULL 
);

insert into children_data
(
SELECT
"public".contacts_full."CONTACTID" as contact_id,
"public".contacts_full."Child 4 College Planning" as child_college,
--"public".contacts_full."Child 4 DOB" as child_dob,
--"public".contacts_full."Child 4 DOB Annual Event" as child_dob_event,
"public".contacts_full."Child 4 Name" as child_name,
"public".contacts_full."Child 4 SSN" as child_ssn
FROM
"public".contacts_full
WHERE
"public".contacts_full."Child 4 Name" IS NOT NULL 
);


