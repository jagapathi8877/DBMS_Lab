create view myview as select rollno,name from st1;

select * from tab;

insert into myview values(506,'prathisha');

select * from myview;


select * from st1;

delete from myview where rollno=506;

select * from myview;

select * from st1;

create or replace view myview as select * from st1;

create or replace force view abc as select * from dummy_table;

create view myview1 as select * from st1 with read only;

insert into myview1 values(503,'prathisha',80);

update myview1 set name='suma' where rollno=505;

select * from myview1;


create view myview2 as select * from st1 where marks<101 with check option;
insert into myview2 values(504,'siri',101);
Drop View myview1;