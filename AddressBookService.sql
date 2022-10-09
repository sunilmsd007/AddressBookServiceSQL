---Create an AddressBook_service database---
create database AddressBook_service;

---To see the created database---
show databases;

---To go to the created database---
use AddressBook_service;

---Create an AddressBook table---
create table AddressBook
 ( 
 firstName varchar(50) not null,
 lastName varchar(50) not null,
 address varchar(50) not null,
 city varchar (50) not null,
 state varchar (50) not null,
 zip int not null,
 phoneNumber long,
 email varchar (50)
 );
describe AddressBook;

---Inserting Contacts to AddressBook---
insert into AddressBook(firstName,lastName,address,city,state,zip,phoneNumber,email) values
	('Sunil','Kumar','Gadag','Gajendragad','Karnataka',582114,9164144279,'sunil@gmail.com'),
	('Anil','Kumar','Kalkeri','Rajur','Karnataka',582116,8944556667,'anil@gmail.com'),
	('Ram','Chandra','Ron','Ron','Karnataka',521345,8743456656,'ram@gmail.com'),
	('Sita','Devi','Ampara','Ampara','Kerala',492120,9623146274,'sita@gmail.com');
select * from AddressBook;

---Edit existing contact using Name---
update AddressBook set email = 'anilkumar@gmail.com' where firstName = 'Anil';
select * from AddressBook;

---Delete existing contact using Name---
delete from AddressBook where firstName='Ram';
select * from AddressBook;

---Retrieve person details from particular City or State---
select * from AddressBook where City = 'Ron' or State = 'Karnataka';

---Ability to understand size of the addressBook---
select count(city) from AddressBook group by city;
select count(state) from AddressBook group by state;

---Ability to sort contacts alphabatically---
select * from AddressBook order by firstName;