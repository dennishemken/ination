drop view main_client_info;
drop table main_client_data;

create table main_client_data as
(
SELECT 
laserapp_clients."CLIENT_ID" as contact_id, 
laserapp_clients."ClientDOB" as "Birthdate", 
laserapp_clients."ClientDrvLic" as "Driver License", 
laserapp_clients."ClientDrvLicExp" as "DL Expiration", 
laserapp_clients."ClientDrvLicJur" as "DL State", 
laserapp_clients."ClientFirstName" as "First Name", 
laserapp_clients."ClientLastName" as "Last Name", 
laserapp_clients."ClientMaritalStatus" as "Marital", 
laserapp_clients."ClientMI" as "Middle Name", 
laserapp_clients."ClientOccupation" as "Profession", 
laserapp_clients."ClientSalutation" as "Nickname", 
laserapp_clients."ClientSex" as "Gender", 
laserapp_clients."ClientSSN", 
laserapp_clients."ClientEmployerName" as "Employer Name",
laserapp_clients."CLIENT_ID"||'household' as household_id 
FROM laserapp_clients
);

insert into main_client_data
(
SELECT 
laserapp_clients."CLIENT_ID"||'spouse', 
laserapp_clients."SpouseDOB", 
laserapp_clients."SpouseDrvLic", 
laserapp_clients."SpouseDrvLicExp", 
laserapp_clients."SpouseDrvLicIssDate", 
laserapp_clients."SpouseFirstName", 
laserapp_clients."ClientLastName", 
'' as marital_status, 
laserapp_clients."SpouseMI", 
laserapp_clients."SpouseOccupation", 
laserapp_clients."SpouseSalutation", 
laserapp_clients."SpouseSex", 
laserapp_clients."SpouseSSN", 
laserapp_clients."SpouseEmployerName",
laserapp_clients."CLIENT_ID"||'household' as household_id 
FROM laserapp_clients
where
"SpouseFirstName" is not null
);
