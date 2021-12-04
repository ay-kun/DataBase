create table card_details(
    card_id int not null,
    card_name varchar not null ,
    cvv int not null ,
    brand varchar,
    primary key (card_id)
);
create table online_customer(
    customer_id int not null,
    address varchar,
    country varchar,
    city varchar,
    postal_code int,
    street varchar,
    apart int,
    date date,
    number varchar,
    first_name varchar not null,
    second_name varchar not null,
    primary key (customer_id)
);
create table card_info (
    customer_id int references online_customer(customer_id),
    card_id int references card_details(card_id),
    primary key (customer_id, card_id)
);

create table bill(
    customer_id int references online_customer(customer_id),
    account_id int references account(account_id),
    primary key (customer_id, account_id)
);

drop table account;
create table account(
    account_id int not null,
    date date not null,
    primary key (account_id)
);

create table product(
    product_id int not null primary key ,
    name varchar not null,
    amount int not null,
    price int not null
);

create table category(
    category_id int not null primary key,
    category_name varchar not null
);

create table categ(
    product_id int references product(product_id),
    category_id int references category(category_id),
    primary key (product_id, category_id)
);


create table manufacture(
    manufacture_id int not null primary key,
    manufacture_name varchar not null
);

drop table manufact;
create table manufact(
    product_id int references product(product_id),
    manufacture_id int references manufacture(manufacture_id),
    primary key (product_id, manufacture_id)
);

drop table store;
create table store(
    store_id int not null,
    store_name varchar not null,
    store_region varchar not null,
    primary key (store_id)
);


drop table prod;
create table prod(
    product_id int references product(product_id),
    store_id int references store(store_id),
    primary key (product_id, store_id)
);

drop table info_purchase;
create table info_purchase(
    info_id int not null,
    tracking_number varchar,
    date_info date,
    primary key (info_id)
);

drop table info_store;
create table info_store(
        info_id int references info_purchase(info_id),
    store_id int references store(store_id),
    primary key (info_id, store_id)
);

drop table ship_company;
create table ship_company(
    ship_id int not null,
    ship_name varchar not null,
    delivery_method varchar,
    primary key (ship_id)
);

create table info_ship(
    info_id int references info_purchase(info_id),
    ship_id int references ship_company(ship_id),
    primary key (info_id, ship_id)
);

create table offline_customer(
    customer_id int not null primary key
);

create table info_offline(
    info_id int references info_purchase(info_id),
    customer_id int references offline_customer(customer_id),
    primary key (info_id, customer_id)
);

create table info_online(
    info_id int references info_purchase(info_id),
    customer_id int references online_customer(customer_id),
    primary key (info_id, customer_id)
);


insert into card_details (card_id, card_name, cvv, brand) values (1, 'jcb', 160, 'jcb');
insert into card_details (card_id, card_name, cvv, brand) values (2, 'diners-club-carte-blanche', 193, 'jcb');
insert into card_details (card_id, card_name, cvv, brand) values (3, 'jcb', 161, 'diners-club-carte-blanche');
insert into card_details (card_id, card_name, cvv, brand) values (4, 'jcb', 752, 'mastercard');
insert into card_details (card_id, card_name, cvv, brand) values (5, 'diners-club-international', 746, 'instapayment');
insert into card_details (card_id, card_name, cvv, brand) values (6, 'jcb', 820, 'jcb');
insert into card_details (card_id, card_name, cvv, brand) values (7, 'jcb', 450, 'jcb');
insert into card_details (card_id, card_name, cvv, brand) values (8, 'switch', 260, 'jcb');
insert into card_details (card_id, card_name, cvv, brand) values (9, 'jcb', 351, 'jcb');
insert into card_details (card_id, card_name, cvv, brand) values (10, 'mastercard', 953, 'jcb');
insert into card_details (card_id, card_name, cvv, brand) values (11, 'jcb', 759, 'diners-club-enroute');
insert into card_details (card_id, card_name, cvv, brand) values (12, 'jcb', 237, 'jcb');
insert into card_details (card_id, card_name, cvv, brand) values (13, 'laser', 192, 'jcb');
insert into card_details (card_id, card_name, cvv, brand) values (14, 'jcb', 696, 'jcb');
insert into card_details (card_id, card_name, cvv, brand) values (15, 'jcb', 910, 'jcb');


insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (1, '43 Carberry Point', 'Honduras', 149, 'Ryan', '7960', '2021-08-27', 48829038, 'Bourke', 'Garrik');
insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (2, '665 Jenifer Road', 'United States', 171, 'Prairieview', '070', '2021-09-05', 24465866, 'Fiona', 'Flem');
insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (3, '20938 Acker Trail', 'Russia', 122, 'Tennessee', '04', '2021-10-04', 82277411, 'Amandi', 'Wildon');
insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (4, '475 Village Green Crossing', 'Peru', 140, 'Cambridge', '762', '2021-08-16', 64813443, 'Walt', 'Freedman');
insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (5, '70 Sage Park', 'Philippines', 165, 'Roxbury', '3218', '2021-03-26', 96436253, 'Fabio', 'Major');
insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (6, '1 Carpenter Lane', 'Indonesia', 172, 'Donald', '6', '2021-02-03', 97445601, 'Darbee', 'Cornell');
insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (7, '31930 Grayhawk Point', 'Brazil', 141, 'Truax', '87795', '2021-11-21', 30543759, 'Pammi', 'Martin');
insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (8, '28 Granby Plaza', 'Kyrgyzstan', 142, 'Troy', '3055', '2021-08-23', 97627676, 'Marcia', 'Isidor');
insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (9, '272 Mcguire Trail', 'Cameroon', 196, 'Hauk', '64081', '2020-12-31', 11723872, 'Edik', 'Claus');
insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (10, '42 Schmedeman Alley', 'Palestinian Territory', 112, 'Prairieview', '4457', '2021-10-11', 25524231, 'Friederike', 'Madison');
insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (11, '9291 Lien Junction', 'Singapore', 150, 'Tony', '2870', '2021-09-27', 82056179, 'Udale', 'Byran');
insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (12, '7582 Caliangt Road', 'Portugal', 195, 'Prairie Rose', '63', '2021-05-04', 18900639, 'Torry', 'Fraser');
insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (13, '65 Lawn Point', 'Russia', 107, 'Truax', '3406', '2021-08-03', 55291439, 'Edna', 'Jule');
insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (14, '753 Sachtjen Place', 'Philippines', 172, 'Havey', '4791', '2020-12-05', 84715029, 'Moises', 'Jase');
insert into online_customer (customer_id, address, country, postal_code, street, apart, date, number, first_name, second_name) values (15, '2 Golf Course Street', 'United States', 189, 'Golf Course', '78', '2021-02-14', 82861813, 'Henriette', 'Louis');


insert into account (account_id, date) values (1, '2021-05-16');
insert into account (account_id, date) values (2, '2021-02-27');
insert into account (account_id, date) values (3, '2021-11-05');


