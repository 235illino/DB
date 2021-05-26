create table university(
     id serial primary key,
     name varchar(255)
 );

create table students(
     id serial primary key,
     name varchar(255),
     university_id int references university(id)
 );
 
insert into university(name) values ('U1');
insert into university(name) values ('U2');
insert into university(name) values ('U2');

insert into students(name, university_id) values ('S1', 2);
insert into students(name, university_id) values ('S2', 1);
insert into students(name, university_id) values ('S3', 1);
insert into students(name, university_id) values ('S4', 3);

select s.name, u.name from students as s join university as u on s.university_id = u.id;

select s.name as Name_Student, u.name as Name_Univer from students as s join university as u on s.university_id = u.id;

select * from students as s join university as u on s.university_id = u.id;
