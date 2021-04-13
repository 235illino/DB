create table users (
    id serial primary key,
    name varchar(2000)
);
create table roles (
    id serial primary key,
    name varchar(2000),
    users_id int references users(id)
);
create table rules (
    id serial primary key,
    name varchar(2000)
);
create table roles_rules (
    id serial primary key,
    name varchar(2000),
	roles_rules int references rules(id),
	roles_id int references roles(id)
);
