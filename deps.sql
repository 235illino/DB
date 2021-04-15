create table departments(
    id serial primary key,
    name varchar(255)
);

create table emploees(
    id serial primary key,
    name varchar(255),
    departments_id int references emploees(id)
);

insert into departments(name) values ('dep 1');
insert into departments(name) values ('dep 2');
insert into departments(name) values ('dep 3');

insert into emploees(name, departments_id) values ('emploee 1', 1);
insert into emploees(name, departments_id) values ('emploee 2', 2);
insert into emploees(name, departments_id) values ('emploee 3', 3);
insert into emploees(name, departments_id) values ('emploee 4', null);
insert into emploees(name, departments_id) values ('emploee 5', null);
insert into emploees(name, departments_id) values ('emploee 6', 1);

select * from emploees e left join departments d on e.departments_id = d.id;

select * from emploees e right join departments d on e.departments_id = d.id;

select * from emploees e full join departments d on e.departments_id = d.id;

select * from emploees cross join departments;

select * from emploees e left join departments d on e.departments_id = d.id where d.id is null;

select * from emploees e left join departments d on e.departments_id = d.id;

select * from departments d right join emploees e on e.departments_id = d.id;











