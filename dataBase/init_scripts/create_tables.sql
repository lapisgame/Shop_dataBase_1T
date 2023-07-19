CREATE TABLE IF NOT EXISTS products(
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL
);

CREATE TABLE IF NOT EXISTS shop(
    shop_id SERIAL PRIMARY KEY,
    shop_name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS plan(
    product_id SERIAL REFERENCES products(product_id),
    shop_id SERIAL REFERENCES shop(shop_id),
    plan_cnt DECIMAL,
    plan_date DATE
);

CREATE TABLE IF NOT EXISTS shop_dns(
    shop_id SERIAL REFERENCES shop(shop_id),
    product_id SERIAL REFERENCES products(product_id),
    date DATE,
    sales_cnt BIGINT
);

CREATE TABLE IF NOT EXISTS shop_mvideo(
    shop_id SERIAL REFERENCES shop(shop_id),
    product_id SERIAL REFERENCES products(product_id),
    date DATE,
    sales_cnt BIGINT
);

CREATE TABLE IF NOT EXISTS shop_sitilink(
    shop_id SERIAL REFERENCES shop(shop_id),
    product_id SERIAL REFERENCES products(product_id),
    date DATE,
    sales_cnt BIGINT
);

CREATE TABLE IF NOT EXISTS promo(
    promo_id SERIAL PRIMARY KEY,
    product_id SERIAL REFERENCES products(product_id),
    shop_id SERIAL REFERENCES shop(shop_id),
    discount DECIMAL,
    promo_date DATE
);