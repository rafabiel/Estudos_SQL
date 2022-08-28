SELECT Year, SkinColor, count(SkinColor) as Total
FROM Feminicidios
GROUP BY Year, SkinColor
ORDER BY Year DESC

--################################################

;with fem_cte as (select Year,
                        SkinColor,
                        SkinColor as Skin_Color
                 from Feminicidios)
select *
from fem_cte as PVT
         pivot (count(SkinColor)
         for [Year]
         in ([2015], [2016], [2017], [2018], [2019], [2020], [2021], [2022])) as PVT
order by Skin_Color