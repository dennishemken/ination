create table planning_data
(
contact_id varchar,
plan_label varchar,
plan_date_delivered varchar,
plan_summary varchar,
plan_document_name varchar,
plan_expert_used varchar
);

insert into planning_data
(
select
"CONTACTID",
'Insurance Planning Health' as plan_label,
"Insurance Planning Health Date",
"Insurance Planning Health Summary",
"Insurance Planning Health Document",
"Insurance Planning Health Expert"
from 
contacts_full
where
"Insurance Planning Health Date" is not null or
"Insurance Planning Health Summary" is not null or
"Insurance Planning Health Document" is not null or
"Insurance Planning Health Expert" is not null
);


insert into planning_data
(
select
"CONTACTID",
'Insurance Planning Disability' as plan_label,
"Insurance Planning Disability Date",
"Insurance Planning Disability Summary",
"Insurance Planning Disability Document",
"Insurance Planning Disability Expert"
from 
contacts_full
where
"Insurance Planning Disability Date" is not null or
"Insurance Planning Disability Summary" is not null or
"Insurance Planning Disability Document" is not null or
"Insurance Planning Disability Expert" is not null
);


insert into planning_data
(
select
"CONTACTID",
'Insurance Planning Life' as plan_label,
"Insurance Planning Life Date",
"Insurance Planning Life Summary",
"Insurance Planning Life Document",
"Insurance Planning Life Expert"
from 
contacts_full
where
"Insurance Planning Life Date" is not null or
"Insurance Planning Life Summary" is not null or
"Insurance Planning Life Document" is not null or
"Insurance Planning Life Expert" is not null
);


insert into planning_data
(
select
"CONTACTID",
'Insurance Planning Long Term Care' as plan_label,
"Insurance Planning LTC Date",
"Insurance Planning LTC Summary",
"Insurance Planning LTC Document",
"Insurance Planning LTC Expert"
from 
contacts_full
where
"Insurance Planning LTC Date" is not null or
"Insurance Planning LTC Summary" is not null or
"Insurance Planning LTC Document" is not null or
"Insurance Planning LTC Expert" is not null
);


insert into planning_data
(
select

"CONTACTID",
E'Insurance Planning Home\Auto\Boat\Motorcycle' as plan_label,
"Insurance Planning Home Date",
"Insurance Planning Home Summary",
"Insurance Planning Home Document",
"Insurance Planning Home Expert"
from 
contacts_full
where
"Insurance Planning Home Date" is not null or
"Insurance Planning Home Summary" is not null or
"Insurance Planning Home Document" is not null or
"Insurance Planning Home Expert" is not null
);


insert into planning_data
(
select

"CONTACTID",
'Insurance Planning Umbrella' as plan_label,
"Insurance Planning Umbrella Date",
"Insurance Planning Unbrella Summary",
"Insurance Planning Umbrella Document",
"Insurance Planning Umbrella Expert"
from 
contacts_full
where
"Insurance Planning Umbrella Date" is not null or
"Insurance Planning Unbrella Summary" is not null or
"Insurance Planning Umbrella Document" is not null or
"Insurance Planning Umbrella Expert" is not null
);


insert into planning_data
(
select

"CONTACTID",
'Will' as plan_label,
"Estate Planning Will Date",
"Estate Planning Will Summary",
"Estate Planning Will Document",
"Estate Planning Will Expert"
from 
contacts_full
where
"Estate Planning Will Date" is not null or
"Estate Planning Will Summary" is not null or
"Estate Planning Will Document" is not null or
"Estate Planning Will Expert" is not null
);


insert into planning_data
(
select

"CONTACTID",
"Estate Planning Other1 Name" as plan_label,
"Estate Planning Other1 Date",
"Estate Planning Other1 Summary",
"Estate Planning Other1 Document",
"Estate Planning Other1 Expert"
from 
contacts_full
where
"Estate Planning Other1 Date" is not null or
"Estate Planning Other1 Summary" is not null or
"Estate Planning Other1 Document" is not null or
"Estate Planning Other1 Expert" is not null
);


insert into planning_data
(
select

"CONTACTID",
"Estate Planning Other2 Name" as plan_label,
"Estate Planning Other2 Date",
"Estate Planning Other2 Summary",
"Estate Planning Other2 Document",
"Estate Planning Other2 Expert"
from 
contacts_full
where
"Estate Planning Other2 Date" is not null or
"Estate Planning Other2 Summary" is not null or
"Estate Planning Other2 Document" is not null or
"Estate Planning Other2 Expert" is not null
);

