-- enable echo
.echo on

.print "Ingesting data..."

-- create or replace tables (source: https://duckdb.org/docs/sql/statements/create_table.html)
CREATE OR REPLACE TABLE yellow_tripdata AS SELECT * FROM 
READ_PARQUET('../data/taxi/yellow_tripdata*.parquet',
UNION_BY_NAME=True, FILENAME=True);

CREATE OR REPLACE TABLE green_tripdata AS SELECT * FROM
READ_PARQUET('../data/taxi/green_tripdata*.parquet',
UNION_BY_NAME=True, FILENAME=True);

CREATE OR REPLACE TABLE fhv_tripdata AS SELECT * FROM
READ_PARQUET('../data/taxi/fhv_tripdata*.parquet',
UNION_BY_NAME=True, FILENAME=True);

CREATE OR REPLACE TABLE fhvhv_tripdata AS SELECT * FROM
READ_PARQUET('../data/taxi/fhvhv_tripdata*.parquet',
UNION_BY_NAME=True, FILENAME=True);

CREATE OR REPLACE TABLE central_park_weather AS SELECT * FROM    
READ_CSV_AUTO('../data/central_park_weather.csv',
UNION_BY_NAME=True, FILENAME=True);

CREATE OR REPLACE TABLE bike_data AS SELECT * FROM    
READ_CSV_AUTO('../data/citibike-tripdata.csv.gz',
UNION_BY_NAME=True, FILENAME=True);

CREATE OR REPLACE TABLE fhv_bases AS SELECT * FROM    
READ_CSV_AUTO('../data/fhv_bases.csv',
UNION_BY_NAME=True, FILENAME=True);
