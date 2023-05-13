insert into supplier( city,email,name,surname) values ('kadź','haslo@jw.pl','janek','kowalski'),('warszawa','haslo@jw.pl','jan','nowak'), ('krkaów','haslo@jw.pl','tomasz','nowak');
/*insert into products( name, price, unit, supplier_id) VALUES('rower',33,2), ('skakanka',33,1);*/
insert into unit (name) values ('szt.'), ('paleta'),('kg'),('metrów');
/*insert into products_suppliers(product_id, supplier_id) VALUES (1,1);*/
insert into users(first_name, last_name, login, password, email) values ('Jan', 'Kowalski', 'admin', '{noop}admin', 'admin@admin.pl');
insert into users(first_name, last_name, login, password, email) values ('Adam', 'Nowak', 'a.nowak', '{noop}a.nowak', 'adam.nowak@gmail.com');

insert into roles(name) values ('USER'), ('ADMIN');

insert into users_roles(user_id, roles_id) value (1, 1), (1, 2), (2, 1);