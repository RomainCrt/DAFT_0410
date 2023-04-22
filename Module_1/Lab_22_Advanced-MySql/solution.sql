-- Lab_22_Advanced-MySql
use publications;
-- Challenge 1 - Most Profiting Authors
		
 SELECT t_sales_royalty.au_id 
		, SUM(t_sales_royalty.royalty) + SUM(t_sales_advance.s_advance) as Total
FROM        
        (SELECT title_id
			, au_id
			, SUM(sales_royalty) as royalty
		FROM (SELECT titleauthor.title_id
					, titleauthor.au_id
					, (titles.advance * titleauthor.royaltyper / 100 ) as advance 
					, (titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) as sales_royalty 
				FROM titleauthor 
					INNER JOIN  titles ON titleauthor.title_id = titles.title_id
					INNER JOIN sales   ON titleauthor.title_id = sales.title_id
				) as toto
		GROUP BY title_id, au_id
        ) as t_sales_royalty
        , (SELECT title_id
			, au_id
			, SUM(advance) as s_advance
		FROM (SELECT titleauthor.title_id
					, titleauthor.au_id
					, (titles.advance * titleauthor.royaltyper / 100 ) as advance 
				FROM titleauthor 
					INNER JOIN  titles ON titleauthor.title_id = titles.title_id
				) as tata
		GROUP BY title_id, au_id
        ) as t_sales_advance
WHERE  t_sales_advance.au_id =  t_sales_royalty.au_id
GROUP BY t_sales_royalty.au_id 
ORDER BY Total DESC
LIMIT 3;

-- Challenge 2 - Alternative Solution
DROP table if exists tmp_advance ;
create temporary table if not exists tmp_advance  (SELECT titleauthor.title_id
												, titleauthor.au_id
												, (titles.advance * titleauthor.royaltyper / 100 ) as advance 
											FROM titleauthor 
												INNER JOIN  titles ON titleauthor.title_id = titles.title_id
											);

DROP table  if exists tmp_advance_sum ;
create temporary table if not exists tmp_advance_sum  (SELECT title_id
															, au_id
															, SUM(advance) as s_advance
														FROM tmp_advance
                                                        GROUP BY title_id, au_id);
DROP table  if exists tmp_royalty ;
create temporary table if not exists tmp_royalty ( SELECT titleauthor.title_id
														, titleauthor.au_id
														, (titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) as sales_royalty 
													FROM titleauthor 
														INNER JOIN  titles ON titleauthor.title_id = titles.title_id
														INNER JOIN sales   ON titleauthor.title_id = sales.title_id
													);
DROP table  if exists tmp_royalty_sum ;
create temporary table if not exists tmp_royalty_sum(SELECT title_id
														, au_id
														, SUM(sales_royalty) as royalty
													FROM tmp_royalty
                                                    GROUP BY title_id, au_id
													);
SELECT tmp_advance_sum.au_id
	, SUM(tmp_royalty_sum.royalty) + SUM(tmp_advance_sum.s_advance) as Total
FROM tmp_royalty_sum, tmp_advance_sum
WHERE tmp_royalty_sum.au_id = tmp_advance_sum.au_id
GROUP BY tmp_advance_sum.au_id
ORDER BY Total DESC LIMIT 3;
					