create table tolerance_data
(
contact_id varchar,
tolerance_name varchar,
tolerance_date_taken timestamp without time zone,
tolerance_score bigint,
tolerance_capacity_score bigint,
tolerance_finametrica bigint,
tolerance_document_name varchar,
tolerance_capacity_document_name varchar
);

insert into tolerance_data
(
select
"CONTACTID",
'Client',
"Client Risk Tolerance Date",
"Client Risk Tolerance Score",
"Client Risk Capacity Score",
"Client Tolerance and Capacity Finametrica Score",
"Client Risk Tolerance Document",
"Client Risk Capacity Document"
from 
contacts_full
where
"Client Risk Tolerance Date" is not null or
"Client Risk Tolerance Score" is not null or
"Client Risk Capacity Score" is not null or
"Client Tolerance and Capacity Finametrica Score" is not null or
"Client Risk Tolerance Document" is not null or
"Client Risk Capacity Document" is not null 
);

insert into tolerance_data
(
select
"CONTACTID",
'Co-Client',
"Co-Client Risk Tolerance Date",
"Co-Client Risk Tolerance Score",
"Co-Client Risk Capacity Score",
"Co-Client Tolerance and Capacity Finametrica Score",
"Co-Client Risk Tolerance Document",
"Co-Client Risk Capacity Document"
from 
contacts_full
where
"Co-Client Risk Tolerance Date" is not null or
"Co-Client Risk Tolerance Score" is not null or
"Co-Client Risk Capacity Score" is not null or
"Co-Client Tolerance and Capacity Finametrica Score" is not null or
"Co-Client Risk Tolerance Document" is not null or
"Co-Client Risk Capacity Document" is not null 
);

insert into tolerance_data
(
select
"CONTACTID",
"Addtl Client Tolerance and Capacity Name",
"Addtl Client Tolerance Date",
"Addtl Client Tolerance Score",
"Addtl Client Capacity Score",
"Addtl Client Tolerance and Capacity Finametrica Score",
"Addtl Client Tolerance Document",
"Addtl Client Capacity Document"
from 
contacts_full
where
"Addtl Client Tolerance and Capacity Name" is not Null
);
