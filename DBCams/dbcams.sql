--DB Files needed:  FNA and FNO

-- View: main_contact_info

-- DROP VIEW main_contact_info;

CREATE OR REPLACE VIEW main_contact_info AS 
 SELECT "FNA"."CLTNO" AS contact_id, "FNA"."FNAMEMI" AS "First Name", "FNA"."LNAME" AS "Last Name", "FNA"."CORRNAME" AS "Correspondance Name", "FNA"."SMOKER" AS "Smoker", "FNA"."SEX" AS "Gender", "FNA"."CATEGORY" AS "Category", "FNA"."STATUS" AS "Status", "FNA"."DOBC" AS "Birthdate", "FNA"."KEY" AS "Key", "FNA"."SALUTE" AS "Friendly Salutation", "FNA"."FORMALSAL" AS "Formal Salutation", "FNA"."WORTH" AS "Worth"
   FROM "FNA";

ALTER TABLE main_contact_info OWNER TO postgres;

-- View: address_info

-- DROP VIEW address_info;

CREATE OR REPLACE VIEW address_info AS 
 SELECT "FNA"."CLTNO" AS contact_id, "FNA"."ADD1" AS "Address Line 1", "FNA"."ADD2" AS "Address Line 2", "FNA"."CITY" AS "Address City", "FNA"."STATE" AS "Address State", "FNA"."ZIP" AS "Address Zipcode", "FNA"."ADDCODE" AS "Address Type"
   FROM "FNA"
  WHERE "FNA"."ADD1"::text <> ''::text OR "FNA"."ADD2"::text <> ''::text;

ALTER TABLE address_info OWNER TO postgres;

-- View: email_info

-- DROP VIEW email_info;

CREATE OR REPLACE VIEW email_info AS 
 SELECT "FNA"."CLTNO", "FNA"."EMAIL"
   FROM "FNA"
  WHERE "FNA"."EMAIL" <> ''::text AND "FNA"."EMAIL" <> 'None'::text AND "FNA"."EMAIL" <> 'none'::text AND "FNA"."EMAIL" <> 'NONE'::text;

ALTER TABLE email_info OWNER TO postgres;

-- View: notes_info

-- DROP VIEW notes_info;

CREATE OR REPLACE VIEW notes_info AS 
 SELECT DISTINCT "FCL"."CLTNO", "FNO"."STATUS", "FNO"."DATE", "FNO"."DESCR", "FNO"."DLASTCHG"
   FROM "FNO"
   LEFT JOIN "FCL" ON "FCL"."LRECID"::text = "FNO"."LRECID"::text
  WHERE "FNO"."DATE"::text <> '00:00'::text;

ALTER TABLE notes_info OWNER TO postgres;


-- Table: phone_data

-- DROP TABLE phone_data;

CREATE TABLE phone_data
(
  contact_id character varying(255),
  phone_number character varying(255),
  phone_ext character varying(255),
  phone_type character varying(255)
)
WITH (
  OIDS=FALSE
);

insert into phone_data (contact_id,phone_number,phone_ext,phone_type)
(
select "CLTNO","PHOFF","PHOFFEXT",'Business' as type from "FNA" where "PHOFF" <> ''
);

insert into phone_data (contact_id,phone_number,phone_type)
(
select "CLTNO","PHHOME",'Home' as phone_type from "FNA" where "PHHOME" <> ''
);

insert into phone_data (contact_id,phone_number,phone_ext,phone_type)
(
select "CLTNO","PHFAX","PHFAXEXT",'Fax' as phone_type from "FNA" where "PHFAX" <> ''
);

insert into phone_data (contact_id,phone_number,phone_ext,phone_type)
(
select "CLTNO","PHOTHER","PHOTHEXT",'Other' as phone_type from "FNA" where "PHOFF" <> ''
);



-- View: phone_info

-- DROP VIEW phone_info;

CREATE OR REPLACE VIEW phone_info AS 
 SELECT phone_data.contact_id, phone_data.phone_number AS "Phone Number", phone_data.phone_ext AS "Phone Extension", phone_data.phone_type AS "Phone Type"
   FROM phone_data
  WHERE ''::text = ''::text;

ALTER TABLE phone_info OWNER TO postgres;
 
 