insert into comments(name) values('ok');
insert into attachs(name) values('contract');
insert into item(name, comments_id, attachs_id) values('Ferrari', 1, 1);
insert into users(name, item_id) values('Johny', 4);
insert into roles(name, users_id) values('editor', 3);
insert into rules(name) values('all');

