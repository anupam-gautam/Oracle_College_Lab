create table employee 
(
   eid number primary key,
   ename varchar(20),
   salary number 
   
);
insert into employee values(101,'kamal',30000);
/
update employee set salary =  salary+1000;
/
drop trigger salary_update_trigger;

create or replace trigger salary_update_trigger
before update of salary on employee
declare
day_of_month number;
begin
day_of_month :=EXTRACT(DAY FROM sysdate);
if day_of_month between 10 and 16 then
raise_application_error(-20100,'Salary can not be updated in 28 to  31');
end if;
end;
