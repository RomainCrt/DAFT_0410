-- 2003 -2018
-- Projetc Week 2 - 

-- External health expenditure (% of current health expenditure)
DROP TABLE IF EXISTS tmp_external_health_expenditure;
CREATE TEMPORARY TABLE tmp_external_health_expenditure (
SELECT country, '2003' as year, IFNULL(YR2003,0) as value FROM external_health_expenditure
UNION ALL
SELECT country, '2004' as year, IFNULL(YR2004,0) as value FROM external_health_expenditure
UNION ALL
SELECT country, '2005' as year, IFNULL(YR2005,0) as value FROM external_health_expenditure
UNION ALL
SELECT country, '2006' as year, IFNULL(YR2006,0) as value FROM external_health_expenditure
UNION ALL
SELECT country, '2007' as year, IFNULL(YR2007,0) as value FROM external_health_expenditure
UNION ALL
SELECT country, '2008' as year, IFNULL(YR2008,0) as value FROM external_health_expenditure
UNION ALL
SELECT country, '2009' as year, IFNULL(YR2009,0) as value FROM external_health_expenditure
UNION ALL
SELECT country, '2010' as year, IFNULL(YR2010,0) as value FROM external_health_expenditure
UNION ALL
SELECT country, '2011' as year, IFNULL(YR2011,0) as value FROM external_health_expenditure
UNION ALL
SELECT country, '2012' as year, IFNULL(YR2012,0) as value FROM external_health_expenditure
UNION ALL
SELECT country, '2013' as year, IFNULL(YR2013,0) as value FROM external_health_expenditure
UNION ALL
SELECT country, '2014' as year, IFNULL(YR2014,0) as value FROM external_health_expenditure
UNION ALL
SELECT country, '2015' as year, IFNULL(YR2015,0) as value FROM external_health_expenditure
UNION ALL
SELECT country, '2016' as year, IFNULL(YR2016,0) as value FROM external_health_expenditure
UNION ALL
SELECT country, '2017' as year, IFNULL(YR2017,0) as value FROM external_health_expenditure
UNION ALL
SELECT country, '2018' as year, IFNULL(YR2018,0) as value FROM external_health_expenditure);

-- Domestic general government health expenditure (% of current health expenditure)
DROP TABLE IF EXISTS tmp_government_health_expenditure;
CREATE TEMPORARY TABLE tmp_government_health_expenditure (
SELECT country, '2003' as year, IFNULL(YR2003,0) as value FROM government_health_expenditure
UNION ALL
SELECT country, '2004' as year, IFNULL(YR2004,0) as value FROM government_health_expenditure
UNION ALL
SELECT country, '2005' as year, IFNULL(YR2005,0) as value FROM government_health_expenditure
UNION ALL
SELECT country, '2006' as year, IFNULL(YR2006,0) as value FROM government_health_expenditure
UNION ALL
SELECT country, '2007' as year, IFNULL(YR2007,0) as value FROM government_health_expenditure
UNION ALL
SELECT country, '2008' as year, IFNULL(YR2008,0) as value FROM government_health_expenditure
UNION ALL
SELECT country, '2009' as year, IFNULL(YR2009,0) as value FROM government_health_expenditure
UNION ALL
SELECT country, '2010' as year, IFNULL(YR2010,0) as value FROM government_health_expenditure
UNION ALL
SELECT country, '2011' as year, IFNULL(YR2011,0) as value FROM government_health_expenditure
UNION ALL
SELECT country, '2012' as year, IFNULL(YR2012,0) as value FROM government_health_expenditure
UNION ALL
SELECT country, '2013' as year, IFNULL(YR2013,0) as value FROM government_health_expenditure
UNION ALL
SELECT country, '2014' as year, IFNULL(YR2014,0) as value FROM government_health_expenditure
UNION ALL
SELECT country, '2015' as year, IFNULL(YR2015,0) as value FROM government_health_expenditure
UNION ALL
SELECT country, '2016' as year, IFNULL(YR2016,0) as value FROM government_health_expenditure
UNION ALL
SELECT country, '2017' as year, IFNULL(YR2017,0) as value FROM government_health_expenditure
UNION ALL
SELECT country, '2018' as year, IFNULL(YR2018,0) as value FROM government_health_expenditure);

