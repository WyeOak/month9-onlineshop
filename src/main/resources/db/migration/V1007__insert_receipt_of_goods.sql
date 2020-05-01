USE online_store;


INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-07-25 12:30:33',
(select id from products where product='S3 HDD 250Gb, 10000 rpm'),  
(select id from suppliers where supplier='Silk Road'),  
100,  
110);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-07-25 12:30:33',
(select id from products where product='S5 HDD 500Gb, 7200rpm'),  
(select id from suppliers where supplier='Silk Road'),  
80,  
95);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-07-25 12:30:33',
(select id from products where product='UN1 HDD 750Gb, 72000rpm'),  
(select id from suppliers where supplier='Silk Road'),  
48,  
84);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-07-25 12:30:33',
(select id from products where product='Monitor B25'),  
(select id from suppliers where supplier='Silk Road'),  
16,  
340);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-07-30 09:30:00',
(select id from products where product='Monitor B25'),  
(select id from suppliers where supplier='Silk Road'),  
10,  
345);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-07-30 09:30:00',
(select id from products where product='DDR3 SST 2Gb'),  
(select id from suppliers where supplier='Silk Road'),  
50,  
40);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-07-30 09:30:00',
(select id from products where product='DDR3 SST 4Gb'),  
(select id from suppliers where supplier='Silk Road'),  
40,  
55);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-08-14 15:30:00',
(select id from products where product='DDR3 BTT 4Gb'),  
(select id from suppliers where supplier='Silk Road'),  
50,  
60);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-08-14 15:30:00',
(select id from products where product='S5 HDD 500Gb, 7200rpm'),  
(select id from suppliers where supplier='Silk Road'),  
50,  
98);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-08-20 10:05:00',
(select id from products where product='Monitor DD27'),  
(select id from suppliers where supplier='Silk Road'),  
10,  
330);
#13.02.2017

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-08-25 12:15:00',
(select id from products where product='S3 HDD 250Gb, 10000 rpm'),  
(select id from suppliers where supplier='Silk Road'),  
50,  
115);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-08-25 12:15:00',
(select id from products where product='DDR3 BTT 4Gb'),  
(select id from suppliers where supplier='Silk Road'),  
15,  
86);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-08-25 12:15:00',
(select id from products where product='S4 HDD 1T, 7200rpm'),  
(select id from suppliers where supplier='Silk Road'),  
25,  
117);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-08-25 14:33:00',
(select id from products where product='S4 HDD 1T, 7200rpm'),  
(select id from suppliers where supplier='Silk Road'),  
25,  
117);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-10-04 12:50:00',
(select id from products where product='S1 HDD 1T, 7200 rpm'),  
(select id from suppliers where supplier='Silk Road'),  
30,  
121);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-10-27 09:18:00',
(select id from products where product='S4 HDD 1T, 7200rpm'),  
(select id from suppliers where supplier='Silk Road'),  
5,  
125);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-12-11 09:20:00',
(select id from products where product='S3 HDD 250Gb, 10000 rpm'),  
(select id from suppliers where supplier='Silk Road'),  
10,  
143);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-02-07 09:43:00',
(select id from products where product='DDR3 BTT 4Gb'),  
(select id from suppliers where supplier='Silk Road'),  
51,  
43);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-03-12 09:21:00',
(select id from products where product='DDR3 SST 2Gb'),  
(select id from suppliers where supplier='Silk Road'),  
70,  
18);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-06-28 08:55:00',
(select id from products where product='DDR3 SST 4Gb'),  
(select id from suppliers where supplier='Silk Road'),  
35,  
36);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-07-15 10:02:00',
(select id from products where product='Monitor A20'),  
(select id from suppliers where supplier='Silk Road'),  
20,  
135);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-07-16 09:57:00',
(select id from products where product='S1 HDD 1T, 7200 rpm'),  
(select id from suppliers where supplier='Silk Road'),  
45,  116);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-09-15 09:15:00',
(select id from products where product='Monitor A20'),  
(select id from suppliers where supplier='Silk Road'),  
5, 142);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-09-20 10:03:00',
(select id from products where product='S2 HDD 500Gb, 7200 rpm'),  
(select id from suppliers where supplier='Silk Road'),  
13,  
74);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-10-02 11:10:00',
(select id from products where product='Monitor B19'),  
(select id from suppliers where supplier='Silk Road'),  
24,  
121);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-10-23 10:02:00',
(select id from products where product='DDR3 BTT 8Gb'),  
(select id from suppliers where supplier='Silk Road'),  
55,  
79);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-10-23 10:03:00',
(select id from products where product='Monitor B25'),  
(select id from suppliers where supplier='Silk Road'),  
6,  
295);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-10-23 10:04:00',
(select id from products where product='S4 HDD 1T, 7200rpm'),  
(select id from suppliers where supplier='Silk Road'),  
100,  
108);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-11-11 09:44:00',
(select id from products where product='DDR3 ZPP 4Gb'),  
(select id from suppliers where supplier='Silk Road'),  
75,  
31);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-12-17 11:00:00',
(select id from products where product='DDR3 BTT 8Gb'),  
(select id from suppliers where supplier='Silk Road'),  
20,  
77);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-12-20 08:50:00',
(select id from products where product='DDR3 BTT 4Gb'),  
(select id from suppliers where supplier='Silk Road'),  
12,  
40);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2017-01-12 11:01:00',
(select id from products where product='Monitor DD27'),  
(select id from suppliers where supplier='Silk Road'),  
10,  
340);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2017-01-12 11:02:00',
(select id from products where product='DDR3 BTT 8Gb'),  
(select id from suppliers where supplier='Silk Road'),  
25,  
76);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2017-01-12 11:03:00 ',
(select id from products where product='S1 HDD 1T, 7200 rpm'),  
(select id from suppliers where supplier='Silk Road'),  
37,  
115);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2017-02-25 13:50:00',
(select id from products where product='S3 HDD 250Gb, 10000 rpm'),  
(select id from suppliers where supplier='Silk Road'),  
50,  
128);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2017-02-26 09:30:00',
(select id from products where product='Monitor B25'),  
(select id from suppliers where supplier='Silk Road'),  
19,  
302);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2017-02-27 09:36:00',
(select id from products where product='S4 HDD 1T, 7200rpm'),  
(select id from suppliers where supplier='Silk Road'),  
11,  
119);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2017-03-02 09:44:00',
(select id from products where product='S5 HDD 500Gb, 7200rpm'),  
(select id from suppliers where supplier='Silk Road'),  
40,  
80);


INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-07-26 08:30:00',
(select id from products where product='MB-1'),  
(select id from suppliers where supplier='Cargo Transfer'),  
25,  
76);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-07-26 08:30:00',
(select id from products where product='MB-2'),  
(select id from suppliers where supplier='Cargo Transfer'),  
15,  
79);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-07-26 08:30:00',
(select id from products where product='MB-3'),  
(select id from suppliers where supplier='Cargo Transfer'),  
20,  
85);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-07-26 08:30:00',
(select id from products where product='MB-4'),  
(select id from suppliers where supplier='Cargo Transfer'),  
23,  
88);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-07-26 08:30:00',
(select id from products where product='MB-5'),  
(select id from suppliers where supplier='Cargo Transfer'),  
10,  
94);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-07-28 08:45:00',
(select id from products where product='MB-2'),  
(select id from suppliers where supplier='Cargo Transfer'),  
10,  
79);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-07-28 08:45:00',
(select id from products where product='MB-4'),  
(select id from suppliers where supplier='Cargo Transfer'),  
7,  
89);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-08-07 08:45:00',
(select id from products where product='MB-1'),  
(select id from suppliers where supplier='Cargo Transfer'),  
30,  
76);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-08-07 08:45:00',
(select id from products where product='S3 HDD 250Gb, 10000 rpm'),  
(select id from suppliers where supplier='Cargo Transfer'),  
24,  
105);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-08-13 11:12:00',
(select id from products where product='MB-1'),  
(select id from suppliers where supplier='Cargo Transfer'),  
10,  
75);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-08-13 11:12:00',
(select id from products where product='MB-4'),  
(select id from suppliers where supplier='Cargo Transfer'),  
25,  
77);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-11-20 12:30:00',
(select id from products where product='MB-7'),  
(select id from suppliers where supplier='Cargo Transfer'),  
17,  
181);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-11-20 12:31:00',
(select id from products where product='MB-6'),  
(select id from suppliers where supplier='Cargo Transfer'),  
6,  
168);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-04-03 11:25:00',
(select id from products where product='MB-2'),  
(select id from suppliers where supplier='Cargo Transfer'),  
50,  
57);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-04-24 10:35:00',
(select id from products where product='MB-3'),  
(select id from suppliers where supplier='Cargo Transfer'),  
60,  
63);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-07-03 10:45:00',
(select id from products where product='MB-6'),  
(select id from suppliers where supplier='Cargo Transfer'),  
11,  
169);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-07-07 13:07:00',
(select id from products where product='MB-2'),  
(select id from suppliers where supplier='Cargo Transfer'),  
20,  
70);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-07-07 13:08:00',
(select id from products where product='MB-5'),  
(select id from suppliers where supplier='Cargo Transfer'),  
25,  
144);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-07-07 13:09:00',
(select id from products where product='MB-4'),  
(select id from suppliers where supplier='Cargo Transfer'),  
40,  
81);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-07-16 14:02:00',
(select id from products where product='MB-8'),  
(select id from suppliers where supplier='Cargo Transfer'),  
10,  
236);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-08-12 11:37:00',
(select id from products where product='MB-7'),  
(select id from suppliers where supplier='Cargo Transfer'),  
12,  
180);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-08-20 10:04:00',
(select id from products where product='MB-2'),  
(select id from suppliers where supplier='Cargo Transfer'),  
30,  
68);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-09-11 11:14:00',
(select id from products where product='MB-3'),  
(select id from suppliers where supplier='Cargo Transfer'),  
100,  
62);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-10-06 09:57:00',
(select id from products where product='S2 HDD 500Gb, 7200 rpm'),  
(select id from suppliers where supplier='Cargo Transfer'),  
10,  
74);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-10-06 09:59:00',
(select id from products where product='MB-6'),  
(select id from suppliers where supplier='Cargo Transfer'),  
19,  
159);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-10-7 13:20:00',
(select id from products where product='MB-2'),  
(select id from suppliers where supplier='Cargo Transfer'),  
11,  
77);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-10-16 09:48:00',
(select id from products where product='MB-4'),  
(select id from suppliers where supplier='Cargo Transfer'),  
3,  
91);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-10-19 10:06:00',
(select id from products where product='MB-7'),  
(select id from suppliers where supplier='Cargo Transfer'),  
8,  
188);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-10-27 10:45:00',
(select id from products where product='MB-3'),  
(select id from suppliers where supplier='Cargo Transfer'),  
20,  
72);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2017-02-25 11:12:00',
(select id from products where product='MB-1'),  
(select id from suppliers where supplier='Cargo Transfer'),  
25,  
63);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2017-03-03 14:25:00',
(select id from products where product='MB-8'),  
(select id from suppliers where supplier='Cargo Transfer'),  
15,  
234);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2017-03-06 09:52:00',
(select id from products where product='S2 HDD 500Gb, 7200 rpm'),  
(select id from suppliers where supplier='Cargo Transfer'),  
25,  
76);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-07-25 09:05:00',
(select id from products where product='S1 HDD 1T, 7200 rpm'),  
(select id from suppliers where supplier='4U'),  
33,  
115);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-07-25 09:05:00',
(select id from products where product='Z1 HDD 750Gb, 72000rpm'),  
(select id from suppliers where supplier='4U'),  
40,  
90);
#Вставка поступлений товара actions 73
INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-07-26 16:45:00',
(select id from products where product='UN1 HDD 750Gb, 72000rpm'),  
(select id from suppliers where supplier='4U'),  
100,  
94);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-07-28 09:10:00',
(select id from products where product='S5 HDD 500Gb, 7200rpm'),  
(select id from suppliers where supplier='4U'),  
80,  
86);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-08-03 14:15:00',
(select id from products where product='DDR3 SST 4Gb'),  
(select id from suppliers where supplier='4U'),  
100,  
34);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-08-03 14:15:00',
(select id from products where product='Monitor DD27'),  
(select id from suppliers where supplier='4U'),  
10,  
345);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-08-13 10:00:00',
(select id from products where product='Monitor DD27'),  
(select id from suppliers where supplier='4U'),  
5,  
345);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-08-13 10:00:00',
(select id from products where product='MB-8'),  
(select id from suppliers where supplier='4U'),  
30,  
235);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-08-15 17:15:00',
(select id from products where product='DDR3 BTT 4Gb'),  
(select id from suppliers where supplier='4U'),  
100,  
39);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-08-16 09:45:00',
(select id from products where product='MB-7'),  
(select id from suppliers where supplier='4U'),  
50,  
180);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-08-16 09:45:00',
(select id from products where product='Monitor DD27'),  
(select id from suppliers where supplier='4U'),  
12,  
350);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-12-19 09:23:00',
(select id from products where product='Z1 HDD 750Gb, 72000rpm'),  
(select id from suppliers where supplier='4U'),  
50,  
79);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-01-07 10:10:00',
(select id from products where product='Z2 HDD 750Gb, 72000rpm'),  
(select id from suppliers where supplier='4U'),  
30,  
94);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-01-09 10:23:00',
(select id from products where product='DDR3 UNK 2Gb'),  
(select id from suppliers where supplier='4U'),  
25,  
18);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-01-23 15:45:00',
(select id from products where product='DDR3 BTT 4Gb'),  
(select id from suppliers where supplier='4U'),  
60,  
39);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-01-25 13:17:00',
(select id from products where product='Z1 HDD 750Gb, 72000rpm'),  
(select id from suppliers where supplier='4U'),  
5,  
101);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-02-01 09:45:00',
(select id from products where product='Monitor DD27'),  
(select id from suppliers where supplier='4U'),  
5,  
351);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-02-25 09:15:00',
(select id from products where product='MB-8'),  
(select id from suppliers where supplier='4U'),  
20,  
225);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-02-25 10:03:00',
(select id from products where product='UN1 HDD 750Gb, 72000rpm'),  
(select id from suppliers where supplier='4U'),  
16,  
93);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-03-09 17:43:00',
(select id from products where product='DDR3 BTT 8Gb'),  
(select id from suppliers where supplier='4U'),  
24,  
75);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-03-18 13:06:00',
(select id from products where product='MB-7'),  
(select id from suppliers where supplier='4U'),  
10,  
183);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-03-24 11:18:00',
(select id from products where product='Z1 HDD 750Gb, 72000rpm'),  
(select id from suppliers where supplier='4U'),  
40,  
92);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-03-24 11:19:00',
(select id from products where product='Z2 HDD 750Gb, 72000rpm'),  
(select id from suppliers where supplier='4U'),  
35,  
99);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-03-24 11:20:00',
(select id from products where product='DDR3 ZPP 4Gb'),  
(select id from suppliers where supplier='4U'),  
20,  
37);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-04-12 15:55:00',
(select id from products where product='UN1 HDD 750Gb, 72000rpm'),  
(select id from suppliers where supplier='4U'),  
50,  
95);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-05-18 13:15:00',
(select id from products where product='MB-8'),  
(select id from suppliers where supplier='4U'),  
1,  
255);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-05-18 13:15:00',
(select id from products where product='MB-7'),  
(select id from suppliers where supplier='4U'),  
3,  
196);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-06-01 10:05:00',
(select id from products where product='DDR3 ZPP 4Gb'),  
(select id from suppliers where supplier='4U'),  
60,  
34);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-07-01 12:21:00',
(select id from products where product='Monitor DD27'),  
(select id from suppliers where supplier='4U'),  
7,  
348);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-12-13 09:52:00',
(select id from products where product='DDR3 ZPP 4Gb'),  
(select id from suppliers where supplier='4U'),  
10,  
42);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2017-01-20 15:35:00',
(select id from products where product='S1 HDD 1T, 7200 rpm'),  
(select id from suppliers where supplier='4U'),  
20,  
115);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2017-02-25 16:05:00',
(select id from products where product='DDR3 SST 4Gb'),  
(select id from suppliers where supplier='4U'),  
80,  
36);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2017-03-12 12:45:00',
(select id from products where product='DDR3 BTT 4Gb'),  
(select id from suppliers where supplier='4U'),  
50,  
39);


INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-07-29 13:00:00',
(select id from products where product='S5 HDD 500Gb, 7200rpm'),  
(select id from suppliers where supplier='IDT'),  
120,  
78);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-07-29 13:00:00',
(select id from products where product='S3 HDD 250Gb, 10000 rpm'),  
(select id from suppliers where supplier='IDT'),  
80,  
130);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-08-10 09:50:00',
(select id from products where product='S5 HDD 500Gb, 7200rpm'),  
(select id from suppliers where supplier='IDT'),  
60,  
78);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2015-08-12 10:10:00',
(select id from products where product='S3 HDD 250Gb, 10000 rpm'),  
(select id from suppliers where supplier='IDT'),  
85,  
129);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-02-12 09:15:00',
(select id from products where product='S3 HDD 250Gb, 10000 rpm'),  
(select id from suppliers where supplier='IDT'),  
100,  
127);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-02-25 17:02:00',
(select id from products where product='S2 HDD 500Gb, 7200 rpm'),  
(select id from suppliers where supplier='IDT'),  
50,  
73);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-02-25 17:03:00',
(select id from products where product='S1 HDD 1T, 7200 rpm'),  
(select id from suppliers where supplier='IDT'),  
63,  
99);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-02-25 17:03:00',
(select id from products where product='S5 HDD 500Gb, 7200rpm'),  
(select id from suppliers where supplier='IDT'),  
20,  
82);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-06-14 16:03:00',
(select id from products where product='S3 HDD 250Gb, 10000 rpm'),  
(select id from suppliers where supplier='IDT'),  
25,  
127);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-07-19 10:25:00',
(select id from products where product='S3 HDD 250Gb, 10000 rpm'),  
(select id from suppliers where supplier='IDT'),  
20,  
127);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-09-01 09:25:00',
(select id from products where product='S1 HDD 1T, 7200 rpm'),  
(select id from suppliers where supplier='IDT'),  
30,  
116);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-11-01 10:10:00',
(select id from products where product='S2 HDD 500Gb, 7200 rpm'),  
(select id from suppliers where supplier='IDT'),  
30,  
73);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2016-12-25 13:09:00',
(select id from products where product='S5 HDD 500Gb, 7200rpm'),  
(select id from suppliers where supplier='IDT'),  
20,  
83);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2017-01-11 09:15:00',
(select id from products where product='S4 HDD 1T, 7200rpm'),  
(select id from suppliers where supplier='IDT'),  
15,  
120);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2017-01-14 10:22:00',
(select id from products where product='S3 HDD 250Gb, 10000 rpm'),  
(select id from suppliers where supplier='IDT'),  
90,  
127);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2017-01-29 10:30:00',
(select id from products where product='S2 HDD 500Gb, 7200 rpm'),  
(select id from suppliers where supplier='IDT'),  
40,  
77);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2017-02-10 15:56:00',
(select id from products where product='S4 HDD 1T, 7200rpm'),  
(select id from suppliers where supplier='IDT'),  
20,  
118);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2017-02-10 15:57:00',
(select id from products where product='S1 HDD 1T, 7200 rpm'),  
(select id from suppliers where supplier='IDT'),  
25,  
116);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2017-02-22 11:37:00',
(select id from products where product='S5 HDD 500Gb, 7200rpm'),  
(select id from suppliers where supplier='IDT'),  
65,  
80);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2017-02-28 08:47:00',
(select id from products where product='S3 HDD 250Gb, 10000 rpm'),  
(select id from suppliers where supplier='IDT'),  
10,  
145);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2017-03-05 10:45:00',
(select id from products where product='S4 HDD 1T, 7200rpm'),  
(select id from suppliers where supplier='IDT'),  
100,  
109);

INSERT INTO actions (action_date, product_id, supplier_id, qty, price)
VALUES ('2017-03-10 13:23:00',
(select id from products where product='S5 HDD 500Gb, 7200rpm'),  
(select id from suppliers where supplier='IDT'),  
45,  
84);

