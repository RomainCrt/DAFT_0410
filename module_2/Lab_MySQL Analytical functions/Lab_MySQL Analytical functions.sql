/*
1. find the running total of rental payments for each customer in the payment table, ordered by payment date.
 By selecting the customer_id, payment_date, and amount columns from the payment table,
 and then applying the SUM function to the amount column 
 within each customer_id partition, 
 ordering by payment_date.
*/
SELECT customer_id, payment_date, amount,
SUM(amount) OVER (PARTITION BY customer_id ORDER BY payment_date) AS running_total
FROM payment
ORDER BY customer_id, payment_date;


/*
2.  find the rank and dense rank of each payment amount within each payment date
 by selecting the payment_date and amount columns from the payment table, 
and then applying the RANK and DENSE_RANK functions to the amount column within each payment_date partition,
 ordering by amount in descending order.
*/
SELECT payment_date, amount,
RANK() OVER (PARTITION BY date(payment_date) ORDER BY amount DESC) AS 'rank',
DENSE_RANK() OVER (PARTITION BY date(payment_date) ORDER BY amount DESC) AS 'dense_rank'
FROM payment
ORDER BY date(payment_date);

/*
3. find the ranking of each film based on its rental rate, within its respective category. 
*/
SELECT c.name AS cat, f.title AS film_title, f.rental_rate,
RANK() OVER (PARTITION BY c.name ORDER BY f.rental_rate DESC) AS rnk,
DENSE_RANK() OVER (PARTITION BY c.name ORDER BY f.rental_rate DESC) AS dens_rank
FROM film f
INNER JOIN film_category fc ON f.film_id = fc.film_id
INNER JOIN category c ON fc.category_id = c.category_id
ORDER BY c.name, rnk;

/*
4. update the previous query from above to retrieve only the top 5 films within each category
*/
WITH ranked_films AS (
  SELECT c.name AS category, f.title AS film_title, f.rental_rate,
  ROW_NUMBER() OVER (PARTITION BY c.name ORDER BY f.rental_rate DESC) AS row_num
  FROM film f
  JOIN film_category fc ON f.film_id = fc.film_id
  JOIN category c ON fc.category_id = c.category_id
)
SELECT *
FROM ranked_films
WHERE row_num <= 5
ORDER BY category, row_num;








