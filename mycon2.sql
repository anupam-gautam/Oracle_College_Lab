create type Person As Object (
pname varchar2(20),
Address varchar2(20),
Age number,
Sex varchar2(20)
) NOT FINAL;
/
create type Employee under Person (
eid number,
salary number
) NOT FINAL;
/
create type Manager under Employee (
no_of_exp_year number,
qualification varchar2(20)
);
create table CompanyTable (
 mid raw(16) primary key,
 m Manager
 );
 /
 insert into CompanyTable values(SYS_GUID(),Manager('Kamal','Kathmandu',40,'Male',101,50000,10,'Master'));
 insert into CompanyTable values(SYS_GUID(),Manager('Bimal','Kathmandu',40,'Male',102,60000,12,'Bachelor'));
 insert into CompanyTable values(SYS_GUID(),Manager('Suman','Kathmandu',40,'Male',103,70000,8,'Master'));
 insert into CompanyTable values(SYS_GUID(),Manager('Ananta','Kathmandu',40,'Male',104,80000,13,'Master'));
 insert into CompanyTable values(SYS_GUID(),Manager('Kamala','Kathmandu',30,'Female',101,55000,5,'Master'));
 /
 select * from CompanyTable;
 /
 drop table CompanyTable purge;
 /