insert into product (product_id, name, amount, price) values (1, 'Tea - Herbal Sweet Dreams', 38, 9792);
insert into product (product_id, name, amount, price) values (2, 'Veal - Leg', 49, 3765);
insert into product (product_id, name, amount, price) values (3, 'Crush - Grape, 355 Ml', 41, 9181);
insert into product (product_id, name, amount, price) values (4, 'Cheese Cloth No 100', 11, 8275);
insert into product (product_id, name, amount, price) values (5, 'Hinge W Undercut', 10, 7535);
insert into product (product_id, name, amount, price) values (6, 'Cheese - Brie', 49, 7969);
insert into product (product_id, name, amount, price) values (7, 'Cheese - Sheep Milk', 14, 2064);
insert into product (product_id, name, amount, price) values (8, 'Syrup - Chocolate', 26, 5616);
insert into product (product_id, name, amount, price) values (9, 'Bamboo Shoots - Sliced', 11, 5787);
insert into product (product_id, name, amount, price) values (10, 'Bread - 10 Grain Parisian', 17, 2653);
insert into product (product_id, name, amount, price) values (11, 'Chick Peas - Dried', 28, 7493);
insert into product (product_id, name, amount, price) values (12, 'Pork Casing', 14, 1426);
insert into product (product_id, name, amount, price) values (13, 'Wine - Red, Colio Cabernet', 11, 7766);
insert into product (product_id, name, amount, price) values (14, 'Yogurt - Banana, 175 Gr', 23, 4706);
insert into product (product_id, name, amount, price) values (15, 'Bread - White, Sliced', 5, 6040);
insert into product (product_id, name, amount, price) values (16, 'Ice Cream - Turtles Stick Bar', 36, 5075);
insert into product (product_id, name, amount, price) values (17, 'Jameson - Irish Whiskey', 28, 6605);
insert into product (product_id, name, amount, price) values (18, 'Apple - Delicious, Red', 34, 4111);
insert into product (product_id, name, amount, price) values (19, 'Wine - White, Schroder And Schyl', 48, 8016);
insert into product (product_id, name, amount, price) values (20, 'Wine - Semi Dry Riesling Vineland', 10, 2156);
insert into product (product_id, name, amount, price) values (21, 'Scallops - 20/30', 9, 2364);
insert into product (product_id, name, amount, price) values (22, 'Wine - Periguita Fonseca', 19, 4943);
insert into product (product_id, name, amount, price) values (23, 'Oil - Olive, Extra Virgin', 17, 8100);
insert into product (product_id, name, amount, price) values (24, 'Wine - Rosso Del Veronese Igt', 37, 3791);
insert into product (product_id, name, amount, price) values (25, 'Beef - Montreal Smoked Brisket', 11, 5247);
insert into product (product_id, name, amount, price) values (26, 'Coffee Guatemala Dark', 46, 9813);
insert into product (product_id, name, amount, price) values (27, 'Soup V8 Roasted Red Pepper', 13, 2542);
insert into product (product_id, name, amount, price) values (28, 'Pasta - Fett Alfredo, Single Serve', 22, 2867);
insert into product (product_id, name, amount, price) values (29, 'Stock - Chicken, White', 16, 8984);
insert into product (product_id, name, amount, price) values (30, 'Cheese - Gouda Smoked', 33, 4111);
insert into product (product_id, name, amount, price) values (31, 'Sauce - Alfredo', 9, 5626);
insert into product (product_id, name, amount, price) values (32, 'Beans - Wax', 27, 9315);
insert into product (product_id, name, amount, price) values (33, 'Flower - Carnations', 33, 6286);
insert into product (product_id, name, amount, price) values (34, 'Bread - Sour Sticks With Onion', 24, 8697);
insert into product (product_id, name, amount, price) values (35, 'Cumin - Whole', 4, 8634);
insert into product (product_id, name, amount, price) values (36, 'Pie Shell - 5', 50, 5389);
insert into product (product_id, name, amount, price) values (37, 'Sugar - Individual Portions', 11, 6031);
insert into product (product_id, name, amount, price) values (38, 'Wine - Chardonnay South', 10, 5654);
insert into product (product_id, name, amount, price) values (39, 'Pepper - Pablano', 16, 1831);
insert into product (product_id, name, amount, price) values (40, 'Wine - Sauvignon Blanc Oyster', 35, 2828);
insert into product (product_id, name, amount, price) values (41, 'Wine - Saint Emilion Calvet', 32, 9820);
insert into product (product_id, name, amount, price) values (42, 'Rosemary - Dry', 14, 9096);
insert into product (product_id, name, amount, price) values (43, 'Milkettes - 2%', 39, 1236);
insert into product (product_id, name, amount, price) values (44, 'Ginger - Crystalized', 40, 5691);
insert into product (product_id, name, amount, price) values (45, 'Egg Patty Fried', 11, 6134);
insert into product (product_id, name, amount, price) values (46, 'Oregano - Fresh', 33, 9362);
insert into product (product_id, name, amount, price) values (47, 'Eggplant - Baby', 12, 7208);
insert into product (product_id, name, amount, price) values (48, 'Pastry - Cherry Danish - Mini', 45, 9921);
insert into product (product_id, name, amount, price) values (49, 'Dried Figs', 35, 9846);
insert into product (product_id, name, amount, price) values (50, 'Cornish Hen', 11, 5089);



