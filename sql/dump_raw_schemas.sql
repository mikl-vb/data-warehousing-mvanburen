-- enable echo
.echo on

-- show tables
SHOW TABLES;

-- display schema definitions using DESCRIBE
DESCRIBE yellow_tripdata;
DESCRIBE green_tripdata;
DESCRIBE fhv_bases;
DESCRIBE fhvhv_bases;
DESCRIBE central_park_weather;
DESCRIBE bike_data;


-- display table definitions using .schema
.schema yellow_tripdata;
.schema green_tripdata;
.schema fhv_bases;
.schema fhvhv_bases;
.schema central_park_weather;
.schema bike_data;