-- health_expenditure_of_gdp
DROP TABLE IF EXISTS tmp_health_expenditure_of_gdp;
CREATE TEMPORARY TABLE tmp_health_expenditure_of_gdp (
SELECT country, '2003' as year, IFNULL(YR2003,0) as value FROM health_expenditure_of_gdp
UNION ALL
SELECT country, '2004' as year, IFNULL(YR2004,0) as value FROM health_expenditure_of_gdp
UNION ALL
SELECT country, '2005' as year, IFNULL(YR2005,0) as value FROM health_expenditure_of_gdp
UNION ALL
SELECT country, '2006' as year, IFNULL(YR2006,0) as value FROM health_expenditure_of_gdp
UNION ALL
SELECT country, '2007' as year, IFNULL(YR2007,0) as value FROM health_expenditure_of_gdp
UNION ALL
SELECT country, '2008' as year, IFNULL(YR2008,0) as value FROM health_expenditure_of_gdp
UNION ALL
SELECT country, '2009' as year, IFNULL(YR2009,0) as value FROM health_expenditure_of_gdp
UNION ALL
SELECT country, '2010' as year, IFNULL(YR2010,0) as value FROM health_expenditure_of_gdp
UNION ALL
SELECT country, '2011' as year, IFNULL(YR2011,0) as value FROM health_expenditure_of_gdp
UNION ALL
SELECT country, '2012' as year, IFNULL(YR2012,0) as value FROM health_expenditure_of_gdp
UNION ALL
SELECT country, '2013' as year, IFNULL(YR2013,0) as value FROM health_expenditure_of_gdp
UNION ALL
SELECT country, '2014' as year, IFNULL(YR2014,0) as value FROM health_expenditure_of_gdp
UNION ALL
SELECT country, '2015' as year, IFNULL(YR2015,0) as value FROM health_expenditure_of_gdp
UNION ALL
SELECT country, '2016' as year, IFNULL(YR2016,0) as value FROM health_expenditure_of_gdp
UNION ALL
SELECT country, '2017' as year, IFNULL(YR2017,0) as value FROM health_expenditure_of_gdp
UNION ALL
SELECT country, '2018' as year, IFNULL(YR2018,0) as value FROM health_expenditure_of_gdp);

-- pocket_health_expenditure  Out-of-pocket expenditure (% of current health expenditure)
DROP TABLE IF EXISTS tmp_pocket_health_expenditure;
CREATE TEMPORARY TABLE tmp_pocket_health_expenditure (
SELECT country, '2003' as year, IFNULL(YR2003,0) as value FROM pocket_health_expenditure
UNION ALL
SELECT country, '2004' as year, IFNULL(YR2004,0) as value FROM pocket_health_expenditure
UNION ALL
SELECT country, '2005' as year, IFNULL(YR2005,0) as value FROM pocket_health_expenditure
UNION ALL
SELECT country, '2006' as year, IFNULL(YR2006,0) as value FROM pocket_health_expenditure
UNION ALL
SELECT country, '2007' as year, IFNULL(YR2007,0) as value FROM pocket_health_expenditure
UNION ALL
SELECT country, '2008' as year, IFNULL(YR2008,0) as value FROM pocket_health_expenditure
UNION ALL
SELECT country, '2009' as year, IFNULL(YR2009,0) as value FROM pocket_health_expenditure
UNION ALL
SELECT country, '2010' as year, IFNULL(YR2010,0) as value FROM pocket_health_expenditure
UNION ALL
SELECT country, '2011' as year, IFNULL(YR2011,0) as value FROM pocket_health_expenditure
UNION ALL
SELECT country, '2012' as year, IFNULL(YR2012,0) as value FROM pocket_health_expenditure
UNION ALL
SELECT country, '2013' as year, IFNULL(YR2013,0) as value FROM pocket_health_expenditure
UNION ALL
SELECT country, '2014' as year, IFNULL(YR2014,0) as value FROM pocket_health_expenditure
UNION ALL
SELECT country, '2015' as year, IFNULL(YR2015,0) as value FROM pocket_health_expenditure
UNION ALL
SELECT country, '2016' as year, IFNULL(YR2016,0) as value FROM pocket_health_expenditure
UNION ALL
SELECT country, '2017' as year, IFNULL(YR2017,0) as value FROM pocket_health_expenditure
UNION ALL
SELECT country, '2018' as year, IFNULL(YR2018,0) as value FROM pocket_health_expenditure);

