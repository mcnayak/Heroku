heroku pg:psql -a chandra-sfdc-sync
--> Connecting to [33mpostgresql-cylindrical-75318[39m
psql (10.3, server 11.2 (Ubuntu 11.2-1.pgdg16.04+1))
WARNING: psql major version 10, server major version 11.
         Some psql features might not work.
SSL connection (protocol: TLSv1.2, cipher: ECDHE-RSA-AES256-GCM-SHA384, bits: 256, compression: off)
Type "help" for help.

chandra-sfdc-sync::DATABASE=> select schema_name from information_schema.schemata;
    schema_name     
--------------------
 pg_catalog
 information_schema
 public
 riverbed
(4 rows)

 SELECT table_name FROM information_schema.tables WHERE table_schema='public';
chandra-sfdc-sync::DATABASE-> ;
 table_name 
------------
 Bulk_Data
(1 row) 


                                ^
chandra-sfdc-sync::DATABASE=> SELECT table_name FROM information_schema.tables WHERE table_schema='public';
 table_name 
------------\dt 
 Bulk_Data
(1 row)

chandra-sfdc-sync::DATABASE=> \dt public.*
              List of relationsheroku addons:destroy heroku-kafka
--------+-----------+-------+----------------
 public | Bulk_Data | table | xymrgtlifrxoaz
(1 row)


                                ^
chandra-sfdc-sync::DATABASE=> SELECT COLUMN_NAME FROM information_schema.COLUMNS WHERE table_schema='public' AND TABLE_NAME='Bulk_Data';
 column_name 
-------------
 id
 Number
 Text
(3 rows)


                                                ^
CREATE TABLE Bulk_Standard ( ID serial PRIMARY KEY, url VARCHAR (255) NOT NULL);
CREATE TABLE
chandra-sfdc-sync::DATABASE=> \dt pul[Kblic.[K.*
              List of relations
 Schema |   Name    | Type  |     Owner      
--------+-----------+-------+----------------
 public | Bulk_Data | table | xymrgtlifrxoaz
 public | bulk      | table | xymrgtlifrxoaz
(2 rows)

chandra-sfdc-sync::DATABASE=> INSERT INTO public.bulk (url) VALUES  ('http://www.postgresqltutorial.com');
INSERT 0 1

 heroku pg:psql  -a chandra-sfdc-sync -f query.sql


CREATE USER mnayak WITH PASSWORD 'Welcome2020';