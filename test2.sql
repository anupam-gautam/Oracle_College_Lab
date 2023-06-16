create table employee 
(
    eid number primary key,
    ename varchar2(20),
    age number,   
    address varchar2(20),
    salary number,   
    check (age between 18 and 60)
);
/
insert into employee values(101,'kamal',33,'kathmandu',40000);
insert into employee values(102,'kamal',33,'kathmandu',50000);
insert into employee values(103,'kamal',33,'kathmandu',35000);
insert into employee values(104,'kamal',33,'kathmandu',45000);
insert into employee values(105,'kamal',33,'kathmandu',50000);
insert into employee values(106,'kamal',33,'kathmandu',20000);
/


create or replace procedure update_emp_salary(e in number) is
sal number;
begin
select salary into sal from employee where eid=e;
if sal<=30000 then
update employee set salary = salary+3000 where eid = e;
elsif sal<=40000 then
update employee set salary = salary+2000 where eid = e;
elsif sal<=50000 then
update employee set salary = salary+1000 where eid = e;
else
update employee set salary = salary+5000 where eid = e;
end if;
end;

/
exec update_emp_salary(101);
/
show user;

  