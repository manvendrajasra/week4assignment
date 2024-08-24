SELECT ROUND(LAT_N, 4) AS Median_Latitude
FROM (
    SELECT LAT_N, 
           ROW_NUMBER() OVER (ORDER BY LAT_N) AS row_num,
           COUNT(*) OVER () AS total_count
    FROM STATION
) AS subquery
WHERE row_num IN ((total_count + 1) / 2, (total_count + 2) / 2);
