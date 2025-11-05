select *from tb1;

select * from tb2;

select *from tb1 inner join tb2 on tb1.rno=tb2.rno;

select * from tb1 left outer join tb2 on tb1.rno=tb2.rno;

select * from tb1 right outer join tb2 on tb1.rno=tb2.rno;

select *from tb1 natural join tb2;

select *from tb1 cross join tb2;

select t1.rno, t2.name from tb1 t1,tb1 t2 where t1.rno=t2.rno;

select * from tb1,tb2 where tb1.rno=tb2.rno;