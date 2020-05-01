USE online_store;



 
INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='HDD'),
(SELECT id FROM brands where brand='Samsung'),
'S1 HDD 1T, 7200 rpm', 125, '', 's1.png');

INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='HDD'),
(SELECT id FROM brands where brand='Samsung'),
'S2 HDD 500Gb, 7200 rpm', 85, '', 's2.png');

INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='HDD'),
(SELECT id FROM brands where brand='Samsung'),
'S3 HDD 250Gb, 10000 rpm', 150, '', 's3.png');

INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='HDD'),
(SELECT id FROM brands where brand='Samsung'),
'S4 HDD 1T, 7200rpm', 127, '', 's4.png');

INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='HDD'),
(SELECT id FROM brands where brand='Samsung'),
'S5 HDD 500Gb, 7200rpm', 92, '', 's5.png');

INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='HDD'),
(SELECT id FROM brands where brand='Acer'),
'Z1 HDD 750Gb, 72000rpm', 100, '', 'z1.png');

INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='HDD'),
(SELECT id FROM brands where brand='Acer'),
'Z2 HDD 750Gb, 72000rpm', 110, '', 'z2.png');

INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='HDD'),
NULL, 'UN1 HDD 750Gb, 72000rpm', 105, '', 'z1.png');

INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='Monitors'),
(SELECT id FROM brands where brand='Samsung'),
'Monitor B19', 135, '', 'z1.png');
 
INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='Monitors'),
(SELECT id FROM brands where brand='Samsung'),
'Monitor B22', 170, '', 'z1.png');
 
INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='Monitors'),
(SELECT id FROM brands where brand='Samsung'),
'Monitor B25', 320, '', 'z1.png');
 
INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='Monitors'),
(SELECT id FROM brands where brand='Acer'),
'Monitor A20', 150, '', 'z1.png');
 
INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='Monitors'),
(SELECT id FROM brands where brand='Acer'),
'Monitor A21', 170, '', 'z1.png');
 
INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='Monitors'),
(SELECT id FROM brands where brand='ASUS'),
'Monitor DD27', 370, '', 'z1.png');
 
INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='DDR'),
(SELECT id FROM brands where brand='Samsung'),
'DDR3 SST 2Gb', 25, '', 'z1.png');
 
INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='DDR'),
(SELECT id FROM brands where brand='Samsung'),
'DDR3 SST 4Gb', 42, '', 'z1.png');
 
INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='DDR'),
(SELECT id FROM brands where brand='ASUS'),
'DDR3 BTT 4Gb', 48, '', 'z1.png');
 
INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='DDR'),
(SELECT id FROM brands where brand='ASUS'),
'DDR3 BTT 8Gb', 90, '', 'z1.png');
 
INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='DDR'),
(SELECT id FROM brands where brand='ASUS'),
'DDR3 ZPP 4Gb', 45, '', 'z1.png');

INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='DDR'),
NULL,'DDR3 UNK 2Gb', 24, '', 'z1.png');

INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='DDR'),
NULL,'DDR2 UNK 1Gb', 17, '', 'z1.png');

INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='Motherboards'),
(SELECT id FROM brands where brand='Samsung'),
'MB-1', 75, '', 'z1.png');

INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='Motherboards'),
(SELECT id FROM brands where brand='Samsung'),
'MB-2', 76, '', 'z1.png');

INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='Motherboards'),
(SELECT id FROM brands where brand='ASUS'),
'MB-3', 80, '', 'z1.png');

INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='Motherboards'),
(SELECT id FROM brands where brand='ASUS'),
'MB-4', 95, '', 'z1.png');

INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='Motherboards'),
(SELECT id FROM brands where brand='ASUS'),
'MB-5', 160, '', 'z1.png');

INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='Motherboards'),
(SELECT id FROM brands where brand='Acer'),
'MB-6', 180, '', 'z1.png');

INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='Motherboards'),
(SELECT id FROM brands where brand='Acer'),
'MB-7', 200, '', 'z1.png');

INSERT INTO products (category_id, brand_id, product, price, description, image)
VALUES ((SELECT id FROM categories where category='Motherboards'),
NULL, 'MB-8', 250, '', 'z1.png');
