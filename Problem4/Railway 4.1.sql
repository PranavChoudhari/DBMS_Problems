create database demo;
use demo;
create table remotecentre(
centreID int primary key,
college varchar(50),
town varchar(50),
state varchar(50));

insert into remotecentre values(11,'KJSP','Mumbai','Maharashtra');
insert into remotecentre values(12, 'COEP Tech', 'Pune', 'Maharashtra');
insert into remotecentre values(11,'KJSCE','Mumbai','Maharashtra');

alter table remotecentre add primary key(centreID);
alter table remotecentre drop primary key;

select * from remotecentre;


create table person(
ID int primary key,
name varchar(50),
email varchar(50));

insert into person values ('101', 'John', 'john@gmail.com');
insert into person values ('102', ,'harsh@gmail.com');
insert into person values ('102', ,'roy@gmail.com');
insert into person values('104','' ,'ro@gmail.com');
insert into person values('102','Raj','raj@gmail.com');
insert into person values('102','Yash','raj@gmail.com');

alter table person modify column name varchar(50) not null;
alter table person modify name varchar(50);
show create table person;
alter table person drop primary key;
select * from person;

create table programme(
progID int primary key,
title varchar(50) not null,
fromdate date,
todate date );

insert into programme values (15,'BTech','2022-10-11','2023-11-12');
insert into programme values (16,'BTech','2022-10-11','2023-10-5');

select * from programme;


create table coordinator(
ID int,
progId int,
centreId int,
primary key(ID , progId, centreId),
foreign key(ID) references person(ID) on delete cascade);

insert into coordinator values(101,15,25); 

select * from coordinator;

create table participant(
ID int,
progId int,
centreId int,
primary key(ID , progId, centreId),
foreign key(ID) references person(ID) on delete cascade);

insert into participant values(101,20,35);

select * from participant; 
 




delete from trainhalts where id = 'A64';

select * from trainhalts;

