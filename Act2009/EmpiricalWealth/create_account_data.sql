create table account_info as
(
SELECT
"public".contacts_full."CONTACTID",
"public".contacts_full."Account 1 Allocation Guidelines",
"public".contacts_full."Account 1 Cash Needs",
"public".contacts_full."Account 1 Distribution Amount",
"public".contacts_full."Account 1 Distribution Date",
"public".contacts_full."Account 1 Investment Restrictions",
--"public".contacts_full."Account 1 Legacy Holdings",
"public".contacts_full."Account 1 Money Market",
"public".contacts_full."Account 1 Number",
"public".contacts_full."Account 1 Title",
"public".contacts_full."Account 1 Transfer",
"public".contacts_full."Account 1 Type",
"public".contacts_full."Axys Code 1",
"public".contacts_full."Check Writing 1",
"public".contacts_full."MoneyLink1",
"public".contacts_full."MoneyLink1 Account",
"public".contacts_full."MoneyLink1 Bank",
"public".contacts_full."MoneyLink1 Direction",
"public".contacts_full."MoneyLink1 Recurring Amount"
FROM
"public".contacts_full
where
"public".contacts_full."Account 1 Allocation Guidelines" is not null or
"public".contacts_full."Account 1 Cash Needs" is not null or
"public".contacts_full."Account 1 Distribution Amount" is not null or
"public".contacts_full."Account 1 Distribution Date" is not null or
"public".contacts_full."Account 1 Investment Restrictions" is not null or
--"public".contacts_full."Account 1 Legacy Holdings" is not null or
"public".contacts_full."Account 1 Money Market" is not null or
"public".contacts_full."Account 1 Number" is not null or
"public".contacts_full."Account 1 Title" is not null or
"public".contacts_full."Account 1 Transfer" is not null or
"public".contacts_full."Account 1 Type" is not null or
"public".contacts_full."Axys Code 1" is not null or
"public".contacts_full."Check Writing 1" is not null or
"public".contacts_full."MoneyLink1" is not null or
"public".contacts_full."MoneyLink1 Account" is not null or
"public".contacts_full."MoneyLink1 Bank" is not null or
"public".contacts_full."MoneyLink1 Direction" is not null or
"public".contacts_full."MoneyLink1 Recurring Amount" is not null

);

insert into account_info
(
SELECT
"public".contacts_full."CONTACTID",
"public".contacts_full."Account 2 Allocation Guidelines",
"public".contacts_full."Account 2 Cash Needs",
"public".contacts_full."Account 2 Distribution Amount",
"public".contacts_full."Account 2 Distribution Date",
"public".contacts_full."Account 2 Investment Restrictions",
--"public".contacts_full."Account 2 Legacy Holdings",
"public".contacts_full."Account 2 Money Market",
"public".contacts_full."Account 2 Number",
"public".contacts_full."Account 2 Title",
"public".contacts_full."Account 2 Transfer",
"public".contacts_full."Account 2 Type",
"public".contacts_full."Axys Code 2",
"public".contacts_full."Check Writing 2",
"public".contacts_full."MoneyLink2",
"public".contacts_full."MoneyLink2 Account",
"public".contacts_full."MoneyLink2 Bank",
"public".contacts_full."MoneyLink2 Direction",
"public".contacts_full."MoneyLink2 Recurring Amount"
FROM
"public".contacts_full
where
"public".contacts_full."Account 2 Allocation Guidelines" is not null or
"public".contacts_full."Account 2 Cash Needs" is not null or
"public".contacts_full."Account 2 Distribution Amount" is not null or
"public".contacts_full."Account 2 Distribution Date" is not null or
"public".contacts_full."Account 2 Investment Restrictions" is not null or
--"public".contacts_full."Account 2 Legacy Holdings" is not null or
"public".contacts_full."Account 2 Money Market" is not null or
"public".contacts_full."Account 2 Number" is not null or
"public".contacts_full."Account 2 Title" is not null or
"public".contacts_full."Account 2 Transfer" is not null or
"public".contacts_full."Account 2 Type" is not null or
"public".contacts_full."Axys Code 2" is not null or
"public".contacts_full."Check Writing 2" is not null or
"public".contacts_full."MoneyLink2" is not null or
"public".contacts_full."MoneyLink2 Account" is not null or
"public".contacts_full."MoneyLink2 Bank" is not null or
"public".contacts_full."MoneyLink2 Direction" is not null or
"public".contacts_full."MoneyLink2 Recurring Amount" is not null

);