insert into category (category_id, category_name) values (1, 'Goldenrod');
insert into category (category_id, category_name) values (2, 'Violet');
insert into category (category_id, category_name) values (3, 'Green');
insert into category (category_id, category_name) values (4, 'Turquoise');
insert into category (category_id, category_name) values (5, 'Blue');
insert into category (category_id, category_name) values (6, 'Mauv');
insert into category (category_id, category_name) values (7, 'Goldenrod');
insert into category (category_id, category_name) values (8, 'Turquoise');
insert into category (category_id, category_name) values (9, 'Yellow');
insert into category (category_id, category_name) values (10, 'Khaki');

insert into manufacture (manufacture_id, manufacture_name) values (1, 'Construction Manager');
insert into manufacture (manufacture_id, manufacture_name) values (2, 'Subcontractor');
insert into manufacture (manufacture_id, manufacture_name) values (3, 'Architect');
insert into manufacture (manufacture_id, manufacture_name) values (4, 'Estimator');
insert into manufacture (manufacture_id, manufacture_name) values (5, 'Engineer');
insert into manufacture (manufacture_id, manufacture_name) values (6, 'Estimator');
insert into manufacture (manufacture_id, manufacture_name) values (7, 'Architect');
insert into manufacture (manufacture_id, manufacture_name) values (8, 'Construction Expeditor');
insert into manufacture (manufacture_id, manufacture_name) values (9, 'Construction Expeditor');
insert into manufacture (manufacture_id, manufacture_name) values (10, 'Supervisor');


insert into store (store_id, store_name, store_region) values (1, 'Convolvulaceae', 'Tambopata');
insert into store (store_id, store_name, store_region) values (2, 'Boraginaceae', 'Shuangxi');
insert into store (store_id, store_name, store_region) values (3, 'Scrophulariaceae', 'Taiping');
insert into store (store_id, store_name, store_region) values (4, 'Rosaceae', 'Oster');
insert into store (store_id, store_name, store_region) values (5, 'Rosaceae', 'Nan’an');
insert into store (store_id, store_name, store_region) values (6, 'Asteraceae', 'Strängnäs');
insert into store (store_id, store_name, store_region) values (7, 'Thuidiaceae', 'Leiling');
insert into store (store_id, store_name, store_region) values (8, 'Rosaceae', 'Bolembre');
insert into store (store_id, store_name, store_region) values (9, 'Rhamnaceae', 'Riang Tengah');
insert into store (store_id, store_name, store_region) values (10, 'Parmeliaceae', 'Paris 18');

