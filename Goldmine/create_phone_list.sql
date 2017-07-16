drop table phone_info;

create table phone_info
(
contact_id varchar(255),
phone_number varchar(255),
phone_ext varchar(255),
phone_type varchar(255)
);


insert into phone_info
(
SELECT
"public"."new_contact_id"."contact_id",
"public"."Contact1"."PHONE1",
"public"."Contact1"."EXT1"
FROM
"public"."Contact1"
Inner Join "public"."new_contact_id" ON "public"."new_contact_id"."account_no" = "public"."Contact1"."ACCOUNTNO"
where
"public"."Contact1"."PHONE1" is not null AND
"public"."Contact1"."ACCOUNTNO" not in 
(
SELECT
"public"."ContSupp"."ACCOUNTNO"
FROM
"public"."ContSupp"
WHERE
"public"."ContSupp"."RECTYPE" =  'C'
)
);

insert into phone_info
(
SELECT
"public"."Contact1"."ACCOUNTNO",
"public"."Contact1"."PHONE2",
"public"."Contact1"."EXT2",
'Business' as phone_type
FROM
"public"."Contact1"
Inner Join "public"."new_contact_id" ON "public"."new_contact_id"."account_no" = "public"."Contact1"."ACCOUNTNO"
where
"public"."Contact1"."PHONE2" is not null AND
"public"."Contact1"."ACCOUNTNO" not in 
(
SELECT
"public"."ContSupp"."ACCOUNTNO"
FROM
"public"."ContSupp"
WHERE
"public"."ContSupp"."RECTYPE" =  'C'
)
);

insert into phone_info
(
SELECT
"public"."Contact1"."ACCOUNTNO",
"public"."Contact1"."PHONE3",
"public"."Contact1"."EXT3",
'Cellular' as phone_type
FROM
"public"."Contact1"
Inner Join "public"."new_contact_id" ON "public"."new_contact_id"."account_no" = "public"."Contact1"."ACCOUNTNO"
where
"public"."Contact1"."PHONE3" is not null AND
"public"."Contact1"."ACCOUNTNO" not in 
(
SELECT
"public"."ContSupp"."ACCOUNTNO"
FROM
"public"."ContSupp"
WHERE
"public"."ContSupp"."RECTYPE" =  'C'
)
);

insert into phone_info
(
SELECT
"public"."Contact1"."ACCOUNTNO",
"public"."Contact1"."FAX",
"public"."Contact1"."EXT4",
'Fax' as phone_type
FROM
"public"."Contact1"
Inner Join "public"."new_contact_id" ON "public"."new_contact_id"."account_no" = "public"."Contact1"."ACCOUNTNO"
where
"public"."Contact1"."FAX" is not null AND
"public"."Contact1"."ACCOUNTNO" not in 
(
SELECT
"public"."ContSupp"."ACCOUNTNO"
FROM
"public"."ContSupp"
WHERE
"public"."ContSupp"."RECTYPE" =  'C'
)
);