insert into account_info
(
SELECT
"public".contacts_full."CONTACTID",
"public".contacts_full."Account 3 Allocation Guidelines",
"public".contacts_full."Account 3 Cash Needs",
"public".contacts_full."Account 3 Distribution Amount",
"public".contacts_full."Account 3 Distribution Date",
"public".contacts_full."Account 3 Investment Restrictions",
--"public".contacts_full."Account 3 Legacy Holdings",
"public".contacts_full."Account 3 Money Market",
"public".contacts_full."Account 3 Number",
"public".contacts_full."Account 3 Title",
"public".contacts_full."Account 3 Transfer",
"public".contacts_full."Account 3 Type",
"public".contacts_full."Axys Code 3",
"public".contacts_full."Check Writing 3",
"public".contacts_full."MoneyLink3",
"public".contacts_full."MoneyLink3 Account",
"public".contacts_full."MoneyLink3 Bank",
"public".contacts_full."MoneyLink3 Direction",
"public".contacts_full."MoneyLink3 Recurring Amount"
FROM
"public".contacts_full
where
"public".contacts_full."Account 3 Allocation Guidelines" is not null or
"public".contacts_full."Account 3 Cash Needs" is not null or
"public".contacts_full."Account 3 Distribution Amount" is not null or
"public".contacts_full."Account 3 Distribution Date" is not null or
"public".contacts_full."Account 3 Investment Restrictions" is not null or
--"public".contacts_full."Account 3 Legacy Holdings" is not null or
"public".contacts_full."Account 3 Money Market" is not null or
"public".contacts_full."Account 3 Number" is not null or
"public".contacts_full."Account 3 Title" is not null or
"public".contacts_full."Account 3 Transfer" is not null or
"public".contacts_full."Account 3 Type" is not null or
"public".contacts_full."Axys Code 3" is not null or
"public".contacts_full."Check Writing 3" is not null or
"public".contacts_full."MoneyLink3" is not null or
"public".contacts_full."MoneyLink3 Account" is not null or
"public".contacts_full."MoneyLink3 Bank" is not null or
"public".contacts_full."MoneyLink3 Direction" is not null or
"public".contacts_full."MoneyLink3 Recurring Amount" is not null

);

insert into account_info
(
SELECT
"public".contacts_full."CONTACTID",
"public".contacts_full."Account 4 Allocation Guidelines",
"public".contacts_full."Account 4 Cash Needs",
"public".contacts_full."Account 4 Distribution Amount",
"public".contacts_full."Account 4 Distribution Date",
"public".contacts_full."Account 4 Investment Restrictions",
--"public".contacts_full."Account 4 Legacy Holdings",
"public".contacts_full."Account 4 Money Market",
"public".contacts_full."Account 4 Number",
"public".contacts_full."Account 4 Title",
"public".contacts_full."Account 4 Transfer",
"public".contacts_full."Account 4 Type",
"public".contacts_full."Axys Code 4",
"public".contacts_full."Check Writing 4",
"public".contacts_full."MoneyLink4",
"public".contacts_full."MoneyLink4 Account",
"public".contacts_full."MoneyLink4 Bank",
"public".contacts_full."MoneyLink4 Direction",
"public".contacts_full."MoneyLink4 Recurring Amount"
FROM
"public".contacts_full
where
"public".contacts_full."Account 4 Allocation Guidelines" is not null or
"public".contacts_full."Account 4 Cash Needs" is not null or
"public".contacts_full."Account 4 Distribution Amount" is not null or
"public".contacts_full."Account 4 Distribution Date" is not null or
"public".contacts_full."Account 4 Investment Restrictions" is not null or
--"public".contacts_full."Account 4 Legacy Holdings" is not null or
"public".contacts_full."Account 4 Money Market" is not null or
"public".contacts_full."Account 4 Number" is not null or
"public".contacts_full."Account 4 Title" is not null or
"public".contacts_full."Account 4 Transfer" is not null or
"public".contacts_full."Account 4 Type" is not null or
"public".contacts_full."Axys Code 4" is not null or
"public".contacts_full."Check Writing 4" is not null or
"public".contacts_full."MoneyLink4" is not null or
"public".contacts_full."MoneyLink4 Account" is not null or
"public".contacts_full."MoneyLink4 Bank" is not null or
"public".contacts_full."MoneyLink4 Direction" is not null or
"public".contacts_full."MoneyLink4 Recurring Amount" is not null

);

