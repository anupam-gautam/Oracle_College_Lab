create table employee (
  eid number primary key,
  ename varchar2(20),
  age number,
  salary number
  );
  /
  insert into employee values (101, 'Kamal',33,30000);
  insert into employee values (102, 'Kamala',34,50000);
  insert into employee values (103, 'Suman',35,60000);
  insert into employee values (104, 'Himal',36,70000);
  insert into employee values (105, 'Suman',37,80000);
  select * from employee;
  /
  delete from employee where eid=105;
  /
  
  create table back_up_table (
     eid number,
     e_name varchar2(20),
     eage number,
     esalary number
     );
     select * from back_up_table;
     /
     create  or replace trigger back_up_trigger 
     after delete on employee 
     for each row
     declare
     emp_id number;
     emp_name varchar2(20);
     emp_age number;
     emp_sal number;
     begin 
     emp_id:=:OLD.eid;
     emp_name:=:OLD.ename;
     emp_age:=:OLD.age;
     emp_sal:=:OLD.salary;
     insert into back_up_table values(emp_id,emp_name,emp_age,emp_sal);
     end;