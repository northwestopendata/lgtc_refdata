/*
Repository	:	https://github.com/northwestopendata/lgtc_refdata
File		:	CoHouseLite.sql
Description	:	Creates cohouselite table

Notes		:	- Edit file path prior to running
			- Target database PostgreSQL
CREATE TABLE IF NOT EXISTS cohouselite
(
        companyname character varying,
        companynumber character varying,
        regaddress_careof character varying,
        regaddress_pobox character varying,
        regaddress_addressline1 character varying,
        regaddress_addressline2 character varying,
        regaddress_posttown character varying,
        regaddress_county character varying,
        regaddress_country character varying,
        regaddress_postcode character varying,
        companycategory character varying,
        companystatus character varying,
        countryoforigin character varying,
        siccode_sictext_1 character varying,
        siccode_sictext_2 character varying,
        siccode_sictext_3 character varying,
        siccode_sictext_4 character varying
);
INSERT INTO company
(
        companyname,
        companynumber,
        regaddress_careof,
        regaddress_pobox,
        regaddress_addressline1,
        regaddress_addressline2,
        regaddress_posttown,
        regaddress_county,
        regaddress_country,
        regaddress_postcode,
        companycategory,
        companystatus,
        countryoforigin,
        siccode_sictext_1,
        siccode_sictext_2,
        siccode_sictext_3,
        siccode_sictext_4
)
SELECT
        companyname,
        companynumber,
        regaddress_careof,
        regaddress_pobox,
        regaddress_addressline1,
        regaddress_addressline2,
        regaddress_posttown,
        regaddress_county,
        regaddress_country,
        regaddress_postcode,
        companycategory,
        companystatus,
        countryoforigin,
        siccode_sictext_1,
        siccode_sictext_2,
        siccode_sictext_3,
        siccode_sictext_4
--- EDIT '/path/to' FOR YOUR FILE LOCATION
from '/path/to/CoHouseLite.csv' DELIMITER ',' CSV HEADER;
