Drop table address If Exists;

Create table addresses (Id character varying(255), longitude float, latitude float, start_date character varying(255), end_date character varying(255));
copy addresses from '/pc/n3mhs00/Cindy/For_WilliamK/RawGPSDataRinx.csv' (FORMAT csv, HEADER, DELIMITER ',');

Alter table addresses add column startdate date;
Alter table addresses add column enddate date;
Update addresses set startdate=TO_DATE(substring(start_date,1,10),'YYYY-MM-DD'); # May need to change the function call as the data is formatted as datetime, maybe SELECT date(substring(start_date from 1 for 10));
Update addresses set enddate=TO_DATE(substring(start_date,1,10)end_date,'YYYY-MM-DD');
Alter table addresses drop column start_date;
Alter table addresses drop column end_date;
