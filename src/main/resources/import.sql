insert into supplier( city,email,name,surname) values ('kadź','haslo@jw.pl','janek','kowalski'),('warszawa','haslo@jw.pl','jan','nowak'), ('krkaów','haslo@jw.pl','tomasz','nowak');
insert into unit (name) values ('szt.'), ('paleta'),('kg'),('metrów');

insert into users(first_name, last_name, login, password, email) values ('Jan', 'Kowalski', 'admin', '{noop}admin', 'admin@admin.pl');
insert into users(first_name, last_name, login, password, email) values ('dominik', 'Dominiak', 'a.nowak', '{noop}dominik', 'dominiak@gmail.com');
insert into users(first_name, last_name, login, password, email) values ('Anna', 'Kowalska', 'kowalska', '{noop}kowalska', 'kowalska@gmail.com');


insert into roles(name) values ('USER'), ('ADMIN');

insert into users_roles(user_id, roles_id) value (1, 1), (2, 2), (3, 1);