insert into devices(name, price) values ('Смартфон', 1000);
insert into devices(name, price) values ('Смартчасы', 500);
insert into devices(name, price) values ('Наушники', 300);

insert into people(name) values ('Аня');
insert into people(name) values ('Ваня');
insert into people(name) values ('Таня');

insert into devices_people(device_id, people_id) values (10, 12);
insert into devices_people(device_id, people_id) values (11, 10);
insert into devices_people(device_id, people_id) values (12, 11);

insert into devices_people(device_id, people_id) values (10, 10);
insert into devices_people(device_id, people_id) values (11, 12);
insert into devices_people(device_id, people_id) values (12, 11);

insert into devices_people(device_id, people_id) values (10, 12);
insert into devices_people(device_id, people_id) values (11, 11);
insert into devices_people(device_id, people_id) values (12, 12);


select avg(price) from devices;



select p.name, avg(d.price) from devices_people as dp join people p on dp.people_id = p.id join devices d on dp.device_id = d.id
group by p.name;

select p.name, avg(d.price) from devices_people as dp join people p on dp.people_id = p.id join devices d on dp.device_id = d.id
group by p.name
having avg(d.price) > 5000;