insert into planning_data
(
select

"CONTACTID",
"Estate Planning Other3 Name" as plan_label,
"Estate Planning Other3 Date",
"Estate Planning Other3 Summary",
"Estate Planning Other3 Document",
"Estate Planning Other3 Expert"
from 
contacts_full
where
"Estate Planning Other3 Date" is not null or
"Estate Planning Other3 Summary" is not null or
"Estate Planning Other3 Document" is not null or
"Estate Planning Other3 Expert" is not null
);


insert into planning_data
(
select

"CONTACTID",
"Estate Planning Other4 Name" as plan_label,
"Estate Planning Other4 Date",
"Estate Planning Other4 Summary",
"Estate Planning Other4 Document",
"Estate Planning Other4 Expert"
from 
contacts_full
where
"Estate Planning Other4 Date" is not null or
"Estate Planning Other4 Summary" is not null or
"Estate Planning Other4 Document" is not null or
"Estate Planning Other4 Expert" is not null
);

insert into planning_data
(
select

"CONTACTID",
'Tax Planning Tax deferred savings' as plan_label,
"Tax Planning Tax deferred savings Date",
"Tax Planning Tax deferred savings Summary",
"Tax Planning Tax deferred savings Document",
"Tax Planning Tax deferred savings Expert"
from 
contacts_full
where
"Tax Planning Tax deferred savings Date" is not null or
"Tax Planning Tax deferred savings Summary" is not null or
"Tax Planning Tax deferred savings Document" is not null or
"Tax Planning Tax deferred savings Expert" is not null
);


insert into planning_data
(
select

"CONTACTID",
'Tax Planning Itemized Deduction review' as plan_label,
"Tax Planning Itemized Deduction Date",
"Tax Planning Itemized Deduction Summary",
"Tax Planning Itemized Deduction Document",
"Tax Planning Itemized Deduction Expert"
from 
contacts_full
where
"Tax Planning Itemized Deduction Date" is not null or
"Tax Planning Itemized Deduction Summary" is not null or
"Tax Planning Itemized Deduction Document" is not null or
"Tax Planning Itemized Deduction Expert" is not null
);


insert into planning_data
(
select

"CONTACTID",
'Tax Planning Roth Conversion Analysis' as plan_label,
"Tax Planning Roth Conversion Date",
"Tax Planning Roth Conversion Summary",
"Tax Planning Roth Conversion Document",
"Tax Planning Roth Conversion Expert"
from 
contacts_full
where
"Tax Planning Roth Conversion Date" is not null or
"Tax Planning Roth Conversion Summary" is not null or
"Tax Planning Roth Conversion Document" is not null or
"Tax Planning Roth Conversion Expert" is not null
);


insert into planning_data
(
select

"CONTACTID",
'Tax Planning Discussion with CPA' as plan_label,
"Tax Planning with CPA Date",
"Tax Planning with CPA Summary",
"Tax Planning with CPA Document",
"Tax Planning with CPA Expert"
from 
contacts_full
where
"Tax Planning with CPA Date" is not null or
"Tax Planning with CPA Summary" is not null or
"Tax Planning with CPA Document" is not null or
"Tax Planning with CPA Expert" is not null
);


insert into planning_data
(
select

"CONTACTID",
"Tax Planning Other1 Name" as plan_label,
"Tax Planning Other1 Date",
"Tax Planning Other1 Summary",
"Tax Planning Other1 Document",
"Tax Planning Other1 Expert"
from 
contacts_full
where
"Tax Planning Other1 Date" is not null or
"Tax Planning Other1 Summary" is not null or
"Tax Planning Other1 Document" is not null or
"Tax Planning Other1 Expert" is not null
);


insert into planning_data
(
select

"CONTACTID",
"Education Planning 1 Name" as plan_label,
"Education Planning 1 Date",
"Education Planning 1 Summary",
"Education Planning 1 Document",
'' as plan_expert_used
from 
contacts_full
where
"Education Planning 1 Date" is not null or
"Education Planning 1 Summary" is not null or
"Education Planning 1 Document" is not null
);