insert into account_info
(
SELECT
"public".contacts_full."CONTACTID",
"public".contacts_full."Account 5 Allocation Guidelines",
"public".contacts_full."Account 5 Cash Needs",
"public".contacts_full."Account 5 Distribution Amount",
"public".contacts_full."Account 5 Distribution Date",
"public".contacts_full."Account 5 Investment Restrictions",
--"public".contacts_full."Account 5 Legacy Holdings",
"public".contacts_full."Account 5 Money Market",
"public".contacts_full."Account 5 Number",
"public".contacts_full."Account 5 Title",
"public".contacts_full."Account 5 Transfer",
"public".contacts_full."Account 5 Type",
"public".contacts_full."Axys Code 5",
"public".contacts_full."Check Writing 5",
"public".contacts_full."MoneyLink5",
"public".contacts_full."MoneyLink5 Account",
"public".contacts_full."MoneyLink5 Bank",
"public".contacts_full."MoneyLink5 Direction",
"public".contacts_full."MoneyLink5 Recurring Amount"
FROM
"public".contacts_full
where
"public".contacts_full."Account 5 Allocation Guidelines" is not null or
"public".contacts_full."Account 5 Cash Needs" is not null or
"public".contacts_full."Account 5 Distribution Amount" is not null or
"public".contacts_full."Account 5 Distribution Date" is not null or
"public".contacts_full."Account 5 Investment Restrictions" is not null or
--"public".contacts_full."Account 5 Legacy Holdings" is not null or
"public".contacts_full."Account 5 Money Market" is not null or
"public".contacts_full."Account 5 Number" is not null or
"public".contacts_full."Account 5 Title" is not null or
"public".contacts_full."Account 5 Transfer" is not null or
"public".contacts_full."Account 5 Type" is not null or
"public".contacts_full."Axys Code 5" is not null or
"public".contacts_full."Check Writing 5" is not null or
"public".contacts_full."MoneyLink5" is not null or
"public".contacts_full."MoneyLink5 Account" is not null or
"public".contacts_full."MoneyLink5 Bank" is not null or
"public".contacts_full."MoneyLink5 Direction" is not null or
"public".contacts_full."MoneyLink5 Recurring Amount" is not null

);

insert into account_info
(
SELECT
"public".contacts_full."CONTACTID",
"public".contacts_full."Account 6 Allocation Guidelines",
"public".contacts_full."Account 6 Cash Needs",
"public".contacts_full."Account 6 Distribution Amount",
"public".contacts_full."Account 6 Distribution Date",
"public".contacts_full."Account 6 Investment Restrictions",
--"public".contacts_full."Account 6 Legacy Holdings",
"public".contacts_full."Account 6 Money Market",
"public".contacts_full."Account 6 Number",
"public".contacts_full."Account 6 Title",
"public".contacts_full."Account 6 Transfer",
"public".contacts_full."Account 6 Type",
"public".contacts_full."Axys Code 6",
"public".contacts_full."Check Writing 6",
"public".contacts_full."MoneyLink6",
"public".contacts_full."MoneyLink6 Account",
"public".contacts_full."MoneyLink6 Bank",
"public".contacts_full."MoneyLink6 Direction",
"public".contacts_full."MoneyLink6 Recurring Amount"
FROM
"public".contacts_full
where
"public".contacts_full."Account 6 Allocation Guidelines" is not null or
"public".contacts_full."Account 6 Cash Needs" is not null or
"public".contacts_full."Account 6 Distribution Amount" is not null or
"public".contacts_full."Account 6 Distribution Date" is not null or
"public".contacts_full."Account 6 Investment Restrictions" is not null or
--"public".contacts_full."Account 6 Legacy Holdings" is not null or
"public".contacts_full."Account 6 Money Market" is not null or
"public".contacts_full."Account 6 Number" is not null or
"public".contacts_full."Account 6 Title" is not null or
"public".contacts_full."Account 6 Transfer" is not null or
"public".contacts_full."Account 6 Type" is not null or
"public".contacts_full."Axys Code 6" is not null or
"public".contacts_full."Check Writing 6" is not null or
"public".contacts_full."MoneyLink6" is not null or
"public".contacts_full."MoneyLink6 Account" is not null or
"public".contacts_full."MoneyLink6 Bank" is not null or
"public".contacts_full."MoneyLink6 Direction" is not null or
"public".contacts_full."MoneyLink6 Recurring Amount" is not null

);

