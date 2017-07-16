create table phone_data as
(
SELECT
"public"."ActExport".contact_id,
"public"."ActExport"."Phone",
"public"."ActExport"."Phone Ext-"
'Business' as phone_type
FROM
"public"."ActExport"
where
"public"."ActExport"."Phone" is not null or
"public"."ActExport"."Phone Ext-" is not null
);

insert into phone_data
(
SELECT
"public"."ActExport".contact_id,
"public"."ActExport"."Home Phone",
"public"."ActExport"."Home Extension"
'Home' as phone_type
FROM
"public"."ActExport"
where
"public"."ActExport"."Home Phone" is not null or
"public"."ActExport"."Home Extension" is not null
);

insert into phone_data
(
SELECT
"public"."ActExport".contact_id,
"public"."ActExport"."Mobile Phone",
"public"."ActExport"."Mobile Extension"
'Cell' as phone_type
FROM
"public"."ActExport"
where
"public"."ActExport"."Mobile Phone" is not null or
"public"."ActExport"."Mobile Extension" is not null
);

insert into phone_data
(
SELECT
"public"."ActExport".contact_id,
"public"."ActExport"."Pager",
"public"."ActExport"."Pager Extension"
'Pager' as phone_type
FROM
"public"."ActExport"
where
"public"."ActExport"."Pager" is not null or
"public"."ActExport"."Pager Extension" is not null
);

insert into phone_data
(
SELECT
"public"."ActExport".contact_id,
"public"."ActExport"."Alt Phone",
"public"."ActExport"."Alt Phone Ext-"
'Alt' as phone_type
FROM
"public"."ActExport"
where
"public"."ActExport"."Alt Phone" is not null or
"public"."ActExport"."Alt Phone Ext-" is not null
);


