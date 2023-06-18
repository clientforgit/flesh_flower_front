DROP DATABASE IF EXISTS flowers_store;
CREATE DATABASE flowers_store;
USE flowers_store;

DROP TABLE IF EXISTS colors;
CREATE TABLE colors(
	id int not null auto_increment,
    color tinytext not null,
	bouquet_id int not null,
    foreign key (boquet_id) references boquets(id),
    primary key (id)
);

DROP TABLE IF EXISTS types;
CREATE TABLE types(
	id int not null auto_increment,
    type tinytext not null,
    bouquet_id int not null,
    foreign key (boquet_id) references boquets(id),
    primary key (id)
);

DROP TABLE IF EXISTS bouquets;
CREATE TABLE boquets(
	id int not null auto_increment,
    name tinytext not null,
    category tinytext not null,
    price tinytext not null,
    material tinytext not null,
    size tinytext not null,
    description text not null,
    composition text not null,
    primary key (id)
);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders(
	id int not null auto_increment,
    boquet int not null,
    order_time date not null,
    foreign key (boquet) references boquets(id),
    primary key (id)
);

DROP TABLE IF EXISTS contacts;
CREATE TABLE contacts(
	id int not null auto_increment,
    name tinytext not null,
    surname tinytext not null,
    email tinytext not null,
    phone tinytext not null,
    order_id int not null,
    foreign key (order_id) references orders(id),
    primary key (id)
);

DROP TABLE IF EXISTS shipping_adresses;
CREATE TABLE shipping_adresses(
	id int not null auto_increment,
    region tinytext not null,
    city tinytext not null,
    adress tinytext not null,
    zip_code tinytext,
    order_id int not null,
    foreign key (order_id) references orders(id),
    primary key (id)
);

DROP TABLE IF EXISTS payments;
CREATE TABLE payments(
	id int not null auto_increment,
    payment_method tinytext not null,
    card_num tinytext,
    expiration_date tinytext not null,
    CVV tinytext,
    order_id int not null,
    foreign key (order_id) references orders(id),
    primary key (id)
);
    