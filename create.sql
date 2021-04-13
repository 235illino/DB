create table item (
    id serial primary key,
    name varchar(2000)
);
ALTER TABLE users ADD item_id int NOT NULL DEFAULT 0;
ALTER TABLE users ADD CONSTRAINT fk_item_id FOREIGN KEY (item_id) REFERENCES item(id);
create table comments (
    id serial primary key,
    name varchar(2000)
);
ALTER TABLE item ADD comments_id int NOT NULL DEFAULT 0;
ALTER TABLE item ADD CONSTRAINT fk_comments_id FOREIGN KEY (comments_id) REFERENCES comments(id);
create table attachs (
    id serial primary key,
    name varchar(2000)
);
ALTER TABLE item ADD attachs_id int NOT NULL DEFAULT 0;
ALTER TABLE item ADD CONSTRAINT fk_attachs_id FOREIGN KEY (attachs_id) REFERENCES comments(id);
create table category (
    id serial primary key,
    name varchar(2000),
    item_id int references item(id)
);
create table state (
    id serial primary key,
    name varchar(2000),
    item_id int references item(id)
);

