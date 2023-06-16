create table employee 
(
    eid number primary key,
    ename varchar2(20),
    age number,
    mid number,
    address varchar2(20),
    salary number,
    emp_pos varchar2(20),
    check (age between 18 and 60)
);
    
    insert into employee values(101,'kamal',33,501,'kathmandu',40000,'Sales Person');
    insert into employee values(501,'Himal',33,501,'Pokhara',200000,'Maanage');
    insert into employee values(102,'kamala',33,501,'kathmandu',200001,'Sales Person');
    
    /
    select * from employee;
    /
    create or replace trigger sal_check
    before insert or update on employee
    for each row
    declare
    manager_salary number;
    begin
    select salary into manager_salary from employee
    where eid=:NEW.mid;
    if:NEW.salary>manager_salary then
    raise_application_error(-20001,'Manager salary is greater than other employee');
    end if;
    end;
    
    
    
    