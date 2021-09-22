-- A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.


select cast(round(max(lat_n),4,0) as decimal(10,4)) from 
    (select Top 50 percent * from station order by lat_n) as tophalf
