INSERT INTO products (product_id, product_name, price) VALUES
(1, 'Испорченный телефон', 100.00),
(2, 'Сарафанное радио', 200.00),
(3, 'Патефон', 300.00);

INSERT INTO shop (shop_id, shop_name) VALUES
(1, 'dns'),
(2, 'mvideo'),
(3, 'sitilink');

INSERT INTO plan (product_id, shop_id, plan_cnt, plan_date) VALUES
(1, 1, 10, '2023-05-31'),
(2, 1, 15, '2023-05-31'),
(3, 1, 20, '2023-05-31'),
(1, 2, 10, '2023-05-31'),
(2, 2, 15, '2023-05-31'),
(3, 2, 20, '2023-05-31'),
(1, 3, 10, '2023-05-31'),
(2, 3, 15, '2023-05-31'),
(3, 3, 20, '2023-05-31'),
(1, 1, 10, '2023-04-30'),
(2, 1, 15, '2023-04-30'),
(3, 1, 20, '2023-04-30'),
(1, 2, 10, '2023-04-30'),
(2, 2, 15, '2023-04-30'),
(3, 2, 20, '2023-04-30'),
(1, 3, 10, '2023-04-30'),
(2, 3, 15, '2023-04-30'),
(3, 3, 20, '2023-04-30');

INSERT INTO shop_dns (shop_id, date, product_id, sales_cnt) VALUES
(1, '2023-05-08', 1, 9),
(1, '2023-05-08', 1, 5),
(1, '2023-05-28', 1, 5),
(1, '2023-05-21', 2, 5),
(1, '2023-05-12', 2, 9),
(1, '2023-05-12', 3, 9),
(1, '2023-05-31', 3, 7),
(1, '2023-04-28', 1, 5),
(1, '2023-04-21', 2, 5),
(1, '2023-04-29', 2, 9),
(1, '2023-04-12', 3, 9),
(1, '2023-04-20', 3, 9),
(1, '2023-04-30', 3, 8);

INSERT INTO shop_mvideo (shop_id, date, product_id, sales_cnt) VALUES
(2, '2023-05-28', 1, 5),
(2, '2023-05-21', 2, 5),
(2, '2023-05-29', 2, 9),
(2, '2023-05-12', 3, 9),
(2, '2023-05-31', 3, 8),
(2, '2023-04-08', 1, 5),
(2, '2023-04-08', 1, 5),
(2, '2023-05-31', 3, 9),
(2, '2023-04-08', 1, 5),
(2, '2023-04-28', 1, 5),
(2, '2023-04-21', 2, 5),
(2, '2023-04-20', 3, 9),
(2, '2023-04-30', 3, 7);

INSERT INTO shop_sitilink (shop_id, date, product_id, sales_cnt) VALUES
(3, '2023-05-08', 1, 5),
(3, '2023-05-12', 1, 6),
(3, '2023-05-21', 2, 5),
(3, '2023-05-23', 2, 9),
(3, '2023-05-12', 3, 10),
(3, '2023-04-29', 2, 9),
(3, '2023-04-28', 1, 5),
(3, '2023-04-21', 2, 5),
(3, '2023-04-29', 2, 9),
(3, '2023-04-12', 3, 9),
(3, '2023-04-12', 3, 9),
(3, '2023-04-20', 3, 9),
(3, '2023-04-08', 3, 10);


INSERT INTO promo (promo_id, product_id, shop_id, discount, promo_date) VALUES
(1, 2, 1, 13.00, '2023-05-08'),
(2, 2, 1, 10.00, '2023-05-20'),
(3, 3, 1, 14.00, '2023-05-12'),
(4, 3, 1, 5.00, '2023-05-12'),
(5, 1, 1, 12.00, '2023-05-04'),
(6, 3, 1, 13.00, '2023-05-18'),
(7, 2, 1, 15.00, '2023-05-12'),
(8, 1, 1, 8.00, '2023-05-04'),
(9, 2, 1, 8.00, '2023-05-18'),
(10, 3, 1, 15.00, '2023-05-08'),
(11, 2, 2, 5.00, '2023-05-20'),
(12, 2, 2, 7.00, '2023-05-12'),
(13, 1, 2, 9.00, '2023-05-12'),
(14, 1, 2, 13.00, '2023-05-04'),
(15, 3, 2, 7.00, '2023-05-18'),
(16, 1, 2, 10.00, '2023-05-12'),
(17, 1, 2, 15.00, '2023-05-04'),
(18, 2, 2, 12.00, '2023-05-18'),
(19, 1, 2, 13.00, '2023-05-08'),
(20, 2, 2, 7.00, '2023-05-20'),
(21, 2, 3, 9.00, '2023-05-12'),
(22, 3, 3, 11.00, '2023-05-12'),
(23, 2, 3, 9.00, '2023-05-04'),
(24, 3, 3, 8.00, '2023-05-18'),
(25, 1, 3, 13.00, '2023-05-12'),
(26, 2, 3, 5.00, '2023-05-04'),
(27, 2, 3, 12.00, '2023-05-18'),
(28, 1, 3, 9.00, '2023-05-18'),
(29, 1, 3, 12.00, '2023-05-16'),
(30, 3, 3, 10.00, '2023-05-03');