insert into account_info
(
SELECT
"public".contacts_full."CONTACTID",
"public".contacts_full."Account 7 Allocation Guidelines",
"public".contacts_full."Account 7 Cash Needs",
"public".contacts_full."Account 7 Distribution",
"public".contacts_full."Account 7 Distribution Amount",
"public".contacts_full."Account 7 Investment",
--"public".contacts_full."Account 7 Legacy Holdings",
"public".contacts_full."Account 7 Money Market",
"public".contacts_full."Account 7 Number",
"public".contacts_full."Account 7 Title",
"public".contacts_full."Account 7 Transfer",
"public".contacts_full."Account 7 Type",
"public".contacts_full."Axys Code 7",
"public".contacts_full."Check Writing 7",
"public".contacts_full."MoneyLink7",
"public".contacts_full."MoneyLink7 Account",
"public".contacts_full."MoneyLink7 Bank",
"public".contacts_full."MoneyLink7 Direction",
"public".contacts_full."MoneyLink7 Recurring Amount"
FROM
"public".contacts_full
where
"public".contacts_full."Account 7 Allocation Guidelines" is not null or
"public".contacts_full."Account 7 Cash Needs" is not null or
"public".contacts_full."Account 7 Distribution" is not null or
"public".contacts_full."Account 7 Distribution Amount" is not null or
"public".contacts_full."Account 7 Investment" is not null or
--"public".contacts_full."Account 7 Legacy Holdings" is not null or
"public".contacts_full."Account 7 Money Market" is not null or
"public".contacts_full."Account 7 Number" is not null or
"public".contacts_full."Account 7 Title" is not null or
"public".contacts_full."Account 7 Transfer" is not null or
"public".contacts_full."Account 7 Type" is not null or
"public".contacts_full."Axys Code 7" is not null or
"public".contacts_full."Check Writing 7" is not null or
"public".contacts_full."MoneyLink7" is not null or
"public".contacts_full."MoneyLink7 Account" is not null or
"public".contacts_full."MoneyLink7 Bank" is not null or
"public".contacts_full."MoneyLink7 Direction" is not null or
"public".contacts_full."MoneyLink7 Recurring Amount" is not null

);

insert into account_info
(
SELECT
"public".contacts_full."CONTACTID",
"public".contacts_full."Account 8 Allocation Guidelines",
"public".contacts_full."Account 8 Cash Needs",
"public".contacts_full."Account 8 Distribution",
"public".contacts_full."Account 8 Distribution Amount",
"public".contacts_full."Account 8 Investment",
--"public".contacts_full."Account 8 Legacy Holdings",
"public".contacts_full."Account 8 Money Market",
"public".contacts_full."Account 8 Number",
"public".contacts_full."Account 8 Title",
"public".contacts_full."Account 8 Transfer",
"public".contacts_full."Account 8 Type",
"public".contacts_full."Axys Code 8",
"public".contacts_full."Check Writing 8",
"public".contacts_full."MoneyLink8",
"public".contacts_full."MoneyLink8 Account",
"public".contacts_full."MoneyLink8 Bank",
"public".contacts_full."MoneyLink8 Direction",
"public".contacts_full."MoneyLink8 Recurring Amount"
FROM
"public".contacts_full
where
"public".contacts_full."Account 8 Allocation Guidelines" is not null or
"public".contacts_full."Account 8 Cash Needs" is not null or
"public".contacts_full."Account 8 Distribution" is not null or
"public".contacts_full."Account 8 Distribution Amount" is not null or
"public".contacts_full."Account 8 Investment" is not null or
--"public".contacts_full."Account 8 Legacy Holdings" is not null or
"public".contacts_full."Account 8 Money Market" is not null or
"public".contacts_full."Account 8 Number" is not null or
"public".contacts_full."Account 8 Title" is not null or
"public".contacts_full."Account 8 Transfer" is not null or
"public".contacts_full."Account 8 Type" is not null or
"public".contacts_full."Axys Code 8" is not null or
"public".contacts_full."Check Writing 8" is not null or
"public".contacts_full."MoneyLink8" is not null or
"public".contacts_full."MoneyLink8 Account" is not null or
"public".contacts_full."MoneyLink8 Bank" is not null or
"public".contacts_full."MoneyLink8 Direction" is not null or
"public".contacts_full."MoneyLink8 Recurring Amount" is not null

);

