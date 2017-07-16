create table address_data
(
contact_id varchar(255),
"Address Line 1" varchar(255),
"Address Line 2" varchar(255),
"Address Line 3" varchar(255),
"Address City" varchar(255),
"Address State" varchar(255),
"Address Zipcode" varchar(255),
"Address Type" varchar(255)
);

insert into address_data
(
SELECT
"public"."CONTACT1".contact_id,
"public"."CONTACT1"."ADDRESS1",
"public"."CONTACT1"."ADDRESS2",
"public"."CONTACT1"."ADDRESS3",
"public"."CONTACT1"."CITY",
"public"."CONTACT1"."STATE",
"public"."CONTACT1"."ZIP",
'Home' as "Address Type"
FROM
"public"."CONTACT1"
WHERE
"public"."CONTACT1"."ADDRESS1" <> '' or
"public"."CONTACT1"."ADDRESS2" <> '' or
"public"."CONTACT1"."ADDRESS3" <> '' or
"public"."CONTACT1"."CITY" <> '' or
"public"."CONTACT1"."STATE" <> '' or
"public"."CONTACT1"."ZIP" <> ''
);

insert into address_data
(
SELECT
"public"."CONTACT1".contact_id,
"public"."CONTACT2"."UBSNADDR1",
"public"."CONTACT2"."UBSNADDR2",
'' as "Address Line 3",
"public"."CONTACT2"."UBSNCITY",
"public"."CONTACT2"."UBSNSTATE",
"public"."CONTACT2"."UBSNZIP",
'Business' as "Address Type"
FROM
"public"."CONTACT2"
Inner Join "public"."CONTACT1" ON "public"."CONTACT1"."ACCOUNTNO" = "public"."CONTACT2"."ACCOUNTNO" 
WHERE
"public"."CONTACT2"."UBSNADDR1" <> '' or
"public"."CONTACT2"."UBSNADDR2" <> '' or
"public"."CONTACT2"."UBSNCITY" <> '' or
"public"."CONTACT2"."UBSNSTATE" <> '' or
"public"."CONTACT2"."UBSNZIP" <> ''
);