insert into info_purchase (info_id, tracking_number, date_info) values (1, '1341324', '2021-03-18');
insert into info_purchase (info_id, tracking_number, date_info) values (2, null, '2021-02-28');
insert into info_purchase (info_id, tracking_number, date_info) values (3, '134132', '2021-08-27');
insert into info_purchase (info_id, tracking_number, date_info) values (4, '134132', '2021-01-22');
insert into info_purchase (info_id, tracking_number, date_info) values (5, null, '2021-09-30');
insert into info_purchase (info_id, tracking_number, date_info) values (6, '43532', '2021-06-24');
insert into info_purchase (info_id, tracking_number, date_info) values (7, null, '2021-01-12');
insert into info_purchase (info_id, tracking_number, date_info) values (8, null, '2021-04-04');
insert into info_purchase (info_id, tracking_number, date_info) values (9, '41541', '2021-04-28');
insert into info_purchase (info_id, tracking_number, date_info) values (10, null, '2021-10-03');
insert into info_purchase (info_id, tracking_number, date_info) values (11, null, '2020-12-28');
insert into info_purchase (info_id, tracking_number, date_info) values (12, '134132', '2021-09-30');
insert into info_purchase (info_id, tracking_number, date_info) values (13, null, '2021-02-24');
insert into info_purchase (info_id, tracking_number, date_info) values (14, '134132', '2020-12-23');
insert into info_purchase (info_id, tracking_number, date_info) values (15, '3141', '2021-07-11');
insert into info_purchase (info_id, tracking_number, date_info) values (16, null, '2021-12-02');
insert into info_purchase (info_id, tracking_number, date_info) values (17, '13411432', '2021-12-02');
insert into info_purchase (info_id, tracking_number, date_info) values (18, '1341364135142', '2021-09-19');
insert into info_purchase (info_id, tracking_number, date_info) values (19, null, '2021-05-23');
insert into info_purchase (info_id, tracking_number, date_info) values (20, null, '2021-01-26');



insert into ship_company (ship_id, ship_name, delivery_method) values (1, 'Levofloxacin', 'home');
insert into ship_company (ship_id, ship_name, delivery_method) values (2, 'RISPERDAL', 'post');
insert into ship_company (ship_id, ship_name, delivery_method) values (3, 'Escitalopram', 'home');

insert into offline_customer (customer_id) values (1);
insert into offline_customer (customer_id) values (2);
insert into offline_customer (customer_id) values (3);
insert into offline_customer (customer_id) values (4);
insert into offline_customer (customer_id) values (5);

insert into card_info values  (1, 1);
insert into card_info values  (2, 2);
insert into card_info values  (3, 3);
insert into card_info values  (4, 4);
insert into card_info values  (5, 5);
insert into card_info values  (6, 6);
insert into card_info values  (7, 7);
insert into card_info values  (8, 8);
insert into card_info values  (9, 9);
insert into card_info values  (10, 10);
insert into card_info values  (11, 11);
insert into card_info values  (12, 12);
insert into card_info values  (13, 13);
insert into card_info values  (14, 14);
insert into card_info values  (15, 15);

insert into bill values  (11, 1);
insert into bill values  (12, 2);
insert into bill values  (13, 3);



insert into categ values  (1, 1);
insert into categ values  (2, 1);
insert into categ values  (3, 1);
insert into categ values  (4, 1);
insert into categ values  (5, 1);
insert into categ values  (6, 2);
insert into categ values  (7, 2);
insert into categ values  (8, 2);
insert into categ values  (9, 2);
insert into categ values  (10, 2);
insert into categ values  (11, 3);
insert into categ values  (12, 3);
insert into categ values  (13, 3);
insert into categ values  (14, 3);
insert into categ values  (15, 3);
insert into categ values  (16, 4);
insert into categ values  (17, 4);
insert into categ values  (18, 4);
insert into categ values  (19, 4);
insert into categ values  (20, 4);
insert into categ values  (21, 5);
insert into categ values  (22, 5);
insert into categ values  (23, 5);
insert into categ values  (24, 5);
insert into categ values  (25, 5);
insert into categ values  (26, 6);
insert into categ values  (27, 6);
insert into categ values  (28, 6);
insert into categ values  (29, 6);
insert into categ values  (30, 6);
insert into categ values  (31, 7);
insert into categ values  (32, 7);
insert into categ values  (33, 7);
insert into categ values  (34, 7);
insert into categ values  (35, 7);
insert into categ values  (36, 8);
insert into categ values  (37, 8);
insert into categ values  (38, 8);
insert into categ values  (39, 8);
insert into categ values  (40, 8);
insert into categ values  (41, 9);
insert into categ values  (42, 9);
insert into categ values  (43, 9);
insert into categ values  (44, 9);
insert into categ values  (45, 9);
insert into categ values  (46, 10);
insert into categ values  (47, 10);
insert into categ values  (48, 10);
insert into categ values  (49, 10);
insert into categ values  (50, 10);