insert into account_info
(
SELECT
"public".contacts_full."CONTACTID",
"public".contacts_full."Account 9 Allocation Guidelines",
"public".contacts_full."Account 9 Cash Needs",
"public".contacts_full."Account 9 Distribution",
"public".contacts_full."Account 9 Distribution Amount",
"public".contacts_full."Account 9 Investment",
--"public".contacts_full."Account 9 Legacy Holdings",
"public".contacts_full."Account 9 Money Market",
"public".contacts_full."Account 9 Number",
"public".contacts_full."Account 9 Title",
"public".contacts_full."Account 9 Transfer",
"public".contacts_full."Account 9 Type",
"public".contacts_full."Axys Code 9",
"public".contacts_full."Check Writing 9",
"public".contacts_full."MoneyLink9",
"public".contacts_full."MoneyLink9 Account",
"public".contacts_full."MoneyLink9 Bank",
"public".contacts_full."MoneyLink9 Direction",
"public".contacts_full."MoneyLink9 Recurring Amount"
FROM
"public".contacts_full
where
"public".contacts_full."Account 9 Allocation Guidelines" is not null or
"public".contacts_full."Account 9 Cash Needs" is not null or
"public".contacts_full."Account 9 Distribution" is not null or
"public".contacts_full."Account 9 Distribution Amount" is not null or
"public".contacts_full."Account 9 Investment" is not null or
--"public".contacts_full."Account 9 Legacy Holdings" is not null or
"public".contacts_full."Account 9 Money Market" is not null or
"public".contacts_full."Account 9 Number" is not null or
"public".contacts_full."Account 9 Title" is not null or
"public".contacts_full."Account 9 Transfer" is not null or
"public".contacts_full."Account 9 Type" is not null or
"public".contacts_full."Axys Code 9" is not null or
"public".contacts_full."Check Writing 9" is not null or
"public".contacts_full."MoneyLink9" is not null or
"public".contacts_full."MoneyLink9 Account" is not null or
"public".contacts_full."MoneyLink9 Bank" is not null or
"public".contacts_full."MoneyLink9 Direction" is not null or
"public".contacts_full."MoneyLink9 Recurring Amount" is not null

);

insert into account_info
(
SELECT
"public".contacts_full."CONTACTID",
"public".contacts_full."Account 10 Allocation Guidelines",
"public".contacts_full."Account 10 Cash Needs",
"public".contacts_full."Account 10 Distribution",
"public".contacts_full."Account 10 Distribution Amount",
"public".contacts_full."Account 10 Investment",
"public".contacts_full."Account 10 Legacy Holdings",
"public".contacts_full."Account 10 Money Market",
"public".contacts_full."Account 10 Number",
"public".contacts_full."Account 10 Title",
"public".contacts_full."Account 10 Transfer",
"public".contacts_full."Account 10 Type",
"public".contacts_full."Axys Code 10",
"public".contacts_full."Check Writing 10",
"public".contacts_full."MoneyLink10",
"public".contacts_full."MoneyLink10 Account",
"public".contacts_full."MoneyLink10 Bank",
"public".contacts_full."MoneyLink10 Direction",
"public".contacts_full."MoneyLink10 Recurring Amount"
FROM
"public".contacts_full
where
"public".contacts_full."Account 10 Allocation Guidelines" is not null or
"public".contacts_full."Account 10 Cash Needs" is not null or
"public".contacts_full."Account 10 Distribution" is not null or
"public".contacts_full."Account 10 Distribution Amount" is not null or
"public".contacts_full."Account 10 Investment" is not null or
"public".contacts_full."Account 10 Legacy Holdings" is not null or
"public".contacts_full."Account 10 Money Market" is not null or
"public".contacts_full."Account 10 Number" is not null or
"public".contacts_full."Account 10 Title" is not null or
"public".contacts_full."Account 10 Transfer" is not null or
"public".contacts_full."Account 10 Type" is not null or
"public".contacts_full."Axys Code 10" is not null or
"public".contacts_full."Check Writing 10" is not null or
"public".contacts_full."MoneyLink10" is not null or
"public".contacts_full."MoneyLink10 Account" is not null or
"public".contacts_full."MoneyLink10 Bank" is not null or
"public".contacts_full."MoneyLink10 Direction" is not null or
"public".contacts_full."MoneyLink10 Recurring Amount" is not null

);