insert into planning_data
(
select

"CONTACTID",
"Education Planning 2 Name" as plan_label,
"Education Planning 2 Date",
"Education Planning 2 Summary",
"Education Planning 2 Document",
'' as plan_expert_used
from 
contacts_full
where
"Education Planning 2 Date" is not null or
"Education Planning 2 Summary" is not null or
"Education Planning 2 Document" is not null
);


insert into planning_data
(
select

"CONTACTID",
"Education Planning 3 Name" as plan_label,
"Education Planning 3 Date",
"Education Planning 3 Summary",
"Education Planning 3 Document",
'' as plan_expert_used
from 
contacts_full
where
"Education Planning 3 Date" is not null or
"Education Planning 3 Summary" is not null or
"Education Planning 3 Document" is not null
);

insert into planning_data
(
select

"CONTACTID",
"Education Planning 4 Name" as plan_label,
"Education Planning 4 Date",
"Education Planning 4 Summary",
"Education Planning 4 Document",
'' as plan_expert_used
from 
contacts_full
where
"Education Planning 4 Date" is not null or
"Education Planning 4 Summary" is not null or
"Education Planning 4 Document" is not null
);


insert into planning_data
(
select

"CONTACTID",
'Retirement Planning Financeware' as plan_label,
"Retirement Planning Financeware Date",
"Retirement Planning Financeware Summary",
"Retirement Planning Financeware Document",
'' as plan_expert_used
from 
contacts_full
where
"Retirement Planning Financeware Date" is not null or
"Retirement Planning Financeware Summary" is not null or
"Retirement Planning Financeware Document" is not null
);


insert into planning_data
(
select

"CONTACTID",
'Non-Managed Asset Co. Retirement Plan' as plan_label,
"Non-Managed Asset Retirement1 Date",
"Non-Managed Asset Retirement1 Summary",
"Non-Managed Asset Retirement1 Document",
"Non-Managed Asset Retirement1 Status"
from 
contacts_full
where
"Non-Managed Asset Retirement1 Date" is not null or
"Non-Managed Asset Retirement1 Summary" is not null or
"Non-Managed Asset Retirement1 Document" is not null or
"Non-Managed Asset Retirement1 Status" is not null
);


insert into planning_data
(
select

"CONTACTID",
'Non-Managed Asset Co. Retirement Plan' as plan_label,
"Non-Managed Asset Retirement2 Date",
"Non-Managed Asset Retirement2 Summary",
"Non-Managed Asset Retirement2 Document",
"Non-Managed Asset Retirement2 Status"
from 
contacts_full
where
"Non-Managed Asset Retirement2 Date" is not null or
"Non-Managed Asset Retirement2 Summary" is not null or
"Non-Managed Asset Retirement2 Document" is not null or
"Non-Managed Asset Retirement2 Status" is not null
);


insert into planning_data
(
select

"CONTACTID",
'Non-Managed Asset Real Estate' as plan_label,
"Non-Managed Asset Real Estate1 Date",
"Non-Managed Asset Real Estate1 Summary",
"Non-Managed Asset Real Estate1 Document",
"Non-Managed Asset Real Estate1 Status"
from 
contacts_full
where
"Non-Managed Asset Real Estate1 Date" is not null or
"Non-Managed Asset Real Estate1 Summary" is not null or
"Non-Managed Asset Real Estate1 Document" is not null or
"Non-Managed Asset Real Estate1 Status" is not null
);


insert into planning_data
(
select

"CONTACTID",
'Non-Managed Asset Real Estate' as plan_label,
"Non-Managed Asset Real Estate2 Date",
"Non-Managed Asset Real Estate2 Summary",
"Non-Managed Asset Real Estate2 Document",
"Non-Managed Asset Real Estate2 Status"
from 
contacts_full
where
"Non-Managed Asset Real Estate2 Date" is not null or
"Non-Managed Asset Real Estate2 Summary" is not null or
"Non-Managed Asset Real Estate2 Document" is not null or
"Non-Managed Asset Real Estate2 Status" is not null
);


insert into planning_data
(
select

"CONTACTID",
'Non-Managed Asset Business' as plan_label,
"Non-Managed Asset Business Date",
"Non-Managed Asset Business Summary",
"Non-Managed Asset Summary Document",
"Non-Managed Asset Summary Status"
from 
contacts_full
where
"Non-Managed Asset Business Date" is not null or
"Non-Managed Asset Business Summary" is not null or
"Non-Managed Asset Summary Document" is not null or
"Non-Managed Asset Summary Status" is not null
);


