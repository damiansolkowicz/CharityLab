insert into supplier(id, city,email,name,surname) values (1,'kadź','haslo@jw.pl','janek','nowak'),(2,'warszawa','haslo@jw.pl','janddsek','nowak'), (3,'krkaów','haslo@jw.pl','jaffnek','nowak');
insert into products(id, name, price,unit) values (1,'rower','200','szt'),(2,'skakanrka','200','szt'),(3,'costam','200','szt');

insert into products_suppliers(product_id, supplier_id) VALUES (1,1);