-- private_health_expenditure  Domestic private health expenditure (% of current health expenditure)
DROP TABLE IF EXISTS tmp_private_health_expenditure;
CREATE TEMPORARY TABLE tmp_private_health_expenditure (
SELECT country, '2003' as year, IFNULL(YR2003,0) as value FROM private_health_expenditure
UNION ALL
SELECT country, '2004' as year, IFNULL(YR2004,0) as value FROM private_health_expenditure
UNION ALL
SELECT country, '2005' as year, IFNULL(YR2005,0) as value FROM private_health_expenditure
UNION ALL
SELECT country, '2006' as year, IFNULL(YR2006,0) as value FROM private_health_expenditure
UNION ALL
SELECT country, '2007' as year, IFNULL(YR2007,0) as value FROM private_health_expenditure
UNION ALL
SELECT country, '2008' as year, IFNULL(YR2008,0) as value FROM private_health_expenditure
UNION ALL
SELECT country, '2009' as year, IFNULL(YR2009,0) as value FROM private_health_expenditure
UNION ALL
SELECT country, '2010' as year, IFNULL(YR2010,0) as value FROM private_health_expenditure
UNION ALL
SELECT country, '2011' as year, IFNULL(YR2011,0) as value FROM private_health_expenditure
UNION ALL
SELECT country, '2012' as year, IFNULL(YR2012,0) as value FROM private_health_expenditure
UNION ALL
SELECT country, '2013' as year, IFNULL(YR2013,0) as value FROM private_health_expenditure
UNION ALL
SELECT country, '2014' as year, IFNULL(YR2014,0) as value FROM private_health_expenditure
UNION ALL
SELECT country, '2015' as year, IFNULL(YR2015,0) as value FROM private_health_expenditure
UNION ALL
SELECT country, '2016' as year, IFNULL(YR2016,0) as value FROM private_health_expenditure
UNION ALL
SELECT country, '2017' as year, IFNULL(YR2017,0) as value FROM private_health_expenditure
UNION ALL
SELECT country, '2018' as year, IFNULL(YR2018,0) as value FROM private_health_expenditure);

-- mortality_male
DROP TABLE IF EXISTS tmp_mortality_male;
CREATE TEMPORARY TABLE tmp_mortality_male (
SELECT country, '2003' as year, IFNULL(YR2003,0) as value FROM mortality_male
UNION ALL
SELECT country, '2004' as year, IFNULL(YR2004,0) as value FROM mortality_male
UNION ALL
SELECT country, '2005' as year, IFNULL(YR2005,0) as value FROM mortality_male
UNION ALL
SELECT country, '2006' as year, IFNULL(YR2006,0) as value FROM mortality_male
UNION ALL
SELECT country, '2007' as year, IFNULL(YR2007,0) as value FROM mortality_male
UNION ALL
SELECT country, '2008' as year, IFNULL(YR2008,0) as value FROM mortality_male
UNION ALL
SELECT country, '2009' as year, IFNULL(YR2009,0) as value FROM mortality_male
UNION ALL
SELECT country, '2010' as year, IFNULL(YR2010,0) as value FROM mortality_male
UNION ALL
SELECT country, '2011' as year, IFNULL(YR2011,0) as value FROM mortality_male
UNION ALL
SELECT country, '2012' as year, IFNULL(YR2012,0) as value FROM mortality_male
UNION ALL
SELECT country, '2013' as year, IFNULL(YR2013,0) as value FROM mortality_male
UNION ALL
SELECT country, '2014' as year, IFNULL(YR2014,0) as value FROM mortality_male
UNION ALL
SELECT country, '2015' as year, IFNULL(YR2015,0) as value FROM mortality_male
UNION ALL
SELECT country, '2016' as year, IFNULL(YR2016,0) as value FROM mortality_male
UNION ALL
SELECT country, '2017' as year, IFNULL(YR2017,0) as value FROM mortality_male
UNION ALL
SELECT country, '2018' as year, IFNULL(YR2018,0) as value FROM mortality_male);

-- mortality_female
DROP TABLE IF EXISTS tmp_mortality_female;
CREATE TEMPORARY TABLE tmp_mortality_female (
SELECT country, '2003' as year, IFNULL(YR2003,0) as value FROM mortality_female
UNION ALL
SELECT country, '2004' as year, IFNULL(YR2004,0) as value FROM mortality_female
UNION ALL
SELECT country, '2005' as year, IFNULL(YR2005,0) as value FROM mortality_female
UNION ALL
SELECT country, '2006' as year, IFNULL(YR2006,0) as value FROM mortality_female
UNION ALL
SELECT country, '2007' as year, IFNULL(YR2007,0) as value FROM mortality_female
UNION ALL
SELECT country, '2008' as year, IFNULL(YR2008,0) as value FROM mortality_female
UNION ALL
SELECT country, '2009' as year, IFNULL(YR2009,0) as value FROM mortality_female
UNION ALL
SELECT country, '2010' as year, IFNULL(YR2010,0) as value FROM mortality_female
UNION ALL
SELECT country, '2011' as year, IFNULL(YR2011,0) as value FROM mortality_female
UNION ALL
SELECT country, '2012' as year, IFNULL(YR2012,0) as value FROM mortality_female
UNION ALL
SELECT country, '2013' as year, IFNULL(YR2013,0) as value FROM mortality_female
UNION ALL
SELECT country, '2014' as year, IFNULL(YR2014,0) as value FROM mortality_female
UNION ALL
SELECT country, '2015' as year, IFNULL(YR2015,0) as value FROM mortality_female
UNION ALL
SELECT country, '2016' as year, IFNULL(YR2016,0) as value FROM mortality_female
UNION ALL
SELECT country, '2017' as year, IFNULL(YR2017,0) as value FROM mortality_female
UNION ALL
SELECT country, '2018' as year, IFNULL(YR2018,0) as value FROM mortality_female);