insert into account_info
(
SELECT
"public".contacts_full."CONTACTID",
"public".contacts_full."Account 11 Allocation Guidelines",
"public".contacts_full."Account 11 Cash Needs",
"public".contacts_full."Account 11 Distribution",
"public".contacts_full."Account 11 Distribution Amount",
"public".contacts_full."Account 11 Investment",
"public".contacts_full."Account 11 Legacy Holdings",
"public".contacts_full."Account 11 Money Market",
"public".contacts_full."Account 11 Number",
"public".contacts_full."Account 11 Title",
"public".contacts_full."Account 11 Transfer",
"public".contacts_full."Account 11 Type",
"public".contacts_full."Axys Code 11",
"public".contacts_full."Check Writing 11",
"public".contacts_full."MoneyLink11",
"public".contacts_full."MoneyLink11 Account",
"public".contacts_full."MoneyLink11 Bank",
"public".contacts_full."MoneyLink11 Direction",
"public".contacts_full."MoneyLink11 Recurring Amount"
FROM
"public".contacts_full
where
"public".contacts_full."Account 11 Allocation Guidelines" is not null or
"public".contacts_full."Account 11 Cash Needs" is not null or
"public".contacts_full."Account 11 Distribution" is not null or
"public".contacts_full."Account 11 Distribution Amount" is not null or
"public".contacts_full."Account 11 Investment" is not null or
"public".contacts_full."Account 11 Legacy Holdings" is not null or
"public".contacts_full."Account 11 Money Market" is not null or
"public".contacts_full."Account 11 Number" is not null or
"public".contacts_full."Account 11 Title" is not null or
"public".contacts_full."Account 11 Transfer" is not null or
"public".contacts_full."Account 11 Type" is not null or
"public".contacts_full."Axys Code 11" is not null or
"public".contacts_full."Check Writing 11" is not null or
"public".contacts_full."MoneyLink11" is not null or
"public".contacts_full."MoneyLink11 Account" is not null or
"public".contacts_full."MoneyLink11 Bank" is not null or
"public".contacts_full."MoneyLink11 Direction" is not null or
"public".contacts_full."MoneyLink11 Recurring Amount" is not null

);

insert into account_info
(
SELECT
"public".contacts_full."CONTACTID",
"public".contacts_full."Account 12 Allocation Guidelines",
"public".contacts_full."Account 12 Cash Needs",
"public".contacts_full."Account 12 Distribution",
"public".contacts_full."Account 12 Distribution Amount",
"public".contacts_full."Account 12 Investment",
"public".contacts_full."Account 12 Legacy Holdings",
"public".contacts_full."Account 12 Money Market",
"public".contacts_full."Account 12 Number",
"public".contacts_full."Account 12 Title",
"public".contacts_full."Account 12 Transfer",
"public".contacts_full."Account 12 Type",
"public".contacts_full."Axys Code 12",
"public".contacts_full."Check Writing 12",
"public".contacts_full."MoneyLink12",
"public".contacts_full."MoneyLink12 Account",
"public".contacts_full."MoneyLink12 Bank",
"public".contacts_full."MoneyLink12 Direction",
"public".contacts_full."MoneyLink12 Recurring Amount"
FROM
"public".contacts_full
where
"public".contacts_full."Account 12 Allocation Guidelines" is not null or
"public".contacts_full."Account 12 Cash Needs" is not null or
"public".contacts_full."Account 12 Distribution" is not null or
"public".contacts_full."Account 12 Distribution Amount" is not null or
"public".contacts_full."Account 12 Investment" is not null or
"public".contacts_full."Account 12 Legacy Holdings" is not null or
"public".contacts_full."Account 12 Money Market" is not null or
"public".contacts_full."Account 12 Number" is not null or
"public".contacts_full."Account 12 Title" is not null or
"public".contacts_full."Account 12 Transfer" is not null or
"public".contacts_full."Account 12 Type" is not null or
"public".contacts_full."Axys Code 12" is not null or
"public".contacts_full."Check Writing 12" is not null or
"public".contacts_full."MoneyLink12" is not null or
"public".contacts_full."MoneyLink12 Account" is not null or
"public".contacts_full."MoneyLink12 Bank" is not null or
"public".contacts_full."MoneyLink12 Direction" is not null or
"public".contacts_full."MoneyLink12 Recurring Amount" is not null

);

