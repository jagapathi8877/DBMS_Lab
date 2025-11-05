
create table std1(rollno integer,name varchar2(20),branch varchar2(20))


insert into std1 values (201,'ramesh','mech');

begin
SAVEPOINT A;
end;


insert into std1 values(202,'geetha','civil')

begin
SAVEPOINT B;
end;


update std1 SET branch='IT' where rollno=201;

select * from std1;
ROLLBACK TO B;

select * from std1
ROLLBACK TO A

select * from std1;
