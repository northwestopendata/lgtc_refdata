# CoHouseLite README

The UK Government produces Company data available from the [Companies House website](http://download.companieshouse.gov.uk/en_output.html). 
The full file with 55 columns of data is currently over 380MB in zipped format. 
The data provided here is a subset of the CH dataset.

This is a subset of the Companies House dataset, the full set is available from http://download.companieshouse.gov.uk/en_output.html. 
Downloaded July 2020.

The data is included here as part of a larger Reference Data collection for use with Local Government Open Data, 
specifically Expenditure Data.

## Details

### About the Data
The data available here is limited to the following columns
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
It covers Company Name, Company Number, Address, Category, Status(Active, Dormant etc), 
Country of Origin and the SICC code which serves as a merchant category area.


#### Downloading the data
The data files are too large to be uploaded to GitHub. I've hosted them on [MEGA Cloud Storage](https://mega.nz/)(_You don't need to sign up to download_)
Two files are available
* A zipped(.gz) file `CoHouseLite.csv.gz` containing a single CSV file. This is suitable for use loading into a database, a PostgreSQL create 
table and load file is included in this directory. A .meta file is also included.
* A .zip file `CoHouseLite.zip` which contains 5 files with approximately 1,000,000 rows each which may be more suitable to working
with spreadsheets or other desktop applications. A .meta file is also included.

| Filename           | Description | Link | Size(MB) | Meta Data |
|--------------------|-------------|------|----------|-----------|
| CoHouseLite.csv.gz | Single file | [CoHouseLite.csv.gz](https://mega.nz/file/MBxClIwT#a2EmsqPEp8WizvU6pO8RM43ZLlNL57vT10mVUocoy8E) | 212 | [Meta File](https://github.com/northwestopendata/lgtc_refdata/CoHouseLite.csv.gz.meta)|
| CoHouseLite.zip | 5 files in a zip archive |[CoHouseLite.zip](https://mega.nz/file/gdgTBAzL#FeipiROBHWKPICVQRMqKgz3rTaOBnkQcK15dufWd13I) | 210 | [Meta File](https://github.com/northwestopendata/lgtc_refdata/CoHouseLite.zip.meta)|

#### Cloning repository to a unix host
```
$ mkdir working
$ cd working
$ git clone https://github.com/northwestopendata/lgtc_refdata
```
#### Creating a PostgreSQL table
```
$ cd CoHouseLite
$ gunzip CoHouseLite.csv.gz
$ vi CoHouseLite.sql                   # Change '/path/to' for your location 
$ psql -d <YOURDB> -f CoHouseLite.sql
CREATE TABLE
COPY 4671967
```
### Directory layout
```
./lgtc_refdata:
	CoHouseLite
		CoHouseLite.csv.gz.meta    <-- meta data file
		CoHouseLite.zip.meta       <-- meta data file
		CoHouseLite.sql            <-- PostgreSQL create table and load file
		README.md                  <-- this file
	README.md                      <-- repository README
```
### Using the data
* Import into a spreadsheet of choice
* Create a database table and import
* No API available, files too large for upload to GitHub

### API Documentation
n/a

## Links
* [Companies House](https://www.gov.uk/government/organisations/companies-house)
* [Companies House Customer URI Guide](https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/809682/uniformResourceIdentifiersCustomerGuide.pdf)
* [Basic Company Data Downloads](http://download.companieshouse.gov.uk/en_output.html)
* [People with Significant Control(PSC)](http://download.companieshouse.gov.uk/en_pscdata.html)
* [LGA Procurement Guide](https://www.local.gov.uk/sites/default/files/documents/publishing-spending-and-p-485.pdf)

## To Do
[ ] Add indexing to .sql file

## Technologies

## Source

This is ProClass vC17.1 and is available from https://proclass.org.uk/paid-downloads.html

## License
Companies House data is meant for general use and will be issued following the terms of the Open Government Licence for 
Government users, and for data publishing and re-use.

* Data : [Open Government License](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/)
* Other scripts : [MIT](http://opensource.org/licenses/mit-license.php) - Copyright &copy; Northwestopendata

## Validation
n/a files too large for web validators
