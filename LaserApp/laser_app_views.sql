CREATE OR REPLACE VIEW "public"."main_contact_info" AS 
(
SELECT laserapp_clients."CLIENT_ID", 
laserapp_clients."ClientDOB", 
laserapp_clients."ClientDrvLic",
laserapp_clients."ClientDrvLicExp", 
laserapp_clients."ClientDrvLicIssDate", 
laserapp_clients."ClientDrvLicJur", 
laserapp_clients."ClientFirstName", 
laserapp_clients."ClientLastName", 
laserapp_clients."ClientMaritalStatus", 
laserapp_clients."ClientMI", 
laserapp_clients."ClientOccupation", 
laserapp_clients."ClientSalutation", 
laserapp_clients."ClientSex", 
laserapp_clients."ClientSSN", 
laserapp_clients."ClientEmployerName" 
FROM laserapp_clients

);

CREATE OR REPLACE VIEW "public"."address_info" AS 
(
SELECT address.contact_id, 
address.address_1, 
address.address_2, 
address.address_city, 
address.address_state, 
address.address_zip, 
address.address_type 
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
email.email FROM email
);

CREATE OR REPLACE VIEW "public"."phone_info" AS 
(
SELECT phones.contact_id, 
phones.phone_number, 
phones.phone_ext, 
phones.phone_type 
FROM phones
); 
 