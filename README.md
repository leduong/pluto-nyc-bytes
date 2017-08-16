##  BYTES of the BIG APPLE Data Import 

## Prerequisites

#### Postgres DML Script
```
sql\Pluto.DML.sql
```

#### Build 
```
npm install
```

## Run

```
node pluto.js --host localhost --port 5432 --user postgres --database postgres
```

Options

```
--csv_file <FILEPATH>

```
## References 

BYTES of the BIG APPLE:    
[http://www1.nyc.gov/site/planning/data-maps/open-data.page](http://www1.nyc.gov/site/planning/data-maps/open-data.page)

node-nyc-bytes package:   
[https://github.com/sedenardi/node-nyc-bytes](https://github.com/sedenardi/node-nyc-bytes)
