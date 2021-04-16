create table engine(
    id serial primary key,
    capacity int
);

create table body(
    id serial primary key,
    name varchar(255)
);

create table transmission(
    id serial primary key,
    name varchar(255)
);

create table car(
    id serial primary key,
    name varchar(255),
	engine_id int references engine(id),
	body_id int references body(id),
	transmission_id int references transmission(id)
);

insert into engine(capacity) values (1);
insert into engine(capacity) values (2);
insert into engine(capacity) values (3);

insert into body(name) values ('coupe');
insert into body(name) values ('jeep');
insert into body(name) values ('sedan');

insert into transmission(name) values ('automatic');
insert into transmission(name) values ('mechanic');
insert into transmission(name) values ('robot');


insert into car(name, engine_id, body_id, transmission_id) values ('Audi', 1,2,2);
insert into car(name, engine_id, body_id, transmission_id) values ('Fiat', 2,1,1);
insert into car(name, engine_id, body_id, transmission_id) values ('BMW', 3,2,3);
insert into car(name, engine_id, body_id, transmission_id) values ('Ford', 2,1,3);
insert into car(name, engine_id, body_id, transmission_id) values ('Seat', 1,1,3);


select * from car c left join engine e on c.engine_id = e.id
left join body b on c.body_id = b.id
left join transmission t on c.transmission_id = t.id;


insert into engine(capacity) values (4);
insert into engine(capacity) values (5);
insert into engine(capacity) values (6);

insert into body(name) values ('coupe1');
insert into body(name) values ('jeep2');
insert into body(name) values ('sedan3');

insert into transmission(name) values ('automatic1');
insert into transmission(name) values ('mechanic2');
insert into transmission(name) values ('robot3');

select * from engine e left join car c on e.id = c.engine_id where c.engine_id is null;
select * from body b left join car c on b.id = c.body_id where c.body_id is null;
select * from transmission t left join car c on t.id = c.transmission_id where c.transmission_id is null;




