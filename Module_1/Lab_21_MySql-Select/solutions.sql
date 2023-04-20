-- Challenge 1 - Who Have Published What At Where?
SELECT
	authors.au_id
    ,concat(au_fname,' ',au_lname) as FullName
    ,titles.title
    , publishers.pub_name
FROM authors INNER JOIN titleauthor
	ON authors.au_id = titleauthor.au_id
	INNER JOIN titles
		ON titleauthor.title_id = titles.title_id
			INNER JOIN publishers
				ON publishers.pub_id = titles.pub_id
ORDER BY FullName;

-- Challenge 2 - Who Have Published How Many At Where?
SELECT
	authors.au_id
    , concat(au_fname,' ',au_lname) as FullName
	, count(titleauthor.title_id) as NbTitles
    , publishers.pub_name
FROM authors INNER JOIN titleauthor
	ON authors.au_id = titleauthor.au_id
	INNER JOIN titles
		ON titleauthor.title_id = titles.title_id
			INNER JOIN publishers
				ON publishers.pub_id = titles.pub_id
GROUP BY authors.au_id, publishers.pub_name
ORDER BY FullName;

-- Challenge 3 - Best Selling Authors
SELECT 	authors.au_id
    , concat(au_fname,' ',au_lname) as FullName
    , SUM(sales.qty) aS TOTAL
FROM authors INNER JOIN titleauthor
	ON authors.au_id = titleauthor.au_id
	INNER JOIN titles
		ON titleauthor.title_id = titles.title_id
			INNER JOIN sales
				ON titles.title_id = sales.title_id
GROUP BY authors.au_id
ORDER BY TOTAL DESC LIMIT 3;

-- Challenge 4 - Best Selling Authors Ranking
SELECT 	authors.au_id
    , concat(au_fname,' ',au_lname) as FullName
    , SUM(IFNULL(sales.qty,0)) aS TOTAL
FROM authors LEFT JOIN titleauthor
	ON authors.au_id = titleauthor.au_id
	LEFT JOIN titles
		ON titleauthor.title_id = titles.title_id
			LEFT JOIN sales
				ON titles.title_id = sales.title_id
GROUP BY authors.au_id
ORDER BY TOTAL DESC;