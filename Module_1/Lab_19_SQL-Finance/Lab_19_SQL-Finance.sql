use olist;
-- 1. From the order_items table, find the price of the highest priced order and lowest price order.
SELECT max(price) FROM order_items; 
-- 6735
SELECT min(price) FROM order_items; 
--  0.85
-- 2. From the order_items table, what is range of the shipping_limit_date of the orders?
SELECT  datediff(max(shipping_limit_date),min(shipping_limit_date)) from   order_items;
-- 1299

-- 3. From the customers table, find the states with the greatest number of customers
SELECT customer_state, count(customer_id) as count FROM customers GROUP BY customer_state order by count(customer_id) DESC;

-- 4. From the customers table, within the state with the greatest number of customers, find the cities with the greatest number of customers.
SELECT customer_state, customer_city, count(customer_id)  FROM customers GROUP BY customer_state,customer_city HAVING customer_state='SP' order by count(customer_id) DESC;

-- 5. From the closed_deals table, how many distinct business segments are there (not including null)?
SELECT count(distinct business_segment) FROM closed_deals WHERE business_segment IS NOT NULL;

-- 6. From the closed_deals table, sum the declared_monthly_revenue for duplicate row values in business_segment 
-- and find the 3 business segments with the highest declared monthly revenue (of those that declared revenue).
SELECT business_segment, sum(declared_monthly_revenue) FROM closed_deals GROUP BY business_segment ORDER BY sum(declared_monthly_revenue) DESC LIMIT 3;

-- 7. From the order_reviews table, find the total number of distinct review score values.
SELECT COUNT(DISTINCT review_score) FROM order_reviews;

-- 8. In the order_reviews table, create a new column with a description that corresponds to each number category for each review score from 1 - 5,
-- then find the review score and category occurring most frequently in the table.
SELECT review_score,count(review_score),
		CASE 	WHEN review_score = 1 THEN 'zero'
				WHEN review_score = 2 THEN 'null'
                WHEN review_score = 3 THEN 'avg'
                WHEN review_score = 4 THEN 'good'
                WHEN review_score = 5 THEN 'best'
                ELSE 'N.C.'
                END
				FROM order_reviews
            GROUP BY review_score
            ORDER BY count(review_score) DESC;
			
-- 9. From the order_reviews table, find the review value occurring most frequently and how many times it occurs.
SELECT  review_score,count(review_score) FROM order_reviews GROUP BY review_score ORDER BY count(review_score) DESC





