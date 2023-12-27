create database bankdetail;

use bankdetail;


create table bank(
Branch_id int auto_increment primary key,
branch_name varchar(20) not null,
branch_city varchar(20) not null);

select*from bank;


create table loan(
loan_no int auto_increment primary key,
branch_id varchar(20) not null,
account_holders_id varchar(20) not null,
loan_amount varchar(20) not null,
loan_type varchar(20) not null);

select*from loan;


create table account_holders(
account_holders_id int auto_increment primary key,
account_number varchar(20) not null,
account_holders_name varchar(20) not null,
city varchar(20) not null,
contact varchar(20) not null,
date_of_account_create varchar(20) not  null);



select*from account_holders;



insert into bank(branch_name,branch_city) values (
'kotak bank of india','surat'),
('varacha bank of india','amdavad'),
('sbi bank of india','gandhinaagar'),
('axis bank','amreli');



select*from bank;






insert into loan(branch_id,account_holders_id,loan_amount,loan_type) values 
('C00001','nevilbhayani','5000000','gold loan'),
('C00002','meetmaniya','1000000','home loan'),
('C00003','miteshmeghani','740000','person loan'),
('C00004','radadiyadhrunal','500000','home loan');



select*from loan;


insert into account_holders(account_number,account_holders_name,city,contact,date_of_account_create) values(
26543510421,'meet','surat','9428473187','1-jan-2022'),
(26543510422,'mitesh','surat','9408936916','2-feb-2022'),
(26543510423,'nevil','amreli','9904023817','3-march-2022'),
(26543510424,'dhrunal','mumbai','8164855577','4-april-2022');

select*from account_holders;

select*from account_holders_name where date_of_account_create='15-jan';


