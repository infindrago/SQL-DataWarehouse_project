/*

****************************
Create Database And Schema 
****************************

Script Purpose 
Following script create the database'DataWareHouse' after checking if it already exists.
If it Exists this script will Delete the database and recreate it Additionally,this Script Create 
three Schema Bronze,Silver, Gold 

WARNING
This script will delete the database if Exist Run With Caution proceed if you have total back up

*/
Use master
Go

--Drop and recreating 'DataWareHouse' Database 
if exists(select 1 from sys.databases where name ='DataWareHouse')
begin 
  alter database  DataWareHouse set SINGLE_USER with ROLLBACK IMMEDIATE;
  DROP database  DataWareHouse
  END 
  GO

  --Creating New Database 
create database DataWareHouse
GO

use DataWareHouse;
GO

--Create Schema 
create schema bronze
go

create schema silver
go

create schema gold
go
