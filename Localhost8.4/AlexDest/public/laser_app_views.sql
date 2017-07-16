CREATE OR REPLACE VIEW "public"."main_contact_info" AS 
(
SELECT
"public".laserapp_clients."CLIENT_ID",
"public".laserapp_clients."ClientDOB",
"public".laserapp_clients."ClientDrvLic",
"public".laserapp_clients."ClientDrvLicExp",
"public".laserapp_clients."ClientDrvLicIssDate",
"public".laserapp_clients."ClientDrvLicJur",
"public".laserapp_clients."ClientEmployerName",
"public".laserapp_clients."ClientFirstName",
"public".laserapp_clients."ClientLastName",
"public".laserapp_clients."ClientMaritalStatus",
"public".laserapp_clients."ClientMI",
"public".laserapp_clients."ClientOccupation",
"public".laserapp_clients."ClientSalutation",
"public".laserapp_clients."ClientSex",
"public".laserapp_clients."ClientSSN",
"public".laserapp_clients."SpouseDOB",
"public".laserapp_clients."SpouseDrvLic",
"public".laserapp_clients."SpouseDrvLicExp",
"public".laserapp_clients."SpouseDrvLicIssDate",
"public".laserapp_clients."SpouseDrvLicJur",
"public".laserapp_clients."SpouseEmail",
"public".laserapp_clients."SpouseEmployerAddress",
"public".laserapp_clients."SpouseEmployerCity",
"public".laserapp_clients."SpouseEmployerName",
"public".laserapp_clients."SpouseEmployerPhone",
"public".laserapp_clients."SpouseEmployerPhoneExt",
"public".laserapp_clients."SpouseEmployerState",
"public".laserapp_clients."SpouseEmployerSuite",
"public".laserapp_clients."SpouseEmployerZip",
"public".laserapp_clients."SpouseFirstName",
"public".laserapp_clients."SpouseLastName",
"public".laserapp_clients."SpouseMI",
"public".laserapp_clients."SpouseOccupation",
"public".laserapp_clients."SpouseSalutation",
"public".laserapp_clients."SpouseSex",
"public".laserapp_clients."SpouseSSN"
FROM
"public".laserapp_clients

);

CREATE OR REPLACE VIEW "public"."address_info" AS 
(
SELECT address.contact_id, 
address.address_1, 
address.address_2, 
address.address_city, 
address.address_state, 
address.address_zip, 
address.address_type,
address.address_note 
FROM address
);

CREATE OR REPLACE VIEW "public"."beneficiary_info" AS 
(
SELECT laserapp_beneficiaries."CLIENT_ID", 
laserapp_beneficiaries."First", 
laserapp_beneficiaries."Mi", 
laserapp_beneficiaries."Last", 
laserapp_beneficiaries."SSN", 
laserapp_beneficiaries."Relationship", 
laserapp_beneficiaries."Address", 
laserapp_beneficiaries."AptNo", 
laserapp_beneficiaries."City", 
laserapp_beneficiaries."State", 
laserapp_beneficiaries."Zip", 
laserapp_beneficiaries."Occupation", 
laserapp_beneficiaries."Email", 
laserapp_beneficiaries."EmpAddress", 
laserapp_beneficiaries."EmpCity", 
laserapp_beneficiaries."EmployerName", 
laserapp_beneficiaries."EmployerPhone", 
laserapp_beneficiaries."EmpPhoneExt", 
laserapp_beneficiaries."EmpState", 
laserapp_beneficiaries."EmpZip", 
laserapp_beneficiaries."HomePhone", 
laserapp_beneficiaries."Percentage", 
laserapp_beneficiaries."DOB" 
FROM laserapp_beneficiaries
);

CREATE OR REPLACE VIEW "public"."email_info" AS 
(
SELECT email.contact_id, 
email.email,
email.email_note FROM email
);

CREATE OR REPLACE VIEW "public"."phone_info" AS 
(
SELECT phones.contact_id, 
phones.phone_number, 
phones.phone_ext, 
phones.phone_type,
phones.phone_note 
FROM phones
); 
 
