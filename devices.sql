
insert into devices_people(device_id, people_id) values (10, 12);
insert into devices_people(device_id, people_id) values (11, 10);
insert into devices_people(device_id, people_id) values (12, 11);


select d.name, avg(d.price) from devices as d group by d.name;