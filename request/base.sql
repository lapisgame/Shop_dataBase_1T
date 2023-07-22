-- shop_dns
SELECT DISTINCT 
	   shop_name, 
	   product_name, 
	   SUM(sales_cnt) OVER (PARTITION BY product_name) AS sales_fact, 
       plan_cnt AS sales_plan, 
       round(((SUM(sales_cnt) OVER (PARTITION BY product_name)*1.00)/plan_cnt), 2) AS "sales_fact/sales_plan", 
       price*(SUM(sales_cnt) OVER (PARTITION BY product_name)) AS incom_fact,
       price*plan_cnt AS income_plan,
       ROUND((price*(SUM(sales_cnt) OVER (PARTITION BY product_name)))/(price*plan_cnt), 2) AS "income_fact/income_plan"
FROM (
	SELECT product_name, 
		   shop_name, 
		   price, 
           plan.shop_id, 
           shop_dns.product_id, 
           sales_cnt, 
           plan_cnt  
    FROM 
    	shop_dns INNER JOIN products on products.product_id = shop_dns.product_id
                 INNER JOIN plan on plan.product_id = shop_dns.product_id
                 INNER JOIN shop on shop.shop_id = plan.shop_id
           WHERE plan.shop_id = 1 
    ORDER BY product_id) AS dns
UNION ALL
-- shop_mvideo
SELECT DISTINCT 
	   shop_name, 
	   product_name, 
	   SUM(sales_cnt) OVER (PARTITION BY product_name) AS sales_fact, 
       plan_cnt AS sales_plan, 
       round(((SUM(sales_cnt) OVER (PARTITION BY product_name)*1.00)/plan_cnt), 2) AS "sales_fact/sales_plan", 
       price*(SUM(sales_cnt) OVER (PARTITION BY product_name)) AS incom_fact,
       price*plan_cnt AS income_plan,
       ROUND((price*(SUM(sales_cnt) OVER (PARTITION BY product_name)))/(price*plan_cnt), 2) AS "income_fact/income_plan"
FROM (
	SELECT product_name, 
		   shop_name, 
		   price, 
           plan.shop_id, 
           shop_mvideo.product_id, 
           sales_cnt, 
           plan_cnt  
    FROM 
    	shop_mvideo INNER JOIN products on products.product_id = shop_mvideo.product_id
                 INNER JOIN plan on plan.product_id = shop_mvideo.product_id
                 INNER JOIN shop on shop.shop_id = plan.shop_id
           WHERE plan.shop_id = 2 
    ORDER BY product_id) AS mvideo
UNION ALL
-- shom_sitilink
SELECT DISTINCT 
	   shop_name, 
	   product_name, 
	   SUM(sales_cnt) OVER (PARTITION BY product_name) AS sales_fact, 
       plan_cnt AS sales_plan, 
       round(((SUM(sales_cnt) OVER (PARTITION BY product_name)*1.00)/plan_cnt), 2) AS "sales_fact/sales_plan", 
       price*(SUM(sales_cnt) OVER (PARTITION BY product_name)) AS incom_fact,
       price*plan_cnt AS income_plan,
       ROUND((price*(SUM(sales_cnt) OVER (PARTITION BY product_name)))/(price*plan_cnt), 2) AS "income_fact/income_plan"
FROM (
	SELECT product_name, 
		   shop_name, 
		   price, 
           plan.shop_id, 
           shop_sitilink.product_id, 
           sales_cnt, 
           plan_cnt  
    FROM 
    	shop_sitilink INNER JOIN products on products.product_id = shop_sitilink.product_id
                 INNER JOIN plan on plan.product_id = shop_sitilink.product_id
                 INNER JOIN shop on shop.shop_id = plan.shop_id
           WHERE plan.shop_id = 3 
    ORDER BY product_id) AS sitilink
