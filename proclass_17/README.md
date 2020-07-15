# Proclass README

[ProClass](http://www.proclass.org.uk) is one of the purchasing categories used by local governments, it comprises of a numeric code with 3 levels of text description and a clarification column. The directory contains .csv/.meta files and a template sql file to create a PostgreSQL table and import the file. An API is available via [GitRows](https://gitrows.com/). 

This is ProClass vC17.1 and is available from [https://proclass.org.uk/paid-downloads.html]

**This repository is not the Official ProClass Release**, it is included here as part of a larger Refernce Data collection for use with Local Government Open Data, specifically Expenditure Data.

## Details

### Accessing the data

#### Downloading the proclass_17.csv file
If you only want the data file
* Click on it in GitHub to open
* Click `Raw`
* Select all and save to a local file

#### Cloning repository to a unix host
```
$ mkdir working
$ cd working
$ git clone https://github.com/northwestopendata/lgtc_refdata
```
### Directory layout
```
./lgtc_refdata:
	proclass_17
		proclass_17.csv            <-- data file
		proclass_17.meta           <-- meta data file
		proclass_17.sql            <-- PostgreSQL create table and load file
		README.md                  <-- this file
	README.md                      <-- repository README
```
### Using the data
* Import into a spreadsheet of choice
* Create a database table and import
* Access the .csv via an API provided by [GitRows](https://gitrows.com/)

### API Documentation
[GitRows](http://gitrows.com/) Documentation can be found [here](http://gitrows.com/docs/).

#### Examples
Using Curl to get the entire file as JSON
```
curl -X GET 'https://api.gitrows.com/@github/northwestopendata/lgtc_refdata/proclass_17/proclass_17.csv'

[
 {
  "code": 290000,
  "level1": "Arts & Leisure Services",
  "level2": "",
  "level3": "",
  "clarification_info": "Product / service"
 },
 ........
```
Url for selecting `code=399999`
```
curl https://api.gitrows.com/@github/northwestopendata/lgtc_refdata/proclass_17/proclass_17.csv/?code=399999
[{"code":399999,"level1":"Works - Construction, Repair & Maintenance","level2":"Not Elsewhere Classified","level3":"","clarification_info":"Service"}]
```
Finding the maximum code
```
https://api.gitrows.com/@github/northwestopendata/lgtc_refdata/proclass_17/proclass_17.csv?$max=code
```

## Links
* [ProClass Home](https://www.proclass.org.uk/)
* [Proclass Forum](http://proclassforum.co.uk/forum_topics.asp?FID=1&SID=93b5aef8z4f52faze14cb9833bd13z2z)
* [Coding International Ltd](http://www.codinginternational.com/)
* [iStandUK Proclass](https://istanduk.org/procclass-procurement-classification-system/)
* [Local Government Association v14](https://standards.esd.org.uk/?uri=list%2FproClass)
* [SPS Consultancy Documents](http://www.sps-consultancy.co.uk/knowledge-store/procurement-classification.html)
* [LGA Procurement Guide](https://www.local.gov.uk/sites/default/files/documents/publishing-spending-and-p-485.pdf)

## To Do
- [ ] Create an OpenAPI Definition Document

## Technologies
* [GitRows on GitHub](https://github.com/gitrows/gitrows)


## Source

This is ProClass vC17.1 and is available from [https://proclass.org.uk/paid-downloads.html]

## License
ProClass is a local government owned and is made freely available to any UK public sector organisation. 
The trademark for the ProClass name is owned by the City of London Corporation on behalf of local government.

ProClass is meant for general use and will be issued following the terms of the Open Government Licence for 
Government users, and for data publishing and re-use.

[Open Government License](http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/)
