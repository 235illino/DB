
create table teens(
    name varchar(255),
	gender varchar(255)
);

insert into teens(name, gender) values ('M','Male');
insert into teens(name, gender) values ('F','Female');
insert into teens(name, gender) values ('T', 'Transgender');
insert into teens(name, gender) values ('A', 'Agender');
insert into teens(name, gender) values ('B', 'Bigender');
insert into teens(name, gender) values ('I', 'Intersex');





select t1.name as name1, t2.name as name2, concat(t1.name,' ', t2.name) as pair, concat(t1.gender,' + ' , t2.gender) as sex from teens t1 cross join teens t2;
