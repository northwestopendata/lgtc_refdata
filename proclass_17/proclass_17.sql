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
from '/path/to/file' DELIMITER ',';


