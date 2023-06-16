create table department (
dept_id number primary key,
dept_name varchar2(40)
);
/
insert into department values (101,'CSIT');
insert into department values (102,'BCA');
insert into department values (103,'MCA');
insert into department values (104,'BIM');
insert into department values (105,'BBA');
insert into department values (106,'HR');
insert into department values (107,'Account');
insert into department values (108,'Math');
insert into department values (109,'BIT');
insert into department values (110,'BA');
/
create table employee 
(
   eid number primary key,
   ename varchar(20),
   salary number,
   date_of_birth date,
   address varchar2(40),
   dept_id number,
   foreign key(dept_id) references department(dept_id)
);
/
declare
birth_date date;
rsal number;
eid number;
did number;
begin
for eid IN 101..100000 LOOP
SELECT TRUNC(SYSDATE) + DBMS_RANDOM.VALUE(-15000, 0) into birth_date
FROM dual;
SELECT TRUNC(DBMS_RANDOM.VALUE(10000, 100000)) into rsal
FROM dual;
SELECT TRUNC(DBMS_RANDOM.VALUE(101, 110)) into did
FROM dual;
insert into employee values(eid,'Kamal-'||eid,rsal,birth_date,'Kathmandu-'||eid,did);
end loop;
commit;
end;
/
create or replace trigger salary_update_trigger
before update of salary on employee
declare
day_of_month number;
begin
day_of_month :=EXTRACT(DAY FROM sysdate);
if day_of_month between 28 and 31 then
raise_application_error(-20100,'Salary can not be updated in 28 to  31');
end if;
end;
