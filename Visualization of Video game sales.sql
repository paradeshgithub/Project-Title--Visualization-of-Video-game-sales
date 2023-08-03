select * from vgsales;

1./*Top 5 genre that have maximum sale over year*/

select top 5 genre,round(sum(global_sales),1) as totalsales 
from vgsales
group by genre
order by totalsales desc;

2./*Top 5 platform that have maximum sale over year*/

select top 5 platform ,round(sum(global_sales),1) as totalsales 
from vgsales
group by platform
order by totalsales desc;

3./*The Number of games released given genre know the trend*/

select  genre,count(*) as no_of_games_releases 
from vgsales
group by genre
order by 1,2  desc;

4./*which platorm maximum games released on it*/

select top 10 platform ,count(*) as no_of_games_released ,
dense_rank() over (order by count(*) desc ) as ranking
from vgsales
group by platform

5./* top 10 publisher whose sales highest as per region */

select top 10 Publisher,round(sum(NA_Sales),1) as NA_Sales,
                ROUND(sum(EU_Sales),1) as EU_Sales,
				ROUND(sum(JP_Sales),1) as JP_Sales,
				ROUND(sum(Other_sales),1) as Other_Sales
from vgsales
group by Publisher
order by 2 desc,3 desc,4 desc,5 desc;

6./* which gaming pltform had the maxmium sales in genre*/

SELECT top 1 platform,genre,ROUND(max(NA_Sales), 1) AS MaxNA_sales
FROM vgsales
group by platform,genre
order by MaxNA_sales  desc;

SELECT top 1 platform,genre,ROUND(max(EU_Sales), 1) AS MaxEU_sales
FROM vgsales
group by platform,genre
order by MaxEU_sales  desc;

SELECT top 1 platform,genre,ROUND(max(JP_Sales), 1) AS MaxJP_sales
FROM vgsales
group by platform,genre
order by MaxJP_sales  desc;


SELECT top 1 platform,genre,ROUND(max(Other_Sales), 1) AS MaxOther_sales
FROM vgsales
group by platform,genre
order by MaxOther_sales  desc;







