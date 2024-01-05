create database bankdetail;

use bankdetail;


CREATE TABLE Bank (
    branch_id INT PRIMARY KEY,
    branch_name varchar(50),
    branch_city varchar(50)
);

select*from bank;


create table loan(
loan_no INT PRIMARY KEY,
branch_id varchar(20) not null,
account_holders_id varchar(20) not null,
loan_amount varchar(20) not null,
loan_type varchar(20) not null);

select*from loan;


create table Account_holder (
    account_holder_id INT PRIMARY KEY,
    account_no INT,
    account_holder_name varchar(50),
    city varchar(50),
    contact varchar(15),
    date_of_account_created DATE,
    account_status varchar(10),
    account_type varchar(20),
    balance DECIMAL(10,2)
);



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
(26543510423,'nevil','amreli','9904023817','30-march-2022'),
(26543510424,'dhrunal','mumbai','8164855577','4-april-2022');

select*from account_holders;

select*from account_holders_name where date_of_account_create='15-jan';


--   [1] transfer $100 :-

DECLARE @accountA INT = 10000; 
DECLARE @accountB INT = 12000; 
DECLARE @transferAmount DECIMAL(10,2) = 100;


BEGIN TRANSACTION;

UPDATE Account_holder
SET balance = balance - @transferAmount
WHERE account_no = @accountA;

UPDATE Account_holder
SET balance = balance + @transferAmount
WHERE account_no = @accountB;

COMMIT;



-- [2] :- account holder same city   (surat)
SELECT * FROM Account_holder WHERE city IN (SELECT city FROM Account_holder GROUP BY city HAVING COUNT(*) > 1);




-- [3] :-After 15th of Any
SELECT account_no, account_holder_name FROM Account_holder WHERE DAY(date_of_account_created) > 15;




-- [4] :-display the city name and count the branches
SELECT branch_city, COUNT(*) AS Count_Branch FROM Bank GROUP BY branch_city;



-- [5] :- display the account holder’s
SELECT account_holder_id, account_holder_name, branch_id, loan_amount FROM Account_holder  JOIN Loan  ON account_holder_id = account_holder_id;








