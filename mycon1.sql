create type Employee_type as Object (
eid number,
ename varchar2(20),
age number,
address varchar2(20),
salary number
);
/
create table EmpTable (
id raw(16) primary key,
emp Employee_type
);
/
insert into EmpTable values (SYS_GUID(),Employee_type(101,'Kamal',22,'Kathmandu',30000));
insert into EmpTable values (SYS_GUID(),Employee_type(102,'Bimal',23,'Pokhara',40000));
insert into EmpTable values (SYS_GUID(),Employee_type(103,'Suman',24,'Lalitpur',50000));
insert into EmpTable values (SYS_GUID(),Employee_type(104,'Himal',25,'Bhaktapur',60000));
insert into EmpTable values (SYS_GUID(),Employee_type(105,'Lizen',26,'Dhangadhi',70000));

select * from EMPTable;





