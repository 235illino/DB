create table flowers(
	id serial primary key,
	sort varchar(100),
	price float8,
	colour text
);
insert into flowers(sort, price, colour) values('rose', 55.2, 'red');
update flowers set colour = 'white';
select * from flowers;
delete from flowers;
delete from flowers;