insert into planning_data
(
select

"CONTACTID",
"Non-Managed Asset Other1 Name" as plan_label,
"Non-Managed Asset Other1 Date",
"Non-Managed Asset Other1 Summary",
"Non-Managed Asset Other1 Document",
"Non-Managed Asset Other1 Status"
from 
contacts_full
where
"Non-Managed Asset Other1 Date" is not null or
"Non-Managed Asset Other1 Summary" is not null or
"Non-Managed Asset Other1 Document" is not null or
"Non-Managed Asset Other1 Status" is not null
);


insert into planning_data
(
select

"CONTACTID",
"Non-Managed Asset Other2 Name" as plan_label,
"Non-Managed Asset Other2 Date",
"Non-Managed Asset Other2 Summary",
"Non-Managed Asset Other2 Document",
"Non-Managed Asset Other2 Status"
from 
contacts_full
where
"Non-Managed Asset Other2 Date" is not null or
"Non-Managed Asset Other2 Summary" is not null or
"Non-Managed Asset Other2 Document" is not null or
"Non-Managed Asset Other2 Status" is not null
);

insert into planning_data
(
select

"CONTACTID",
"Non-Managed Asset Other3 Name" as plan_label,
"Non-Managed Asset Other3 Date",
"Non-Managed Asset Other3 Summary",
"Non-Managed Asset Other3 Document",
"Non-Managed Asset Other3 Status"
from 
contacts_full
where
"Non-Managed Asset Other3 Date" is not null or
"Non-Managed Asset Other3 Summary" is not null or
"Non-Managed Asset Other3 Document" is not null or
"Non-Managed Asset Other3 Status" is not null
);


insert into planning_data
(
select

"CONTACTID",
"Non-Managed Asset Other4 Name" as plan_label,
"Non-Managed Asset Other4 Date",
"Non-Managed Asset Other4 Summary",
"Non-Managed Asset Other4 Document",
"Non-Managed Asset Other4 Status"
from 
contacts_full
where
"Non-Managed Asset Other4 Date" is not null or
"Non-Managed Asset Other4 Summary" is not null or
"Non-Managed Asset Other4 Document" is not null or
"Non-Managed Asset Other4 Status" is not null
);


insert into planning_data
(
select

"CONTACTID",
"Debt Planning 1 Name" as plan_label,
"Debt Planning 1 Date",
"Debt Planning 1 Summary",
"Debt Planning 1 Document",
"Debt Planning 1 Status"
from 
contacts_full
where
"Debt Planning 1 Date" is not null or
"Debt Planning 1 Summary" is not null or
"Debt Planning 1 Document" is not null or
"Debt Planning 1 Status" is not null
);

insert into planning_data
(
select

"CONTACTID",
"Debt Planning 2 Name" as plan_label,
"Debt Planning 2 Date",
"Debt Planning 2 Summary",
"Debt Planning 2 Document",
"Debt Planning 2 Status"
from 
contacts_full
where
"Debt Planning 2 Date" is not null or
"Debt Planning 2 Summary" is not null or
"Debt Planning 2 Document" is not null or
"Debt Planning 2 Status" is not null
);


insert into planning_data
(
select

"CONTACTID",
"Debt Planning 3 Name" as plan_label,
"Debt Planning 3 Date",
"Debt Planning 3 Summary",
"Debt Planning 3 Document",
"Debt Planning 3 Status"
from 
contacts_full
where
"Debt Planning 3 Date" is not null or
"Debt Planning 3 Summary" is not null or
"Debt Planning 3 Document" is not null or
"Debt Planning 3 Status" is not null
);


insert into planning_data
(
select

"CONTACTID",
"Debt Planning 4 Name" as plan_label,
"Debt Planning 4 Date",
"Debt Planning 4 Summary",
"Debt Planning 4 Document",
"Debt Planning 4 Status"
from 
contacts_full
where
"Debt Planning 4 Date" is not null or
"Debt Planning 4 Summary" is not null or
"Debt Planning 4 Document" is not null or
"Debt Planning 4 Status" is not null
);