insert into manufact values  (1, 1);
insert into manufact values  (2, 1);
insert into manufact values  (3, 1);
insert into manufact values  (4, 1);
insert into manufact values  (5, 1);
insert into manufact values  (6, 2);
insert into manufact values  (7, 2);
insert into manufact values  (8, 2);
insert into manufact values  (9, 2);
insert into manufact values  (10, 2);
insert into manufact values  (11, 3);
insert into manufact values  (12, 3);
insert into manufact values  (13, 3);
insert into manufact values  (14, 3);
insert into manufact values  (15, 3);
insert into manufact values  (16, 4);
insert into manufact values  (17, 4);
insert into manufact values  (18, 4);
insert into manufact values  (19, 4);
insert into manufact values  (20, 4);
insert into manufact values  (21, 5);
insert into manufact values  (22, 5);
insert into manufact values  (23, 5);
insert into manufact values  (24, 5);
insert into manufact values  (25, 5);
insert into manufact values  (26, 6);
insert into manufact values  (27, 6);
insert into manufact values  (28, 6);
insert into manufact values  (29, 6);
insert into manufact values  (30, 6);
insert into manufact values  (31, 7);
insert into manufact values  (32, 7);
insert into manufact values  (33, 7);
insert into manufact values  (34, 7);
insert into manufact values  (35, 7);
insert into manufact values  (36, 8);
insert into manufact values  (37, 8);
insert into manufact values  (38, 8);
insert into manufact values  (39, 8);
insert into manufact values  (40, 8);
insert into manufact values  (41, 9);
insert into manufact values  (42, 9);
insert into manufact values  (43, 9);
insert into manufact values  (44, 9);
insert into manufact values  (45, 9);
insert into manufact values  (46, 10);
insert into manufact values  (47, 10);
insert into manufact values  (48, 10);
insert into manufact values  (49, 10);
insert into manufact values  (50, 10);



insert into prod values  (1, 1);
insert into prod values  (2, 1);
insert into prod values  (3, 1);
insert into prod values  (4, 1);
insert into prod values  (5, 1);
insert into prod values  (6, 2);
insert into prod values  (7, 2);
insert into prod values  (8, 2);
insert into prod values  (9, 2);
insert into prod values  (10, 2);
insert into prod values  (11, 3);
insert into prod values  (12, 3);
insert into prod values  (13, 3);
insert into prod values  (14, 3);
insert into prod values  (15, 3);
insert into prod values  (16, 4);
insert into prod values  (17, 4);
insert into prod values  (18, 4);
insert into prod values  (19, 4);
insert into prod values  (20, 4);
insert into prod values  (21, 5);
insert into prod values  (22, 5);
insert into prod values  (23, 5);
insert into prod values  (24, 5);
insert into prod values  (25, 5);
insert into prod values  (26, 6);
insert into prod values  (27, 6);
insert into prod values  (28, 6);
insert into prod values  (29, 6);
insert into prod values  (30, 6);
insert into prod values  (31, 7);
insert into prod values  (32, 7);
insert into prod values  (33, 7);
insert into prod values  (34, 7);
insert into prod values  (35, 7);
insert into prod values  (36, 8);
insert into prod values  (37, 8);
insert into prod values  (38, 8);
insert into prod values  (39, 8);
insert into prod values  (40, 8);
insert into prod values  (41, 9);
insert into prod values  (42, 9);
insert into prod values  (43, 9);
insert into prod values  (44, 9);
insert into prod values  (45, 9);
insert into prod values  (46, 10);
insert into prod values  (47, 10);
insert into prod values  (48, 10);
insert into prod values  (49, 10);
insert into prod values  (50, 10);


