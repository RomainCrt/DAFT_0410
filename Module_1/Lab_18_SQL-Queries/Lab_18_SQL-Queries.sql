SELECT distinctrow prime_genre From applestore Order by prime_genre;
SELECT prime_genre,SUM(rating_count_tot) FROM applestore GROUP BY prime_genre ORDER BY SUM(rating_count_tot) DESC LIMIT 1;
SELECT prime_genre,count(id) FROM applestore GROUP BY prime_genre ORDER BY count(id) DESC LIMIT 1;
SELECT prime_genre,count(id) FROM applestore GROUP BY prime_genre ORDER BY count(id) ASC LIMIT 1;
SELECT track_name, rating_count_tot FROM applestore order by rating_count_tot DESC LIMIT 10;
SELECT track_name, user_rating, rating_count_tot FROM applestore order by user_rating DESC, rating_count_tot DESC LIMIT 10;
-- 7. Take a look at the data you retrieved in question 5. Give some insights.
-- no games before 5th  place

-- 8. Take a look at the data you retrieved in question 6. Give some insights

-- 9. Now compare the data from questions 5 and 6. What do you see?

-- 10. How could you take the top 3 regarding both user ratings and number of votes?alter

--  Do people care about the price of an app? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
SELECT price, avg(user_rating), avg(rating_count_tot) FROM applestore group by price order by price DESC, avg(user_rating) DESC
-- People don't care