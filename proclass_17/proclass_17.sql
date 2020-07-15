/*
Repository	:	https://github.com/northwestopendata/lgtc_refdata
File		:	proclass_17.sql
Description	:	Creates proclass_17 table and loads proclass_17.csv file

Notes		:	- Edit file path prior to running
			- Target database PostgreSQL
*/
create table proclass_17
(
	code	int,
	level1	character varying,
	level2	character varying,
	level3	character varying,
	clarification_info	character varying
);

COPY proclass_17
(
	code,
        level1,
        level2,
        level3,
        clarification_info
)
--- EDIT '/path/to' FOR YOUR FILE LOCATION
from '/path/to/proclass_17.csv' DELIMITER ',' CSV HEADER;