-- Average from male and female mortality
DROP TABLE IF EXISTS tmp_mortality;
CREATE TEMPORARY TABLE tmp_mortality (
SELECT tmp_mortality_male.country, tmp_mortality_male.year, (tmp_mortality_male.value + tmp_mortality_female.value)/2 as value
FROM tmp_mortality_male, tmp_mortality_female
WHERE tmp_mortality_male.country  = tmp_mortality_female.country
AND tmp_mortality_male.year = tmp_mortality_female.year);

SELECT countries.name-- , tmp_mortality.year
		 , CONVERT(format(avg(tmp_mortality.value),0), UNSIGNED INTEGER) as Mortality
		 , format(avg(tmp_health_expenditure_of_gdp.value),2) as expenditure_of_gdp
         , format(avg(tmp_external_health_expenditure.value),0) as external
         , format(avg(tmp_government_health_expenditure.value),0) as government
         , format(avg(tmp_pocket_health_expenditure.value),0) as pocket
         , format(avg(tmp_private_health_expenditure.value),0) as private        
FROM tmp_health_expenditure_of_gdp, tmp_external_health_expenditure ,tmp_government_health_expenditure, tmp_pocket_health_expenditure, tmp_private_health_expenditure
		, tmp_mortality LEFT JOIN countries on countries.country = tmp_mortality.country
WHERE tmp_mortality.country = tmp_health_expenditure_of_gdp.country
AND  tmp_mortality.country = tmp_external_health_expenditure.country
AND  tmp_mortality.country = tmp_government_health_expenditure.country
AND  tmp_mortality.country = tmp_pocket_health_expenditure.country
AND  tmp_mortality.country = tmp_private_health_expenditure.country
AND  tmp_mortality.year = tmp_health_expenditure_of_gdp.year
AND  tmp_mortality.year = tmp_external_health_expenditure.year
AND  tmp_mortality.year = tmp_government_health_expenditure.year
AND  tmp_mortality.year = tmp_pocket_health_expenditure.year
AND  tmp_mortality.year = tmp_private_health_expenditure.year
GROUP BY tmp_mortality.country
ORDER BY Mortality DESC  ;


/*
SELECT tmp_mortality.country , tmp_mortality.year
		 , tmp_mortality.value as Mortality
		 , tmp_health_expenditure_of_gdp.value as expenditure_of_gdp
         , tmp_external_health_expenditure.value as external
         , tmp_government_health_expenditure.value as government
         , tmp_pocket_health_expenditure.value as pocket
         , tmp_private_health_expenditure.value as private
		/* , avg(tmp_health_expenditure_of_gdp.value) as avg_expenditure_of_gdp
         , std(tmp_health_expenditure_of_gdp.value) as sdt_xpenditure_of_gdp
         , avg(tmp_private_health_expenditure.value) as avg_private_health_expenditure
         , std(tmp_private_health_expenditure.value) as std_private_health_expenditure
        
FROM tmp_mortality, tmp_health_expenditure_of_gdp, tmp_external_health_expenditure ,tmp_government_health_expenditure, tmp_pocket_health_expenditure, tmp_private_health_expenditure
WHERE tmp_mortality.country = tmp_health_expenditure_of_gdp.country
AND  tmp_mortality.country = tmp_external_health_expenditure.country
AND  tmp_mortality.country = tmp_government_health_expenditure.country
AND  tmp_mortality.country = tmp_pocket_health_expenditure.country
AND  tmp_mortality.country = tmp_private_health_expenditure.country
AND  tmp_mortality.year = tmp_health_expenditure_of_gdp.year
AND  tmp_mortality.year = tmp_external_health_expenditure.year
AND  tmp_mortality.year = tmp_government_health_expenditure.year
AND  tmp_mortality.year = tmp_pocket_health_expenditure.year
AND  tmp_mortality.year = tmp_private_health_expenditure.year 
*/