insert into info_store values  (1, 1);
insert into info_store values  (2, 1);
insert into info_store values  (3, 2);
insert into info_store values  (4, 2);
insert into info_store values  (5, 3);
insert into info_store values  (6, 3);
insert into info_store values  (7, 4);
insert into info_store values  (8, 4);
insert into info_store values  (9, 5);
insert into info_store values  (10, 5);
insert into info_store values  (11, 6);
insert into info_store values  (12, 6);
insert into info_store values  (13, 7);
insert into info_store values  (14, 7);
insert into info_store values  (15, 8);
insert into info_store values  (16, 8);
insert into info_store values  (17, 9);
insert into info_store values  (18, 9);
insert into info_store values  (19, 10);
insert into info_store values  (20, 10);


insert into info_ship values  (1, 1);
insert into info_ship values  (3, 1);
insert into info_ship values  (4, 2);
insert into info_ship values  (6, 2);
insert into info_ship values  (9, 3);
insert into info_ship values  (12, 1);
insert into info_ship values  (14, 1);
insert into info_ship values  (15, 1);
insert into info_ship values  (17, 3);
insert into info_ship values  (18, 1);


insert into info_offline values  (2, 1);
insert into info_offline values  (5, 1);
insert into info_offline values  (7, 2);
insert into info_offline values  (8, 2);
insert into info_offline values  (10, 1);
insert into info_offline values  (11, 3);
insert into info_offline values  (13, 3);
insert into info_offline values  (16, 3);
insert into info_offline values  (19, 3);
insert into info_offline values  (20, 3);


insert into info_online values  (1, 1);
insert into info_online values  (3, 2);
insert into info_online values  (4, 1);
insert into info_online values  (6, 5);
insert into info_online values  (9, 1);
insert into info_online values  (12, 6);
insert into info_online values  (14, 1);
insert into info_online values  (15, 1);
insert into info_online values  (17, 11);
insert into info_online values  (18, 1);

-- 4a
select oc.first_name, oc.second_name, oc.number,ship_company.ship_name, ip.tracking_number from ship_company join info_ship i on ship_company.ship_id = i.ship_id
and ship_company.ship_name = 'RISPERDAL' join info_purchase ip on ip.info_id = i.info_id and ip.tracking_number = '134132' join info_online io on
    ip.info_id = io.info_id join online_customer oc on io.customer_id = oc.customer_id;
-- 4b
select online_customer.first_name, sum(p2.price) as summa from online_customer join info_online io on online_customer.customer_id = io.customer_id
join info_purchase ip on io.info_id = ip.info_id
join info_store i on ip.info_id = i.info_id join store s on i.store_id = s.store_id join prod p on s.store_id = p.store_id
join product p2 on p.product_id = p2.product_id group by online_customer.first_name order by summa desc limit 1;
-- 4c
select p2.name, sum(p2.price) as summa from info_purchase join info_store i on info_purchase.info_id = i.info_id join store s on i.store_id = s.store_id join
    prod p on s.store_id = p.store_id join product p2 on p.product_id = p2.product_id group by p2.name order by summa desc limit 2;
-- 4d
select p2.name, count(p2.price) as summa from info_purchase join info_store i on info_purchase.info_id = i.info_id join store s on i.store_id = s.store_id join
    prod p on s.store_id = p.store_id join product p2 on p.product_id = p2.product_id group by p2.name order by summa desc limit 2;
-- 4e
select product.name from product where product.name not in (select p2.name from store join info_store i on store.store_id = i.store_id
    join info_purchase ip on i.info_id = ip.info_id and store.store_region = 'Bolembre' join
    prod p on store.store_id = p.store_id join product p2 on p.product_id = p2.product_id group by p2.name);
-- 4f
select info_purchase.info_id, info_purchase.tracking_number, oc.first_name, oc.second_name, oc.street, p2.name, store_name from info_purchase
    join info_online io on info_purchase.info_id = io.info_id join online_customer oc on io.customer_id = oc.customer_id
    join info_store i on info_purchase.info_id = i.info_id join store s on i.store_id = s.store_id
    join prod p on s.store_id = p.store_id join product p2 on p.product_id = p2.product_id;


