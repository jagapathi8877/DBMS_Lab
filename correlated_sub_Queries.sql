select s.sname from sailors s
where s.sid IN( select r.sid from reserves r
where r.bid=103);


select s.sname from sailors s
where s.sid NOT IN( select r.sid from reserves r
where r.bid=103);

select s.sid from sailors s where s.rating>=all(select s1.rating from sailors s1);

select s.sid from sailors s
where s.rating>ANY(select s1.rating from sailors s1 where s1.sname='Andy');

select s.sname from sailors s where EXISTS(select * from reserves r where s.sid=r.sid and
r.bid=103);

select s.sname from sailors s where NOT EXISTS(select * from reserves r where s.sid=r.sid
and r.bid=103);

