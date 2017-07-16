create table goals_data
(
contact_id varchar,
goal_label varchar,
goal_date_taken timestamp without time zone,
goal_document_name varchar
);

insert into goals_data
(
select
"CONTACTID",
'Client',
"Client Goals and Values Date",
"Client Goals and Values Document"
from 
contacts_full
where
"Client Goals and Values Date" is not Null or
"Client Goals and Values Document" is not Null
);

insert into goals_data
(
select
"CONTACTID",
'Co-Client',
"Co-Client Goals and Values Date",
"Co-Client Goals and Values Document"
from 
contacts_full
where
"Co-Client Goals and Values Date" is not Null or
"Co-Client Goals and Values Document" is not Null
);

insert into goals_data
(
select
"CONTACTID",
'Addtl Client',
"Addtl Client Goals and Values Date",
"Addtl Goals and Values Document"
from 
contacts_full
where
"Addtl Client Goals and Values Date" is not Null or
"Addtl Goals and Values Document" is not Null
);

