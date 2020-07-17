# lgtc_refdata

A collection of SQL and shell scripts and data files related to local government spending analysis. This repo is related to blog posts on [NorthwestOpenData](http://www.northwestopendata.org.uk/) which analyse local government open data from the Northwest of England.

## Contents

### Category Data
* Proclass Data - [proclass_17](https://github.com/northwestopendata/lgtc_refdata/tree/master/proclass_17)
* Local Government Service List (LGSL) - TBA
* Service Reporting Code of Practice (SeRCoP)  - TBA

### Company Data
* CoHouseLite - [CoHouseLite](https://github.com/northwestopendata/lgtc_refdata/tree/master/CoHouseLite)
* SICC Codes - TBA
* Company Number Formats - TBA

## Details

### Proclass
[ProClass](http://www.proclass.org.uk) is one of the purchasing categories used by local 
governments, it comprises of a numeric code with 3 levels of text description and a 
clarification column. The directory contains .csv/.meta files and a template sql file to 
create a PostgreSQL table and import the file. An API is available via 
[GitRows](https://gitrows.com/). More details can be found on the 
[Proclass README.md](https://github.com/northwestopendata/lgtc_refdata/tree/master/proclass_17/README.md).

### CoHouseLite
Is a subset of the Companies House companies dataset, it only covers the following columns
```
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
```
It's available as a single gzipped file or a set of 5 one million rows each in a .zip archive

| Filename           | Description | Link | Size(MB) | Meta Data |
|--------------------|-------------|------|----------|-----------|
| CoHouseLite.csv.gz | Single file | [CoHouseLite.csv.gz](https://mega.nz/file/MBxClIwT#a2EmsqPEp8WizvU6pO8RM43ZLlNL57vT10mVUocoy8E) | 212 | [Meta File](https://github.com/northwestopendata/lgtc_refdata/CoHouseLite.csv.gz.meta)|
| CoHouseLite.zip | 5 files in a zip archive |[CoHouseLite.zip](https://mega.nz/file/gdgTBAzL#FeipiROBHWKPICVQRMqKgz3rTaOBnkQcK15dufWd13I) | 210 | [Meta File](https://github.com/northwestopendata/lgtc_refdata/CoHouseLite.zip.meta)|


## License

ProClass is a local government owned and is made freely available to any UK public sector organisation. The trademark for the ProClass name is owned by the City of London Corporation on behalf of local government.

ProClass is meant for general use and will be issued following the terms of the Open Government Licence for Government users, and for data publishing and re-use.

Companies House Data is released under [Open Government License](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/)

* Data : [Open Government License](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/)
* Other scripts : [MIT](http://opensource.org/licenses/mit-license.php) - Copyright © Northwestopendata

