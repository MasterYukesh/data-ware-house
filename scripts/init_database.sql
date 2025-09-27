/*
-------------------------------------------
Create Databases.
-------------------------------------------
Script Purpose:
  - TO create a main database "data ware house", if it does not exist.
  - Additionally to create separate DBs for Each layer in the Medallion Architecture namely - Bronze, Silver, & Gold. (Again if they dont exist)
--------------------------------------------

*/


create database if not exists datawarehouse;

create database if not exists bronze;
create database if not exists silver;
create database if not exists gold;
